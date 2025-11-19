id CIDCInternalPayloadBuilder.__allocating_init(delegate:payloadBuilder:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_24567E3B8();
  swift_unknownObjectRelease();

  return v5;
}

id CIDCInternalPayloadBuilder.init(delegate:payloadBuilder:)(uint64_t a1, void *a2)
{
  v3 = sub_24567E3B8();
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_245678EB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_245681C1C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20800, &qword_245682AD8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20808, &qword_245682AE0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = sub_245681D4C();
  v2[9] = v8;
  v9 = *(v8 - 8);
  v2[10] = v9;
  v10 = *(v9 + 64) + 15;
  v2[11] = swift_task_alloc();
  v11 = sub_245681B3C();
  v2[12] = v11;
  v12 = *(v11 - 8);
  v2[13] = v12;
  v13 = *(v12 + 64) + 15;
  v2[14] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20810, &qword_245682AE8) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v15 = sub_245681DBC();
  v2[16] = v15;
  v16 = *(v15 - 8);
  v2[17] = v16;
  v17 = *(v16 + 64) + 15;
  v2[18] = swift_task_alloc();
  v18 = sub_245681E4C();
  v2[19] = v18;
  v19 = *(v18 - 8);
  v2[20] = v19;
  v20 = *(v19 + 64) + 15;
  v2[21] = swift_task_alloc();
  v21 = sub_245681DAC();
  v2[22] = v21;
  v22 = *(v21 - 8);
  v2[23] = v22;
  v23 = *(v22 + 64) + 15;
  v2[24] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20818, &qword_245682AF0) - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v25 = sub_245681BAC();
  v2[26] = v25;
  v26 = *(v25 - 8);
  v2[27] = v26;
  v27 = *(v26 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v28 = sub_245681B7C();
  v2[30] = v28;
  v29 = *(v28 - 8);
  v2[31] = v29;
  v30 = *(v29 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20820, &qword_245682AF8) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v32 = sub_245681D6C();
  v2[36] = v32;
  v33 = *(v32 - 8);
  v2[37] = v33;
  v34 = *(v33 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456793A0, 0, 0);
}

void sub_2456793A0()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  [v0[2] format];
  sub_245681D5C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24567F348(v0[35], &qword_27EE20820, &qword_245682AF8);
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F6C();
    swift_willThrow();
