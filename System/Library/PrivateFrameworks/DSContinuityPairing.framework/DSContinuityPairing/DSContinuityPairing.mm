uint64_t sub_247F33744()
{
  sub_247F3A7D8();
  MEMORY[0x24C1BFF20](0);
  return sub_247F3A7F8();
}

uint64_t sub_247F33788()
{
  sub_247F3A7D8();
  MEMORY[0x24C1BFF20](0);
  return sub_247F3A7F8();
}

uint64_t ContinuityPairing.fetchContinuityDevices()()
{
  v1[4] = v0;
  v2 = sub_247F3A428();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80600, &qword_247F3AEA8) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = sub_247F3A518();
  v1[10] = v6;
  v7 = *(v6 - 8);
  v1[11] = v7;
  v8 = *(v7 + 64) + 15;
  v1[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80608, &qword_247F3AEB0) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v10 = sub_247F3A468();
  v1[15] = v10;
  v11 = *(v10 - 8);
  v1[16] = v11;
  v12 = *(v11 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v13 = sub_247F3A528();
  v1[19] = v13;
  v14 = *(v13 - 8);
  v1[20] = v14;
  v15 = *(v14 + 64) + 15;
  v1[21] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80610, &qword_247F3AEB8);
  v1[22] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80618, &qword_247F3AEC0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v19 = sub_247F3A588();
  v1[27] = v19;
  v20 = *(v19 - 8);
  v1[28] = v20;
  v21 = *(v20 + 64) + 15;
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v22 = sub_247F3A5B8();
  v1[32] = v22;
  v23 = *(v22 - 8);
  v1[33] = v23;
  v24 = *(v23 + 64) + 15;
  v1[34] = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80620, &qword_247F3AEC8);
  v1[35] = v25;
  v26 = *(*(v25 - 8) + 64) + 15;
  v1[36] = swift_task_alloc();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80628, &qword_247F3AED0);
  v1[37] = v27;
  v28 = *(v27 - 8);
  v1[38] = v28;
  v29 = *(v28 + 64) + 15;
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247F33C6C, 0, 0);
}

uint64_t sub_247F33C6C()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v0[40] = *(v0[4] + OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80638, &qword_247F3AED8);
  v4 = *(v2 + 72);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_247F3AE60;

  sub_247F3A5A8();
  sub_247F3A598();
  v0[2] = v6;
  sub_247F3A168(&qword_27EE80640, MEMORY[0x277D4B7F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80648, &qword_247F3AEE0);
  sub_247F35018();
  sub_247F3A748();
  sub_247F3A5E8();
  sub_247F3A168(&qword_27EE80658, MEMORY[0x277D4B808]);
  v8 = sub_247F3A6C8();

  return MEMORY[0x2822009F8](sub_247F33E24, v8, v7);
}

uint64_t sub_247F33E24()
{
  v1 = v0[40];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  sub_247F3A5C8();

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_247F33EC4, 0, 0);
}

uint64_t sub_247F33EC4()
{
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  swift_getOpaqueTypeConformance2();
  sub_247F3A708();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = *(MEMORY[0x277D856D0] + 4);
  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_247F33FD8;
  v8 = v0[39];
  v9 = v0[37];

  return MEMORY[0x282200308](v0 + 3, v9, AssociatedConformanceWitness);
}