LABEL_31:
    v61 = v0[38];
    v60 = v0[39];
    v63 = v0[34];
    v62 = v0[35];
    v64 = v0[32];
    v65 = v0[33];
    v67 = v0[28];
    v66 = v0[29];
    v69 = v0[24];
    v68 = v0[25];
    v114 = v0[21];
    v118 = v0[18];
    v122 = v0[15];
    v126 = v0[14];
    v130 = v0[11];
    v134 = v0[8];
    v138 = v0[7];
    v143 = v0[6];

    v70 = v0[1];

    v70();
  }

  else
  {
    v4 = v0[33];
    v5 = v0[30];
    v6 = v0[2];
    (*(v0[37] + 32))(v0[39], v0[35], v0[36]);
    v7 = sub_245681B6C();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    sub_245681B5C();
    v10 = [v6 deviceKey];
    v11 = sub_245681B1C();
    v13 = v12;

    sub_24567EC58(&qword_27EE20830, MEMORY[0x277CF39A8]);
    sub_245681B4C();
    sub_24567E548(v11, v13);

    v14 = v0[27];
    v15 = v0[23];
    v16 = v0[2];
    (*(v0[31] + 32))(v0[34], v0[33], v0[30]);
    [v16 signingAlgorithm];
    sub_24567E59C(MEMORY[0x277D84F90]);
    v17 = [v16 elements];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20838, &unk_245682B00);
    v18 = sub_245681E7C();

    v19 = 0;
    v21 = v18 + 64;
    v20 = *(v18 + 64);
    v106 = v18;
    v22 = -1;
    v23 = -1 << *(v18 + 32);
    if (-v23 < 64)
    {
      v22 = ~(-1 << -v23);
    }

    v24 = v22 & v20;
    v25 = (63 - v23) >> 6;
    v128 = (v14 + 48);
    v110 = (v14 + 16);
    v112 = (v14 + 32);
    v116 = v15;
    v120 = v0;
    v108 = (v14 + 8);
    v100 = v25;
    v101 = v21;
    if ((v22 & v20) == 0)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      v103 = v24;
      v104 = v19;
      v27 = __clz(__rbit64(v24)) | (v19 << 6);
      v28 = (*(v106 + 48) + 16 * v27);
      v29 = v28[1];
      v102 = *v28;
      v30 = *(*(v106 + 56) + 8 * v27);
      if (v30 >> 62)
      {
        v52 = v28[1];
        v31 = sub_245681FCC();
        v29 = v52;
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v105 = v29;

      if (v31)
      {
        v32 = 0;
        v132 = v30 & 0xFFFFFFFFFFFFFF8;
        v136 = v30 & 0xC000000000000001;
        v33 = MEMORY[0x277D84F90];
        v121 = v30;
        v124 = v31;
        while (1)
        {
          if (v136)
          {
            v34 = MEMORY[0x245D6DC90](v32, v30);
          }

          else
          {
            if (v32 >= *(v132 + 16))
            {
              goto LABEL_44;
            }

            v34 = *(v30 + 8 * v32 + 32);
          }

          v35 = v34;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v36 = v0[25];
          v37 = v0[26];
          v38 = v0[3];
          sub_24567A97C(v34, v36);
          v142 = v35;
          if ((*v128)(v36, 1, v37) == 1)
          {
            v133 = v0[36];
            v137 = v0[39];
            v125 = v0[34];
            v129 = v0[37];
            v113 = v0[31];
            v117 = v0[30];
            v53 = v0[25];
            v55 = v0[20];
            v54 = v0[21];
            v141 = v0[19];

            sub_24567F348(v53, &qword_27EE20818, &qword_245682AF0);
            sub_245681F7C();

            v56 = [v35 debugDescription];
            v57 = sub_245681EAC();
            v59 = v58;

            MEMORY[0x245D6DBE0](v57, v59);

            MEMORY[0x245D6DBE0](0xD000000000000018, 0x8000000245682D50);
            (*(v55 + 104))(v54, *MEMORY[0x277CFF920], v141);
            sub_24567EA68(MEMORY[0x277D84F90]);
            sub_245681E5C();
            sub_24567EC58(&qword_27EE20840, MEMORY[0x277CFFE30]);
            swift_allocError();
            sub_245681E6C();
            swift_willThrow();

            (*(v113 + 8))(v125, v117);
            (*(v129 + 8))(v137, v133);
            goto LABEL_31;
          }

          v140 = v32 + 1;
          v40 = v0[28];
          v39 = v0[29];
          v41 = v0[26];
          v42 = v33;
          v43 = v0[24];
          (*v112)(v39, v0[25], v41);
          v44 = [v35 elementIdentifier];
          sub_245681EAC();

          (*v110)(v40, v39, v41);
          v33 = v42;
          sub_245681D9C();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_24567E1DC(0, v42[2] + 1, 1, v42, &qword_27EE208E0, &qword_245682C50, MEMORY[0x277CFF5D8]);
          }

          v46 = v33[2];
          v45 = v33[3];
          v0 = v120;
          if (v46 >= v45 >> 1)
          {
            v33 = sub_24567E1DC(v45 > 1, v46 + 1, 1, v33, &qword_27EE208E0, &qword_245682C50, MEMORY[0x277CFF5D8]);
          }

          v47 = v120[29];
          v48 = v120[26];
          v49 = v120[24];
          v50 = v120[22];

          (*v108)(v47, v48);
          v33[2] = v46 + 1;
          (*(v116 + 32))(v33 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v46, v49, v50);
          ++v32;
          v30 = v121;
          if (v140 == v124)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v33 = MEMORY[0x277D84F90];
LABEL_27:
      v24 = (v103 - 1) & v103;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_24567D8E4(v33, v102, v105, isUniquelyReferenced_nonNull_native);

      v25 = v100;
      v21 = v101;
      v19 = v104;
    }

    while (v24);
LABEL_6:
    while (1)
    {
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v26 >= v25)
      {
        v71 = v0[38];
        v72 = v0[39];
        v73 = v0[36];
        v74 = v0[37];
        v75 = v0[2];

        (*(v74 + 16))(v71, v72, v73);
        v76 = [v75 docType];
        sub_245681EAC();

        v77 = [v75 validFrom];
        if (v77)
        {
          v78 = v0[15];
          v79 = v77;
          sub_245681B2C();
        }

        v139 = v0[38];
        v80 = v0[31];
        v107 = v0[32];
        v109 = v0[30];
        v111 = v0[34];
        v135 = v0[18];
        v81 = v0[14];
        v127 = v0[15];
        v82 = v0[12];
        v84 = v0[10];
        v83 = v0[11];
        v85 = v0[8];
        v86 = v0[9];
        v87 = v0[6];
        v115 = v85;
        v119 = v0[7];
        v88 = v0[5];
        v123 = v0[4];
        v89 = v0[2];
        v131 = v0[3];
        (*(v0[13] + 56))();
        v90 = [v89 validUntil];
        sub_245681B2C();

        v91 = [v89 timePolicy];
        v92 = MEMORY[0x277CFF5B8];
        v93 = MEMORY[0x277CFF5B0];
        if (v91 != 2)
        {
          v93 = MEMORY[0x277CFF5A8];
        }

        if (v91 != 1)
        {
          v92 = v93;
        }

        (*(v84 + 104))(v83, *v92, v86);
        (*(v80 + 16))(v107, v111, v109);
        v94 = sub_245681D7C();
        (*(*(v94 - 8) + 56))(v115, 1, 1, v94);
        v95 = sub_245681E2C();
        (*(*(v95 - 8) + 56))(v119, 1, 1, v95);
        (*(v88 + 104))(v87, *MEMORY[0x277CFF4B8], v123);
        sub_245681D8C();
        v96 = *(v131 + OBJC_IVAR____TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder_payloadBuilder);
        v0[40] = v96;
        v97 = *(MEMORY[0x277CFF650] + 4);
        v144 = (*MEMORY[0x277CFF650] + MEMORY[0x277CFF650]);
        v96;
        v98 = swift_task_alloc();
        v0[41] = v98;
        *v98 = v0;
        v98[1] = sub_24567A0EC;
        v99 = v0[18];

        v144(v99);
        return;
      }

      ++v19;
      if (*(v21 + 8 * v26))
      {
        v19 = v26;
        v24 = *(v21 + 8 * v26);
        goto LABEL_10;
      }
    }

LABEL_45:
    __break(1u);
  }
}

uint64_t sub_24567A0EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 328);
  v8 = *(*v3 + 320);
  v9 = *v3;
  *(*v3 + 336) = v2;

  if (v2)
  {
    v10 = sub_24567A3E0;
  }

  else
  {
    *(v6 + 344) = a2;
    *(v6 + 352) = a1;
    v10 = sub_24567A238;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_24567A238()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v13 = v0[33];
  v14 = v0[32];
  v8 = v0[30];
  v7 = v0[31];
  v15 = v0[29];
  v16 = v0[28];
  v17 = v0[25];
  v18 = v0[24];
  v19 = v0[21];
  v20 = v0[15];
  v21 = v0[14];
  v22 = v0[11];
  v23 = v0[8];
  v24 = v0[7];
  v25 = v0[6];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v7 + 8))(v5, v8);
  (*(v3 + 8))(v1, v4);

  v9 = v0[1];
  v11 = v0[43];
  v10 = v0[44];

  return v9(v10, v11);
}

uint64_t sub_24567A3E0()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[31];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v27 = v0[42];
  v8 = v0[38];
  v7 = v0[39];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[32];
  v12 = v0[33];
  v14 = v0[28];
  v13 = v0[29];
  v16 = v0[24];
  v15 = v0[25];
  v19 = v0[21];
  v20 = v0[18];
  v21 = v0[15];
  v22 = v0[14];
  v23 = v0[11];
  v24 = v0[8];
  v25 = v0[7];
  v26 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_24567A70C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_24567A7D0;

  return sub_245678EB8(v6);
}

uint64_t sub_24567A7D0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  if (v4)
  {
    v12 = sub_245681AEC();

    v13 = v12;
    v14 = 0;
  }

  else
  {
    v15 = sub_245681B0C();
    sub_24567E548(a1, a2);
    v14 = v15;
    v13 = 0;
    v12 = v15;
  }

  v16 = *(v7 + 32);
  (v16)[2](v16, v14, v13);

  _Block_release(v16);
  v17 = *(v11 + 8);

  return v17();
}