uint64_t sub_247F33FD8()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_247F34D24;
  }

  else
  {
    v3 = sub_247F340EC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247F340EC()
{
  v1 = v0[3];
  if (v1)
  {
    v126 = *(v1 + 16);
    if (v126)
    {
      v2 = 0;
      v3 = v0[28];
      v116 = v0[22];
      v4 = v0[20];
      v114 = (v4 + 104);
      v112 = (v4 + 56);
      v139 = (v4 + 48);
      v99 = (v4 + 32);
      v103 = (v4 + 8);
      v5 = &unk_27EE80618;
      v129 = (v3 + 8);
      v110 = *MEMORY[0x277D4B7A0];
      v119 = v3;
      v122 = v0[3];
      v105 = (v3 + 32);
      v107 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v2 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        v7 = v0[26];
        v8 = v0[25];
        v9 = v0[23];
        v10 = v0[19];
        v131 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v137 = *(v119 + 72);
        v134 = *(v119 + 16);
        (v134)(v0[31], v1 + v131 + v137 * v2, v0[27]);
        sub_247F3A4E8();
        (*v114)(v8, v110, v10);
        (*v112)(v8, 0, 1, v10);
        v11 = *(v116 + 48);
        sub_247F39D20(v7, v9, v5, &qword_247F3AEC0);
        sub_247F39D20(v8, v9 + v11, v5, &qword_247F3AEC0);
        v12 = v5;
        v13 = *v139;
        v14 = (*v139)(v9, 1, v10);
        v15 = v0[19];
        if (v14 == 1)
        {
          break;
        }

        sub_247F39D20(v0[23], v0[24], v12, &qword_247F3AEC0);
        v18 = v13(v9 + v11, 1, v15);
        v108 = v0[26];
        v20 = v0[24];
        v19 = v0[25];
        if (v18 == 1)
        {
          v6 = v0[19];
          sub_247F39D88(v0[25], v12, &qword_247F3AEC0);
          sub_247F39D88(v108, v12, &qword_247F3AEC0);
          (*v103)(v20, v6);
          v5 = v12;
LABEL_5:
          sub_247F39D88(v0[23], &qword_27EE80610, &qword_247F3AEB8);
          goto LABEL_6;
        }

        v100 = v0[24];
        v101 = v0[23];
        v21 = v0[21];
        v22 = v0[19];
        (*v99)(v21, v9 + v11, v22);
        sub_247F3A168(&qword_27EE80668, MEMORY[0x277D4B7B0]);
        v23 = sub_247F3A638();
        v24 = *v103;
        (*v103)(v21, v22);
        sub_247F39D88(v19, v12, &qword_247F3AEC0);
        sub_247F39D88(v108, v12, &qword_247F3AEC0);
        v24(v100, v22);
        sub_247F39D88(v101, v12, &qword_247F3AEC0);
        v5 = v12;
        if (v23)
        {
          goto LABEL_14;
        }

LABEL_6:
        (*v129)(v0[31], v0[27]);
LABEL_7:
        ++v2;
        v1 = v122;
        if (v126 == v2)
        {

          v32 = *(v107 + 16);
          if (v32)
          {
            v33 = v107 + v131;
            v34 = v0[6];
            v115 = (v34 + 56);
            v120 = (v34 + 48);
            v109 = (v34 + 8);
            v113 = (v0[16] + 8);
            v35 = v0[11];
            v111 = (v35 + 48);
            v106 = (v35 + 32);
            v102 = (v34 + 32);
            v142 = MEMORY[0x277D84F90];
            v104 = (v35 + 8);
            while (1)
            {
              v140 = v32;
              v36 = v0[27];
              v38 = v0[17];
              v37 = v0[18];
              v39 = v0[14];
              v40 = v0[5];
              v132 = v33;
              v134(v0[29]);
              sub_247F3A578();
              sub_247F3A4D8();
              sub_247F3A548();
              (*v115)(v39, 1, 1, v40);
              v41 = sub_247F3A648();

              v42 = sub_247F3A438();
              v43 = sub_247F3A438();
              v117 = *v120;
              if ((*v120)(v39, 1, v40) == 1)
              {
                v44 = 0;
              }

              else
              {
                v45 = v0[14];
                v46 = v0[5];
                v44 = sub_247F3A3F8();
                (*v109)(v45, v46);
              }

              v47 = v0[29];
              v49 = v0[17];
              v48 = v0[18];
              v50 = v0[15];
              v51 = v0[9];
              v123 = v0[10];
              v127 = [objc_allocWithZone(DSContinuityDevice) initWithName:v41 deviceID:v42 relationshipID:v43 initialDiscoveryDate:v44];

              v52 = *v113;
              (*v113)(v49, v50);
              v52(v48, v50);
              sub_247F3A558();
              if ((*v111)(v51, 1, v123) == 1)
              {
                v53 = v0[9];
                v54 = &unk_27EE80600;
                v55 = &unk_247F3AEA8;
              }

              else
              {
                v56 = v0[13];
                v57 = v0[5];
                (*v106)(v0[12], v0[9], v0[10]);
                sub_247F3A4F8();
                v58 = v117(v56, 1, v57);
                v59 = v0[12];
                v60 = v0[13];
                if (v58 != 1)
                {
                  v62 = v0[7];
                  v63 = v0[8];
                  v64 = v0[5];
                  v124 = v0[10];
                  (*v102)(v63, v60, v64);
                  sub_247F3A508();
                  sub_247F38210(v62);
                  v65 = *v109;
                  (*v109)(v62, v64);
                  v66 = sub_247F3A648();

                  v61 = v127;
                  [v127 setFormattedSessionStart_];

                  sub_247F3A508();
                  sub_247F39430(v62, v63);
                  v65(v62, v64);
                  v67 = sub_247F3A648();

                  [v127 setFormattedSessionDuration_];

                  v65(v63, v64);
                  (*v104)(v59, v124);
                  goto LABEL_30;
                }

                (*v104)(v0[12], v0[10]);
                v53 = v60;
                v54 = &unk_27EE80608;
                v55 = &unk_247F3AEB0;
              }

              sub_247F39D88(v53, v54, v55);
              v61 = v127;
LABEL_30:
              v68 = v0[29];
              sub_247F3A538();
              if (v69)
              {
                v70 = sub_247F3A648();

                [v61 setMarketingName_];
              }

              v71 = v61;
              MEMORY[0x24C1BFDC0]();
              if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v74 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_247F3A6A8();
              }

              v72 = v0[29];
              v73 = v0[27];
              sub_247F3A6B8();

              (*v129)(v72, v73);
              v33 = v132 + v137;
              v32 = v140 - 1;
              if (v140 == 1)
              {
                v76 = v0[38];
                v75 = v0[39];
                v77 = v0[37];
                v141 = v142;

                (*(v76 + 8))(v75, v77);
                goto LABEL_42;
              }
            }
          }

          if (qword_27EE806F0 != -1)
          {
            swift_once();
          }

          v98 = sub_247F3A618();
          __swift_project_value_buffer(v98, qword_27EE806F8);
          v79 = sub_247F3A5F8();
          v80 = sub_247F3A718();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            *v81 = 0;
            v82 = "No actively paired devices";
            goto LABEL_40;
          }

          goto LABEL_41;
        }
      }

      v16 = v0[26];
      sub_247F39D88(v0[25], v12, &qword_247F3AEC0);
      sub_247F39D88(v16, v12, &qword_247F3AEC0);
      v17 = v13(v9 + v11, 1, v15);
      v5 = v12;
      if (v17 == 1)
      {
        sub_247F39D88(v0[23], v12, &qword_247F3AEC0);
LABEL_14:
        v25 = v5;
        v26 = *v105;
        (*v105)(v0[30], v0[31], v0[27]);
        v27 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_247F37CF8(0, *(v107 + 16) + 1, 1);
          v27 = v107;
        }

        v29 = *(v27 + 16);
        v28 = *(v27 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_247F37CF8(v28 > 1, v29 + 1, 1);
          v27 = v107;
        }

        v30 = v0[30];
        v31 = v0[27];
        *(v27 + 16) = v29 + 1;
        v107 = v27;
        v26(v27 + v131 + v29 * v137, v30, v31);
        v5 = v25;
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (qword_27EE806F0 != -1)
  {
LABEL_50:
    swift_once();
  }

  v78 = sub_247F3A618();
  __swift_project_value_buffer(v78, qword_27EE806F8);
  v79 = sub_247F3A5F8();
  v80 = sub_247F3A718();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    v82 = "No eligible devices found";
LABEL_40:
    _os_log_impl(&dword_247F32000, v79, v80, v82, v81, 2u);
    MEMORY[0x24C1C0320](v81, -1, -1);
  }