void sub_24567A97C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v3 = *(*(sub_245681DFC() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v170 = v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20818, &qword_245682AF0) - 8) + 64);
  v6 = (MEMORY[0x28223BE20])();
  v169 = (v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v174 = v160 - v9;
  MEMORY[0x28223BE20](v8);
  v171 = v160 - v10;
  v11 = sub_245681BAC();
  v12 = *(v11 - 8);
  v172 = v11;
  v173 = v12;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v160 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v160 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v160 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (v160 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = v160 - v29;
  v31 = sub_245681B3C();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = (v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = [a1 stringValue];
  if (v36)
  {
    v37 = v36;
    v38 = sub_245681EAC();
    v40 = v39;

    v41 = MEMORY[0x277D837D0];
LABEL_5:
    v177 = v41;
    v176[0] = v38;
    v176[1] = v40;
    goto LABEL_6;
  }

  v166 = v35;
  v167 = v32;
  v161 = v30;
  v162 = v19;
  i = v28;
  v164 = v25;
  v165 = v22;
  v42 = v174;
  v163 = v16;
  v43 = a1;
  v44 = [a1 dataValue];
  if (v44)
  {
    v45 = v44;
    v38 = sub_245681B1C();
    v40 = v46;

    v41 = MEMORY[0x277CC9318];
    goto LABEL_5;
  }

  v47 = [a1 dateValue];
  if (v47)
  {
    v48 = v47;
    v49 = v166;
    sub_245681B2C();

    v177 = v31;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v176);
    v51 = v167;
    (v167)[2](boxed_opaque_existential_0Tm, v49, v31);
    sub_245681B8C();
    (v51[1])(v49, v31);
    return;
  }

  v52 = [a1 numberValue];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 integerValue];
    v177 = MEMORY[0x277D83B88];
    v176[0] = v54;
    sub_245681B8C();

    return;
  }

  v55 = [a1 arrayValue];
  if (v55)
  {
    v56 = v55;
    sub_24567F56C(0, &qword_27EE20910, off_278E82BB8);
    v22 = sub_245681EEC();

    v42 = v172;
    if (!(v22 >> 62))
    {
      v57 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
      v58 = v171;
      v59 = v161;
      if (v57)
      {
        v60 = 0;
        v174 = (v22 & 0xC000000000000001);
        v170 = (v173 + 48);
        v171 = (v22 & 0xFFFFFFFFFFFFFF8);
        v61 = (v173 + 32);
        v164 = (v173 + 8);
        v165 = (v173 + 16);
        v62 = MEMORY[0x277D84F90];
        v169 = v22;
        v166 = (v173 + 32);
        v167 = v57;
        while (1)
        {
          if (v174)
          {
            v63 = MEMORY[0x245D6DC90](v60, v22);
            v64 = (v60 + 1);
            if (__OFADD__(v60, 1))
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (v60 >= *(v171 + 2))
            {
              goto LABEL_96;
            }

            v63 = *(v22 + 8 * v60 + 32);
            v64 = (v60 + 1);
            if (__OFADD__(v60, 1))
            {
              goto LABEL_95;
            }
          }

          v65 = v63;
          sub_24567A97C(v63);
          if ((*v170)(v58, 1, v42) == 1)
          {
            break;
          }

          v66 = *v61;
          (*v61)(v59, v58, v42);
          (*v165)(i, v59, v42);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_24567E1DC(0, *(v62 + 2) + 1, 1, v62, &qword_27EE20920, &qword_245682C68, MEMORY[0x277CFF2D0]);
          }

          v68 = *(v62 + 2);
          v67 = *(v62 + 3);
          if (v68 >= v67 >> 1)
          {
            v62 = sub_24567E1DC(v67 > 1, v68 + 1, 1, v62, &qword_27EE20920, &qword_245682C68, MEMORY[0x277CFF2D0]);
          }

          v42 = v172;
          (*(v173 + 8))(v59, v172);
          *(v62 + 2) = v68 + 1;
          v61 = v166;
          v66(&v62[((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v68], i, v42);
          ++v60;
          v22 = v169;
          if (v64 == v167)
          {
            goto LABEL_51;
          }
        }

        sub_24567F348(v58, &qword_27EE20818, &qword_245682AF0);
        (*(v173 + 56))(v175, 1, 1, v42);
        return;
      }

LABEL_51:

      v177 = sub_245681BEC();
      __swift_allocate_boxed_opaque_existential_0Tm(v176);
      sub_245681BDC();
LABEL_6:
      sub_245681B8C();
      return;
    }

LABEL_99:
    v57 = sub_245681FCC();
    goto LABEL_14;
  }

  v69 = [a1 dictionaryValue];
  v70 = v172;
  if (v69)
  {
    v71 = v69;
    sub_24567F56C(0, &qword_27EE20910, off_278E82BB8);
    v72 = sub_245681E7C();

    v73 = sub_24567E6A0(MEMORY[0x277D84F90]);
    v74 = 0;
    v75 = v72 + 64;
    v76 = 1 << *(v72 + 32);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v78 = v77 & *(v72 + 64);
    v79 = (v76 + 63) >> 6;
    v170 = v72;
    v171 = (v173 + 32);
    v167 = (v173 + 16);
    i = (v173 + 48);
    v166 = (v173 + 8);
    v161 = (v173 + 40);
    v162 = v79;
    v80 = v164;
    v81 = v165;
    v163 = (v72 + 64);
    while (v78)
    {
      v85 = v74;
LABEL_40:
      v86 = __clz(__rbit64(v78)) | (v85 << 6);
      v87 = (*(v170 + 6) + 16 * v86);
      v88 = *v87;
      v22 = v87[1];
      v89 = *(*(v170 + 7) + 8 * v86);

      v90 = v89;
      sub_24567A97C(v90);
      v91 = v172;
      if ((*i)(v42, 1, v172) == 1)
      {

        sub_24567F348(v42, &qword_27EE20818, &qword_245682AF0);
        v157 = *(v173 + 56);
        v158 = v175;
        goto LABEL_91;
      }

      v174 = v90;
      v92 = v80;
      v93 = v80;
      v94 = v42;
      v169 = *v171;
      v169(v93, v42, v91);
      (*v167)(v81, v92, v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v176[0] = v73;
      v42 = v88;
      v96 = sub_24567CEF8(v88, v22);
      v98 = v73[2];
      v99 = (v97 & 1) == 0;
      v100 = __OFADD__(v98, v99);
      v101 = v98 + v99;
      if (v100)
      {
        goto LABEL_98;
      }

      v102 = v97;
      if (v73[3] >= v101)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v109 = v96;
          sub_24567DDEC();
          v96 = v109;
        }

        v103 = v88;
      }

      else
      {
        sub_24567D2BC(v101, isUniquelyReferenced_nonNull_native);
        v103 = v88;
        v96 = sub_24567CEF8(v88, v22);
        if ((v102 & 1) != (v104 & 1))
        {
          goto LABEL_103;
        }
      }

      v42 = v94;
      v78 &= v78 - 1;
      if (v102)
      {
        v82 = v96;

        v73 = v176[0];
        v83 = *(v176[0] + 56) + *(v173 + 72) * v82;
        v81 = v165;
        v84 = v172;
        (*(v173 + 40))(v83, v165, v172);

        v80 = v164;
        (*(v173 + 8))(v164, v84);
      }

      else
      {
        v73 = v176[0];
        *(v176[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
        v105 = (v73[6] + 16 * v96);
        *v105 = v103;
        v105[1] = v22;
        v106 = v172;
        v81 = v165;
        v169((v73[7] + *(v173 + 72) * v96), v165, v172);

        v80 = v164;
        (*(v173 + 8))(v164, v106);
        v107 = v73[2];
        v100 = __OFADD__(v107, 1);
        v108 = v107 + 1;
        if (v100)
        {
          __break(1u);
          goto LABEL_101;
        }

        v73[2] = v108;
      }

      v74 = v85;
      v79 = v162;
      v75 = v163;
    }

    while (1)
    {
      v85 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      if (v85 >= v79)
      {

        v177 = sub_245681C0C();
        __swift_allocate_boxed_opaque_existential_0Tm(v176);
        sub_245681BDC();
        goto LABEL_6;
      }

      v78 = *(v75 + 8 * v85);
      ++v74;
      if (v78)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v110 = [v43 integerKeyedDictionaryValue];
  if (!v110)
  {
    v121 = *(v173 + 56);
    v122 = v175;

    v121(v122, 1, 1, v70);
    return;
  }

  v111 = v110;
  v112 = sub_24567F56C(0, &qword_27EE20908, 0x277CCABB0);
  v113 = sub_24567F56C(0, &qword_27EE20910, off_278E82BB8);
  sub_24567F5B4();
  v160[3] = v112;
  v160[2] = v113;
  v114 = sub_245681E7C();

  v115 = sub_24567E88C(MEMORY[0x277D84F90]);
  v116 = v175;
  if ((v114 & 0xC000000000000001) != 0)
  {
    v117 = sub_245681F9C();
    v118 = 0;
    v119 = 0;
    v120 = 0;
    v114 = v117 | 0x8000000000000000;
  }

  else
  {
    v123 = -1 << *(v114 + 32);
    v118 = (v114 + 64);
    v119 = ~v123;
    v124 = -v123;
    if (v124 < 64)
    {
      v125 = ~(-1 << v124);
    }

    else
    {
      v125 = -1;
    }

    v120 = (v125 & *(v114 + 64));
  }

  v126 = 0;
  v160[1] = v119;
  v127 = (v119 + 64) >> 6;
  v171 = (v173 + 32);
  v165 = (v173 + 16);
  v166 = (v173 + 48);
  v164 = (v173 + 8);
  v161 = (v173 + 40);
  v167 = v114;
  for (i = v118; ; v118 = i)
  {
    if ((v114 & 0x8000000000000000) != 0)
    {
      v135 = sub_245681FAC();
      if (!v135)
      {
LABEL_86:
        v91 = v172;
LABEL_87:
        sub_24567F61C();
        sub_245681BDC();
        sub_245681B9C();
        v157 = *(v173 + 56);
        v158 = v116;
        v159 = 0;
LABEL_92:
        v157(v158, v159, 1, v91);
        return;
      }

      v137 = v136;
      v178 = v135;
      swift_dynamicCast();
      v133 = v176[0];
      v178 = v137;
      swift_dynamicCast();
      v42 = v176[0];
      v22 = v126;
      v174 = v120;
    }

    else
    {
      v129 = v126;
      v130 = v120;
      v22 = v126;
      if (!v120)
      {
        do
        {
          v22 = v129 + 1;
          if (__OFADD__(v129, 1))
          {
            goto LABEL_97;
          }

          if (v22 >= v127)
          {
            goto LABEL_86;
          }

          v130 = v118[v22];
          ++v129;
        }

        while (!v130);
      }

      v174 = ((v130 - 1) & v130);
      v131 = (v22 << 9) | (8 * __clz(__rbit64(v130)));
      v132 = *(*(v114 + 56) + v131);
      v133 = *(*(v114 + 48) + v131);
      v134 = v132;
      v116 = v175;
      v42 = v134;
    }

    if (!v133)
    {
      v91 = v172;
      goto LABEL_87;
    }

    v138 = v169;
    sub_24567A97C(v42);
    v91 = v172;
    if ((*v166)(v138, 1, v172) == 1)
    {

      sub_24567F61C();

      sub_24567F348(v138, &qword_27EE20818, &qword_245682AF0);
      v157 = *(v173 + 56);
      v158 = v116;
LABEL_91:
      v159 = 1;
      goto LABEL_92;
    }

    v139 = v138;
    v140 = *v171;
    v141 = v162;
    (*v171)(v162, v139, v91);
    v142 = [v133 integerValue];
    (*v165)(v163, v141, v91);
    v143 = swift_isUniquelyReferenced_nonNull_native();
    v176[0] = v115;
    v144 = sub_24567CEB4(v142);
    v146 = v115[2];
    v147 = (v145 & 1) == 0;
    v100 = __OFADD__(v146, v147);
    v148 = v146 + v147;
    if (v100)
    {
      break;
    }

    v149 = v145;
    if (v115[3] >= v148)
    {
      if ((v143 & 1) == 0)
      {
        v156 = v144;
        sub_24567DB84();
        v144 = v156;
      }
    }

    else
    {
      sub_24567CF70(v148, v143);
      v144 = sub_24567CEB4(v142);
      if ((v149 & 1) != (v150 & 1))
      {
        goto LABEL_104;
      }
    }

    v152 = v162;
    v151 = v163;
    v115 = v176[0];
    if (v149)
    {
      v128 = v172;
      (*(v173 + 40))(*(v176[0] + 56) + *(v173 + 72) * v144, v163, v172);

      (*(v173 + 8))(v152, v128);
    }

    else
    {
      *(v176[0] + 8 * (v144 >> 6) + 64) |= 1 << v144;
      *(v115[6] + 8 * v144) = v142;
      v153 = v172;
      v140(v115[7] + *(v173 + 72) * v144, v151, v172);

      (*(v173 + 8))(v152, v153);
      v154 = v115[2];
      v100 = __OFADD__(v154, 1);
      v155 = v154 + 1;
      if (v100)
      {
        goto LABEL_102;
      }

      v115[2] = v155;
    }

    v126 = v22;
    v120 = v174;
    v116 = v175;
    v114 = v167;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  sub_24568201C();
  __break(1u);
LABEL_104:
  sub_24568201C();
  __break(1u);
}

uint64_t sub_24567BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a1;
  v5[20] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208B8, &qword_245682BE8);
  v5[23] = v6;
  v7 = *(v6 - 8);
  v5[24] = v7;
  v8 = *(v7 + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24567BB14, 0, 0);
}

uint64_t sub_24567BB14()
{
  v1 = v0[22];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[22];
    v5 = swift_unknownObjectWeakLoadStrong();
    v0[27] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[24];
      v8 = v0[25];
      v9 = v0[23];
      v10 = v0[20];
      v11 = v0[21];
      v16 = sub_245681B0C();
      v0[28] = v16;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_24567BE40;
      swift_continuation_init();
      v0[17] = v9;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
      sub_24567F56C(0, &qword_27EE208C0, off_278E82BB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208C8, &qword_245682BF0);
      sub_245681F0C();
      (*(v7 + 32))(boxed_opaque_existential_0Tm, v8, v9);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24567C220;
      v0[13] = &block_descriptor;
      [v3 signPayloadWithBuilder:v6 data:v16 completion:?];
      (*(v7 + 8))(boxed_opaque_existential_0Tm, v9);

      return MEMORY[0x282200938](v0 + 2);
    }

    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F6C();
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F6C();
    swift_willThrow();
  }

  v13 = v0[25];

  v14 = v0[1];

  return v14();
}

uint64_t sub_24567BE40()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_24567C190;
  }

  else
  {
    v3 = sub_24567BF50;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24567BF50()
{
  v1 = *(v0 + 144);

  [v1 signingAlgorithm];
  v2 = [v1 issuerCertificate];
  if (v2)
  {
    v3 = *(v0 + 152);
    v4 = v2;
    sub_245681EEC();

    v5 = [v1 signature];
    sub_245681B1C();

    sub_245681E0C();
LABEL_5:
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    v12 = *(v0 + 200);

    swift_unknownObjectRelease();

    v13 = *(v0 + 8);
    goto LABEL_6;
  }

  v6 = [v1 issuerKey];
  if (v6)
  {
    v7 = *(v0 + 152);
    v8 = v6;
    sub_245681B1C();

    v9 = [v1 signature];
    sub_245681B1C();

    sub_245681E1C();
    goto LABEL_5;
  }

  v15 = *(v0 + 208);
  v16 = *(v0 + 216);
  sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
  sub_245681EAC();
  sub_245681F6C();
  swift_willThrow();

  swift_unknownObjectRelease();
  v17 = *(v0 + 200);

  v13 = *(v0 + 8);
LABEL_6:

  return v13();
}

uint64_t sub_24567C190()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  swift_willThrow();

  swift_unknownObjectRelease();
  v5 = v0[29];
  v6 = v0[25];

  v7 = v0[1];

  return v7();
}