LABEL_41:
  v84 = v0[38];
  v83 = v0[39];
  v85 = v0[37];

  (*(v84 + 8))(v83, v85);
  v141 = MEMORY[0x277D84F90];
LABEL_42:
  v86 = v0[39];
  v87 = v0[36];
  v88 = v0[34];
  v89 = v0[30];
  v90 = v0[31];
  v91 = v0[29];
  v93 = v0[25];
  v92 = v0[26];
  v95 = v0[23];
  v94 = v0[24];
  v118 = v0[21];
  v121 = v0[18];
  v125 = v0[17];
  v128 = v0[14];
  v130 = v0[13];
  v133 = v0[12];
  v135 = v0[9];
  v136 = v0[8];
  v138 = v0[7];

  v96 = v0[1];

  return v96(v141);
}

uint64_t sub_247F34D24()
{
  (*(v0[38] + 8))(v0[39], v0[37]);
  if (qword_27EE806F0 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = sub_247F3A618();
  __swift_project_value_buffer(v2, qword_27EE806F8);
  MEMORY[0x24C1C0240](v1);
  v3 = sub_247F3A5F8();
  v4 = sub_247F3A728();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[42];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    MEMORY[0x24C1C0240](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_247F32000, v3, v4, "Device stream failed; %{public}@", v6, 0xCu);
    sub_247F39D88(v7, &qword_27EE80660, &qword_247F3AEE8);
    MEMORY[0x24C1C0320](v7, -1, -1);
    MEMORY[0x24C1C0320](v6, -1, -1);
  }

  v9 = v0[42];
  v10 = v0[39];
  v11 = v0[36];
  v12 = v0[34];
  v14 = v0[30];
  v13 = v0[31];
  v15 = v0[29];
  v16 = v3;
  v17 = v0[25];
  v18 = v0[26];
  v22 = v0[24];
  v23 = v0[23];
  v24 = v0[21];
  v25 = v0[18];
  v26 = v0[17];
  v27 = v0[14];
  v28 = v0[13];
  v29 = v0[12];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[7];

  swift_willThrow();

  v19 = v0[1];
  v20 = v0[42];

  return v19();
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

unint64_t sub_247F35018()
{
  result = qword_27EE80650;
  if (!qword_27EE80650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE80648, &qword_247F3AEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE80650);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_247F35240(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_247F352E8;

  return ContinuityPairing.fetchContinuityDevices()();
}

uint64_t sub_247F352E8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_247F3A268();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    sub_247F3A0BC();
    v10 = sub_247F3A698();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 24);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t ContinuityPairing.unpairDevice(with:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_247F3A468();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80670, &qword_247F3AEF8) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = sub_247F3A588();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80628, &qword_247F3AED0);
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = sub_247F3A5B8();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80620, &qword_247F3AEC8);
  v2[20] = v16;
  v17 = *(v16 - 8);
  v2[21] = v17;
  v18 = *(v17 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247F3570C, 0, 0);
}