void sub_24567C220(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208B8, &qword_245682BE8);
    sub_245681F1C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208B8, &qword_245682BE8);
    sub_245681F2C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24567C2D0()
{
  sub_24567F054(v0 + 16);
  MEMORY[0x245D6E220](v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_24567C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24567C3D4;

  return sub_24567BA44(a1, a2, a3, a4);
}

uint64_t sub_24567C3D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id CIDCInternalPayloadBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CIDCInternalPayloadBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CIDCInternalPayloadBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24567C5A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_245681E3C();
  sub_24567EC58(&qword_27EE208F8, MEMORY[0x277CFF8F8]);
  v5 = sub_245681E8C();

  return sub_24567C638(a1, v5);
}

unint64_t sub_24567C638(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_245681E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_24567EC58(&qword_27EE20900, MEMORY[0x277CFF8F8]);
      v16 = sub_245681E9C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_24567C7F8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24567F6F8;

  return v7();
}

uint64_t sub_24567C8E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24567C3D4;

  return v8();
}

uint64_t sub_24567C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D0, &qword_245682BF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_24567F624(a3, v24 - v10, &qword_27EE208D0, &qword_245682BF8);
  v12 = sub_245681F4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24567F348(v11, &qword_27EE208D0, &qword_245682BF8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_245681F3C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_245681EFC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_245681EBC() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_24567F348(a3, &qword_27EE208D0, &qword_245682BF8);

    return v22;
  }

LABEL_8:
  sub_24567F348(a3, &qword_27EE208D0, &qword_245682BF8);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_24567CCC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24567CDBC;

  return v7(a1);
}

uint64_t sub_24567CDBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_24567CEB4(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_24568202C();

  return sub_24567DA60(a1, v4);
}

unint64_t sub_24567CEF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_24568203C();
  sub_245681ECC();
  v6 = sub_24568204C();

  return sub_24567DACC(a1, a2, v6);
}

uint64_t sub_24567CF70(uint64_t a1, int a2)
{
  v3 = v2;
  v43 = sub_245681BAC();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20938, &qword_245682C80);
  v41 = a2;
  result = sub_245681FEC();
  v12 = result;
  if (*(v9 + 16))
  {
    v38 = v3;
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
    v39 = (v6 + 16);
    v40 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v41)
      {
        (*v19)(v42, v28, v43);
      }

      else
      {
        (*v39)(v42, v28, v43);
      }

      v29 = *(v12 + 40);
      result = sub_24568202C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v42, v43);
      ++*(v12 + 16);
      v6 = v40;
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

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v9 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_24567D2BC(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_245681BAC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20928, &qword_245682C70);
  v46 = a2;
  result = sub_245681FEC();
  v12 = result;
  if (*(v9 + 16))
  {
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
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_24568203C();
      sub_245681ECC();
      result = sub_24568204C();
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
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
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

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
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

uint64_t sub_24567D63C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D8, &qword_245682C48);
  v38 = a2;
  result = sub_245681FEC();
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
      sub_24568203C();
      sub_245681ECC();
      result = sub_24568204C();
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

uint64_t sub_24567D8E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24567CEF8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24567D63C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_24567CEF8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24568201C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24567E06C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_24567DA60(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24567DACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24568200C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_24567DB84()
{
  v1 = v0;
  v30 = sub_245681BAC();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20]();
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20938, &qword_245682C80);
  v4 = *v0;
  v5 = sub_245681FDC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_24567DDEC()
{
  v1 = v0;
  v36 = sub_245681BAC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20]();
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20928, &qword_245682C70);
  v4 = *v0;
  v5 = sub_245681FDC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_24567E06C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D8, &qword_245682C48);
  v2 = *v0;
  v3 = sub_245681FDC();
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

size_t sub_24567E1DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size(v17);
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