uint64_t sub_247F3570C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[5];
  v4 = OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager;
  v0[24] = OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager;
  v0[25] = *(v3 + v4);
  v0[2] = MEMORY[0x277D84F90];
  sub_247F3A168(&qword_27EE80640, MEMORY[0x277D4B7F0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80648, &qword_247F3AEE0);
  sub_247F35018();
  sub_247F3A748();
  sub_247F3A5E8();
  sub_247F3A168(&qword_27EE80658, MEMORY[0x277D4B808]);
  v6 = sub_247F3A6C8();

  return MEMORY[0x2822009F8](sub_247F35880, v6, v5);
}

uint64_t sub_247F35880()
{
  v1 = v0[25];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  sub_247F3A5C8();

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_247F35920, 0, 0);
}

uint64_t sub_247F35920()
{
  v1 = v0[16];
  v2 = v0[14];
  (*(v0[21] + 16))(v0[22], v0[23], v0[20]);
  swift_getOpaqueTypeConformance2();
  sub_247F3A708();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_247F35A50;
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x282200308](v0 + 3, v7, AssociatedConformanceWitness);
}

uint64_t sub_247F35A50()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v5 = sub_247F36024;
  }

  else
  {
    v5 = sub_247F35BB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_247F35BB8()
{
  v1 = v0[3];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  if (!v1)
  {
    (*(v4 + 8))(v2, v3);
LABEL_11:
    if (qword_27EE806F0 != -1)
    {
      swift_once();
    }

    v23 = sub_247F3A618();
    __swift_project_value_buffer(v23, qword_27EE806F8);
    v24 = sub_247F3A5F8();
    v25 = sub_247F3A728();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_247F32000, v24, v25, "Fetch error: no known devices.", v26, 2u);
      MEMORY[0x24C1C0320](v26, -1, -1);
    }

    v28 = v0[22];
    v27 = v0[23];
    v29 = v0[19];
    v30 = v0[16];
    v31 = v0[13];
    v33 = v0[9];
    v32 = v0[10];
    v34 = v0[8];

    v22 = v0[1];
    goto LABEL_16;
  }

  (*(v4 + 8))(v2, v3);
  if (!*(v1 + 16))
  {

    goto LABEL_11;
  }

  v5 = v0[27];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[10];
  v9 = v0[4];
  *(swift_task_alloc() + 16) = v9;
  sub_247F36728(sub_247F39858, v1, v8);

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_247F39D88(v0[10], &qword_27EE80670, &qword_247F3AEF8);
    if (qword_27EE806F0 != -1)
    {
      swift_once();
    }

    v10 = sub_247F3A618();
    __swift_project_value_buffer(v10, qword_27EE806F8);
    v11 = sub_247F3A5F8();
    v12 = sub_247F3A728();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_247F32000, v11, v12, "Device to unpair is not in devices list.", v13, 2u);
      MEMORY[0x24C1C0320](v13, -1, -1);
    }

    sub_247F39888();
    swift_allocError();
    swift_willThrow();
    v15 = v0[22];
    v14 = v0[23];
    v16 = v0[19];
    v17 = v0[16];
    v18 = v0[13];
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];

    v22 = v0[1];