id sub_24567E3B8()
{
  v1 = v0;
  v2 = type metadata accessor for CIDCInternalPayloadBuilder.CIDCInternalPayloadBuilderDelegate();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v8[8] = v2;
  v8[9] = sub_24567EC58(&qword_27EE20948, type metadata accessor for CIDCInternalPayloadBuilder.CIDCInternalPayloadBuilderDelegate);
  v8[5] = v3;
  v8[3] = sub_245681BCC();
  v8[4] = MEMORY[0x277CFF3A0];
  __swift_allocate_boxed_opaque_existential_0Tm(v8);

  sub_245681BBC();
  v4 = objc_allocWithZone(sub_245681DDC());
  v5 = sub_245681DCC();

  *&v1[OBJC_IVAR____TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder_payloadBuilder] = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CIDCInternalPayloadBuilder();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24567E548(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_24567E59C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D8, &qword_245682C48);
    v3 = sub_245681FFC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24567CEF8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24567E6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20930, &qword_245682C78);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20928, &qword_245682C70);
    v8 = sub_245681FFC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24567F624(v10, v6, &qword_27EE20930, &qword_245682C78);
      v12 = *v6;
      v13 = v6[1];
      result = sub_24567CEF8(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_245681BAC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24567E88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20940, &qword_245682C88);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20938, &qword_245682C80);
    v8 = sub_245681FFC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_24567F624(v10, v6, &qword_27EE20940, &qword_245682C88);
      v12 = *v6;
      result = sub_24567CEB4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_245681BAC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24567EA68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208E8, &qword_245682C58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208F0, &qword_245682C60);
    v8 = sub_245681FFC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24567F624(v10, v6, &qword_27EE208E8, &qword_245682C58);
      result = sub_24567C5A0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_245681E3C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_24567F554(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24567EC58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of CIDCInternalPayloadBuilder.buildPayload(details:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24567EE20;

  return v8(a1);
}

uint64_t sub_24567EE20(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_24567EF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24567F07C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24567F0C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24567C3D4;

  return sub_24567A70C(v2, v3, v4);
}

uint64_t sub_24567F17C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24567F6F8;

  return sub_24567C7F8(v2, v3, v5);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24567F27C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24567F6F8;

  return sub_24567C8E0(a1, v4, v5, v7);
}

uint64_t sub_24567F348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24567F3A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24567F3E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24567F6F8;

  return sub_24567CCC4(a1, v5);
}

uint64_t sub_24567F498(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24567C3D4;

  return sub_24567CCC4(a1, v5);
}

uint64_t sub_24567F554(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24567F56C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_24567F5B4()
{
  result = qword_27EE20918;
  if (!qword_27EE20918)
  {
    sub_24567F56C(255, &qword_27EE20908, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20918);
  }

  return result;
}

uint64_t sub_24567F624(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id CIDCSessionCryptarch.init(role:curve:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithRole:a1 curve:a2 variant:a3];
}

id CIDCSessionCryptarch.init(role:curve:variant:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_245681CAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245681CCC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_245681C6C();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v21 = MEMORY[0x277CFF4C0];
  }

  else
  {
    if (a1)
    {
      goto LABEL_8;
    }

    v21 = MEMORY[0x277CFF4C8];
  }

  (*(v18 + 104))(v20, *v21);
  if (a3 < 3)
  {
    (*(v12 + 104))(v15, **(&unk_278E82E18 + a3), v11);
    if (a2 < 5)
    {
      (*(v7 + 104))(v10, **(&unk_278E82DF0 + a2), v6);
      v22 = sub_245681D0C();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_245681C8C();
      v26 = v29;
      *&v29[OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch] = v25;
      v30.receiver = v26;
      v30.super_class = CIDCSessionCryptarch;
      return objc_msgSendSuper2(&v30, sel_init);
    }
  }

LABEL_8:
  result = sub_245681FBC();
  __break(1u);
  return result;
}

id CIDCSessionCryptarch.init(role:curve:variant:localKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_245681B0C();
  v17[0] = 0;
  v12 = [v10 initWithRole:a1 curve:a2 variant:a3 localKey:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    sub_245681AFC();

    swift_willThrow();
  }

  sub_24567E548(a4, a5);
  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t CIDCSessionCryptarch.init(role:curve:variant:localKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v36 = a4;
  v39 = a5;
  v35[0] = a3;
  v7 = sub_245681CCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245681CAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245681C6C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v22 = MEMORY[0x277CFF4C0];
  }

  else
  {
    if (a1)
    {
LABEL_11:
      result = sub_245681FBC();
      __break(1u);
      return result;
    }

    v22 = MEMORY[0x277CFF4C8];
  }

  (*(v19 + 104))(v21, *v22);
  if (a2 >= 5)
  {
    goto LABEL_11;
  }

  (*(v13 + 104))(v16, **(&unk_278E82DF0 + a2), v12);
  if (v35[0] >= 3uLL)
  {
    goto LABEL_11;
  }

  (*(v8 + 104))(v11, **(&unk_278E82E18 + v35[0]), v7);
  v23 = sub_245681D0C();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = v36;
  v28 = v39;
  sub_245680020(v36, v39);
  v29 = v26;
  v30 = v35[1];
  v31 = sub_245681C7C();
  if (v30)
  {
    v32 = sub_24567E548(v27, v28);
    type metadata accessor for CIDCSessionCryptarch(v32);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v37;
    *&v37[OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch] = v31;
    v38.receiver = v33;
    v38.super_class = CIDCSessionCryptarch;
    v29 = objc_msgSendSuper2(&v38, sel_init);
    sub_24567E548(v27, v28);
  }

  return v29;
}

uint64_t sub_245680020(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void CIDCSessionCryptarch.setRemoteKey(_:)()
{
  v2 = *(v0 + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681C5C();
  if (v1)
  {
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F5C();

    swift_willThrow();
  }
}

void CIDCSessionCryptarch.deriveSessionKeys(fromSessionTranscript:)()
{
  v2 = *(v0 + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681C2C();
  if (v1)
  {
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F5C();

    swift_willThrow();
  }
}

void CIDCSessionCryptarch.deriveSessionKeys(fromSessionTranscript:intermediateKeyMaterial:)()
{
  v2 = *(v0 + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681C2C();
  if (v1)
  {
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F5C();

    swift_willThrow();
  }
}

uint64_t sub_245680858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  result = a3();
  if (v4)
  {
    v7 = result;
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F5C();

    swift_willThrow();

    return v7;
  }

  return result;
}

id sub_245680948(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v7 = a3;
  v8 = a1;
  v9 = sub_245681B1C();
  v11 = v10;

  v12 = *&v8[OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch];
  v13 = a5(v9, v11);
  v15 = v14;

  sub_24567E548(v9, v11);
  v16 = sub_245681B0C();
  sub_24567E548(v13, v15);

  return v16;
}

uint64_t CIDCSessionCryptarch.curve.getter()
{
  v1 = sub_245681CAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(v0 + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681CBC();
  (*(v2 + 16))(v6, v8, v1);
  v10 = (*(v2 + 88))(v6, v1);
  v11 = 0;
  if (v10 == *MEMORY[0x277CFF4D0])
  {
    goto LABEL_10;
  }

  if (v10 == *MEMORY[0x277CFF4D8])
  {
    v11 = 1;
LABEL_10:
    (*(v2 + 8))(v8, v1);
    return v11;
  }

  if (v10 == *MEMORY[0x277CFF4E0])
  {
    v11 = 2;
    goto LABEL_10;
  }

  if (v10 == *MEMORY[0x277CFF4F0])
  {
    v11 = 3;
    goto LABEL_10;
  }

  if (v10 == *MEMORY[0x277CFF4E8])
  {
    v11 = 4;
    goto LABEL_10;
  }

  result = sub_245681FBC();
  __break(1u);
  return result;
}

uint64_t CIDCSessionCryptarch.role.getter()
{
  v1 = sub_245681C6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(v0 + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681C9C();
  (*(v2 + 16))(v6, v8, v1);
  v10 = (*(v2 + 88))(v6, v1);
  v11 = 0;
  if (v10 == *MEMORY[0x277CFF4C8])
  {
    goto LABEL_4;
  }

  if (v10 == *MEMORY[0x277CFF4C0])
  {
    v11 = 1;
LABEL_4:
    (*(v2 + 8))(v8, v1);
    return v11;
  }

  result = sub_245681FBC();
  __break(1u);
  return result;
}

uint64_t CIDCSessionCryptarch.variant.getter()
{
  v1 = sub_245681CCC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(v0 + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681CDC();
  (*(v2 + 16))(v6, v8, v1);
  v10 = (*(v2 + 88))(v6, v1);
  v11 = 0;
  if (v10 == *MEMORY[0x277CFF508])
  {
    goto LABEL_6;
  }

  if (v10 == *MEMORY[0x277CFF4F8])
  {
    v11 = 1;
LABEL_6:
    (*(v2 + 8))(v8, v1);
    return v11;
  }

  if (v10 == *MEMORY[0x277CFF500])
  {
    v11 = 2;
    goto LABEL_6;
  }

  result = sub_245681FBC();
  __break(1u);
  return result;
}

uint64_t CIDCSessionCryptarch.privateKey.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE209B8, &qword_245682C98);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch);
  sub_245681CEC();
  v6 = sub_245681C4C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_24567F348(v4, &qword_27EE209B8, &qword_245682C98);
    return 0;
  }

  else
  {
    v9 = sub_245681C3C();
    (*(v7 + 8))(v4, v6);
    return v9;
  }
}

void __swiftcall CIDCSessionCryptarch.init()(CIDCSessionCryptarch *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2456816C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE209C8, &qword_245682CA8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if (sub_245681D3C() == a1 && v11 == a2)
  {
  }

  else
  {
    v12 = sub_24568200C();

    if ((v12 & 1) == 0)
    {
      return -1000;
    }
  }

  sub_245681D1C();
  v13 = sub_245681D2C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    sub_245681A48(v10, v8);
    v15 = (*(v14 + 88))(v8, v13);
    if (v15 != *MEMORY[0x277CFF558])
    {
      if (v15 == *MEMORY[0x277CFF530])
      {
        v16 = 1001;
        goto LABEL_8;
      }

      if (v15 == *MEMORY[0x277CFF540])
      {
        v16 = 1002;
        goto LABEL_8;
      }

      if (v15 != *MEMORY[0x277CFF548])
      {
        if (v15 == *MEMORY[0x277CFF538])
        {
          v16 = -2002;
          goto LABEL_8;
        }

        if (v15 == *MEMORY[0x277CFF550])
        {
          v16 = -3000;
          goto LABEL_8;
        }

        if (v15 == *MEMORY[0x277CFF528])
        {
          v16 = -5000;
          goto LABEL_8;
        }

        if (v15 == *MEMORY[0x277CFF520])
        {
          v16 = -6000;
          goto LABEL_8;
        }

        (*(v14 + 8))(v8, v13);
      }
    }
  }

  v16 = -1000;
LABEL_8:
  sub_24567F348(v10, &qword_27EE209C8, &qword_245682CA8);
  return v16;
}

uint64_t sub_245681A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24567E548(a1, a2);
  }

  return a1;
}

uint64_t sub_245681A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE209C8, &qword_245682CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}