LABEL_16:

    return v22();
  }

  v36 = v0[24];
  v37 = v0[9];
  v38 = v0[5];
  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v0[28] = *(v38 + v36);

  sub_247F3A548();
  v39 = *(MEMORY[0x277D4B7D8] + 4);
  v42 = (*MEMORY[0x277D4B7D8] + MEMORY[0x277D4B7D8]);
  v40 = swift_task_alloc();
  v0[29] = v40;
  *v40 = v0;
  v40[1] = sub_247F36104;
  v41 = v0[9];

  return v42(v41);
}

uint64_t sub_247F36024()
{
  (*(v0[21] + 8))(v0[23], v0[20]);
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_247F36104()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[28];
  v6 = v2[9];
  v7 = v2[7];
  v8 = v2[6];
  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (v0)
  {
    v10(v6, v8);

    v12 = sub_247F36564;
  }

  else
  {
    v2[31] = v10;
    v2[32] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v6, v8);

    v12 = sub_247F362B0;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_247F362B0()
{
  v37 = v0;
  if (qword_27EE806F0 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  v5 = sub_247F3A618();
  __swift_project_value_buffer(v5, qword_27EE806F8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_247F3A5F8();
  v7 = sub_247F3A738();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[31];
  v9 = v0[32];
  v12 = v0[12];
  v11 = v0[13];
  v13 = v0[11];
  v14 = v0[8];
  v15 = v0[6];
  if (v8)
  {
    v35 = v0[11];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136380675;
    sub_247F3A168(&qword_27EE80680, MEMORY[0x277CC95F0]);
    v18 = sub_247F3A788();
    v19 = v10;
    v20 = v18;
    v34 = v11;
    v22 = v21;
    v19(v14, v15);
    v23 = sub_247F37750(v20, v22, &v36);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_247F32000, v6, v7, "Finished unpairing device with ID: %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1C0320](v17, -1, -1);
    MEMORY[0x24C1C0320](v16, -1, -1);

    (*(v12 + 8))(v34, v35);
  }

  else
  {

    v10(v14, v15);
    (*(v12 + 8))(v11, v13);
  }

  v25 = v0[22];
  v24 = v0[23];
  v26 = v0[19];
  v27 = v0[16];
  v28 = v0[13];
  v30 = v0[9];
  v29 = v0[10];
  v31 = v0[8];

  v32 = v0[1];

  return v32();
}

uint64_t sub_247F36564()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[30];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[13];
  v8 = v0[9];
  v7 = v0[10];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_247F36644()
{
  v0 = sub_247F3A468();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F3A4D8();
  v5 = sub_247F3A448();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t sub_247F36728@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_247F3A588();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_247F36A84(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_247F3A468();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_247F3A458();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_247F36BB0;

  return ContinuityPairing.unpairDevice(with:)(v9);
}

uint64_t sub_247F36BB0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v9 = *(*v1 + 16);
  v10 = *v1;

  (*(v7 + 8))(v6, v8);

  v11 = *(v3 + 48);
  if (v2)
  {
    v12 = sub_247F3A268();

    (*(v11 + 16))(v11, v12);
  }

  else
  {
    (*(v11 + 16))(*(v3 + 48), 0);
  }

  v14 = v4 + 40;
  v13 = *(v4 + 40);
  _Block_release(*(v14 + 8));

  v15 = *(v10 + 8);

  return v15();
}

id ContinuityPairing.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContinuityPairing.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC19DSContinuityPairing17ContinuityPairing_manager;
  sub_247F3A5E8();
  *&v0[v2] = sub_247F3A5D8();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id ContinuityPairing.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_247F36EE8()
{
  v0 = sub_247F3A618();
  __swift_allocate_value_buffer(v0, qword_27EE806F8);
  __swift_project_value_buffer(v0, qword_27EE806F8);
  return sub_247F3A608();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_247F36FA0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_247F3A224;

  return v7();
}

uint64_t sub_247F37088(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_247F37170;

  return v8();
}

uint64_t sub_247F37170()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_247F37264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE80690, &qword_247F3B018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_247F39D20(a3, v24 - v10, &qword_27EE80690, &qword_247F3B018);
  v12 = sub_247F3A6F8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_247F39D88(v11, &qword_27EE80690, &qword_247F3B018);
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

  sub_247F3A6E8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_247F3A6C8();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_247F3A668() + 32;
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

    sub_247F39D88(a3, &qword_27EE80690, &qword_247F3B018);

    return v22;
  }

LABEL_8:
  sub_247F39D88(a3, &qword_27EE80690, &qword_247F3B018);
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

uint64_t sub_247F37560(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_247F37658;

  return v7(a1);
}

uint64_t sub_247F37658()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_247F37750(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_247F3781C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_247F3A108(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_247F3781C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_247F37928(a5, a6);
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
    result = sub_247F3A778();
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

uint64_t sub_247F37928(uint64_t a1, unint64_t a2)
{
  v4 = sub_247F37974(a1, a2);
  sub_247F37AA4(&unk_285A11580);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_247F37974(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_247F37B90(v5, 0);
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

  result = sub_247F3A778();
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
        v10 = sub_247F3A678();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_247F37B90(v10, 0);
        result = sub_247F3A768();
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

uint64_t sub_247F37AA4(uint64_t result)
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

  result = sub_247F37C04(result, v12, 1, v3);
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

void *sub_247F37B90(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE806A0, &qword_247F3B088);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_247F37C04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE806A0, &qword_247F3B088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

size_t sub_247F37CF8(size_t a1, int64_t a2, char a3)
{
  result = sub_247F37D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_247F37D18(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE806E0, &qword_247F3B0A0);
  v10 = *(sub_247F3A588() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_247F3A588() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_247F37EF0(uint64_t a1)
{
  v2 = sub_247F3A4A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE806C8, &qword_247F3B098);
    v10 = sub_247F3A758();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_247F3A168(&qword_27EE806D0, MEMORY[0x277CC99D0]);
      v18 = sub_247F3A628();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_247F3A168(&qword_27EE806D8, MEMORY[0x277CC99D0]);
          v25 = sub_247F3A638();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_247F38210(uint64_t a1)
{
  v126 = sub_247F3A328();
  v125 = *(v126 - 8);
  v2 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_247F3A368();
  v159 = *(v4 - 8);
  v160 = v4;
  v5 = *(v159 + 64);
  MEMORY[0x28223BE20](v4);
  v158 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_247F3A2F8();
  v153 = *(v155 - 8);
  v7 = *(v153 + 64);
  MEMORY[0x28223BE20](v155);
  v150 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_247F3A308();
  v154 = *(v156 - 8);
  v9 = *(v154 + 64);
  MEMORY[0x28223BE20](v156);
  v151 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_247F3A2C8();
  v147 = *(v148 - 8);
  v11 = *(v147 + 64);
  MEMORY[0x28223BE20](v148);
  v145 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_247F3A348();
  v142 = *(v144 - 8);
  v13 = *(v142 + 64);
  MEMORY[0x28223BE20](v144);
  v141 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_247F3A388();
  v139 = *(v157 - 8);
  v15 = *(v139 + 64);
  v16 = MEMORY[0x28223BE20](v157);
  v123 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v140 = &v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v143 = &v122 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v146 = &v122 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v149 = &v122 - v25;
  MEMORY[0x28223BE20](v24);
  v152 = &v122 - v26;
  v27 = sub_247F3A4A8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v138 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_247F3A3B8();
  v136 = *(v137 - 8);
  v31 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v132 = &v122 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_247F3A3D8();
  v131 = *(v133 - 8);
  v33 = *(v131 + 64);
  MEMORY[0x28223BE20](v133);
  v129 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_247F3A3E8();
  v134 = *(v135 - 8);
  v35 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v130 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_247F3A258();
  v167 = *(v37 - 8);
  v168 = v37;
  v38 = *(v167 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_247F3A428();
  v164 = *(v172 - 8);
  v41 = v164[8];
  v42 = MEMORY[0x28223BE20](v172);
  v163 = &v122 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v161 = &v122 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v122 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v122 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = &v122 - v52;
  v54 = sub_247F3A4C8();
  v165 = *(v54 - 8);
  v166 = v54;
  v55 = *(v165 + 64);
  MEMORY[0x28223BE20](v54);
  v57 = &v122 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F3A498();
  sub_247F3A408();
  v170 = v53;
  sub_247F3A478();
  v162 = a1;
  sub_247F3A478();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE806B0, &qword_247F3B090);
  v58 = *(v28 + 72);
  v59 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_247F3AE70;
  v61 = *MEMORY[0x277CC9968];
  v128 = *(v28 + 104);
  v128(v60 + v59, v61, v27);
  sub_247F37EF0(v60);
  swift_setDeallocating();
  v127 = *(v28 + 8);
  v127(v60 + v59, v27);
  swift_deallocClassInstance();
  v171 = v51;
  v169 = v57;
  sub_247F3A488();

  v62 = sub_247F3A248();
  LOBYTE(v28) = v63;
  result = (*(v167 + 8))(v40, v168);
  if (v28)
  {
    if (qword_27EE806F0 != -1)
    {
      swift_once();
    }

    v65 = sub_247F3A618();
    __swift_project_value_buffer(v65, qword_27EE806F8);
    v66 = v164;
    v67 = v164[2];
    v68 = v161;
    v168 = v48;
    v69 = v172;
    v67(v161, v48, v172);
    v70 = v163;
    v67(v163, v171, v69);
    v71 = sub_247F3A5F8();
    v72 = sub_247F3A728();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v173 = v167;
      *v73 = 136315394;
      sub_247F3A168(&qword_27EE806A8, MEMORY[0x277CC9578]);
      v74 = sub_247F3A788();
      v76 = v75;
      v77 = v66[1];
      v77(v68, v172);
      v78 = sub_247F37750(v74, v76, &v173);
      v69 = v172;

      *(v73 + 4) = v78;
      *(v73 + 12) = 2080;
      v79 = v163;
      v80 = sub_247F3A788();
      v82 = v81;
      v77(v79, v69);
      v83 = sub_247F37750(v80, v82, &v173);

      *(v73 + 14) = v83;
      _os_log_impl(&dword_247F32000, v71, v72, "Dates are invalid. Start: %s Today: %s", v73, 0x16u);
      v84 = v167;
      swift_arrayDestroy();
      MEMORY[0x24C1C0320](v84, -1, -1);
      MEMORY[0x24C1C0320](v73, -1, -1);
    }

    else
    {

      v77 = v66[1];
      v77(v70, v69);
      v77(v68, v69);
    }

    v102 = v169;
    v77(v168, v69);
    v77(v171, v69);
    v77(v170, v69);
    (*(v165 + 8))(v102, v166);
    return 0;
  }

  else
  {
    v85 = v169;
    if (v62 < 0 && (v86 = __OFSUB__(0, v62), v62 = -v62, v86))
    {
      __break(1u);
    }

    else
    {
      if (v62 <= 1)
      {
        v103 = v129;
        sub_247F3A3C8();
        v104 = v132;
        sub_247F3A3A8();
        v105 = v130;
        sub_247F3A228();
        (*(v136 + 8))(v104, v137);
        (*(v131 + 8))(v103, v133);
        sub_247F3A168(&qword_27EE806B8, MEMORY[0x277CC94C0]);
        v106 = v135;
        sub_247F3A418();
        (*(v134 + 8))(v105, v106);
        v107 = v164[1];
        v108 = v172;
        v107(v48, v172);
        v107(v171, v108);
        v107(v170, v108);
        (*(v165 + 8))(v85, v166);
      }

      else
      {
        v168 = v48;
        v87 = *MEMORY[0x277CC9988];
        v88 = v138;
        v89 = v128;
        v128(v138, v87, v27);
        v90 = v85;
        v91 = sub_247F3A4B8();
        v92 = v127;
        v127(v88, v27);
        v89(v88, v87, v27);
        v93 = v90;
        v94 = sub_247F3A4B8();
        v95 = v92(v88, v27);
        v96 = (v139 + 8);
        if (v91 == v94)
        {
          v97 = v140;
          MEMORY[0x24C1BF970](v95);
          v98 = v141;
          sub_247F3A338();
          v99 = v143;
          sub_247F3A2A8();
          (*(v142 + 8))(v98, v144);
          v100 = *v96;
          v101 = v157;
          (*v96)(v97, v157);
        }

        else
        {
          v109 = v123;
          MEMORY[0x24C1BF970](v95);
          v110 = v124;
          sub_247F3A318();
          v111 = v140;
          sub_247F3A298();
          (*(v125 + 8))(v110, v126);
          v100 = *v96;
          v101 = v157;
          (*v96)(v109, v157);
          v112 = v141;
          sub_247F3A338();
          v99 = v143;
          sub_247F3A2A8();
          (*(v142 + 8))(v112, v144);
          v100(v111, v101);
        }

        v113 = v145;
        sub_247F3A2B8();
        v114 = v146;
        sub_247F3A278();
        (*(v147 + 8))(v113, v148);
        v100(v99, v101);
        v115 = v150;
        sub_247F3A2E8();
        v116 = v151;
        sub_247F3A2D8();
        (*(v153 + 8))(v115, v155);
        v117 = v149;
        sub_247F3A288();
        (*(v154 + 8))(v116, v156);
        v100(v114, v101);
        v118 = v158;
        sub_247F3A358();
        v119 = v152;
        sub_247F3A378();
        (*(v159 + 8))(v118, v160);
        v100(v117, v101);
        sub_247F3A168(&qword_27EE806C0, MEMORY[0x277CC9428]);
        sub_247F3A418();
        v100(v119, v101);
        v120 = v164[1];
        v121 = v172;
        v120(v168, v172);
        v120(v171, v121);
        v120(v170, v121);
        (*(v165 + 8))(v93, v166);
      }

      return v173;
    }
  }

  return result;
}

uint64_t sub_247F39430(uint64_t a1, uint64_t a2)
{
  v4 = sub_247F3A428();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v36[-v10];
  v12 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v12 setAllowedUnits_];
  sub_247F3A398();
  if (v13 < 60.0)
  {
    [v12 setAllowedUnits_];
  }

  [v12 setUnitsStyle_];
  v14 = sub_247F3A3F8();
  v15 = sub_247F3A3F8();
  v16 = [v12 stringFromDate:v14 toDate:v15];

  if (v16)
  {
    v17 = sub_247F3A658();
  }

  else
  {
    if (qword_27EE806F0 != -1)
    {
      swift_once();
    }

    v18 = sub_247F3A618();
    __swift_project_value_buffer(v18, qword_27EE806F8);
    v19 = v5[2];
    v19(v11, a1, v4);
    v19(v9, a2, v4);
    v20 = sub_247F3A5F8();
    v21 = sub_247F3A728();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = v39;
      *v22 = 136315394;
      sub_247F3A168(&qword_27EE806A8, MEMORY[0x277CC9578]);
      v38 = v20;
      v23 = sub_247F3A788();
      v25 = v24;
      v37 = v21;
      v26 = v5[1];
      v26(v11, v4);
      v27 = sub_247F37750(v23, v25, &v40);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      v28 = sub_247F3A788();
      v30 = v29;
      v26(v9, v4);
      v31 = sub_247F37750(v28, v30, &v40);

      *(v22 + 14) = v31;
      v32 = v38;
      _os_log_impl(&dword_247F32000, v38, v37, "Dates are invalid. Start: %s End: %s", v22, 0x16u);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x24C1C0320](v33, -1, -1);
      MEMORY[0x24C1C0320](v22, -1, -1);
    }

    else
    {

      v34 = v5[1];
      v34(v9, v4);
      v34(v11, v4);
    }

    return 0;
  }

  return v17;
}

unint64_t sub_247F39888()
{
  result = qword_27EE80678;
  if (!qword_27EE80678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE80678);
  }

  return result;
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

unint64_t sub_247F3992C()
{
  result = qword_27EE80688;
  if (!qword_27EE80688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE80688);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSContinuityError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DSContinuityError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_247F39A94()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247F39ADC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_247F3A224;

  return sub_247F36A84(v2, v3, v4);
}

uint64_t sub_247F39B94()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_247F3A224;

  return sub_247F36FA0(v2, v3, v5);
}

uint64_t sub_247F39C54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_247F3A224;

  return sub_247F37088(a1, v4, v5, v7);
}

uint64_t sub_247F39D20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_247F39D88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_247F39DE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247F39E20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247F3A224;

  return sub_247F37560(a1, v5);
}

uint64_t sub_247F39ED8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_247F37170;

  return sub_247F37560(a1, v5);
}

uint64_t sub_247F39F90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247F39FD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_247F37170;

  return sub_247F35240(v2, v3);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_247F3A0BC()
{
  result = qword_27EE80698;
  if (!qword_27EE80698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE80698);
  }

  return result;
}

uint64_t sub_247F3A108(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_247F3A168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}