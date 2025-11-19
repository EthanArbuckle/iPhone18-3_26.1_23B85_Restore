void sub_1D188DFC4(uint64_t a1)
{
  v43 = sub_1D1E66A7C();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  sub_1D1741C08(a1, v47, &qword_1EC649700, &qword_1D1E6E910);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD8, &qword_1D1E7BBC8);
    if (swift_dynamicCast())
    {
      v9 = v44;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1741A30(v47, &qword_1EC649700, &qword_1D1E6E910);
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
LABEL_6:
  v10 = [v9 objectEnumerator];
  if (v10)
  {
    v34 = v9;
    v11 = v10;
    v12 = [v10 allObjects];

    v13 = sub_1D1E67C1C();
    v36 = *(v13 + 16);
    if (v36)
    {
      v14 = 0;
      v37 = v13 + 32;
      v15 = MEMORY[0x1E69E7CC0];
      v16 = (v2 + 8);
      v35 = v13;
      while (v14 < *(v13 + 16))
      {
        v38 = v14;
        sub_1D1741970(v37 + 32 * v14, v50);
        sub_1D1741970(v50, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AA8, &qword_1D1E7BA30);
        if (swift_dynamicCast())
        {
          v17 = v44;
          v41 = *(v44 + 16);
          if (v41)
          {
            v18 = 0;
            v39 = v44;
            v40 = v44 + 32;
            while (v18 < *(v17 + 16))
            {
              sub_1D17419CC(v40 + 40 * v18, v47);
              v42 = v18 + 1;
              v19 = (v15 + 4);
              v20 = -v15[2];
              v21 = -1;
              while (v20 + v21 != -1)
              {
                if (++v21 >= v15[2])
                {
                  __break(1u);
                  goto LABEL_29;
                }

                v22 = v15;
                v23 = v19 + 40;
                sub_1D17419CC(v19, &v44);
                v24 = v45;
                v25 = v46;
                __swift_project_boxed_opaque_existential_1(&v44, v45);
                (*(v25 + 56))(v24, v25);
                v26 = v48;
                v27 = v49;
                __swift_project_boxed_opaque_existential_1(v47, v48);
                (*(v27 + 56))(v26, v27);
                v28 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
                v29 = *v16;
                v30 = v43;
                (*v16)(v6, v43);
                v29(v8, v30);
                __swift_destroy_boxed_opaque_existential_1(&v44);
                v19 = v23;
                v15 = v22;
                if (v28)
                {
                  v17 = v39;
                  v18 = v42;
                  goto LABEL_16;
                }
              }

              sub_1D17419CC(v47, &v44);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1D177DCF4(0, v15[2] + 1, 1, v15);
              }

              v17 = v39;
              v18 = v42;
              v32 = v15[2];
              v31 = v15[3];
              if (v32 >= v31 >> 1)
              {
                v15 = sub_1D177DCF4((v31 > 1), v32 + 1, 1, v15);
              }

              v15[2] = v32 + 1;
              sub_1D16EEE20(&v44, &v15[5 * v32 + 4]);
LABEL_16:
              __swift_destroy_boxed_opaque_existential_1(v47);
              if (v18 == v41)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
            break;
          }

LABEL_9:
        }

        __swift_destroy_boxed_opaque_existential_1(v50);
        v14 = v38 + 1;
        v13 = v35;
        if (v38 + 1 == v36)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:
    }
  }

  else
  {
  }
}

void sub_1D188E494(uint64_t a1)
{
  v43 = sub_1D1E66A7C();
  v2 = *(v43 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v43);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - v7;
  sub_1D1741C08(a1, v47, &qword_1EC649700, &qword_1D1E6E910);
  if (v48)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AD8, &qword_1D1E7BBC8);
    if (swift_dynamicCast())
    {
      v9 = v44;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D1741A30(v47, &qword_1EC649700, &qword_1D1E6E910);
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
LABEL_6:
  v10 = [v9 objectEnumerator];
  if (v10)
  {
    v34 = v9;
    v11 = v10;
    v12 = [v10 allObjects];

    v13 = sub_1D1E67C1C();
    v36 = *(v13 + 16);
    if (v36)
    {
      v14 = 0;
      v37 = v13 + 32;
      v15 = MEMORY[0x1E69E7CC0];
      v16 = (v2 + 8);
      v35 = v13;
      while (v14 < *(v13 + 16))
      {
        v38 = v14;
        sub_1D1741970(v37 + 32 * v14, v50);
        sub_1D1741970(v50, v47);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AB0, &qword_1D1E7BA50);
        if (swift_dynamicCast())
        {
          v17 = v44;
          v41 = *(v44 + 16);
          if (v41)
          {
            v18 = 0;
            v39 = v44;
            v40 = v44 + 32;
            while (v18 < *(v17 + 16))
            {
              sub_1D17419CC(v40 + 40 * v18, v47);
              v42 = v18 + 1;
              v19 = (v15 + 4);
              v20 = -v15[2];
              v21 = -1;
              while (v20 + v21 != -1)
              {
                if (++v21 >= v15[2])
                {
                  __break(1u);
                  goto LABEL_29;
                }

                v22 = v15;
                v23 = v19 + 40;
                sub_1D17419CC(v19, &v44);
                v24 = v45;
                v25 = v46;
                __swift_project_boxed_opaque_existential_1(&v44, v45);
                (*(v25 + 64))(v24, v25);
                v26 = v48;
                v27 = v49;
                __swift_project_boxed_opaque_existential_1(v47, v48);
                (*(v27 + 64))(v26, v27);
                v28 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
                v29 = *v16;
                v30 = v43;
                (*v16)(v6, v43);
                v29(v8, v30);
                __swift_destroy_boxed_opaque_existential_1(&v44);
                v19 = v23;
                v15 = v22;
                if (v28)
                {
                  v17 = v39;
                  v18 = v42;
                  goto LABEL_16;
                }
              }

              sub_1D17419CC(v47, &v44);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_1D177DD18(0, v15[2] + 1, 1, v15);
              }

              v17 = v39;
              v18 = v42;
              v32 = v15[2];
              v31 = v15[3];
              if (v32 >= v31 >> 1)
              {
                v15 = sub_1D177DD18((v31 > 1), v32 + 1, 1, v15);
              }

              v15[2] = v32 + 1;
              sub_1D16EEE20(&v44, &v15[5 * v32 + 4]);
LABEL_16:
              __swift_destroy_boxed_opaque_existential_1(v47);
              if (v18 == v41)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
            break;
          }

LABEL_9:
        }

        __swift_destroy_boxed_opaque_existential_1(v50);
        v14 = v38 + 1;
        v13 = v35;
        if (v38 + 1 == v36)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:
    }
  }

  else
  {
  }
}

uint64_t sub_1D188E964(uint64_t a1, uint64_t a2, void *a3)
{
  v4[135] = v3;
  v4[134] = a2;
  v4[133] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[136] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v4[137] = v7;
  v8 = *(v7 - 8);
  v4[138] = v8;
  v4[139] = *(v8 + 64);
  v4[140] = swift_task_alloc();
  v4[141] = swift_task_alloc();
  v4[142] = swift_task_alloc();
  v4[143] = swift_task_alloc();
  v4[144] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AC8, &qword_1D1E7BB98) - 8) + 64) + 15;
  v4[145] = swift_task_alloc();
  v4[146] = swift_task_alloc();
  v4[147] = swift_task_alloc();
  v4[148] = swift_task_alloc();
  v4[149] = *a3;
  v4[150] = sub_1D1E67E1C();
  v4[151] = sub_1D1E67E0C();
  v11 = sub_1D1E67D4C();
  v4[152] = v11;
  v4[153] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D188EB40, v11, v10);
}

uint64_t sub_1D188EB40()
{
  v90 = (v0 + 912);
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1072);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 1040) = MEMORY[0x1E69E7CC0];
  v92 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = 63 - v5;
  v8 = *(v0 + 1104);
  v9 = v7 >> 6;
  v89 = (v8 + 16);
  v95 = (v8 + 32);
  v86 = v8;
  v87 = v2;
  v91 = (v8 + 8);

  v10 = 0;
  v88 = v1;
  v85 = v9;
LABEL_4:
  v83 = v3;
  *(v0 + 1240) = v3;
  *(v0 + 1232) = 0;
  while (v6)
  {
    v11 = v10;
LABEL_17:
    v93 = *(v0 + 1176);
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v11 << 6);
    (*(v86 + 16))(*(v0 + 1152), *(v87 + 48) + *(v86 + 72) * v15, *(v0 + 1096));
    v16 = (*(v87 + 56) + (v15 << 7));
    v17 = v16[4];
    v18 = v16[5];
    v19 = v16[7];
    *(v0 + 112) = v16[6];
    *(v0 + 128) = v19;
    *(v0 + 80) = v17;
    *(v0 + 96) = v18;
    v20 = *v16;
    v21 = v16[1];
    v22 = v16[3];
    *(v0 + 48) = v16[2];
    *(v0 + 64) = v22;
    *(v0 + 16) = v20;
    *(v0 + 32) = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
    v24 = (v93 + *(v23 + 48));
    (*(v86 + 32))();
    v25 = *(v0 + 64);
    v27 = *(v0 + 16);
    v26 = *(v0 + 32);
    v24[2] = *(v0 + 48);
    v24[3] = v25;
    *v24 = v27;
    v24[1] = v26;
    v28 = *(v0 + 128);
    v30 = *(v0 + 80);
    v29 = *(v0 + 96);
    v24[6] = *(v0 + 112);
    v24[7] = v28;
    v24[4] = v30;
    v24[5] = v29;
    (*(*(v23 - 8) + 56))(v93, 0, 1, v23);
    sub_1D1741C08(v0 + 16, v0 + 144, &qword_1EC642C30, &qword_1D1E6E980);
    v1 = v88;
    v9 = v85;
LABEL_18:
    v31 = *(v0 + 1184);
    sub_1D1891DC8(*(v0 + 1176), v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
    *(v0 + 1248) = v32;
    v33 = *(v32 - 8);
    *(v0 + 1256) = v33;
    v34 = *(v33 + 48);
    *(v0 + 1264) = v34;
    *(v0 + 1272) = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v34(v31, 1, v32) == 1)
    {
      v67 = *(v0 + 1072);

      if (qword_1EC642200 != -1)
      {
        swift_once();
      }

      *(v0 + 1280) = qword_1EC6BE0C8;
      v68 = swift_task_alloc();
      *(v0 + 1288) = v68;
      *v68 = v0;
      v68[1] = sub_1D188F354;
      v69 = *(v0 + 1064);

      return sub_1D18A2E60(v0 + 1048, v69, v83);
    }

    v35 = *(v0 + 1184);
    v36 = *(v0 + 1144);
    v37 = *(v0 + 1096);
    v38 = (v35 + *(v32 + 48));
    v39 = v38[3];
    v41 = *v38;
    v40 = v38[1];
    *(v0 + 944) = v38[2];
    *(v0 + 960) = v39;
    *v90 = v41;
    *(v0 + 928) = v40;
    v42 = v38[7];
    v44 = v38[4];
    v43 = v38[5];
    *(v0 + 1008) = v38[6];
    *(v0 + 1024) = v42;
    *(v0 + 976) = v44;
    *(v0 + 992) = v43;
    sub_1D1741A30(v90, &qword_1EC642C30, &qword_1D1E6E980);
    (*v95)(v36, v35, v37);
    if (v1)
    {
      if (*(v1 + 16))
      {
        v45 = sub_1D1742188(*(v0 + 1144));
        if (v46)
        {
          v47 = (*(v1 + 56) + 32 * v45);
          v49 = v47[2];
          v48 = v47[3];
          v96 = *v47;
          v97 = v47[1];

          sub_1D1741C70(v49);
          v94 = v48;
          sub_1D1741C70(v48);
          if ((sub_1D186E41C() & 1) != 0 || !*(v1 + 16) || (sub_1D1742188(*(v0 + 1144)), (v50 & 1) == 0))
          {
            v53 = *(v0 + 1144);
            v54 = *(v0 + 1096);
            v76 = v54;
            v79 = *(v0 + 1136);
            v75 = *v89;
            (*v89)();
            v55 = type metadata accessor for _CoordinationClassObject();
            v56 = *(v55 + 48);
            v57 = *(v55 + 52);
            v84 = swift_allocObject();
            v74 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
            (v75)(v84 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v79, v76);
            v58 = swift_task_alloc();
            *(v58 + 16) = v79;
            v77 = sub_1D18924D8(sub_1D18922C0, v58, MEMORY[0x1E69E7CC0]);
            v80 = *(v0 + 1136);

            *(v84 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v77;
            v59 = swift_task_alloc();
            *(v59 + 16) = v80;
            v60 = sub_1D1788104(sub_1D18922A0, v59, MEMORY[0x1E69E7CC0]);
            v61 = *(v0 + 1096);
            v81 = *(v0 + 1136);
            v62 = v60;

            v63 = v81;
            *(v84 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v62;
            *(v84 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = 1;
            *(v84 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = 1;
            v82 = *v91;
            v64 = (*v91)(v63, v61);
            MEMORY[0x1D3891220](v64);
            if (*((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v66 = *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1D1E67C5C();
            }

            v65 = *(v0 + 1144);
            v78 = *(v0 + 1096);
            sub_1D1E67CAC();

            sub_1D1757B18(v49);
            sub_1D1757B18(v94);
            v82(v65, v78);
            v3 = *(v0 + 1040);
            v1 = v88;
            goto LABEL_4;
          }

          sub_1D1757B18(v49);
          sub_1D1757B18(v48);
        }
      }
    }

    (*v91)(*(v0 + 1144), *(v0 + 1096));
  }

  if (v9 <= v10 + 1)
  {
    v12 = v10 + 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v51 = *(v0 + 1176);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
      (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
      v6 = 0;
      v10 = v13;
      goto LABEL_18;
    }

    v6 = *(v92 + 8 * v11);
    ++v10;
    if (v6)
    {
      v10 = v11;
      goto LABEL_17;
    }
  }

  __break(1u);
  v71 = *(v0 + 1096);

  (*v91)(v83 + v74, v71);
  v72 = *(*v83 + 48);
  v73 = *(*v83 + 52);

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1D188F354()
{
  v1 = *v0;
  v2 = *(*v0 + 1288);
  v7 = *v0;

  v3 = v1[131];

  v4 = v1[153];
  v5 = v1[152];

  return MEMORY[0x1EEE6DFA0](sub_1D188F48C, v5, v4);
}

uint64_t sub_1D188F48C()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1072);

  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 1040) = MEMORY[0x1E69E7CC0];
  v4 = *(v2 + 32);
  *(v0 + 1416) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v2 + 64);
  v8 = *(v0 + 1232);

  v10 = 0;
  while (1)
  {
    *(v0 + 1304) = v3;
    *(v0 + 1296) = v8;
    v134 = v3;
    if (!v7)
    {
      break;
    }

    v11 = *(v0 + 1072);
LABEL_15:
    v16 = *(v0 + 1256);
    v17 = *(v0 + 1248);
    v18 = *(v0 + 1160);
    v19 = *(v0 + 1152);
    v20 = *(v0 + 1104);
    v21 = *(v0 + 1096);
    v132 = (v7 - 1) & v7;
    v22 = __clz(__rbit64(v7)) | (v10 << 6);
    (*(v20 + 16))(v19, *(v11 + 48) + *(v20 + 72) * v22, v21);
    v23 = (*(v11 + 56) + (v22 << 7));
    v24 = v23[4];
    v25 = v23[5];
    v26 = v23[7];
    *(v0 + 368) = v23[6];
    *(v0 + 384) = v26;
    *(v0 + 336) = v24;
    *(v0 + 352) = v25;
    v27 = *v23;
    v28 = v23[1];
    v29 = v23[3];
    *(v0 + 304) = v23[2];
    *(v0 + 320) = v29;
    *(v0 + 272) = v27;
    *(v0 + 288) = v28;
    v30 = (v18 + *(v17 + 48));
    (*(v20 + 32))(v18, v19, v21);
    v31 = *(v0 + 320);
    v33 = *(v0 + 272);
    v32 = *(v0 + 288);
    v30[2] = *(v0 + 304);
    v30[3] = v31;
    *v30 = v33;
    v30[1] = v32;
    v34 = *(v0 + 384);
    v36 = *(v0 + 336);
    v35 = *(v0 + 352);
    v30[6] = *(v0 + 368);
    v30[7] = v34;
    v30[4] = v36;
    v30[5] = v35;
    (*(v16 + 56))(v18, 0, 1, v17);
    sub_1D1741C08(v0 + 272, v0 + 400, &qword_1EC642C30, &qword_1D1E6E980);
    v37 = v132;
    v14 = v10;
LABEL_16:
    *(v0 + 1320) = v14;
    *(v0 + 1312) = v37;
    v38 = *(v0 + 1272);
    v39 = *(v0 + 1264);
    v40 = *(v0 + 1248);
    v41 = *(v0 + 1168);
    sub_1D1891DC8(*(v0 + 1160), v41);
    if (v39(v41, 1, v40) == 1)
    {
      v100 = *(v0 + 1072);

      v101 = swift_task_alloc();
      *(v0 + 1408) = v101;
      *v101 = v0;
      v101[1] = sub_1D18915B0;
      v102 = *(v0 + 1280);
      v103 = *(v0 + 1064);

      return sub_1D18A2E60(v0 + 1056, v103, v134);
    }

    v42 = *(v0 + 1128);
    v43 = *(v0 + 1104);
    v44 = *(v0 + 1096);
    v45 = *(v0 + 1080);
    v46 = (*(v0 + 1168) + *(*(v0 + 1248) + 48));
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[3];
    *(v0 + 560) = v46[2];
    *(v0 + 576) = v49;
    *(v0 + 528) = v47;
    *(v0 + 544) = v48;
    v50 = v46[4];
    v51 = v46[5];
    v52 = v46[7];
    *(v0 + 624) = v46[6];
    *(v0 + 640) = v52;
    *(v0 + 592) = v50;
    *(v0 + 608) = v51;
    v53 = *(v43 + 32);
    *(v0 + 1328) = v53;
    *(v0 + 1336) = (v43 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v53(v42);
    v54 = sub_1D187845C(v42);
    *(v0 + 1344) = v54;
    v55 = *(v0 + 640);
    *(v0 + 1352) = v55;
    if (!v55)
    {
      v104 = v54;
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v105 = *(v0 + 576);
      v106 = swift_task_alloc();
      *(v0 + 1360) = v106;
      *v106 = v0;
      v106[1] = sub_1D188FF00;

      return sub_1D1888C14(v104);
    }

    sub_1D1741C70(v55);
    sub_1D1757B18(v55);
    sub_1D1757B18(0);
    *(v0 + 1376) = MEMORY[0x1E69E7CC0];
    v56 = *(v0 + 648);
    *(v0 + 1384) = v56;
    if (!v56)
    {
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v107 = *(v0 + 632);
      v108 = swift_task_alloc();
      *(v0 + 1392) = v108;
      *v108 = v0;
      v108[1] = sub_1D1890A48;
      v109 = *(v0 + 1344);

      return sub_1D1888258(v109);
    }

    v57 = *(v0 + 1344);
    sub_1D1741C70(v56);
    sub_1D1757B18(v56);
    sub_1D1757B18(0);

    v58 = *(v0 + 1384);
    v117 = *(v0 + 1352);
    v125 = *(v0 + 1296);
    v127 = *(v0 + 1376);
    v59 = *(v0 + 1128);
    v60 = *(v0 + 1096);
    v121 = v60;
    v123 = *(v0 + 1120);
    v115 = (*(v0 + 1104) + 16);
    v129 = *v115;
    (*v115)();
    sub_1D1741C08(v0 + 528, v0 + 656, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v58);
    v61 = *(v0 + 528);
    v62 = *(v0 + 536);
    v130 = *(v0 + 544);
    v133 = *(v0 + 552);
    v135 = *(v0 + 560);
    v114 = *(v0 + 568);
    v119 = *(v0 + 576);
    v63 = *(v0 + 584);
    v64 = *(v0 + 592);
    v65 = *(v0 + 600);
    v66 = *(v0 + 608);
    v67 = *(v0 + 616);
    v68 = *(v0 + 624);
    v116 = *(v0 + 632);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D1741C08(v0 + 528, v0 + 784, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v117);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v69 = type metadata accessor for _CoordinationClassObject();
    v70 = *(v69 + 48);
    v71 = *(v69 + 52);
    v72 = swift_allocObject();
    v73 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
    (v129)(v72 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v123, v121);
    v74 = swift_task_alloc();
    *(v74 + 16) = v123;
    v75 = sub_1D18924D8(sub_1D1891E38, v74, v127);
    if (v125)
    {
      v110 = *(v0 + 1104);
      v111 = *(v0 + 1096);

      (*(v110 + 8))(v72 + v73, v111);
      v112 = *(*v72 + 48);
      v113 = *(*v72 + 52);

      return swift_deallocPartialClassInstance();
    }

    v76 = v75;
    v77 = *(v0 + 1120);

    *(v72 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v76;
    v78 = swift_task_alloc();
    *(v78 + 16) = v77;
    v79 = sub_1D1788104(sub_1D1891E58, v78, MEMORY[0x1E69E7CC0]);
    v80 = *(v0 + 1384);
    v81 = *(v0 + 1352);
    v82 = *(v0 + 1120);
    v83 = *(v0 + 1104);
    v84 = *(v0 + 1096);

    v85 = *(v83 + 8);
    *(v72 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v79;
    *(v72 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = v81;
    *(v72 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = v80;
    v131 = v85;
    v86 = v85(v82, v84);
    MEMORY[0x1D3891220](v86);
    if (*((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v99 = *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    v126 = *(v0 + 1336);
    v128 = *(v0 + 1376);
    v87 = *(v0 + 1200);
    v88 = *(v0 + 1152);
    v89 = *(v0 + 1128);
    v122 = v89;
    v124 = *(v0 + 1328);
    v118 = *(v0 + 1104);
    v120 = *(v0 + 1112);
    v90 = *(v0 + 1096);
    v91 = *(v0 + 1088);
    v92 = *(v0 + 1080);
    sub_1D1E67CAC();
    v136 = *(v0 + 1040);
    v93 = sub_1D1E67E7C();
    (*(*(v93 - 8) + 56))(v91, 1, 1, v93);
    (v129)(v88, v89, v90);
    v94 = v92;
    v95 = sub_1D1E67E0C();
    v96 = (*(v118 + 80) + 40) & ~*(v118 + 80);
    v97 = (v120 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    *(v98 + 2) = v95;
    *(v98 + 3) = MEMORY[0x1E69E85E0];
    *(v98 + 4) = v94;
    v124(&v98[v96], v88, v90);
    *&v98[v97] = v128;
    *&v98[(v97 + 15) & 0xFFFFFFFFFFFFFFF8] = MEMORY[0x1E69E7CC0];
    sub_1D17C6EF0(0, 0, v91, &unk_1D1E7BBA0, v98);

    sub_1D1741A30(v0 + 528, &qword_1EC642C30, &qword_1D1E6E980);
    result = v131(v122, v90);
    v3 = v136;
    v8 = 0;
    v10 = *(v0 + 1320);
    v7 = *(v0 + 1312);
  }

  v12 = ((1 << *(v0 + 1416)) + 63) >> 6;
  if (v12 <= (v10 + 1))
  {
    v13 = v10 + 1;
  }

  else
  {
    v13 = ((1 << *(v0 + 1416)) + 63) >> 6;
  }

  v14 = v13 - 1;
  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      (*(*(v0 + 1256) + 56))(*(v0 + 1160), 1, 1, *(v0 + 1248));
      v37 = 0;
      goto LABEL_16;
    }

    v11 = *(v0 + 1072);
    v7 = *(v11 + 8 * v15 + 64);
    ++v10;
    if (v7)
    {
      v10 = v15;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D188FF00(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1360);
  v7 = *v1;
  *(*v1 + 1368) = a1;

  v4 = *(v2 + 1224);
  v5 = *(v2 + 1216);

  return MEMORY[0x1EEE6DFA0](sub_1D1890028, v5, v4);
}

uint64_t sub_1D1890028()
{
  for (i = *(v0 + 1368); ; i = MEMORY[0x1E69E7CC0])
  {
    *(v0 + 1376) = i;
    v2 = *(v0 + 648);
    *(v0 + 1384) = v2;
    if (!v2)
    {
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v94 = *(v0 + 632);
      v95 = swift_task_alloc();
      *(v0 + 1392) = v95;
      *v95 = v0;
      v95[1] = sub_1D1890A48;
      v96 = *(v0 + 1344);

      return sub_1D1888258(v96);
    }

    v3 = *(v0 + 1344);
    sub_1D1741C70(v2);
    sub_1D1757B18(v2);
    sub_1D1757B18(0);

    v4 = *(v0 + 1384);
    v111 = *(v0 + 1352);
    v119 = *(v0 + 1296);
    v121 = *(v0 + 1376);
    v5 = *(v0 + 1128);
    v6 = *(v0 + 1096);
    v115 = v6;
    v117 = *(v0 + 1120);
    v109 = (*(v0 + 1104) + 16);
    v123 = *v109;
    (*v109)();
    sub_1D1741C08(v0 + 528, v0 + 656, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v4);
    v7 = *(v0 + 528);
    v8 = *(v0 + 536);
    v124 = *(v0 + 544);
    v126 = *(v0 + 552);
    v128 = *(v0 + 560);
    v108 = *(v0 + 568);
    v113 = *(v0 + 576);
    v9 = *(v0 + 584);
    v10 = *(v0 + 592);
    v11 = *(v0 + 600);
    v12 = *(v0 + 608);
    v13 = *(v0 + 616);
    v14 = *(v0 + 624);
    v110 = *(v0 + 632);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D1741C08(v0 + 528, v0 + 784, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v111);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v15 = type metadata accessor for _CoordinationClassObject();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    v19 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
    (v123)(v18 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v117, v115);
    v20 = swift_task_alloc();
    *(v20 + 16) = v117;
    v21 = sub_1D18924D8(sub_1D1891E38, v20, v121);
    if (v119)
    {
      v97 = *(v0 + 1104);
      v98 = *(v0 + 1096);

      (*(v97 + 8))(v18 + v19, v98);
      v99 = *(*v18 + 48);
      v100 = *(*v18 + 52);

      return swift_deallocPartialClassInstance();
    }

    v22 = v21;
    v23 = *(v0 + 1120);

    *(v18 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v22;
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    v25 = sub_1D1788104(sub_1D1891E58, v24, MEMORY[0x1E69E7CC0]);
    v26 = *(v0 + 1384);
    v27 = *(v0 + 1352);
    v28 = *(v0 + 1120);
    v29 = *(v0 + 1104);
    v30 = *(v0 + 1096);

    v31 = *(v29 + 8);
    *(v18 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v25;
    *(v18 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = v27;
    *(v18 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = v26;
    v125 = v31;
    v32 = v31(v28, v30);
    MEMORY[0x1D3891220](v32);
    if (*((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v93 = *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    v120 = *(v0 + 1336);
    v122 = *(v0 + 1376);
    v33 = *(v0 + 1200);
    v34 = *(v0 + 1152);
    v35 = *(v0 + 1128);
    v116 = v35;
    v118 = *(v0 + 1328);
    v112 = *(v0 + 1104);
    v114 = *(v0 + 1112);
    v36 = *(v0 + 1096);
    v37 = *(v0 + 1088);
    v38 = *(v0 + 1080);
    sub_1D1E67CAC();
    v129 = *(v0 + 1040);
    v39 = sub_1D1E67E7C();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
    (v123)(v34, v35, v36);
    v40 = v38;
    v41 = sub_1D1E67E0C();
    v42 = (*(v112 + 80) + 40) & ~*(v112 + 80);
    v43 = (v114 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 2) = v41;
    *(v44 + 3) = MEMORY[0x1E69E85E0];
    *(v44 + 4) = v40;
    v118(&v44[v42], v34, v36);
    *&v44[v43] = v122;
    *&v44[(v43 + 15) & 0xFFFFFFFFFFFFFFF8] = MEMORY[0x1E69E7CC0];
    sub_1D17C6EF0(0, 0, v37, &unk_1D1E7BBA0, v44);

    sub_1D1741A30(v0 + 528, &qword_1EC642C30, &qword_1D1E6E980);
    result = v125(v116, v36);
    v46 = *(v0 + 1320);
    v47 = *(v0 + 1312);
    *(v0 + 1304) = v129;
    *(v0 + 1296) = 0;
    if (!v47)
    {
      break;
    }

    v48 = *(v0 + 1072);
LABEL_16:
    v53 = *(v0 + 1256);
    v54 = *(v0 + 1248);
    v55 = *(v0 + 1160);
    v56 = *(v0 + 1152);
    v57 = *(v0 + 1104);
    v58 = *(v0 + 1096);
    v127 = (v47 - 1) & v47;
    v59 = __clz(__rbit64(v47)) | (v46 << 6);
    (*(v57 + 16))(v56, *(v48 + 48) + *(v57 + 72) * v59, v58);
    v60 = (*(v48 + 56) + (v59 << 7));
    v61 = v60[4];
    v62 = v60[5];
    v63 = v60[7];
    *(v0 + 368) = v60[6];
    *(v0 + 384) = v63;
    *(v0 + 336) = v61;
    *(v0 + 352) = v62;
    v64 = *v60;
    v65 = v60[1];
    v66 = v60[3];
    *(v0 + 304) = v60[2];
    *(v0 + 320) = v66;
    *(v0 + 272) = v64;
    *(v0 + 288) = v65;
    v67 = (v55 + *(v54 + 48));
    (*(v57 + 32))(v55, v56, v58);
    v68 = *(v0 + 320);
    v70 = *(v0 + 272);
    v69 = *(v0 + 288);
    v67[2] = *(v0 + 304);
    v67[3] = v68;
    *v67 = v70;
    v67[1] = v69;
    v71 = *(v0 + 384);
    v73 = *(v0 + 336);
    v72 = *(v0 + 352);
    v67[6] = *(v0 + 368);
    v67[7] = v71;
    v67[4] = v73;
    v67[5] = v72;
    (*(v53 + 56))(v55, 0, 1, v54);
    sub_1D1741C08(v0 + 272, v0 + 400, &qword_1EC642C30, &qword_1D1E6E980);
    v74 = v127;
    v51 = v46;
LABEL_17:
    *(v0 + 1320) = v51;
    *(v0 + 1312) = v74;
    v75 = *(v0 + 1272);
    v76 = *(v0 + 1264);
    v77 = *(v0 + 1248);
    v78 = *(v0 + 1168);
    sub_1D1891DC8(*(v0 + 1160), v78);
    if (v76(v78, 1, v77) == 1)
    {
      v101 = *(v0 + 1072);

      v102 = swift_task_alloc();
      *(v0 + 1408) = v102;
      *v102 = v0;
      v102[1] = sub_1D18915B0;
      v103 = *(v0 + 1280);
      v104 = *(v0 + 1064);

      return sub_1D18A2E60(v0 + 1056, v104, v129);
    }

    v79 = *(v0 + 1128);
    v80 = *(v0 + 1104);
    v81 = *(v0 + 1096);
    v82 = *(v0 + 1080);
    v83 = (*(v0 + 1168) + *(*(v0 + 1248) + 48));
    v84 = *v83;
    v85 = v83[1];
    v86 = v83[3];
    *(v0 + 560) = v83[2];
    *(v0 + 576) = v86;
    *(v0 + 528) = v84;
    *(v0 + 544) = v85;
    v87 = v83[4];
    v88 = v83[5];
    v89 = v83[7];
    *(v0 + 624) = v83[6];
    *(v0 + 640) = v89;
    *(v0 + 592) = v87;
    *(v0 + 608) = v88;
    v90 = *(v80 + 32);
    *(v0 + 1328) = v90;
    *(v0 + 1336) = (v80 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v90(v79);
    v91 = sub_1D187845C(v79);
    *(v0 + 1344) = v91;
    v92 = *(v0 + 640);
    *(v0 + 1352) = v92;
    if (!v92)
    {
      v105 = v91;
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v106 = *(v0 + 576);
      v107 = swift_task_alloc();
      *(v0 + 1360) = v107;
      *v107 = v0;
      v107[1] = sub_1D188FF00;

      return sub_1D1888C14(v105);
    }

    sub_1D1741C70(v92);
    sub_1D1757B18(v92);
    sub_1D1757B18(0);
  }

  v49 = ((1 << *(v0 + 1416)) + 63) >> 6;
  if (v49 <= (v46 + 1))
  {
    v50 = v46 + 1;
  }

  else
  {
    v50 = ((1 << *(v0 + 1416)) + 63) >> 6;
  }

  v51 = v50 - 1;
  while (1)
  {
    v52 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v52 >= v49)
    {
      (*(*(v0 + 1256) + 56))(*(v0 + 1160), 1, 1, *(v0 + 1248));
      v74 = 0;
      goto LABEL_17;
    }

    v48 = *(v0 + 1072);
    v47 = *(v48 + 8 * v52 + 64);
    ++v46;
    if (v47)
    {
      v46 = v52;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1890A48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1392);
  v4 = *(*v1 + 1344);
  v8 = *v1;
  *(*v1 + 1400) = a1;

  v5 = *(v2 + 1224);
  v6 = *(v2 + 1216);

  return MEMORY[0x1EEE6DFA0](sub_1D1890B94, v6, v5);
}

uint64_t sub_1D1890B94()
{
  for (i = *(v0 + 1400); ; i = v90)
  {
    v1 = *(v0 + 1384);
    v111 = *(v0 + 1352);
    v119 = *(v0 + 1296);
    v121 = *(v0 + 1376);
    v2 = *(v0 + 1128);
    v3 = *(v0 + 1096);
    v115 = v3;
    v117 = *(v0 + 1120);
    v109 = (*(v0 + 1104) + 16);
    v124 = *v109;
    (*v109)();
    sub_1D1741C08(v0 + 528, v0 + 656, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v1);
    v4 = *(v0 + 528);
    v5 = *(v0 + 536);
    v125 = *(v0 + 544);
    v127 = *(v0 + 552);
    v129 = *(v0 + 560);
    v108 = *(v0 + 568);
    v113 = *(v0 + 576);
    v6 = *(v0 + 584);
    v7 = *(v0 + 592);
    v8 = *(v0 + 600);
    v9 = *(v0 + 608);
    v10 = *(v0 + 616);
    v11 = *(v0 + 624);
    v110 = *(v0 + 632);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_1D1741C08(v0 + 528, v0 + 784, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1757B18(v111);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v12 = type metadata accessor for _CoordinationClassObject();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    v15 = swift_allocObject();
    v16 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
    (v124)(v15 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v117, v115);
    v17 = swift_task_alloc();
    *(v17 + 16) = v117;
    v18 = sub_1D18924D8(sub_1D1891E38, v17, v121);
    if (v119)
    {
      v94 = *(v0 + 1104);
      v95 = *(v0 + 1096);

      (*(v94 + 8))(v15 + v16, v95);
      v96 = *(*v15 + 48);
      v97 = *(*v15 + 52);

      return swift_deallocPartialClassInstance();
    }

    v19 = v18;
    v20 = *(v0 + 1120);

    *(v15 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v19;
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    v22 = sub_1D1788104(sub_1D1891E58, v21, i);
    v23 = *(v0 + 1384);
    v24 = *(v0 + 1352);
    v25 = *(v0 + 1120);
    v26 = *(v0 + 1104);
    v27 = *(v0 + 1096);

    v28 = *(v26 + 8);
    *(v15 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v22;
    *(v15 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = v24;
    *(v15 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = v23;
    v126 = v28;
    v29 = v28(v25, v27);
    MEMORY[0x1D3891220](v29);
    if (*((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v93 = *((*(v0 + 1040) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D1E67C5C();
    }

    v120 = *(v0 + 1336);
    v122 = *(v0 + 1376);
    v30 = *(v0 + 1200);
    v31 = *(v0 + 1152);
    v32 = *(v0 + 1128);
    v116 = v32;
    v118 = *(v0 + 1328);
    v112 = *(v0 + 1104);
    v114 = *(v0 + 1112);
    v33 = *(v0 + 1096);
    v34 = *(v0 + 1088);
    v35 = *(v0 + 1080);
    sub_1D1E67CAC();
    v130 = *(v0 + 1040);
    v36 = sub_1D1E67E7C();
    (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
    (v124)(v31, v32, v33);
    v37 = v35;
    v38 = sub_1D1E67E0C();
    v39 = (*(v112 + 80) + 40) & ~*(v112 + 80);
    v40 = (v114 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 2) = v38;
    *(v41 + 3) = MEMORY[0x1E69E85E0];
    *(v41 + 4) = v37;
    v118(&v41[v39], v31, v33);
    *&v41[v40] = v122;
    *&v41[(v40 + 15) & 0xFFFFFFFFFFFFFFF8] = i;
    sub_1D17C6EF0(0, 0, v34, &unk_1D1E7BBA0, v41);

    sub_1D1741A30(v0 + 528, &qword_1EC642C30, &qword_1D1E6E980);
    result = v126(v116, v33);
    v43 = *(v0 + 1320);
    v44 = *(v0 + 1312);
    *(v0 + 1304) = v130;
    *(v0 + 1296) = 0;
    if (!v44)
    {
      break;
    }

    v45 = *(v0 + 1072);
LABEL_15:
    v50 = *(v0 + 1256);
    v51 = *(v0 + 1248);
    v52 = *(v0 + 1160);
    v53 = *(v0 + 1152);
    v54 = *(v0 + 1104);
    v55 = *(v0 + 1096);
    v128 = (v44 - 1) & v44;
    v56 = __clz(__rbit64(v44)) | (v43 << 6);
    (*(v54 + 16))(v53, *(v45 + 48) + *(v54 + 72) * v56, v55);
    v57 = (*(v45 + 56) + (v56 << 7));
    v58 = v57[4];
    v59 = v57[5];
    v60 = v57[7];
    *(v0 + 368) = v57[6];
    *(v0 + 384) = v60;
    *(v0 + 336) = v58;
    *(v0 + 352) = v59;
    v61 = *v57;
    v62 = v57[1];
    v63 = v57[3];
    *(v0 + 304) = v57[2];
    *(v0 + 320) = v63;
    *(v0 + 272) = v61;
    *(v0 + 288) = v62;
    v64 = (v52 + *(v51 + 48));
    (*(v54 + 32))(v52, v53, v55);
    v65 = *(v0 + 320);
    v67 = *(v0 + 272);
    v66 = *(v0 + 288);
    v64[2] = *(v0 + 304);
    v64[3] = v65;
    *v64 = v67;
    v64[1] = v66;
    v68 = *(v0 + 384);
    v70 = *(v0 + 336);
    v69 = *(v0 + 352);
    v64[6] = *(v0 + 368);
    v64[7] = v68;
    v64[4] = v70;
    v64[5] = v69;
    (*(v50 + 56))(v52, 0, 1, v51);
    sub_1D1741C08(v0 + 272, v0 + 400, &qword_1EC642C30, &qword_1D1E6E980);
    v71 = v128;
    v48 = v43;
LABEL_16:
    *(v0 + 1320) = v48;
    *(v0 + 1312) = v71;
    v72 = *(v0 + 1272);
    v73 = *(v0 + 1264);
    v74 = *(v0 + 1248);
    v75 = *(v0 + 1168);
    sub_1D1891DC8(*(v0 + 1160), v75);
    if (v73(v75, 1, v74) == 1)
    {
      v98 = *(v0 + 1072);

      v99 = swift_task_alloc();
      *(v0 + 1408) = v99;
      *v99 = v0;
      v99[1] = sub_1D18915B0;
      v100 = *(v0 + 1280);
      v101 = *(v0 + 1064);

      return sub_1D18A2E60(v0 + 1056, v101, v130);
    }

    v76 = *(v0 + 1128);
    v77 = *(v0 + 1104);
    v78 = *(v0 + 1096);
    v79 = *(v0 + 1080);
    v80 = (*(v0 + 1168) + *(*(v0 + 1248) + 48));
    v81 = *v80;
    v82 = v80[1];
    v83 = v80[3];
    *(v0 + 560) = v80[2];
    *(v0 + 576) = v83;
    *(v0 + 528) = v81;
    *(v0 + 544) = v82;
    v84 = v80[4];
    v85 = v80[5];
    v86 = v80[7];
    *(v0 + 624) = v80[6];
    *(v0 + 640) = v86;
    *(v0 + 592) = v84;
    *(v0 + 608) = v85;
    v87 = *(v77 + 32);
    *(v0 + 1328) = v87;
    *(v0 + 1336) = (v77 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v87(v76);
    v88 = sub_1D187845C(v76);
    *(v0 + 1344) = v88;
    v89 = *(v0 + 640);
    *(v0 + 1352) = v89;
    if (!v89)
    {
      v102 = v88;
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v103 = *(v0 + 576);
      v104 = swift_task_alloc();
      *(v0 + 1360) = v104;
      *v104 = v0;
      v104[1] = sub_1D188FF00;

      return sub_1D1888C14(v102);
    }

    sub_1D1741C70(v89);
    sub_1D1757B18(v89);
    sub_1D1757B18(0);
    v90 = MEMORY[0x1E69E7CC0];
    *(v0 + 1376) = MEMORY[0x1E69E7CC0];
    v91 = *(v0 + 648);
    *(v0 + 1384) = v91;
    if (!v91)
    {
      sub_1D1757B18(0);
      sub_1D1757B18(0);
      v105 = *(v0 + 632);
      v106 = swift_task_alloc();
      *(v0 + 1392) = v106;
      *v106 = v0;
      v106[1] = sub_1D1890A48;
      v107 = *(v0 + 1344);

      return sub_1D1888258(v107);
    }

    v92 = *(v0 + 1344);
    sub_1D1741C70(v91);
    sub_1D1757B18(v91);
    sub_1D1757B18(0);
  }

  v46 = ((1 << *(v0 + 1416)) + 63) >> 6;
  if (v46 <= (v43 + 1))
  {
    v47 = v43 + 1;
  }

  else
  {
    v47 = ((1 << *(v0 + 1416)) + 63) >> 6;
  }

  v48 = v47 - 1;
  while (1)
  {
    v49 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v49 >= v46)
    {
      (*(*(v0 + 1256) + 56))(*(v0 + 1160), 1, 1, *(v0 + 1248));
      v71 = 0;
      goto LABEL_16;
    }

    v45 = *(v0 + 1072);
    v44 = *(v45 + 8 * v49 + 64);
    ++v43;
    if (v44)
    {
      v43 = v49;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18915B0()
{
  v1 = *v0;
  v2 = *(*v0 + 1408);
  v3 = *(*v0 + 1304);
  v8 = *v0;

  v4 = v1[132];

  v5 = v1[153];
  v6 = v1[152];

  return MEMORY[0x1EEE6DFA0](sub_1D189170C, v6, v5);
}

uint64_t sub_1D189170C()
{
  v1 = v0[151];
  v2 = v0[148];
  v3 = v0[147];
  v4 = v0[146];
  v5 = v0[145];
  v6 = v0[144];
  v7 = v0[143];
  v8 = v0[142];
  v9 = v0[141];
  v10 = v0[140];
  v13 = v0[136];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1891808(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v49 = a2;
  v58 = a4;
  v50 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A50, &unk_1D1E7B910);
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v72 = &v48 - v6;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = 0;
  v60 = a3;
  v13 = 0;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v55 = v8;
  v56 = v8 + 16;
  v52 = v15;
  v53 = (v8 + 8);
  v51 = v20;
  v54 = v12;
LABEL_6:
  if (v19)
  {
    v21 = __clz(__rbit64(v19));
    v62 = (v19 - 1) & v19;
LABEL_13:
    v24 = v60;
    v25 = *(v8 + 72);
    v26 = *(v8 + 16);
    v27 = v21 | (v13 << 6);
    v26(v12, v60[6] + v25 * v27, v7);
    v28 = v24[7];
    v61 = v27;
    v29 = (v28 + (v27 << 7));
    v30 = v29[3];
    v32 = *v29;
    v31 = v29[1];
    v66 = v29[2];
    v67 = v30;
    v64 = v32;
    v65 = v31;
    v33 = v29[7];
    v35 = v29[4];
    v34 = v29[5];
    v70 = v29[6];
    v71 = v33;
    v68 = v35;
    v69 = v34;
    v36 = v72;
    v26(v72, v12, v7);
    v8 = v55;
    v37 = (v36 + *(v57 + 48));
    v38 = v69;
    v37[4] = v68;
    v37[5] = v38;
    v39 = v71;
    v37[6] = v70;
    v37[7] = v39;
    v40 = v65;
    *v37 = v64;
    v37[1] = v40;
    v41 = v67;
    v37[2] = v66;
    v37[3] = v41;
    v42 = v58;
    v43 = *(v58 + 16);
    sub_1D1741C08(&v64, v63, &qword_1EC642C30, &qword_1D1E6E980);
    sub_1D1741C08(&v64, v63, &qword_1EC642C30, &qword_1D1E6E980);
    v44 = v43 + 1;
    v45 = v42;
    do
    {
      if (!--v44)
      {
        sub_1D1741A30(v72, &qword_1EC645A50, &unk_1D1E7B910);
        sub_1D1741A30(&v64, &qword_1EC642C30, &qword_1D1E6E980);
        v12 = v54;
        result = (*v53)(v54, v7);
LABEL_5:
        v20 = v51;
        v15 = v52;
        v19 = v62;
        goto LABEL_6;
      }

      v46 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      sub_1D174A5FC(&qword_1EE07D170);
      v45 += v25;
    }

    while ((sub_1D1E6775C() & 1) == 0);
    sub_1D1741A30(v72, &qword_1EC645A50, &unk_1D1E7B910);
    sub_1D1741A30(&v64, &qword_1EC642C30, &qword_1D1E6E980);
    v12 = v54;
    result = (*v53)(v54, v7);
    *(v50 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v61;
    if (!__OFADD__(v59++, 1))
    {
      goto LABEL_5;
    }

    __break(1u);
    return sub_1D188D0A0(v50, v49, v59, v60);
  }

  else
  {
    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v20)
      {
        return sub_1D188D0A0(v50, v49, v59, v60);
      }

      v23 = v15[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v62 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1891C08(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v10 = sub_1D188AEF4(v13, v7, a1, a2);
      MEMORY[0x1D3893640](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1D1891808((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1D1891DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AC8, &qword_1D1E7BB98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1891E74(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4BFC;

  return sub_1D187538C(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 16);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1D189212C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = *(v5 + 16);
  v10 = v5 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return a5(a1, a2, v9, v10);
}

uint64_t sub_1D18921C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1892230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18922DC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for BoxedTileInfoBearer(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1D178CD64(0, v11, 0);
  v12 = v22;
  v13 = *(type metadata accessor for StaticService(0) - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D178CD64(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1D18A2B2C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, type metadata accessor for BoxedTileInfoBearer);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18924D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = type metadata accessor for StaticAlarm();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v18 = MEMORY[0x1E69E7CC0];
  sub_1D178D4EC(0, v11, 0);
  v12 = v18;
  for (i = a3 + 32; ; i += 40)
  {
    (v17[0])(i);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v18 = v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D178D4EC(v14 > 1, v15 + 1, 1);
      v12 = v18;
    }

    *(v12 + 16) = v15 + 1;
    sub_1D18A2B2C(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for StaticAlarm);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1892678(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1D178D744(0, v11, 0);
  v12 = v22;
  v13 = *(sub_1D1E66A7C() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D178D744(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1D1741A90(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_1EC643010, &qword_1D1E90E20);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1892878(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1D178D704(0, v11, 0);
  v12 = v22;
  v13 = (a3 + 32);
  while (1)
  {
    v14 = *v13++;
    v21 = v14;
    v19(&v21);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1D178D704(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1D1741A90(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, &qword_1EC643018, &qword_1D1E9AC00);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1892A20(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a2;
  v5 = type metadata accessor for MatterTilePath(0);
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1D178D9D0(0, v8, 0);
    v36 = v38;
    v10 = a3 + 64;
    v11 = -1 << *(a3 + 32);
    v12 = sub_1D1E6869C();
    v13 = 0;
    v28 = a3 + 72;
    v29 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a3 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v33 = v13;
      v16 = *(a3 + 36);
      v37 = *(*(a3 + 48) + 8 * v12);
      v31(&v37);
      v34 = v3;
      if (v3)
      {
        goto LABEL_27;
      }

      v17 = v36;
      v38 = v36;
      v19 = *(v36 + 16);
      v18 = *(v36 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D178D9D0(v18 > 1, v19 + 1, 1);
        v17 = v38;
      }

      *(v17 + 16) = v19 + 1;
      v20 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v36 = v17;
      sub_1D18A2B2C(v35, v17 + v20 + *(v30 + 72) * v19, type metadata accessor for MatterTilePath);
      v14 = 1 << *(a3 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v21 = *(v10 + 8 * v15);
      if ((v21 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v16 != *(a3 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v12 & 0x3F));
      if (v22)
      {
        v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v15 << 6;
        v24 = v15 + 1;
        v25 = (v28 + 8 * v15);
        while (v24 < (v14 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1D1716920(v12, v16, 0);
            v14 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_1D1716920(v12, v16, 0);
      }

LABEL_4:
      v3 = v34;
      v13 = v33 + 1;
      v12 = v14;
      if (v33 + 1 == v29)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1892D24(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v9 = (a3 + 36);
    while (1)
    {
      v10 = *v9;
      v12[0] = *(v9 - 4);
      v13 = v10;
      a1(&v14, v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v9 += 2;
      sub_1D1E6896C();
      v11 = *(v15 + 16);
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      if (!--v6)
      {
        return v15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1892E1C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v43 = a2;
  v41 = sub_1D1E66A7C();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v34 - v12;
  v13 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v39 = v9;
    v50 = MEMORY[0x1E69E7CC0];
    v44 = v6;
    sub_1D178DBC0(0, v13, 0);
    v15 = v44;
    v49 = v50;
    v16 = a3 + 56;
    v17 = -1 << *(a3 + 32);
    v18 = sub_1D1E6869C();
    v19 = 0;
    v37 = v15 + 16;
    v38 = (v15 + 8);
    v35 = a3 + 64;
    v36 = v13;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a3 + 32))
    {
      v21 = v18 >> 6;
      if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_23;
      }

      v45 = v19;
      v47 = *(a3 + 36);
      v22 = a3;
      v23 = *(a3 + 48) + *(v15 + 72) * v18;
      v13 = v39;
      a3 = v41;
      (*(v15 + 16))(v39, v23, v41);
      v42(v13);
      v46 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      (*v38)(v13, a3);
      v24 = v49;
      v50 = v49;
      v13 = *(v49 + 16);
      v25 = *(v49 + 24);
      a3 = v13 + 1;
      if (v13 >= v25 >> 1)
      {
        sub_1D178DBC0(v25 > 1, v13 + 1, 1);
        v24 = v50;
      }

      *(v24 + 16) = a3;
      v26 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v49 = v24;
      sub_1D1741A90(v48, v24 + v26 + *(v40 + 72) * v13, &qword_1EC6436C8, &unk_1D1E97C40);
      v20 = 1 << *(v22 + 32);
      if (v18 >= v20)
      {
        goto LABEL_24;
      }

      v27 = *(v16 + 8 * v21);
      if ((v27 & (1 << v18)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v22;
      if (v47 != *(v22 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v18 & 0x3F));
      if (v28)
      {
        v20 = __clz(__rbit64(v28)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v21 << 6;
        v30 = v21 + 1;
        v31 = (v35 + 8 * v21);
        while (v30 < (v20 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_1D1716920(v18, v47, 0);
            v20 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        sub_1D1716920(v18, v47, 0);
      }

LABEL_4:
      v4 = v46;
      v19 = v45 + 1;
      v18 = v20;
      v13 = v36;
      v15 = v44;
      if (v45 + 1 == v36)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    (*v38)(v13, a3);

    __break(1u);
  }

  return result;
}

uint64_t CoordinationDataModel.toggleAlarm(staticAlarmID:parentContainerID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[87] = v3;
  v4[86] = a3;
  v4[85] = a2;
  v4[84] = a1;
  v4[88] = swift_getObjectType();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v4[89] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v4[90] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v4[91] = v7;
  v8 = *(v7 - 8);
  v4[92] = v8;
  v9 = *(v8 + 64) + 15;
  v4[93] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[94] = swift_task_alloc();
  v11 = *(type metadata accessor for StaticAlarm() - 8);
  v4[95] = v11;
  v12 = *(v11 + 64) + 15;
  v4[96] = swift_task_alloc();
  v13 = sub_1D1E66A7C();
  v4[97] = v13;
  v14 = *(v13 - 8);
  v4[98] = v14;
  v4[99] = *(v14 + 64);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = sub_1D1E67E1C();
  v4[105] = sub_1D1E67E0C();
  v16 = sub_1D1E67D4C();
  v4[106] = v16;
  v4[107] = v15;

  return MEMORY[0x1EEE6DFA0](sub_1D1893478, v16, v15);
}

uint64_t sub_1D1893478()
{
  v179 = v0;
  v1 = *(v0 + 696);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_10;
  }

  v4 = *(v0 + 688);

  v5 = sub_1D1742188(v4);
  if ((v6 & 1) == 0)
  {

LABEL_10:
    v46 = *(v0 + 840);
    v47 = *(v0 + 672);

    *v47 = 0;
    goto LABEL_19;
  }

  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  v9 = *(v0 + 680);
  v10 = (*(v3 + 56) + (v5 << 7));
  v11 = v10[3];
  v13 = *v10;
  v12 = v10[1];
  *(v0 + 48) = v10[2];
  *(v0 + 64) = v11;
  *(v0 + 16) = v13;
  *(v0 + 32) = v12;
  v14 = v10[7];
  v16 = v10[4];
  v15 = v10[5];
  *(v0 + 112) = v10[6];
  *(v0 + 128) = v14;
  *(v0 + 80) = v16;
  *(v0 + 96) = v15;
  sub_1D18783EC(v0 + 16, v0 + 144);

  sub_1D187695C(v9, v8, v0 + 408);
  if (*(v0 + 432))
  {
    sub_1D16EEE20((v0 + 408), v0 + 368);
    v17 = swift_allocObject();
    *(v0 + 864) = v17;
    v18 = *(v0 + 392);
    v19 = *(v0 + 400);
    __swift_project_boxed_opaque_existential_1((v0 + 368), v18);
    (*(v19 + 80))(v18, v19);
    if (*(v0 + 472))
    {
      sub_1D16EEE20((v0 + 448), (v17 + 2));
      if (qword_1EC642210 != -1)
      {
        swift_once();
      }

      v20 = *(v0 + 824);
      v21 = *(v0 + 784);
      v22 = *(v0 + 776);
      v23 = *(v0 + 688);
      v24 = sub_1D1E6709C();
      __swift_project_value_buffer(v24, qword_1EC6459E8);
      v172 = *(v21 + 16);
      v172(v20, v23, v22);

      v25 = sub_1D1E6707C();
      v26 = sub_1D1E6835C();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 824);
      v29 = *(v0 + 784);
      v30 = *(v0 + 776);
      if (v27)
      {
        v31 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        *&v177[0] = v173;
        *v31 = 136315394;
        swift_beginAccess();
        v170 = v26;
        v164 = v28;
        v32 = v17[5];
        v33 = v17[6];
        v34 = __swift_project_boxed_opaque_existential_1(v17 + 2, v32);
        v35 = *(v32 - 8);
        v36 = *(v35 + 64) + 15;
        loga = v25;
        v37 = swift_task_alloc();
        (*(v35 + 16))(v37, v34, v32);
        v38 = (*(*(v33 + 8) + 64))(v32);
        v40 = v39;
        (*(v35 + 8))(v37, v32);

        v41 = sub_1D1B1312C(v38, v40, v177);

        *(v31 + 4) = v41;
        *(v31 + 12) = 2080;
        sub_1D1886B8C();
        v42 = sub_1D1E68FAC();
        v44 = v43;
        (*(v29 + 8))(v164, v30);
        v45 = sub_1D1B1312C(v42, v44, v177);

        *(v31 + 14) = v45;
        _os_log_impl(&dword_1D16EC000, loga, v170, "attempt to toggle alarm %s for parent %s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v173, -1, -1);
        MEMORY[0x1D3893640](v31, -1, -1);
      }

      else
      {

        (*(v29 + 8))(v28, v30);
      }

      v86 = *(v0 + 816);
      v165 = *(v0 + 832);
      logb = *(v0 + 792);
      v175 = *(v0 + 784);
      v87 = *(v0 + 776);
      v171 = *(v0 + 768);
      v161 = *(v0 + 752);
      v162 = *(v0 + 696);
      v88 = *(v0 + 688);
      v157 = v87;
      swift_beginAccess();
      v90 = v17[5];
      v89 = v17[6];
      __swift_project_boxed_opaque_existential_1(v17 + 2, v90);
      LOBYTE(v89) = (*(*(v89 + 8) + 48))(v90);
      swift_endAccess();
      swift_beginAccess();
      v91 = v17[5];
      v92 = v17[6];
      __swift_mutable_project_boxed_opaque_existential_1((v17 + 2), v91);
      (*(v92 + 64))((v89 & 1) == 0, v91, v92);
      swift_endAccess();
      v93 = v17[5];
      v94 = v17[6];
      v95 = __swift_project_boxed_opaque_existential_1(v17 + 2, v93);
      v96 = *(v93 - 8);
      v97 = *(v96 + 64) + 15;
      v98 = swift_task_alloc();
      (*(v96 + 16))(v98, v95, v93);
      v172(v86, v88, v87);
      sub_1D1869A54(v98, v86, v93, *(v94 + 8), v171);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1D1E739C0;
      v100 = v17[5];
      v101 = v17[6];
      v102 = __swift_project_boxed_opaque_existential_1(v17 + 2, v100);
      *(v99 + 56) = v100;
      *(v99 + 64) = *(v101 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v99 + 32));
      (*(*(v100 - 8) + 16))(boxed_opaque_existential_1, v102, v100);
      v104 = sub_1D1E67E7C();
      (*(*(v104 - 8) + 56))(v161, 1, 1, v104);
      v151 = v17;
      v172(v86, v88, v157);
      v105 = v162;
      v106 = sub_1D1E67E0C();
      v107 = *(v175 + 80);
      v153 = ~v107;
      v108 = (v107 + 56) & ~v107;
      v150 = v107;
      v109 = swift_allocObject();
      v110 = MEMORY[0x1E69E85E0];
      *(v109 + 16) = v106;
      *(v109 + 24) = v110;
      *(v109 + 32) = 0;
      *(v109 + 40) = v99;
      *(v109 + 48) = v105;
      log = *(v175 + 32);
      (log)(v109 + v108, v86, v157);
      sub_1D17C6EF0(0, 0, v161, &unk_1D1E7BA28, v109);

      if (qword_1EE07B1E8 != -1)
      {
        swift_once();
      }

      v152 = *(v0 + 792);
      v111 = *(v0 + 776);
      v163 = *(v0 + 816);
      v112 = *(v0 + 760);
      v113 = *(v0 + 744);
      v114 = *(v0 + 736);
      v149 = *(v0 + 728);
      v115 = *(v0 + 720);
      v147 = *(v0 + 768);
      v148 = *(v0 + 712);
      v154 = *(v0 + 696);
      v155 = *(v0 + 704);
      v116 = *(v0 + 688);
      v166 = v116;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
      __swift_project_value_buffer(v117, qword_1EE07B210);
      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868);
      v118 = *(v159 + 48);
      v172(v115, v116, v111);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
      v119 = (*(v112 + 80) + 32) & ~*(v112 + 80);
      v156 = *(v112 + 72);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1D1E739C0;
      v158 = v119;
      sub_1D18A1F94(v147, v120 + v119, type metadata accessor for StaticAlarm);
      *(v115 + v118) = v120;
      swift_storeEnumTagMultiPayload();
      sub_1D1E67ECC();
      (*(v114 + 8))(v113, v149);
      sub_1D17419CC((v151 + 2), v0 + 488);
      v121 = *(v0 + 512);
      v122 = *(v0 + 520);
      v123 = __swift_project_boxed_opaque_existential_1((v0 + 488), v121);
      v124 = *(v0 + 64);
      v125 = *(v0 + 32);
      v177[0] = *(v0 + 16);
      v177[1] = v125;
      v177[2] = *(v0 + 48);
      v178 = v124;
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AF8, &qword_1D1E7BC28);
      v127 = *(*(v122 + 8) + 8);
      v128 = sub_1D1871BF8(v123, v126, v121);
      v172(v163, v166, v111);
      v129 = (v150 + 24) & v153;
      v130 = swift_allocObject();
      *(v130 + 16) = v151;
      (log)(v130 + v129, v163, v111);
      *(v0 + 304) = sub_1D18A1CF0;
      *(v0 + 312) = v130;
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1D18A2E5C;
      *(v0 + 296) = &block_descriptor_9;
      v131 = _Block_copy((v0 + 272));
      v132 = *(v0 + 312);

      aBlock = [v128 addSuccessBlock_];
      _Block_release(v131);

      __swift_destroy_boxed_opaque_existential_1((v0 + 488));
      v172(v163, v166, v111);
      sub_1D17419CC(v0 + 368, v0 + 528);
      v133 = (v152 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
      v134 = (v133 + 47) & 0xFFFFFFFFFFFFFFF8;
      v135 = swift_allocObject();
      *(v135 + 16) = v151;
      (log)(v135 + v129, v163, v111);
      sub_1D16EEE20((v0 + 528), v135 + v133);
      *(v135 + v134) = v154;
      *(v135 + ((v134 + 15) & 0xFFFFFFFFFFFFFFF8)) = v155;
      *(v0 + 352) = sub_1D18A1D7C;
      *(v0 + 360) = v135;
      *(v0 + 320) = MEMORY[0x1E69E9820];
      *(v0 + 328) = 1107296256;
      *(v0 + 336) = sub_1D189C628;
      *(v0 + 344) = &block_descriptor_13;
      v136 = _Block_copy((v0 + 320));
      v137 = *(v0 + 360);

      v138 = v154;

      v139 = [aBlock addFailureBlock_];
      _Block_release(v136);

      if (qword_1EC642200 != -1)
      {
        swift_once();
      }

      v140 = *(v0 + 768);
      v141 = *(v0 + 720);
      v142 = *(v0 + 712);
      v143 = *(v159 + 48);
      v172(v141, *(v0 + 688), *(v0 + 776));
      v144 = swift_allocObject();
      *(v144 + 16) = xmmword_1D1E739C0;
      sub_1D18A1F94(v140, v144 + v158, type metadata accessor for StaticAlarm);
      *(v141 + v143) = v144;
      swift_storeEnumTagMultiPayload();
      v145 = swift_task_alloc();
      *(v0 + 872) = v145;
      *v145 = v0;
      v145[1] = sub_1D1894548;
      v146 = *(v0 + 720);

      return sub_1D18A2E60(v0 + 664, v146, 0);
    }

    v49 = *(v0 + 840);

    sub_1D1741A30(v0 + 448, &qword_1EC645AF0, &qword_1D1E7BC20);
    swift_deallocUninitializedObject();
    __swift_destroy_boxed_opaque_existential_1((v0 + 368));
  }

  else
  {
    v48 = *(v0 + 840);

    sub_1D1741A30(v0 + 408, &qword_1EC645670, &qword_1D1E7B950);
  }

  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 808);
  v51 = *(v0 + 800);
  v52 = *(v0 + 784);
  v53 = *(v0 + 776);
  v54 = *(v0 + 688);
  v55 = *(v0 + 680);
  v56 = sub_1D1E6709C();
  __swift_project_value_buffer(v56, qword_1EC6459E8);
  v57 = *(v52 + 16);
  v57(v50, v55, v53);
  v57(v51, v54, v53);
  v58 = sub_1D1E6707C();
  v59 = sub_1D1E6833C();
  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 808);
  v62 = *(v0 + 800);
  v63 = *(v0 + 784);
  v64 = *(v0 + 776);
  if (v60)
  {
    v174 = v59;
    v65 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    *&v177[0] = v176;
    *v65 = 136315394;
    sub_1D1886B8C();
    v66 = sub_1D1E68FAC();
    v68 = v67;
    v69 = *(v63 + 8);
    v69(v61, v64);
    v70 = sub_1D1B1312C(v66, v68, v177);

    *(v65 + 4) = v70;
    *(v65 + 12) = 2080;
    v71 = sub_1D1E68FAC();
    v73 = v72;
    v69(v62, v64);
    v74 = sub_1D1B1312C(v71, v73, v177);

    *(v65 + 14) = v74;
    _os_log_impl(&dword_1D16EC000, v58, v174, "failed to found alarm with %s for parent %s", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v176, -1, -1);
    MEMORY[0x1D3893640](v65, -1, -1);

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
  }

  else
  {

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    v75 = *(v63 + 8);
    v75(v62, v64);
    v75(v61, v64);
  }

  **(v0 + 672) = 0;
LABEL_19:
  v76 = *(v0 + 824);
  v77 = *(v0 + 816);
  v78 = *(v0 + 808);
  v79 = *(v0 + 800);
  v80 = *(v0 + 768);
  v81 = *(v0 + 752);
  v82 = *(v0 + 744);
  v83 = *(v0 + 720);

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_1D1894548()
{
  v1 = *v0;
  v2 = *(*v0 + 872);
  v3 = *(*v0 + 720);
  v7 = *v0;

  sub_1D18A21A8(v3, type metadata accessor for CoordinationSnapshot.UpdateType);
  v4 = *(v1 + 856);
  v5 = *(v1 + 848);

  return MEMORY[0x1EEE6DFA0](sub_1D18946A0, v5, v4);
}

uint64_t sub_1D18946A0()
{
  v1 = v0[108];
  v2 = v0[105];
  v3 = v0[96];
  v4 = v0[84];

  sub_1D1741A30((v0 + 2), &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D18A21A8(v3, type metadata accessor for StaticAlarm);

  *v4 = v0[83];
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);
  v5 = v0[103];
  v6 = v0[102];
  v7 = v0[101];
  v8 = v0[100];
  v9 = v0[96];
  v10 = v0[94];
  v11 = v0[93];
  v12 = v0[90];

  v13 = v0[1];

  return v13();
}

uint64_t CoordinationDataModel.deleteAlarm(_:parentContainerID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[78] = v3;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v4[79] = swift_getObjectType();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v4[80] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v4[81] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v4[82] = v7;
  v8 = *(v7 - 8);
  v4[83] = v8;
  v9 = *(v8 + 64) + 15;
  v4[84] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[85] = swift_task_alloc();
  v11 = *(type metadata accessor for StaticAlarm() - 8);
  v4[86] = v11;
  v4[87] = *(v11 + 64);
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  v4[90] = v12;
  v13 = *(v12 - 8);
  v4[91] = v13;
  v4[92] = *(v13 + 64);
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = sub_1D1E67E1C();
  v4[98] = sub_1D1E67E0C();
  v15 = sub_1D1E67D4C();
  v4[99] = v15;
  v4[100] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D1894A48, v15, v14);
}

uint64_t sub_1D1894A48()
{
  v158 = v0;
  v1 = *(v0 + 624);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 616);

  v5 = sub_1D1742188(v4);
  if ((v6 & 1) == 0)
  {

LABEL_9:
    v39 = *(v0 + 784);
    v40 = *(v0 + 600);

    *v40 = 0;
    goto LABEL_10;
  }

  v7 = *(v0 + 624);
  v8 = *(v0 + 616);
  v9 = *(v0 + 608);
  v10 = (*(v3 + 56) + (v5 << 7));
  v11 = v10[3];
  v13 = *v10;
  v12 = v10[1];
  *(v0 + 48) = v10[2];
  *(v0 + 64) = v11;
  *(v0 + 16) = v13;
  *(v0 + 32) = v12;
  v14 = v10[7];
  v16 = v10[4];
  v15 = v10[5];
  *(v0 + 112) = v10[6];
  *(v0 + 128) = v14;
  *(v0 + 80) = v16;
  *(v0 + 96) = v15;
  sub_1D18783EC(v0 + 16, v0 + 144);

  sub_1D187695C(v9, v8, v0 + 408);
  if (*(v0 + 432))
  {
    sub_1D16EEE20((v0 + 408), v0 + 368);
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 768);
    v18 = *(v0 + 728);
    v19 = *(v0 + 720);
    v20 = *(v0 + 616);
    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EC6459E8);
    sub_1D17419CC(v0 + 368, v0 + 448);
    v153 = *(v18 + 16);
    v153(v17, v20, v19);
    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6835C();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 768);
    v26 = *(v0 + 728);
    v27 = *(v0 + 720);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      *&v156[0] = v151;
      *v28 = 136315394;
      v29 = *(v0 + 472);
      v30 = *(v0 + 480);
      __swift_project_boxed_opaque_existential_1((v0 + 448), v29);
      v31 = (*(v30 + 64))(v29, v30);
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1((v0 + 448));
      v34 = sub_1D1B1312C(v31, v33, v156);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      sub_1D1886B8C();
      v35 = sub_1D1E68FAC();
      v37 = v36;
      (*(v26 + 8))(v25, v27);
      v38 = sub_1D1B1312C(v35, v37, v156);

      *(v28 + 14) = v38;
      _os_log_impl(&dword_1D16EC000, v22, v23, "attempt to delete alarm %s for parent %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v151, -1, -1);
      MEMORY[0x1D3893640](v28, -1, -1);
    }

    else
    {

      (*(v26 + 8))(v25, v27);
      __swift_destroy_boxed_opaque_existential_1((v0 + 448));
    }

    v78 = *(v0 + 760);
    v148 = *(v0 + 776);
    v150 = *(v0 + 736);
    v79 = *(v0 + 728);
    v80 = *(v0 + 720);
    v152 = *(v0 + 712);
    v142 = *(v0 + 680);
    v81 = *(v0 + 616);
    v145 = v81;
    v147 = *(v0 + 624);
    v82 = *(v0 + 392);
    v83 = *(v0 + 400);
    v84 = __swift_project_boxed_opaque_existential_1((v0 + 368), v82);
    v85 = *(v82 - 8);
    v86 = *(v85 + 64) + 15;
    v87 = swift_task_alloc();
    (*(v85 + 16))(v87, v84, v82);
    v153(v78, v81, v80);
    sub_1D1869A54(v87, v78, v82, v83, v152);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1D1E739C0;
    sub_1D17419CC(v0 + 368, v88 + 32);
    v89 = sub_1D1E67E7C();
    (*(*(v89 - 8) + 56))(v142, 1, 1, v89);
    v153(v78, v145, v80);
    v90 = v147;
    v91 = sub_1D1E67E0C();
    v92 = (*(v79 + 80) + 56) & ~*(v79 + 80);
    v144 = v92 + v150;
    v93 = swift_allocObject();
    v94 = MEMORY[0x1E69E85E0];
    *(v93 + 16) = v91;
    *(v93 + 24) = v94;
    *(v93 + 32) = 1;
    *(v93 + 40) = v88;
    *(v93 + 48) = v90;
    v149 = v92;
    v146 = *(v79 + 32);
    v146(v93 + v92, v78, v80);
    sub_1D17C6EF0(0, 0, v142, &unk_1D1E7BC38, v93);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v95 = *(v0 + 720);
    v143 = v95;
    v96 = *(v0 + 712);
    v134 = *(v0 + 760);
    v135 = *(v0 + 704);
    v136 = *(v0 + 696);
    v97 = *(v0 + 688);
    v98 = *(v0 + 672);
    v99 = *(v0 + 664);
    v100 = *(v0 + 648);
    v132 = *(v0 + 640);
    v133 = *(v0 + 656);
    v137 = *(v0 + 624);
    v138 = *(v0 + 632);
    v101 = *(v0 + 616);
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v102, qword_1EE07B210);
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868);
    v103 = *(v140 + 48);
    v153(v100, v101, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
    v104 = *(v97 + 80);
    v139 = *(v97 + 72);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_1D1E739C0;
    sub_1D18A1F94(v96, v105 + ((v104 + 32) & ~v104), type metadata accessor for StaticAlarm);
    *(v100 + v103) = v105;
    swift_storeEnumTagMultiPayload();
    sub_1D1E67ECC();
    (*(v99 + 8))(v98, v133);
    v107 = *(v0 + 392);
    v106 = *(v0 + 400);
    v108 = __swift_project_boxed_opaque_existential_1((v0 + 368), v107);
    v109 = *(v0 + 64);
    v110 = *(v0 + 32);
    v156[0] = *(v0 + 16);
    v156[1] = v110;
    v156[2] = *(v0 + 48);
    v157 = v109;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AF8, &qword_1D1E7BC28);
    v112 = *(v106 + 8);
    v113 = sub_1D1872064(v108, v111, v107);
    sub_1D17419CC(v0 + 368, v0 + 488);
    v153(v134, v101, v143);
    v114 = swift_allocObject();
    sub_1D16EEE20((v0 + 488), v114 + 16);
    v146(v114 + v149, v134, v143);
    *(v0 + 304) = sub_1D18A1E34;
    *(v0 + 312) = v114;
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1D18A2E5C;
    *(v0 + 296) = &block_descriptor_25;
    v115 = _Block_copy((v0 + 272));
    v116 = *(v0 + 312);

    aBlock = [v113 addSuccessBlock_];
    _Block_release(v115);

    sub_1D17419CC(v0 + 368, v0 + 528);
    v153(v134, v101, v143);
    sub_1D18A1F94(v96, v135, type metadata accessor for StaticAlarm);
    v117 = (v144 + 7) & 0xFFFFFFFFFFFFFFF8;
    v118 = (v117 + v104 + 8) & ~v104;
    v119 = swift_allocObject();
    sub_1D16EEE20((v0 + 528), v119 + 16);
    v146(v119 + v149, v134, v143);
    *(v119 + v117) = v137;
    sub_1D18A2B2C(v135, v119 + v118, type metadata accessor for StaticAlarm);
    *(v119 + ((v136 + v118 + 7) & 0xFFFFFFFFFFFFFFF8)) = v138;
    *(v0 + 352) = sub_1D18A1E54;
    *(v0 + 360) = v119;
    *(v0 + 320) = MEMORY[0x1E69E9820];
    *(v0 + 328) = 1107296256;
    *(v0 + 336) = sub_1D189C628;
    *(v0 + 344) = &block_descriptor_31;
    v120 = _Block_copy((v0 + 320));
    v121 = *(v0 + 360);
    v122 = v137;

    v123 = [aBlock addFailureBlock_];
    _Block_release(v120);

    if (qword_1EC642200 != -1)
    {
      swift_once();
    }

    v124 = *(v0 + 712);
    v125 = *(v0 + 648);
    v126 = *(v0 + 640);
    v127 = *(v140 + 48);
    v153(v125, *(v0 + 616), *(v0 + 720));
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1D1E739C0;
    sub_1D18A1F94(v124, v128 + ((v104 + 32) & ~v104), type metadata accessor for StaticAlarm);
    *(v125 + v127) = v128;
    swift_storeEnumTagMultiPayload();
    v129 = swift_task_alloc();
    *(v0 + 808) = v129;
    *v129 = v0;
    v129[1] = sub_1D18958B8;
    v130 = *(v0 + 648);

    return sub_1D18A2E60(v0 + 592, v130, 0);
  }

  v52 = *(v0 + 784);

  sub_1D1741A30(v0 + 408, &qword_1EC645670, &qword_1D1E7B950);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v53 = *(v0 + 752);
  v54 = *(v0 + 744);
  v55 = *(v0 + 728);
  v56 = *(v0 + 720);
  v57 = *(v0 + 616);
  v58 = *(v0 + 608);
  v59 = sub_1D1E6709C();
  __swift_project_value_buffer(v59, qword_1EC6459E8);
  v60 = *(v55 + 16);
  v60(v53, v58, v56);
  v60(v54, v57, v56);
  v61 = sub_1D1E6707C();
  v62 = sub_1D1E6833C();
  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 752);
  v65 = *(v0 + 744);
  v66 = *(v0 + 728);
  v67 = *(v0 + 720);
  if (v63)
  {
    v154 = v62;
    v68 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *&v156[0] = v155;
    *v68 = 136315394;
    sub_1D1886B8C();
    v69 = sub_1D1E68FAC();
    v71 = v70;
    v72 = *(v66 + 8);
    v72(v64, v67);
    v73 = sub_1D1B1312C(v69, v71, v156);

    *(v68 + 4) = v73;
    *(v68 + 12) = 2080;
    v74 = sub_1D1E68FAC();
    v76 = v75;
    v72(v65, v67);
    v77 = sub_1D1B1312C(v74, v76, v156);

    *(v68 + 14) = v77;
    _os_log_impl(&dword_1D16EC000, v61, v154, "failed to found alarm with %s for parent %s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v155, -1, -1);
    MEMORY[0x1D3893640](v68, -1, -1);

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
  }

  else
  {

    sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    v131 = *(v66 + 8);
    v131(v65, v67);
    v131(v64, v67);
  }

  **(v0 + 600) = 0;
LABEL_10:
  v41 = *(v0 + 768);
  v42 = *(v0 + 760);
  v43 = *(v0 + 752);
  v44 = *(v0 + 744);
  v45 = *(v0 + 712);
  v46 = *(v0 + 704);
  v47 = *(v0 + 680);
  v48 = *(v0 + 672);
  v49 = *(v0 + 648);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1D18958B8()
{
  v1 = *v0;
  v2 = *(*v0 + 808);
  v3 = *(*v0 + 648);
  v7 = *v0;

  sub_1D18A21A8(v3, type metadata accessor for CoordinationSnapshot.UpdateType);
  v4 = *(v1 + 800);
  v5 = *(v1 + 792);

  return MEMORY[0x1EEE6DFA0](sub_1D1895A10, v5, v4);
}

uint64_t sub_1D1895A10()
{
  v1 = v0[98];
  v2 = v0[89];
  v3 = v0[75];

  sub_1D1741A30((v0 + 2), &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D18A21A8(v2, type metadata accessor for StaticAlarm);
  *v3 = v0[74];
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
  v8 = v0[89];
  v9 = v0[88];
  v10 = v0[85];
  v11 = v0[84];
  v12 = v0[81];

  v13 = v0[1];

  return v13();
}

uint64_t CoordinationDataModel.toggleTimerState(staticTimerID:parentContainerID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[98] = v3;
  v4[97] = a3;
  v4[96] = a2;
  v4[95] = a1;
  v4[99] = swift_getObjectType();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v4[100] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v4[101] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v4[102] = v7;
  v8 = *(v7 - 8);
  v4[103] = v8;
  v9 = *(v8 + 64) + 15;
  v4[104] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[105] = swift_task_alloc();
  v11 = *(*(sub_1D1E669FC() - 8) + 64) + 15;
  v4[106] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008) - 8) + 64) + 15;
  v4[107] = swift_task_alloc();
  v13 = type metadata accessor for StaticTimer();
  v4[108] = v13;
  v14 = *(v13 - 8);
  v4[109] = v14;
  v15 = *(v14 + 64) + 15;
  v4[110] = swift_task_alloc();
  v16 = sub_1D1E66A7C();
  v4[111] = v16;
  v17 = *(v16 - 8);
  v4[112] = v17;
  v4[113] = *(v17 + 64);
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();
  v4[120] = sub_1D1E67E1C();
  v4[121] = sub_1D1E67E0C();
  v19 = sub_1D1E67D4C();
  v4[122] = v19;
  v4[123] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1D1895E28, v19, v18);
}

uint64_t sub_1D1895E28()
{
  v203 = v0;
  v1 = *(v0 + 784);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 776);

  v5 = sub_1D1742188(v4);
  if ((v6 & 1) == 0)
  {

LABEL_9:
    v39 = *(v0 + 968);
    v40 = *(v0 + 760);

    *v40 = 0;
LABEL_10:
    v41 = *(v0 + 952);
    v42 = *(v0 + 944);
    v43 = *(v0 + 936);
    v44 = *(v0 + 928);
    v45 = *(v0 + 920);
    v46 = *(v0 + 912);
    v47 = *(v0 + 880);
    v48 = *(v0 + 856);
    v49 = *(v0 + 848);
    v50 = *(v0 + 840);
    v197 = *(v0 + 832);
    v198 = *(v0 + 808);

    v51 = *(v0 + 8);

    return v51();
  }

  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  v9 = *(v0 + 768);
  v10 = (*(v3 + 56) + (v5 << 7));
  v11 = v10[3];
  v13 = *v10;
  v12 = v10[1];
  *(v0 + 48) = v10[2];
  *(v0 + 64) = v11;
  *(v0 + 16) = v13;
  *(v0 + 32) = v12;
  v14 = v10[7];
  v16 = v10[4];
  v15 = v10[5];
  *(v0 + 112) = v10[6];
  *(v0 + 128) = v14;
  *(v0 + 80) = v16;
  *(v0 + 96) = v15;
  sub_1D18783EC(v0 + 16, v0 + 144);

  sub_1D1876968(v9, v8, v0 + 408);
  if (!*(v0 + 432))
  {
    v53 = *(v0 + 968);

    sub_1D1741A30(v0 + 408, &qword_1EC6456C0, &unk_1D1E7A3F0);
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 920);
    v55 = *(v0 + 912);
    v56 = *(v0 + 896);
    v57 = *(v0 + 888);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = sub_1D1E6709C();
    __swift_project_value_buffer(v60, qword_1EC6459E8);
    v61 = *(v56 + 16);
    v61(v54, v59, v57);
    v61(v55, v58, v57);
    v62 = sub_1D1E6707C();
    v63 = sub_1D1E6833C();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 920);
    v66 = *(v0 + 912);
    v67 = *(v0 + 896);
    v68 = *(v0 + 888);
    if (v64)
    {
      v194 = *(v0 + 912);
      v69 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      *&v201[0] = v199;
      *v69 = 136315394;
      sub_1D1886B8C();
      v70 = sub_1D1E68FAC();
      v72 = v71;
      v73 = *(v67 + 8);
      v73(v65, v68);
      v74 = sub_1D1B1312C(v70, v72, v201);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v75 = sub_1D1E68FAC();
      v77 = v76;
      v73(v194, v68);
      v78 = sub_1D1B1312C(v75, v77, v201);

      *(v69 + 14) = v78;
      _os_log_impl(&dword_1D16EC000, v62, v63, "failed to found timer with %s for parent %s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v199, -1, -1);
      MEMORY[0x1D3893640](v69, -1, -1);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    }

    else
    {

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
      v162 = *(v67 + 8);
      v162(v66, v68);
      v162(v65, v68);
    }

    **(v0 + 760) = 0;
    goto LABEL_10;
  }

  sub_1D16EEE20((v0 + 408), v0 + 368);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 952);
  v18 = *(v0 + 896);
  v19 = *(v0 + 888);
  v20 = *(v0 + 776);
  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC6459E8);
  sub_1D17419CC(v0 + 368, v0 + 448);
  v196 = *(v18 + 16);
  v196(v17, v20, v19);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 952);
  v26 = *(v0 + 896);
  v27 = *(v0 + 888);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    *&v201[0] = v193;
    *v28 = 136315394;
    v29 = *(v0 + 472);
    v30 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_1((v0 + 448), v29);
    v31 = (*(v30 + 72))(v29, v30);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
    v34 = sub_1D1B1312C(v31, v33, v201);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    sub_1D1886B8C();
    v35 = sub_1D1E68FAC();
    v37 = v36;
    v177 = *(v26 + 8);
    v177(v25, v27);
    v38 = sub_1D1B1312C(v35, v37, v201);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_1D16EC000, v22, v23, "attempt to update timer %s for parent %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v193, -1, -1);
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  else
  {

    v177 = *(v26 + 8);
    v177(v25, v27);
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
  }

  v182 = *(v0 + 944);
  v185 = *(v0 + 888);
  v191 = *(v0 + 872);
  v195 = *(v0 + 864);
  v188 = *(v0 + 856);
  v184 = *(v0 + 848);
  v180 = *(v0 + 776);
  v79 = *(v0 + 392);
  v80 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 368), v79);
  (*(v80 + 88))(v79, v80);
  v82 = *(v0 + 392);
  v81 = *(v0 + 400);
  __swift_project_boxed_opaque_existential_1((v0 + 368), v82);
  v83 = *(v0 + 512);
  v84 = *(v0 + 520);
  v85 = __swift_project_boxed_opaque_existential_1((v0 + 488), v83);
  v86 = *(v81 + 96);
  *(v0 + 552) = v82;
  *(v0 + 560) = v81;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 528));
  v86(v85, v83, v84, v82, v81);
  __swift_project_boxed_opaque_existential_1((v0 + 528), *(v0 + 552));
  v196(v182, v180, v185);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v88 = *(v82 - 8);
  v89 = *(v88 + 64) + 15;
  v90 = swift_task_alloc();
  v181 = boxed_opaque_existential_1;
  (*(v88 + 16))(v90, boxed_opaque_existential_1, v82);
  v186 = v81;
  sub_1D186EF48(v90, v182, v184, v82, v81, v188);

  if ((*(v191 + 48))(v188, 1, v195) == 1)
  {
    v91 = *(v0 + 968);
    v92 = *(v0 + 928);
    v93 = *(v0 + 888);
    v94 = *(v0 + 856);
    v95 = *(v0 + 776);

    sub_1D1741A30(v94, &qword_1EC643860, &qword_1D1E72008);
    sub_1D17419CC(v0 + 528, v0 + 568);
    v196(v92, v95, v93);
    v96 = sub_1D1E6707C();
    v97 = sub_1D1E6833C();
    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 928);
    v100 = *(v0 + 896);
    v101 = *(v0 + 888);
    if (v98)
    {
      v102 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *&v201[0] = v200;
      *v102 = 136315394;
      v103 = *(v0 + 592);
      v104 = *(v0 + 600);
      __swift_project_boxed_opaque_existential_1((v0 + 568), v103);
      v105 = v186[9](v103, v104);
      v107 = v106;
      __swift_destroy_boxed_opaque_existential_1((v0 + 568));
      v108 = sub_1D1B1312C(v105, v107, v201);

      *(v102 + 4) = v108;
      *(v102 + 12) = 2080;
      sub_1D1886B8C();
      v109 = sub_1D1E68FAC();
      v111 = v110;
      v177(v99, v101);
      v112 = sub_1D1B1312C(v109, v111, v201);

      *(v102 + 14) = v112;
      _os_log_impl(&dword_1D16EC000, v96, v97, "failed to create StaticTimer with %s for parent %s", v102, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v200, -1, -1);
      MEMORY[0x1D3893640](v102, -1, -1);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    }

    else
    {
      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);

      v177(v99, v101);
      __swift_destroy_boxed_opaque_existential_1((v0 + 568));
    }

    **(v0 + 760) = 0;
    __swift_destroy_boxed_opaque_existential_1((v0 + 528));
    __swift_destroy_boxed_opaque_existential_1((v0 + 488));
    __swift_destroy_boxed_opaque_existential_1((v0 + 368));
    goto LABEL_10;
  }

  v189 = *(v0 + 960);
  v113 = *(v0 + 944);
  v192 = *(v0 + 904);
  v114 = *(v0 + 896);
  v115 = *(v0 + 888);
  v116 = *(v0 + 840);
  v178 = v116;
  v117 = *(v0 + 784);
  v118 = *(v0 + 776);
  sub_1D18A2B2C(*(v0 + 856), *(v0 + 880), type metadata accessor for StaticTimer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(v0 + 528, v119 + 32);
  v120 = sub_1D1E67E7C();
  (*(*(v120 - 8) + 56))(v116, 1, 1, v120);
  v121 = v115;
  v196(v113, v118, v115);
  v122 = v117;
  v123 = sub_1D1E67E0C();
  v124 = *(v114 + 80);
  v173 = ~v124;
  v125 = (v124 + 56) & ~v124;
  v175 = v124;
  v172 = v125 + v192;
  v126 = swift_allocObject();
  v127 = MEMORY[0x1E69E85E0];
  *(v126 + 16) = v123;
  *(v126 + 24) = v127;
  *(v126 + 32) = 0;
  *(v126 + 40) = v119;
  *(v126 + 48) = v122;
  v190 = v125;
  v183 = *(v114 + 32);
  v183(v126 + v125, v113, v121);
  sub_1D17C6EF0(0, 0, v178, &unk_1D1E7BA48, v126);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v179 = *(v0 + 936);
  v128 = *(v0 + 888);
  v166 = v128;
  v167 = *(v0 + 944);
  v129 = *(v0 + 872);
  v130 = *(v0 + 832);
  v131 = *(v0 + 824);
  v132 = *(v0 + 808);
  v163 = *(v0 + 880);
  v164 = *(v0 + 800);
  v171 = *(v0 + 792);
  v169 = *(v0 + 904);
  v170 = *(v0 + 784);
  v133 = *(v0 + 776);
  v165 = *(v0 + 816);
  v168 = *(v0 + 768);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v134, qword_1EE07B210);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860);
  v135 = *(v176 + 48);
  v196(v132, v133, v128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
  v136 = (*(v129 + 80) + 32) & ~*(v129 + 80);
  v174 = *(v129 + 72);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_1D1E739C0;
  sub_1D18A1F94(v163, v137 + v136, type metadata accessor for StaticTimer);
  *(v132 + v135) = v137;
  swift_storeEnumTagMultiPayload();
  v138 = v0;
  sub_1D1E67ECC();
  (*(v131 + 8))(v130, v165);
  v139 = *(v0 + 120);
  v140 = *(v0 + 88);
  v201[0] = *(v0 + 72);
  v201[1] = v140;
  v201[2] = *(v0 + 104);
  v202 = v139;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B00, &qword_1D1E7BC48);
  v142 = v186[1];
  v143 = sub_1D1871BF8(v181, v141, v82);
  sub_1D17419CC(v0 + 528, v0 + 608);
  v196(v167, v133, v166);
  v144 = swift_allocObject();
  sub_1D16EEE20((v0 + 608), v144 + 16);
  v183(v144 + v190, v167, v166);
  *(v0 + 304) = sub_1D18A20C0;
  *(v0 + 312) = v144;
  *(v0 + 272) = MEMORY[0x1E69E9820];
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_1D18A2E5C;
  *(v0 + 296) = &block_descriptor_42_0;
  v145 = _Block_copy((v0 + 272));
  v146 = *(v0 + 312);

  v187 = [v143 addSuccessBlock_];
  _Block_release(v145);

  sub_1D17419CC((v138 + 66), (v138 + 81));
  v196(v167, v133, v166);
  sub_1D17419CC((v138 + 46), (v138 + 86));
  v196(v179, v168, v166);
  v147 = (v172 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = (v147 + 47) & 0xFFFFFFFFFFFFFFF8;
  v149 = (v175 + v148 + 8) & v173;
  v150 = swift_allocObject();
  sub_1D16EEE20((v0 + 648), v150 + 16);
  v183(v150 + v190, v167, v166);
  sub_1D16EEE20((v0 + 688), v150 + v147);
  *(v150 + v148) = v170;
  v183(v150 + v149, v179, v166);
  *(v150 + ((v149 + v169 + 7) & 0xFFFFFFFFFFFFFFF8)) = v171;
  *(v0 + 352) = sub_1D18A20E0;
  *(v0 + 360) = v150;
  *(v0 + 320) = MEMORY[0x1E69E9820];
  *(v0 + 328) = 1107296256;
  *(v0 + 336) = sub_1D189C628;
  *(v0 + 344) = &block_descriptor_48;
  v151 = _Block_copy((v0 + 320));
  v152 = *(v0 + 360);
  v153 = v170;

  v154 = [v187 addFailureBlock_];
  _Block_release(v151);

  if (qword_1EC642200 != -1)
  {
    swift_once();
  }

  v155 = *(v0 + 880);
  v156 = *(v0 + 808);
  v157 = *(v0 + 800);
  v158 = *(v176 + 48);
  v196(v138[101], v138[97], v138[111]);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_1D1E739C0;
  sub_1D18A1F94(v155, v159 + v136, type metadata accessor for StaticTimer);
  *(v156 + v158) = v159;
  swift_storeEnumTagMultiPayload();
  v160 = swift_task_alloc();
  v138[124] = v160;
  *v160 = v138;
  v160[1] = sub_1D189707C;
  v161 = v138[101];

  return sub_1D18A2E60((v138 + 94), v161, 0);
}

uint64_t sub_1D189707C()
{
  v1 = *v0;
  v2 = *(*v0 + 992);
  v3 = *(*v0 + 808);
  v7 = *v0;

  sub_1D18A21A8(v3, type metadata accessor for CoordinationSnapshot.UpdateType);
  v4 = *(v1 + 984);
  v5 = *(v1 + 976);

  return MEMORY[0x1EEE6DFA0](sub_1D18971D4, v5, v4);
}

uint64_t sub_1D18971D4()
{
  v1 = v0[121];
  v2 = v0[110];
  v3 = v0[95];

  sub_1D1741A30((v0 + 2), &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D18A21A8(v2, type metadata accessor for StaticTimer);
  *v3 = v0[94];
  __swift_destroy_boxed_opaque_existential_1(v0 + 66);
  __swift_destroy_boxed_opaque_existential_1(v0 + 61);
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);
  v4 = v0[119];
  v5 = v0[118];
  v6 = v0[117];
  v7 = v0[116];
  v8 = v0[115];
  v9 = v0[114];
  v10 = v0[110];
  v11 = v0[107];
  v12 = v0[106];
  v13 = v0[105];
  v16 = v0[104];
  v17 = v0[101];

  v14 = v0[1];

  return v14();
}

uint64_t CoordinationDataModel.deleteTimer(staticTimerID:parentContainerID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[83] = v3;
  v4[82] = a3;
  v4[81] = a2;
  v4[80] = a1;
  v4[84] = swift_getObjectType();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v4[85] = updated;
  v6 = *(*(updated - 8) + 64) + 15;
  v4[86] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v4[87] = v7;
  v8 = *(v7 - 8);
  v4[88] = v8;
  v9 = *(v8 + 64) + 15;
  v4[89] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v4[90] = swift_task_alloc();
  v11 = *(*(sub_1D1E669FC() - 8) + 64) + 15;
  v4[91] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008) - 8) + 64) + 15;
  v4[92] = swift_task_alloc();
  v13 = type metadata accessor for StaticTimer();
  v4[93] = v13;
  v14 = *(v13 - 8);
  v4[94] = v14;
  v4[95] = *(v14 + 64);
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  v15 = sub_1D1E66A7C();
  v4[98] = v15;
  v16 = *(v15 - 8);
  v4[99] = v16;
  v4[100] = *(v16 + 64);
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v4[106] = sub_1D1E67E1C();
  v4[107] = sub_1D1E67E0C();
  v18 = sub_1D1E67D4C();
  v4[108] = v18;
  v4[109] = v17;

  return MEMORY[0x1EEE6DFA0](sub_1D1897630, v18, v17);
}

uint64_t sub_1D1897630()
{
  v195 = v0;
  v1 = *(v0 + 664);
  v2 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!*(v3 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 656);

  v5 = sub_1D1742188(v4);
  if ((v6 & 1) == 0)
  {

LABEL_9:
    v39 = *(v0 + 856);
    v40 = *(v0 + 640);

    *v40 = 0;
LABEL_10:
    v41 = *(v0 + 840);
    v42 = *(v0 + 832);
    v43 = *(v0 + 824);
    v44 = *(v0 + 816);
    v45 = *(v0 + 808);
    v46 = *(v0 + 776);
    v47 = *(v0 + 768);
    v48 = *(v0 + 736);
    v49 = *(v0 + 728);
    v50 = *(v0 + 720);
    v189 = *(v0 + 712);
    v190 = *(v0 + 688);

    v51 = *(v0 + 8);

    return v51();
  }

  v7 = *(v0 + 664);
  v8 = *(v0 + 656);
  v9 = *(v0 + 648);
  v10 = (*(v3 + 56) + (v5 << 7));
  v11 = v10[3];
  v13 = *v10;
  v12 = v10[1];
  *(v0 + 48) = v10[2];
  *(v0 + 64) = v11;
  *(v0 + 16) = v13;
  *(v0 + 32) = v12;
  v14 = v10[7];
  v16 = v10[4];
  v15 = v10[5];
  *(v0 + 112) = v10[6];
  *(v0 + 128) = v14;
  *(v0 + 80) = v16;
  *(v0 + 96) = v15;
  sub_1D18783EC(v0 + 16, v0 + 144);

  sub_1D1876968(v9, v8, v0 + 408);
  if (!*(v0 + 432))
  {
    v53 = *(v0 + 856);

    sub_1D1741A30(v0 + 408, &qword_1EC6456C0, &unk_1D1E7A3F0);
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 816);
    v55 = *(v0 + 808);
    v56 = *(v0 + 792);
    v57 = *(v0 + 784);
    v58 = *(v0 + 656);
    v59 = *(v0 + 648);
    v60 = sub_1D1E6709C();
    __swift_project_value_buffer(v60, qword_1EC6459E8);
    v61 = *(v56 + 16);
    v61(v54, v59, v57);
    v61(v55, v58, v57);
    v62 = sub_1D1E6707C();
    v63 = sub_1D1E6833C();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 816);
    v66 = *(v0 + 808);
    v67 = *(v0 + 792);
    v68 = *(v0 + 784);
    if (v64)
    {
      v186 = *(v0 + 808);
      v69 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&v193[0] = v191;
      *v69 = 136315394;
      sub_1D1886B8C();
      v70 = sub_1D1E68FAC();
      v72 = v71;
      v73 = *(v67 + 8);
      v73(v65, v68);
      v74 = sub_1D1B1312C(v70, v72, v193);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2080;
      v75 = sub_1D1E68FAC();
      v77 = v76;
      v73(v186, v68);
      v78 = sub_1D1B1312C(v75, v77, v193);

      *(v69 + 14) = v78;
      _os_log_impl(&dword_1D16EC000, v62, v63, "failed to found timer with %s for parent %s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v191, -1, -1);
      MEMORY[0x1D3893640](v69, -1, -1);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    }

    else
    {

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
      v162 = *(v67 + 8);
      v162(v66, v68);
      v162(v65, v68);
    }

    **(v0 + 640) = 0;
    goto LABEL_10;
  }

  sub_1D16EEE20((v0 + 408), v0 + 368);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 840);
  v18 = *(v0 + 792);
  v19 = *(v0 + 784);
  v20 = *(v0 + 656);
  v21 = sub_1D1E6709C();
  __swift_project_value_buffer(v21, qword_1EC6459E8);
  sub_1D17419CC(v0 + 368, v0 + 448);
  v188 = *(v18 + 16);
  v188(v17, v20, v19);
  v22 = sub_1D1E6707C();
  v23 = sub_1D1E6835C();
  v24 = os_log_type_enabled(v22, v23);
  v25 = *(v0 + 840);
  v26 = *(v0 + 792);
  v27 = *(v0 + 784);
  if (v24)
  {
    v28 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    *&v193[0] = v185;
    *v28 = 136315394;
    v30 = *(v0 + 472);
    v29 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_1((v0 + 448), v30);
    v31 = (*(v29 + 72))(v30, v29);
    v33 = v32;
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
    v34 = sub_1D1B1312C(v31, v33, v193);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    sub_1D1886B8C();
    v35 = sub_1D1E68FAC();
    v37 = v36;
    v178 = *(v26 + 8);
    v178(v25, v27);
    v38 = sub_1D1B1312C(v35, v37, v193);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_1D16EC000, v22, v23, "attempt to delete timer %s for parent %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v185, -1, -1);
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  else
  {

    v178 = *(v26 + 8);
    v178(v25, v27);
    __swift_destroy_boxed_opaque_existential_1((v0 + 448));
  }

  v79 = *(v0 + 832);
  v180 = *(v0 + 784);
  v80 = *(v0 + 752);
  v187 = *(v0 + 744);
  v81 = *(v0 + 736);
  v82 = *(v0 + 728);
  v83 = *(v0 + 656);
  v84 = *(v0 + 392);
  v183 = *(v0 + 400);
  v85 = __swift_project_boxed_opaque_existential_1((v0 + 368), v84);
  v86 = *(v84 - 8);
  v87 = *(v86 + 64) + 15;
  v88 = swift_task_alloc();
  (*(v86 + 16))(v88, v85, v84);
  v188(v79, v83, v180);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D186EF48(v88, v79, v82, v84, v183, v81);

  if ((*(v80 + 48))(v81, 1, v187) == 1)
  {
    v89 = *(v0 + 856);
    v90 = *(v0 + 824);
    v91 = *(v0 + 784);
    v92 = *(v0 + 736);
    v93 = *(v0 + 656);

    sub_1D1741A30(v92, &qword_1EC643860, &qword_1D1E72008);
    sub_1D17419CC(v0 + 368, v0 + 488);
    v188(v90, v93, v91);
    v94 = sub_1D1E6707C();
    v95 = sub_1D1E6833C();
    v96 = os_log_type_enabled(v94, v95);
    v97 = *(v0 + 824);
    v98 = *(v0 + 792);
    v99 = *(v0 + 784);
    if (v96)
    {
      v100 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      *&v193[0] = v192;
      *v100 = 136315394;
      v101 = *(v0 + 512);
      v102 = *(v0 + 520);
      __swift_project_boxed_opaque_existential_1((v0 + 488), v101);
      v103 = (*(v102 + 72))(v101, v102);
      v105 = v104;
      __swift_destroy_boxed_opaque_existential_1((v0 + 488));
      v106 = sub_1D1B1312C(v103, v105, v193);

      *(v100 + 4) = v106;
      *(v100 + 12) = 2080;
      sub_1D1886B8C();
      v107 = sub_1D1E68FAC();
      v109 = v108;
      v178(v97, v99);
      v110 = sub_1D1B1312C(v107, v109, v193);

      *(v100 + 14) = v110;
      _os_log_impl(&dword_1D16EC000, v94, v95, "failed to create StaticTimer with %s for parent %s", v100, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v192, -1, -1);
      MEMORY[0x1D3893640](v100, -1, -1);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
    }

    else
    {
      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);

      v178(v97, v99);
      __swift_destroy_boxed_opaque_existential_1((v0 + 488));
    }

    **(v0 + 640) = 0;
    __swift_destroy_boxed_opaque_existential_1((v0 + 368));
    goto LABEL_10;
  }

  aBlock = (v0 + 272);
  v174 = (v0 + 320);
  v111 = *(v0 + 832);
  v181 = *(v0 + 848);
  v184 = *(v0 + 800);
  v112 = *(v0 + 792);
  v113 = *(v0 + 784);
  v114 = *(v0 + 720);
  v175 = v114;
  v115 = *(v0 + 664);
  v116 = *(v0 + 656);
  sub_1D18A2B2C(*(v0 + 736), *(v0 + 776), type metadata accessor for StaticTimer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(v0 + 368, v117 + 32);
  v118 = sub_1D1E67E7C();
  (*(*(v118 - 8) + 56))(v114, 1, 1, v118);
  v119 = v113;
  v188(v111, v116, v113);
  v120 = v115;
  v121 = sub_1D1E67E0C();
  v122 = (*(v112 + 80) + 56) & ~*(v112 + 80);
  v177 = v122 + v184;
  v123 = swift_allocObject();
  v124 = MEMORY[0x1E69E85E0];
  *(v123 + 16) = v121;
  *(v123 + 24) = v124;
  *(v123 + 32) = 1;
  *(v123 + 40) = v117;
  *(v123 + 48) = v120;
  v182 = v122;
  v179 = *(v112 + 32);
  v179(v123 + v122, v111, v119);
  sub_1D17C6EF0(0, 0, v175, &unk_1D1E7BC58, v123);

  v125 = v0;
  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v126 = *(v0 + 784);
  v176 = v126;
  v127 = *(v0 + 776);
  v165 = *(v0 + 832);
  v166 = *(v0 + 768);
  v167 = *(v0 + 760);
  v128 = *(v0 + 752);
  v129 = *(v0 + 712);
  v130 = *(v0 + 704);
  v131 = *(v125 + 688);
  v163 = *(v125 + 680);
  v164 = *(v125 + 696);
  v168 = *(v125 + 664);
  v169 = *(v125 + 672);
  v132 = *(v125 + 656);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v133, qword_1EE07B210);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860);
  v134 = *(v171 + 48);
  v188(v131, v132, v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
  v135 = *(v128 + 80);
  v170 = *(v128 + 72);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_1D1E739C0;
  sub_1D18A1F94(v127, v136 + ((v135 + 32) & ~v135), type metadata accessor for StaticTimer);
  *(v131 + v134) = v136;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v130 + 8))(v129, v164);
  v138 = *(v125 + 392);
  v137 = *(v125 + 400);
  v139 = __swift_project_boxed_opaque_existential_1((v125 + 368), v138);
  v140 = *(v125 + 120);
  v141 = *(v125 + 88);
  v193[0] = *(v125 + 72);
  v193[1] = v141;
  v193[2] = *(v125 + 104);
  v194 = v140;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B00, &qword_1D1E7BC48);
  v143 = *(v137 + 8);
  v144 = sub_1D1872064(v139, v142, v138);
  sub_1D17419CC(v125 + 368, v125 + 528);
  v188(v165, v132, v176);
  v145 = swift_allocObject();
  sub_1D16EEE20((v125 + 528), v145 + 16);
  v179(v145 + v182, v165, v176);
  *(v125 + 304) = sub_1D18A2208;
  *(v125 + 312) = v145;
  *(v125 + 272) = MEMORY[0x1E69E9820];
  *(v125 + 280) = 1107296256;
  *(v125 + 288) = sub_1D18A2E5C;
  *(v125 + 296) = &block_descriptor_60;
  v146 = _Block_copy(aBlock);
  v147 = *(v125 + 312);

  aBlocka = [v144 addSuccessBlock_];
  _Block_release(v146);

  sub_1D17419CC(v125 + 368, v125 + 568);
  v188(v165, v132, v176);
  sub_1D18A1F94(v127, v166, type metadata accessor for StaticTimer);
  v148 = (v177 + 7) & 0xFFFFFFFFFFFFFFF8;
  v149 = (v148 + v135 + 8) & ~v135;
  v150 = swift_allocObject();
  sub_1D16EEE20((v125 + 568), v150 + 16);
  v179(v150 + v182, v165, v176);
  *(v150 + v148) = v168;
  sub_1D18A2B2C(v166, v150 + v149, type metadata accessor for StaticTimer);
  *(v150 + ((v167 + v149 + 7) & 0xFFFFFFFFFFFFFFF8)) = v169;
  *(v125 + 352) = sub_1D18A2228;
  *(v125 + 360) = v150;
  *(v125 + 320) = MEMORY[0x1E69E9820];
  *(v125 + 328) = 1107296256;
  *(v125 + 336) = sub_1D189C628;
  *(v125 + 344) = &block_descriptor_66;
  v151 = _Block_copy(v174);
  v152 = *(v125 + 360);
  v153 = v168;

  v154 = [aBlocka addFailureBlock_];
  _Block_release(v151);

  if (qword_1EC642200 != -1)
  {
    swift_once();
  }

  v155 = *(v125 + 776);
  v156 = *(v125 + 688);
  v157 = *(v125 + 680);
  v158 = *(v171 + 48);
  v188(v156, *(v125 + 656), *(v125 + 784));
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_1D1E739C0;
  sub_1D18A1F94(v155, v159 + ((v135 + 32) & ~v135), type metadata accessor for StaticTimer);
  *(v156 + v158) = v159;
  swift_storeEnumTagMultiPayload();
  v160 = swift_task_alloc();
  *(v125 + 880) = v160;
  *v160 = v125;
  v160[1] = sub_1D189878C;
  v161 = *(v125 + 688);

  return sub_1D18A2E60(v125 + 632, v161, 0);
}

uint64_t sub_1D189878C()
{
  v1 = *v0;
  v2 = *(*v0 + 880);
  v3 = *(*v0 + 688);
  v7 = *v0;

  sub_1D18A21A8(v3, type metadata accessor for CoordinationSnapshot.UpdateType);
  v4 = *(v1 + 872);
  v5 = *(v1 + 864);

  return MEMORY[0x1EEE6DFA0](sub_1D18988E4, v5, v4);
}

uint64_t sub_1D18988E4()
{
  v1 = v0[107];
  v2 = v0[97];
  v3 = v0[80];

  sub_1D1741A30((v0 + 2), &qword_1EC642C30, &qword_1D1E6E980);
  sub_1D18A21A8(v2, type metadata accessor for StaticTimer);
  *v3 = v0[79];
  __swift_destroy_boxed_opaque_existential_1(v0 + 46);
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[97];
  v10 = v0[96];
  v11 = v0[92];
  v12 = v0[91];
  v13 = v0[90];
  v16 = v0[89];
  v17 = v0[86];

  v14 = v0[1];

  return v14();
}

uint64_t CoordinationDataModel.onboard(siriEndpointProfile:parentContainerID:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[32] = a2;
  v2[33] = ObjectType;
  v2[31] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v2[34] = v6;
  v7 = *(v6 - 8);
  v2[35] = v7;
  v8 = *(v7 + 64) + 15;
  v2[36] = swift_task_alloc();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v2[37] = updated;
  v10 = *(*(updated - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  v2[40] = v11;
  v12 = *(v11 - 8);
  v2[41] = v12;
  v13 = *(v12 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = sub_1D1E67E1C();
  v2[49] = sub_1D1E67E0C();
  v15 = sub_1D1E67D4C();
  v2[50] = v15;
  v2[51] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D1898C34, v15, v14);
}

uint64_t sub_1D1898C34()
{
  v87 = v0;
  if ([*(v0 + 248) sessionState] == 1)
  {
    v1 = *(v0 + 392);

    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 376);
    v3 = *(v0 + 320);
    v4 = *(v0 + 328);
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EC6459E8);
    (*(v4 + 16))(v2, v5, v3);
    v8 = v6;
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 376);
    v14 = *(v0 + 320);
    v13 = *(v0 + 328);
    if (v11)
    {
      v15 = *(v0 + 248);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v86[0] = v84;
      *v16 = 138412546;
      *(v16 + 4) = v15;
      *v17 = v15;
      *(v16 + 12) = 2080;
      sub_1D1886B8C();
      v18 = v15;
      v19 = sub_1D1E68FAC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_1D1B1312C(v19, v21, v86);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_1D16EC000, v9, v10, "Session already active for %@ with parentUUID: %s, no need to onboard", v16, 0x16u);
      sub_1D1741A30(v17, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v84);
      MEMORY[0x1D3893640](v84, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v46 = *(v0 + 368);
    v45 = *(v0 + 376);
    v48 = *(v0 + 352);
    v47 = *(v0 + 360);
    v50 = *(v0 + 336);
    v49 = *(v0 + 344);
    v52 = *(v0 + 304);
    v51 = *(v0 + 312);
    v53 = *(v0 + 288);

    v54 = *(v0 + 8);

    return v54(1);
  }

  else
  {
    if (qword_1EC642210 != -1)
    {
      swift_once();
    }

    v23 = *(v0 + 368);
    v24 = *(v0 + 320);
    v25 = *(v0 + 328);
    v27 = *(v0 + 248);
    v26 = *(v0 + 256);
    v28 = sub_1D1E6709C();
    *(v0 + 416) = __swift_project_value_buffer(v28, qword_1EC6459E8);
    v29 = *(v25 + 16);
    *(v0 + 424) = v29;
    *(v0 + 432) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v83 = v29;
    v29(v23, v26, v24);
    v30 = v27;
    v31 = sub_1D1E6707C();
    v32 = sub_1D1E6835C();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 368);
    v36 = *(v0 + 320);
    v35 = *(v0 + 328);
    if (v33)
    {
      v37 = *(v0 + 248);
      v38 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v86[0] = v82;
      *v38 = 138412546;
      *(v38 + 4) = v37;
      *v81 = v37;
      *(v38 + 12) = 2080;
      sub_1D1886B8C();
      v39 = v37;
      v40 = sub_1D1E68FAC();
      v42 = v41;
      v43 = *(v35 + 8);
      v43(v34, v36);
      v44 = sub_1D1B1312C(v40, v42, v86);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_1D16EC000, v31, v32, "Update to loading state for %@ with parentUUID: %s", v38, 0x16u);
      sub_1D1741A30(v81, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v81, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1D3893640](v82, -1, -1);
      MEMORY[0x1D3893640](v38, -1, -1);
    }

    else
    {

      v43 = *(v35 + 8);
      v43(v34, v36);
    }

    v85 = v43;
    *(v0 + 440) = v43;
    if (qword_1EC642200 != -1)
    {
      swift_once();
    }

    v56 = *(v0 + 360);
    v57 = *(v0 + 320);
    v58 = *(v0 + 328);
    v59 = *(v0 + 312);
    v60 = *(v0 + 296);
    v61 = *(v0 + 256);
    *(v0 + 448) = qword_1EC6BE0C8;
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    *(v0 + 464) = *(v58 + 72);
    v62 = *(v58 + 80);
    *(v0 + 584) = v62;
    v63 = (v62 + 32) & ~v62;
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1D1E739C0;
    v83(v64 + v63, v61, v57);
    *v59 = v64;
    swift_storeEnumTagMultiPayload();
    *(v0 + 472) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(v0 + 480) = inited;
    *(inited + 16) = xmmword_1D1E73FA0;
    v83(v56, v61, v57);
    v66 = type metadata accessor for _CoordinationClassObject();
    *(v0 + 488) = v66;
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    v69 = swift_allocObject();
    v83(v69 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v56, v57);
    v70 = swift_task_alloc();
    *(v70 + 16) = v56;
    v71 = sub_1D18924D8(sub_1D1891E38, v70, MEMORY[0x1E69E7CC0]);
    v72 = *(v0 + 360);

    *(v69 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v71;
    v73 = swift_task_alloc();
    *(v73 + 16) = v72;
    v74 = sub_1D1788104(sub_1D1891E58, v73, MEMORY[0x1E69E7CC0]);
    *(v0 + 496) = 0;
    v75 = v74;
    v76 = *(v0 + 360);
    v77 = *(v0 + 320);
    v78 = *(v0 + 328);

    *(v69 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v75;
    *(v69 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = 1;
    *(v69 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = 1;
    *(v0 + 504) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v85(v76, v77);
    *(inited + 32) = v69;
    v79 = swift_task_alloc();
    *(v0 + 512) = v79;
    *v79 = v0;
    v79[1] = sub_1D18994E4;
    v80 = *(v0 + 312);

    return sub_1D18A2E60(v0 + 224, v80, inited);
  }
}

uint64_t sub_1D18994E4()
{
  v1 = *v0;
  v2 = *(*v0 + 512);
  v3 = *(*v0 + 480);
  v4 = *(*v0 + 312);
  v10 = *v0;

  swift_setDeallocating();
  v5 = *(v3 + 16);
  swift_arrayDestroy();
  sub_1D18A21A8(v4, type metadata accessor for CoordinationSnapshot.UpdateType);
  v6 = v1[28];

  v7 = v1[51];
  v8 = v1[50];

  return MEMORY[0x1EEE6DFA0](sub_1D1899688, v8, v7);
}

uint64_t sub_1D1899688()
{
  v56 = v0;
  v1 = v0[61];
  v2 = v0[62];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[44];
  v6 = v0[40];
  v4(v5, v0[32], v6);
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  v9 = swift_allocObject();
  v0[65] = v9;
  v10 = OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id;
  v4(v9 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_id, v5, v6);
  v11 = swift_task_alloc();
  *(v11 + 16) = v5;
  v12 = sub_1D18924D8(sub_1D18922C0, v11, MEMORY[0x1E69E7CC0]);
  if (v2)
  {
    v13 = v0[63];
    v14 = v0[55];
    v15 = v0[40];

    v14(v9 + v10, v15);
    v22 = v0[61];
    v23 = *(*v9 + 48);
    v24 = *(*v9 + 52);

    return swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v12;
    v17 = v0[44];

    *(v9 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarms) = v16;
    v18 = swift_task_alloc();
    *(v18 + 16) = v17;
    v19 = sub_1D1788104(sub_1D18922A0, v18, MEMORY[0x1E69E7CC0]);
    v20 = v0[63];
    v21 = v0[55];
    v26 = v19;
    v50 = v0[53];
    v51 = v0[54];
    v53 = v0[52];
    v27 = v0[43];
    v28 = v0[44];
    v29 = v0[40];
    v30 = v0[32];
    v49 = v0[31];

    *(v9 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timers) = v26;
    *(v9 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_alarmError) = 3;
    *(v9 + OBJC_IVAR____TtC13HomeDataModel24_CoordinationClassObject_timerError) = 3;
    v21(v28, v29);
    v50(v27, v30, v29);
    v31 = v49;
    v32 = sub_1D1E6707C();
    v33 = sub_1D1E6835C();

    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[63];
    v36 = v0[55];
    v37 = v0[43];
    v38 = v0[40];
    if (v34)
    {
      v39 = v0[31];
      v40 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v40 = 138412546;
      *(v40 + 4) = v39;
      *v52 = v39;
      *(v40 + 12) = 2080;
      sub_1D1886B8C();
      v41 = v39;
      v42 = sub_1D1E68FAC();
      v44 = v43;
      v36(v37, v38);
      v45 = sub_1D1B1312C(v42, v44, &v55);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_1D16EC000, v32, v33, "Perform onboarding for %@ with parentUUID: %s", v40, 0x16u);
      sub_1D1741A30(v52, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1D3893640](v54, -1, -1);
      MEMORY[0x1D3893640](v40, -1, -1);
    }

    else
    {

      v36(v37, v38);
    }

    v46 = v0[31];
    v47 = [objc_allocWithZone(MEMORY[0x1E696CC58]) init];
    v0[66] = v47;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_1D1899B70;
    v48 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B08, &qword_1D1E7BC68);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D189A7DC;
    v0[13] = &block_descriptor_72;
    v0[14] = v48;
    [v46 applyOnboardingSelections:v47 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D1899B70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 536) = v3;
  v4 = *(v1 + 408);
  v5 = *(v1 + 400);
  if (v3)
  {
    v6 = sub_1D189A3D0;
  }

  else
  {
    v6 = sub_1D1899CA0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D1899CA0()
{
  v65 = v0;
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 336);
  v5 = *(v0 + 320);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);

  v2(v4, v6, v5);
  v8 = v7;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 504);
  v13 = *(v0 + 440);
  v14 = *(v0 + 336);
  v15 = *(v0 + 320);
  v16 = *(v0 + 248);
  if (v11)
  {
    v59 = v10;
    v17 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v17 = 138412802;
    *(v17 + 4) = v16;
    *v57 = v16;
    *(v17 + 12) = 2080;
    sub_1D1886B8C();
    v18 = v16;
    v19 = sub_1D1E68FAC();
    v21 = v20;
    v13(v14, v15);
    v22 = sub_1D1B1312C(v19, v21, &v64);

    *(v17 + 14) = v22;
    *(v17 + 22) = 1024;
    v23 = [v18 sessionState];

    *(v17 + 24) = v23 == 1;
    _os_log_impl(&dword_1D16EC000, v9, v59, "Perform onboarding finish for %@ with parentUUID: %s with result %{BOOL}d", v17, 0x1Cu);
    sub_1D1741A30(v57, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v57, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x1D3893640](v61, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {

    v13(v14, v15);
  }

  if ([*(v0 + 248) sessionState] == 1)
  {
    v24 = *(v0 + 392);

    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 456);
    v26 = *(v0 + 464);
    v54 = *(v0 + 424);
    v55 = *(v0 + 432);
    v53 = *(v0 + 320);
    v27 = *(v0 + 304);
    v28 = *(v0 + 280);
    v56 = *(v0 + 296);
    v58 = *(v0 + 288);
    v60 = *(v0 + 272);
    v62 = *(v0 + 520);
    v29 = (*(v0 + 584) + 32) & ~*(v0 + 584);
    v30 = *(v0 + 256);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v31, qword_1EE07B210);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1D1E739C0;
    v54(v32 + v29, v30, v53);
    *v27 = v32;
    swift_storeEnumTagMultiPayload();
    sub_1D1E67ECC();

    (*(v28 + 8))(v58, v60);
    v34 = *(v0 + 368);
    v33 = *(v0 + 376);
    v36 = *(v0 + 352);
    v35 = *(v0 + 360);
    v38 = *(v0 + 336);
    v37 = *(v0 + 344);
    v40 = *(v0 + 304);
    v39 = *(v0 + 312);
    v41 = *(v0 + 288);

    v42 = *(v0 + 8);

    return v42(1);
  }

  else
  {
    v44 = *(v0 + 520);
    v45 = *(v0 + 384);
    v46 = *(v0 + 264);
    v63 = *(v0 + 248);
    v47 = sub_1D1E67E0C();
    *(v0 + 544) = v47;
    v48 = swift_task_alloc();
    *(v0 + 552) = v48;
    *(v48 + 16) = v63;
    *(v48 + 32) = v44;
    *(v48 + 40) = v46;
    v49 = *(MEMORY[0x1E69E88D0] + 4);
    v50 = swift_task_alloc();
    *(v0 + 560) = v50;
    *v50 = v0;
    v50[1] = sub_1D189A184;
    v51 = MEMORY[0x1E69E85E0];
    v52 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE6DDE0](v0 + 588, v47, v51, 0xD00000000000002FLL, 0x80000001D1EBB540, sub_1D18A2394, v48, v52);
  }
}

uint64_t sub_1D189A184()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 552);
  v4 = *(*v0 + 544);
  v8 = *v0;

  v5 = *(v1 + 408);
  v6 = *(v1 + 400);

  return MEMORY[0x1EEE6DFA0](sub_1D189A2E4, v6, v5);
}

uint64_t sub_1D189A2E4()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 392);

  v3 = *(v0 + 588);
  v5 = *(v0 + 368);
  v4 = *(v0 + 376);
  v7 = *(v0 + 352);
  v6 = *(v0 + 360);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  v11 = *(v0 + 304);
  v10 = *(v0 + 312);
  v12 = *(v0 + 288);

  v13 = *(v0 + 8);

  return v13(v3);
}

uint64_t sub_1D189A3D0()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 464);
  v18 = *(v0 + 472);
  v19 = *(v0 + 520);
  v4 = *(v0 + 456);
  v15 = *(v0 + 424);
  v16 = *(v0 + 432);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v17 = *(v0 + 296);
  v7 = *(v0 + 256);
  v8 = (*(v0 + 584) + 32) & ~*(v0 + 584);
  swift_willThrow();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D1E739C0;
  v15(v9 + v8, v7, v5);
  *v6 = v9;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(v0 + 568) = inited;
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = v19;

  v11 = swift_task_alloc();
  *(v0 + 576) = v11;
  *v11 = v0;
  v11[1] = sub_1D189A54C;
  v12 = *(v0 + 448);
  v13 = *(v0 + 304);

  return sub_1D18A2E60(v0 + 240, v13, inited);
}

uint64_t sub_1D189A54C()
{
  v1 = *v0;
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 304);
  v10 = *v0;

  swift_setDeallocating();
  v5 = *(v3 + 16);
  swift_arrayDestroy();
  sub_1D18A21A8(v4, type metadata accessor for CoordinationSnapshot.UpdateType);
  v6 = v1[30];

  v7 = v1[51];
  v8 = v1[50];

  return MEMORY[0x1EEE6DFA0](sub_1D189A6F0, v8, v7);
}

uint64_t sub_1D189A6F0()
{
  v1 = v0[67];
  v2 = v0[65];
  v3 = v0[49];

  v5 = v0[46];
  v4 = v0[47];
  v7 = v0[44];
  v6 = v0[45];
  v9 = v0[42];
  v8 = v0[43];
  v11 = v0[38];
  v10 = v0[39];
  v12 = v0[36];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_1D189A7DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a3;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

void sub_1D189A8A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8);
  v25 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v26 = &v25 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_opt_self();
  (*(v13 + 16))(v15, a3, v12);
  (*(v8 + 16))(v11, a1, v7);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = v27;
  *(v19 + 16) = v27;
  (*(v13 + 32))(v19 + v16, v15, v12);
  (*(v8 + 32))(v19 + v17, v26, v25);
  v21 = v30;
  *(v19 + v18) = v29;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_1D18A2B94;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D18A2E5C;
  aBlock[3] = &block_descriptor_147;
  v22 = _Block_copy(aBlock);
  v23 = v20;

  v24 = [v28 scheduledTimerWithTimeInterval:0 repeats:v22 block:20.0];
  _Block_release(v22);
}

uint64_t sub_1D189AB94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v67 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v54 - v11;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v12 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v63 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v54 - v16;
  v17 = sub_1D1E66A7C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v58 = v21;
  v59 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v54 - v22;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v24 = sub_1D1E6709C();
  __swift_project_value_buffer(v24, qword_1EC6459E8);
  v68 = *(v18 + 16);
  v69 = v18 + 16;
  v68(v23, a3, v17);
  v25 = a2;
  v26 = sub_1D1E6707C();
  v27 = sub_1D1E6835C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v57 = a4;
    v29 = v28;
    v30 = swift_slowAlloc();
    v54 = v30;
    v55 = swift_slowAlloc();
    v70 = v55;
    *v29 = 138412802;
    *(v29 + 4) = v25;
    *v30 = v25;
    *(v29 + 12) = 2080;
    sub_1D1886B8C();
    v31 = v18;
    v32 = v25;
    v56 = a3;
    v33 = v32;
    v34 = sub_1D1E68FAC();
    v36 = v35;
    (*(v31 + 8))(v23, v17);
    v37 = sub_1D1B1312C(v34, v36, &v70);
    v18 = v31;

    *(v29 + 14) = v37;
    *(v29 + 22) = 1024;
    v38 = [v33 sessionState];

    *(v29 + 24) = v38 == 1;
    a3 = v56;
    _os_log_impl(&dword_1D16EC000, v26, v27, "20 seconds timer time up for %@ with parentUUID: %s with result %{BOOL}d", v29, 0x1Cu);
    v39 = v54;
    sub_1D1741A30(v54, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v39, -1, -1);
    v40 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x1D3893640](v40, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  else
  {

    (*(v18 + 8))(v23, v17);
  }

  if ([v25 sessionState] == 1)
  {
    if (qword_1EE07B1E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
    __swift_project_value_buffer(v41, qword_1EE07B210);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v42 = *(v18 + 72);
    v43 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1D1E739C0;
    v68((v44 + v43), a3, v17);
    *v63 = v44;
    swift_storeEnumTagMultiPayload();
    v45 = v60;
    sub_1D1E67ECC();
    (*(v61 + 8))(v45, v62);
    v71 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8);
  }

  else
  {
    v46 = sub_1D1E67E7C();
    v47 = v65;
    (*(*(v46 - 8) + 56))(v65, 1, 1, v46);
    v48 = v59;
    v68(v59, a3, v17);
    v49 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v50 = (v58 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0;
    (*(v18 + 32))(v51 + v49, v48, v17);
    v52 = v66;
    *(v51 + v50) = v67;
    *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;

    sub_1D17C7818(0, 0, v47, &unk_1D1E7BCC8, v51);

    v72 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8);
  }

  return sub_1D1E67D6C();
}

uint64_t sub_1D189B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v5[10] = updated;
  v7 = *(*(updated - 8) + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D189B2E0, 0, 0);
}

uint64_t sub_1D189B2E0()
{
  *(v0 + 96) = sub_1D1E67E1C();
  *(v0 + 104) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189B378, v2, v1);
}

uint64_t sub_1D189B378()
{
  v1 = *(v0 + 104);

  if (qword_1EC642200 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D189B410, 0, 0);
}

uint64_t sub_1D189B410()
{
  v1 = *(v0 + 96);
  *(v0 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189B49C, v3, v2);
}

uint64_t sub_1D189B49C()
{
  v1 = *(v0 + 112);

  *(v0 + 120) = qword_1EC6BE0C8;

  return MEMORY[0x1EEE6DFA0](sub_1D189B510, 0, 0);
}

uint64_t sub_1D189B510()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D1E739C0;
  (*(v6 + 16))(v9 + v8, v4, v5);
  *v1 = v9;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  inited = swift_initStackObject();
  v0[16] = inited;
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = v3;

  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1D189B6D4;
  v12 = v0[15];
  v13 = v0[11];
  v14 = v0[7];

  return sub_1D18A2E60(v14, v13, inited);
}

uint64_t sub_1D189B6D4(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 144) = a1;

  swift_setDeallocating();
  v5 = *(v3 + 16);
  swift_arrayDestroy();
  sub_1D18A21A8(v4, type metadata accessor for CoordinationSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D189B83C, 0, 0);
}

uint64_t sub_1D189B83C()
{
  v1 = v0[11];
  *(v0[7] + 8) = v0[18];

  v2 = v0[1];

  return v2();
}

uint64_t CoordinationDataModel.addAlarm(_:parentContainerID:)(uint64_t a1, uint64_t a2)
{
  v3[77] = v2;
  v3[76] = a2;
  v3[75] = a1;
  v3[78] = swift_getObjectType();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v3[79] = updated;
  v5 = *(*(updated - 8) + 64) + 15;
  v3[80] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v3[81] = v6;
  v7 = *(v6 - 8);
  v3[82] = v7;
  v8 = *(v7 + 64) + 15;
  v3[83] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v3[84] = swift_task_alloc();
  v10 = *(type metadata accessor for StaticAlarm() - 8);
  v3[85] = v10;
  v3[86] = *(v10 + 64);
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  v3[89] = v11;
  v12 = *(v11 - 8);
  v3[90] = v12;
  v3[91] = *(v12 + 64);
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = sub_1D1E67E1C();
  v3[95] = sub_1D1E67E0C();
  v14 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189BB04, v14, v13);
}

uint64_t sub_1D189BB04()
{
  v118 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 616);

  v3 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 608);

    v6 = sub_1D1742188(v5);
    if (v7)
    {
      v8 = *(v0 + 600);
      v9 = (*(v4 + 56) + (v6 << 7));
      v10 = v9[3];
      v12 = *v9;
      v11 = v9[1];
      *(v0 + 48) = v9[2];
      *(v0 + 64) = v10;
      *(v0 + 16) = v12;
      *(v0 + 32) = v11;
      v13 = v9[7];
      v15 = v9[4];
      v14 = v9[5];
      *(v0 + 112) = v9[6];
      *(v0 + 128) = v13;
      *(v0 + 80) = v15;
      *(v0 + 96) = v14;
      sub_1D18783EC(v0 + 16, v0 + 144);

      *(v0 + 592) = v8;
      sub_1D1877D48();
      v16 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20((v0 + 408), v0 + 368);
        if (qword_1EC642210 != -1)
        {
          swift_once();
        }

        v17 = *(v0 + 744);
        v18 = *(v0 + 720);
        v19 = *(v0 + 712);
        v20 = *(v0 + 608);
        v21 = sub_1D1E6709C();
        __swift_project_value_buffer(v21, qword_1EC6459E8);
        sub_1D17419CC(v0 + 368, v0 + 448);
        v115 = *(v18 + 16);
        v115(v17, v20, v19);
        v22 = sub_1D1E6707C();
        v23 = sub_1D1E6835C();
        v24 = os_log_type_enabled(v22, v23);
        v25 = *(v0 + 744);
        v26 = *(v0 + 720);
        v27 = *(v0 + 712);
        if (v24)
        {
          v28 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *&v116[0] = v113;
          *v28 = 136315394;
          v29 = *(v0 + 472);
          v30 = *(v0 + 480);
          __swift_project_boxed_opaque_existential_1((v0 + 448), v29);
          v31 = (*(v30 + 64))(v29, v30);
          v33 = v32;
          __swift_destroy_boxed_opaque_existential_1((v0 + 448));
          v34 = sub_1D1B1312C(v31, v33, v116);

          *(v28 + 4) = v34;
          *(v28 + 12) = 2080;
          sub_1D1886B8C();
          v35 = sub_1D1E68FAC();
          v37 = v36;
          (*(v26 + 8))(v25, v27);
          v38 = sub_1D1B1312C(v35, v37, v116);

          *(v28 + 14) = v38;
          _os_log_impl(&dword_1D16EC000, v22, v23, "attempt to add alarm %s for parent %s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v113, -1, -1);
          MEMORY[0x1D3893640](v28, -1, -1);
        }

        else
        {

          (*(v26 + 8))(v25, v27);
          __swift_destroy_boxed_opaque_existential_1((v0 + 448));
        }

        v39 = *(v0 + 736);
        v112 = *(v0 + 752);
        v114 = *(v0 + 728);
        v40 = *(v0 + 720);
        v41 = *(v0 + 712);
        v105 = *(v0 + 704);
        v107 = *(v0 + 672);
        v111 = *(v0 + 616);
        v42 = *(v0 + 608);
        v43 = *(v0 + 392);
        v44 = *(v0 + 400);
        v45 = __swift_project_boxed_opaque_existential_1((v0 + 368), v43);
        v46 = *(v43 - 8);
        v47 = *(v46 + 64) + 15;
        v48 = swift_task_alloc();
        (*(v46 + 16))(v48, v45, v43);
        v115(v39, v42, v41);
        v109 = v39;
        sub_1D1869A54(v48, v39, v43, v44, v105);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1D1E739C0;
        sub_1D17419CC(v0 + 368, v49 + 32);
        v50 = sub_1D1E67E7C();
        (*(*(v50 - 8) + 56))(v107, 1, 1, v50);
        v51 = v39;
        v52 = v41;
        v115(v51, v42, v41);
        v53 = v111;
        v54 = sub_1D1E67E0C();
        v55 = (*(v40 + 80) + 56) & ~*(v40 + 80);
        v56 = swift_allocObject();
        v57 = MEMORY[0x1E69E85E0];
        *(v56 + 16) = v54;
        *(v56 + 24) = v57;
        *(v56 + 32) = 0;
        *(v56 + 40) = v49;
        *(v56 + 48) = v53;
        v58 = v109;
        v110 = *(v40 + 32);
        v110(v56 + v55, v58, v52);
        sub_1D17C6EF0(0, 0, v107, &unk_1D1E7BC78, v56);

        if (qword_1EE07B1E8 != -1)
        {
          swift_once();
        }

        v59 = *(v0 + 712);
        v99 = v59;
        v100 = *(v0 + 736);
        v108 = *(v0 + 704);
        v101 = *(v0 + 696);
        v102 = *(v0 + 688);
        v60 = *(v0 + 680);
        v61 = *(v0 + 664);
        v62 = *(v0 + 656);
        v63 = *(v0 + 640);
        v97 = *(v0 + 632);
        v98 = *(v0 + 648);
        v103 = *(v0 + 616);
        v104 = *(v0 + 624);
        v64 = *(v0 + 608);
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
        __swift_project_value_buffer(v65, qword_1EE07B210);
        v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
        v115(v63, v64, v59);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
        v67 = *(v60 + 72);
        v68 = *(v60 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1D1E739C0;
        sub_1D18A1F94(v108, v69 + ((v68 + 32) & ~v68), type metadata accessor for StaticAlarm);
        *(v63 + v66) = v69;
        swift_storeEnumTagMultiPayload();
        sub_1D1E67ECC();
        (*(v62 + 8))(v61, v98);
        v70 = *(v0 + 392);
        v71 = *(v0 + 400);
        v72 = __swift_project_boxed_opaque_existential_1((v0 + 368), v70);
        v73 = *(v0 + 64);
        v74 = *(v0 + 32);
        v116[0] = *(v0 + 16);
        v116[1] = v74;
        v116[2] = *(v0 + 48);
        v117 = v73;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AF8, &qword_1D1E7BC28);
        v76 = *(v71 + 8);
        v77 = sub_1D187178C(v72, v75, v70);
        sub_1D17419CC(v0 + 368, v0 + 488);
        v115(v100, v64, v99);
        v78 = swift_allocObject();
        sub_1D16EEE20((v0 + 488), v78 + 16);
        v110(v78 + v55, v100, v99);
        *(v0 + 304) = sub_1D18A23A0;
        *(v0 + 312) = v78;
        *(v0 + 272) = MEMORY[0x1E69E9820];
        *(v0 + 280) = 1107296256;
        *(v0 + 288) = sub_1D18A2E5C;
        *(v0 + 296) = &block_descriptor_86;
        v79 = _Block_copy((v0 + 272));
        v80 = *(v0 + 312);

        aBlock = [v77 addSuccessBlock_];
        _Block_release(v79);

        sub_1D17419CC(v0 + 368, v0 + 528);
        v115(v100, v64, v99);
        sub_1D18A1F94(v108, v101, type metadata accessor for StaticAlarm);
        v81 = (v55 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
        v82 = (v81 + v68 + 8) & ~v68;
        v83 = swift_allocObject();
        sub_1D16EEE20((v0 + 528), v83 + 16);
        v110(v83 + v55, v100, v99);
        *(v83 + v81) = v103;
        sub_1D18A2B2C(v101, v83 + v82, type metadata accessor for StaticAlarm);
        *(v83 + ((v102 + v82 + 7) & 0xFFFFFFFFFFFFFFF8)) = v104;
        *(v0 + 352) = sub_1D18A2558;
        *(v0 + 360) = v83;
        *(v0 + 320) = MEMORY[0x1E69E9820];
        *(v0 + 328) = 1107296256;
        *(v0 + 336) = sub_1D189C628;
        *(v0 + 344) = &block_descriptor_92_0;
        v84 = _Block_copy((v0 + 320));
        v85 = *(v0 + 360);
        v86 = v103;

        v87 = [aBlock addFailureBlock_];
        _Block_release(v84);

        sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
        sub_1D18A21A8(v108, type metadata accessor for StaticAlarm);
        __swift_destroy_boxed_opaque_existential_1((v0 + 368));
      }

      else
      {
        sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
        *(v0 + 408) = 0u;
        *(v0 + 424) = 0u;
        *(v0 + 440) = 0;
        sub_1D1741A30(v0 + 408, &qword_1EC645670, &qword_1D1E7B950);
      }
    }

    else
    {
    }
  }

  v88 = *(v0 + 744);
  v89 = *(v0 + 736);
  v90 = *(v0 + 704);
  v91 = *(v0 + 696);
  v92 = *(v0 + 672);
  v93 = *(v0 + 664);
  v94 = *(v0 + 640);

  v95 = *(v0 + 8);

  return v95();
}

void sub_1D189C630(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1D189C69C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC6459E8);
  sub_1D17419CC(a2, v31);
  (*(v8 + 16))(v11, a3, v7);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = a4;
    v30 = v16;
    v17 = v16;
    *v15 = 136315394;
    v18 = v32;
    v19 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v20 = (*(v19 + 64))(v18, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v31);
    v23 = sub_1D1B1312C(v20, v22, &v30);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    sub_1D1886B8C();
    v24 = sub_1D1E68FAC();
    v26 = v25;
    (*(v8 + 8))(v11, v7);
    v27 = sub_1D1B1312C(v24, v26, &v30);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_1D16EC000, v13, v14, v29, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }
}

uint64_t sub_1D189C96C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, int a11)
{
  v78 = a8;
  *&v71 = a7;
  v86 = a5;
  v77 = a4;
  v80 = a10;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v14 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v84 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v76 = &v69 - v21;
  v22 = sub_1D1E66A7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v72 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v69 - v27;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v79 = a11;
  v73 = a9;
  v29 = sub_1D1E6709C();
  __swift_project_value_buffer(v29, qword_1EC6459E8);
  sub_1D17419CC(a2, v90);
  v88 = *(v23 + 16);
  v88(v28, a3, v22);
  v30 = a1;
  v31 = sub_1D1E6707C();
  v32 = sub_1D1E6833C();

  v33 = os_log_type_enabled(v31, v32);
  v87 = a3;
  v75 = v23 + 16;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v70 = a2;
    v35 = v34;
    v69 = swift_slowAlloc();
    v89 = v69;
    *v35 = 136315650;
    v36 = v91;
    v37 = v92;
    __swift_project_boxed_opaque_existential_1(v90, v91);
    v38 = (*(v37 + 64))(v36, v37);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1(v90);
    v41 = sub_1D1B1312C(v38, v40, &v89);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    sub_1D1886B8C();
    v42 = sub_1D1E68FAC();
    v44 = v43;
    (*(v23 + 8))(v28, v22);
    v45 = sub_1D1B1312C(v42, v44, &v89);

    *(v35 + 14) = v45;
    *(v35 + 22) = 2080;
    swift_getErrorValue();
    v46 = sub_1D1E6915C();
    v48 = sub_1D1B1312C(v46, v47, &v89);

    *(v35 + 24) = v48;
    a3 = v87;
    _os_log_impl(&dword_1D16EC000, v31, v32, v71, v35, 0x20u);
    v49 = v69;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v49, -1, -1);
    v50 = v35;
    a2 = v70;
    MEMORY[0x1D3893640](v50, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v28, v22);
    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
  v51 = swift_allocObject();
  v71 = xmmword_1D1E739C0;
  *(v51 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a2, v51 + 32);
  v52 = sub_1D1E67E7C();
  v53 = v76;
  (*(*(v52 - 8) + 56))(v76, 1, 1, v52);
  v54 = v72;
  v88(v72, a3, v22);
  sub_1D1E67E1C();
  v55 = v77;
  v56 = sub_1D1E67E0C();
  v57 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v58 = swift_allocObject();
  v59 = MEMORY[0x1E69E85E0];
  *(v58 + 16) = v56;
  *(v58 + 24) = v59;
  *(v58 + 32) = v73;
  *(v58 + 40) = v51;
  *(v58 + 48) = v55;
  (*(v23 + 32))(v58 + v57, v54, v22);
  sub_1D17C6EF0(0, 0, v53, v80, v58);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v60, qword_1EE07B210);
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
  v62 = v84;
  v88(v84, v87, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
  v63 = *(type metadata accessor for StaticAlarm() - 8);
  v64 = *(v63 + 72);
  v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v71;
  sub_1D18A1F94(v86, v66 + v65, type metadata accessor for StaticAlarm);
  *&v62[v61] = v66;
  swift_storeEnumTagMultiPayload();
  v67 = v81;
  sub_1D1E67ECC();
  return (*(v82 + 8))(v67, v83);
}

void sub_1D189D11C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC6459E8);
  (*(v6 + 16))(v9, a3, v5);

  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6835C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v13 = 136315394;
    swift_beginAccess();
    v14 = a2[5];
    v15 = a2[6];
    v16 = __swift_project_boxed_opaque_existential_1(a2 + 2, v14);
    v30[1] = v30;
    v17 = *(v14 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x1EEE9AC00](v16);
    v31 = v12;
    v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20);
    v21 = (*(*(v15 + 8) + 64))(v14);
    v23 = v22;
    (*(v17 + 8))(v20, v14);
    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 4) = v24;
    *(v13 + 12) = 2080;
    sub_1D1886B8C();
    v25 = sub_1D1E68FAC();
    v27 = v26;
    (*(v6 + 8))(v9, v5);
    v28 = sub_1D1B1312C(v25, v27, &v33);

    *(v13 + 14) = v28;
    _os_log_impl(&dword_1D16EC000, v11, v31, "successfully toggled alarm %s for parent %s", v13, 0x16u);
    v29 = v32;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_1D189D4B0(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v97 = a5;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v9 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v102 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v100 = *(v11 - 8);
  v101 = v11;
  v12 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v99 = v86 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v96 = v86 - v16;
  v17 = type metadata accessor for StaticAlarm();
  v98 = *(v17 - 8);
  v18 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D1E66A7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v93 = v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v86 - v25;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EC6459E8);
  v28 = *(v21 + 16);
  v104 = v21 + 16;
  v95 = v28;
  v28(v26, a3, v20);

  v29 = a1;
  v30 = sub_1D1E6707C();
  v31 = sub_1D1E6833C();

  v32 = os_log_type_enabled(v30, v31);
  v92 = v21;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v88 = v31;
    v34 = v21;
    v35 = v33;
    v89 = swift_slowAlloc();
    v106[0] = v89;
    *v35 = 136315650;
    swift_beginAccess();
    *&v91 = a4;
    v36 = a2[5];
    v37 = a2[6];
    v38 = __swift_project_boxed_opaque_existential_1(a2 + 2, v36);
    v86[0] = v86;
    v39 = *(v36 - 8);
    v86[1] = a1;
    v40 = a3;
    v41 = v39;
    v42 = *(v39 + 64);
    MEMORY[0x1EEE9AC00](v38);
    v87 = v30;
    v44 = v86 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44);
    v45 = (*(*(v37 + 8) + 64))(v36);
    v47 = v46;
    (*(v41 + 8))(v44, v36);
    a3 = v40;
    v48 = sub_1D1B1312C(v45, v47, v106);
    a4 = v91;

    *(v35 + 4) = v48;
    *(v35 + 12) = 2080;
    sub_1D1886B8C();
    v49 = sub_1D1E68FAC();
    v51 = v50;
    (*(v34 + 8))(v26, v20);
    v52 = sub_1D1B1312C(v49, v51, v106);

    *(v35 + 14) = v52;
    *(v35 + 22) = 2080;
    swift_getErrorValue();
    v53 = sub_1D1E6915C();
    v55 = sub_1D1B1312C(v53, v54, v106);

    *(v35 + 24) = v55;
    v56 = v87;
    _os_log_impl(&dword_1D16EC000, v87, v88, "failed to toggle alarm %s for parent %s due to %s", v35, 0x20u);
    v57 = v89;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v57, -1, -1);
    MEMORY[0x1D3893640](v35, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v26, v20);
  }

  v90 = a3;
  v58 = a4[3];
  v59 = a4[4];
  v60 = __swift_project_boxed_opaque_existential_1(a4, v58);
  v61 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v63 = v86 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v64 + 16))(v63);
  v65 = v93;
  v66 = v95;
  v95(v93, a3, v20);
  sub_1D1869A54(v63, v65, v58, v59, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
  v67 = swift_allocObject();
  v91 = xmmword_1D1E739C0;
  *(v67 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a4, v67 + 32);
  v68 = sub_1D1E67E7C();
  v69 = v96;
  (*(*(v68 - 8) + 56))(v96, 1, 1, v68);
  v66(v65, a3, v20);
  sub_1D1E67E1C();
  v70 = v97;
  v71 = sub_1D1E67E0C();
  v72 = v92;
  v73 = (*(v92 + 80) + 56) & ~*(v92 + 80);
  v74 = swift_allocObject();
  v75 = MEMORY[0x1E69E85E0];
  *(v74 + 16) = v71;
  *(v74 + 24) = v75;
  *(v74 + 32) = 0;
  *(v74 + 40) = v67;
  *(v74 + 48) = v70;
  (*(v72 + 32))(v74 + v73, v65, v20);
  sub_1D17C6EF0(0, 0, v69, &unk_1D1E7BCE8, v74);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v76, qword_1EE07B210);
  v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
  v78 = v102;
  v66(v102, v90, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
  v79 = *(v98 + 72);
  v80 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v81 = swift_allocObject();
  *(v81 + 16) = v91;
  v82 = v81 + v80;
  v83 = v105;
  sub_1D18A1F94(v105, v82, type metadata accessor for StaticAlarm);
  *&v78[v77] = v81;
  swift_storeEnumTagMultiPayload();
  v84 = v99;
  sub_1D1E67ECC();
  (*(v100 + 8))(v84, v101);
  return sub_1D18A21A8(v83, type metadata accessor for StaticAlarm);
}

uint64_t CoordinationDataModel.updateAlarm(_:parentContainerID:)(uint64_t a1, uint64_t a2)
{
  v3[97] = v2;
  v3[96] = a2;
  v3[95] = a1;
  v3[98] = swift_getObjectType();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v3[99] = updated;
  v5 = *(*(updated - 8) + 64) + 15;
  v3[100] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v3[101] = v6;
  v7 = *(v6 - 8);
  v3[102] = v7;
  v8 = *(v7 + 64) + 15;
  v3[103] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v3[104] = swift_task_alloc();
  v10 = *(type metadata accessor for StaticAlarm() - 8);
  v3[105] = v10;
  v11 = *(v10 + 64) + 15;
  v3[106] = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  v3[107] = v12;
  v13 = *(v12 - 8);
  v3[108] = v13;
  v3[109] = *(v13 + 64);
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = sub_1D1E67E1C();
  v3[114] = sub_1D1E67E0C();
  v15 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189E090, v15, v14);
}

uint64_t sub_1D189E090()
{
  v153 = v0;
  v1 = *(v0 + 912);
  v2 = *(v0 + 776);

  v3 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 768);

    v6 = sub_1D1742188(v5);
    if ((v7 & 1) == 0)
    {

      goto LABEL_22;
    }

    v8 = *(v0 + 760);
    v9 = (*(v4 + 56) + (v6 << 7));
    v10 = v9[3];
    v12 = *v9;
    v11 = v9[1];
    *(v0 + 48) = v9[2];
    *(v0 + 64) = v10;
    *(v0 + 16) = v12;
    *(v0 + 32) = v11;
    v13 = v9[7];
    v15 = v9[4];
    v14 = v9[5];
    *(v0 + 112) = v9[6];
    *(v0 + 128) = v13;
    *(v0 + 80) = v15;
    *(v0 + 96) = v14;
    sub_1D18783EC(v0 + 16, v0 + 144);

    *(v0 + 752) = v8;
    sub_1D1877D48();
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
      *(v0 + 408) = 0u;
      *(v0 + 424) = 0u;
      *(v0 + 440) = 0;
      sub_1D1741A30(v0 + 408, &qword_1EC645670, &qword_1D1E7B950);
      goto LABEL_22;
    }

    v17 = *(v0 + 896);
    v18 = *(v0 + 864);
    v19 = *(v0 + 856);
    v20 = *(v0 + 776);
    v21 = *(v0 + 768);
    sub_1D16EEE20((v0 + 408), v0 + 368);
    v22 = *(v0 + 392);
    v23 = *(v0 + 400);
    __swift_project_boxed_opaque_existential_1((v0 + 368), v22);
    (*(v23 + 56))(v22, v23);
    v24 = sub_1D187695C(v17, v21, v0 + 488);
    v25 = *(v18 + 8);
    v25(v17, v19, v24);
    if (*(v0 + 512))
    {
      sub_1D16EEE20((v0 + 488), v0 + 448);
      if (qword_1EC642210 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 888);
      v27 = *(v0 + 864);
      v28 = *(v0 + 856);
      v29 = *(v0 + 768);
      v30 = sub_1D1E6709C();
      __swift_project_value_buffer(v30, qword_1EC6459E8);
      sub_1D17419CC(v0 + 368, v0 + 568);
      v148 = *(v27 + 16);
      v148(v26, v29, v28);
      v31 = sub_1D1E6707C();
      v32 = sub_1D1E6835C();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 888);
      v35 = *(v0 + 856);
      if (v33)
      {
        v36 = swift_slowAlloc();
        v144 = v25;
        v37 = swift_slowAlloc();
        *&v151[0] = v37;
        *v36 = 136315394;
        v38 = *(v0 + 592);
        v39 = *(v0 + 600);
        __swift_project_boxed_opaque_existential_1((v0 + 568), v38);
        v40 = (*(v39 + 64))(v38, v39);
        v42 = v41;
        __swift_destroy_boxed_opaque_existential_1((v0 + 568));
        v43 = sub_1D1B1312C(v40, v42, v151);

        *(v36 + 4) = v43;
        *(v36 + 12) = 2080;
        sub_1D1886B8C();
        v44 = sub_1D1E68FAC();
        v46 = v45;
        v144(v34, v35);
        v47 = sub_1D1B1312C(v44, v46, v151);

        *(v36 + 14) = v47;
        _os_log_impl(&dword_1D16EC000, v31, v32, "attempt to update alarm %s for parent %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v37, -1, -1);
        MEMORY[0x1D3893640](v36, -1, -1);
      }

      else
      {

        (v25)(v34, v35);
        __swift_destroy_boxed_opaque_existential_1((v0 + 568));
      }

      v69 = *(v0 + 896);
      v145 = *(v0 + 904);
      v147 = *(v0 + 872);
      v70 = *(v0 + 864);
      v71 = *(v0 + 856);
      v138 = *(v0 + 832);
      v139 = *(v0 + 848);
      v72 = *(v0 + 768);
      v141 = v72;
      v143 = *(v0 + 776);
      v73 = *(v0 + 392);
      v74 = *(v0 + 400);
      v75 = __swift_project_boxed_opaque_existential_1((v0 + 368), v73);
      v76 = *(v73 - 8);
      v77 = *(v76 + 64) + 15;
      v78 = swift_task_alloc();
      (*(v76 + 16))(v78, v75, v73);
      v148(v69, v72, v71);
      v136 = v69;
      sub_1D1869A54(v78, v69, v73, v74, v139);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1D1E739C0;
      sub_1D17419CC(v0 + 368, v79 + 32);
      v80 = sub_1D1E67E7C();
      (*(*(v80 - 8) + 56))(v138, 1, 1, v80);
      v81 = v69;
      v82 = v71;
      v148(v81, v141, v71);
      v83 = v143;
      v84 = sub_1D1E67E0C();
      v85 = (*(v70 + 80) + 56) & ~*(v70 + 80);
      v140 = v85 + v147;
      v86 = swift_allocObject();
      v87 = MEMORY[0x1E69E85E0];
      *(v86 + 16) = v84;
      *(v86 + 24) = v87;
      *(v86 + 32) = 0;
      *(v86 + 40) = v79;
      *(v86 + 48) = v83;
      v146 = v85;
      v142 = *(v70 + 32);
      v142(v86 + v85, v136, v82);
      sub_1D17C6EF0(0, 0, v138, &unk_1D1E7BC88, v86);

      if (qword_1EE07B1E8 != -1)
      {
        swift_once();
      }

      v88 = *(v0 + 856);
      v134 = *(v0 + 896);
      v89 = *(v0 + 848);
      v90 = *(v0 + 840);
      v91 = *(v0 + 824);
      v92 = *(v0 + 816);
      v93 = *(v0 + 800);
      v131 = *(v0 + 792);
      v132 = *(v0 + 808);
      v137 = *(v0 + 784);
      v135 = *(v0 + 776);
      v94 = *(v0 + 768);
      v133 = v94;
      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
      __swift_project_value_buffer(v95, qword_1EE07B210);
      v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
      v148(v93, v94, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
      v97 = *(v90 + 72);
      v98 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_1D1E739C0;
      sub_1D18A1F94(v89, v99 + v98, type metadata accessor for StaticAlarm);
      *(v93 + v96) = v99;
      swift_storeEnumTagMultiPayload();
      sub_1D1E67ECC();
      (*(v92 + 8))(v91, v132);
      v100 = *(v0 + 392);
      v101 = *(v0 + 400);
      v102 = __swift_project_boxed_opaque_existential_1((v0 + 368), v100);
      v103 = *(v0 + 64);
      v104 = *(v0 + 32);
      v151[0] = *(v0 + 16);
      v151[1] = v104;
      v151[2] = *(v0 + 48);
      v152 = v103;
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AF8, &qword_1D1E7BC28);
      v106 = *(v101 + 8);
      v107 = sub_1D1871BF8(v102, v105, v100);
      sub_1D17419CC(v0 + 368, v0 + 608);
      v148(v134, v133, v88);
      v108 = swift_allocObject();
      sub_1D16EEE20((v0 + 608), v108 + 16);
      v142(v108 + v146, v134, v88);
      *(v0 + 304) = sub_1D18A269C;
      *(v0 + 312) = v108;
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1D18A2E5C;
      *(v0 + 296) = &block_descriptor_103;
      v109 = _Block_copy((v0 + 272));
      v110 = *(v0 + 312);

      v111 = [v107 addSuccessBlock_];
      _Block_release(v109);

      sub_1D17419CC(v0 + 368, v0 + 648);
      v148(v134, v133, v88);
      sub_1D17419CC(v0 + 448, v0 + 688);
      v112 = (v140 + 7) & 0xFFFFFFFFFFFFFFF8;
      v113 = (v112 + 47) & 0xFFFFFFFFFFFFFFF8;
      v114 = swift_allocObject();
      sub_1D16EEE20((v0 + 648), v114 + 16);
      v142(v114 + v146, v134, v88);
      sub_1D16EEE20((v0 + 688), v114 + v112);
      *(v114 + v113) = v135;
      *(v114 + ((v113 + 15) & 0xFFFFFFFFFFFFFFF8)) = v137;
      *(v0 + 352) = sub_1D18A26BC;
      *(v0 + 360) = v114;
      *(v0 + 320) = MEMORY[0x1E69E9820];
      *(v0 + 328) = 1107296256;
      *(v0 + 336) = sub_1D189C628;
      *(v0 + 344) = &block_descriptor_109;
      v115 = _Block_copy((v0 + 320));
      v116 = *(v0 + 360);
      v117 = v135;

      v118 = [v111 addFailureBlock_];
      _Block_release(v115);

      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
      sub_1D18A21A8(v89, type metadata accessor for StaticAlarm);
      v119 = (v0 + 448);
    }

    else
    {
      sub_1D1741A30(v0 + 488, &qword_1EC645670, &qword_1D1E7B950);
      if (qword_1EC642210 != -1)
      {
        swift_once();
      }

      v48 = *(v0 + 880);
      v49 = *(v0 + 864);
      v50 = *(v0 + 856);
      v51 = *(v0 + 768);
      v52 = sub_1D1E6709C();
      __swift_project_value_buffer(v52, qword_1EC6459E8);
      sub_1D17419CC(v0 + 368, v0 + 528);
      (*(v49 + 16))(v48, v51, v50);
      v53 = sub_1D1E6707C();
      v54 = sub_1D1E6833C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 896);
        v149 = *(v0 + 880);
        v56 = v25;
        v57 = *(v0 + 856);
        v58 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *&v151[0] = v150;
        *v58 = 136315394;
        v59 = *(v0 + 552);
        v60 = *(v0 + 560);
        __swift_project_boxed_opaque_existential_1((v0 + 528), v59);
        (*(v60 + 56))(v59, v60);
        sub_1D1886B8C();
        v61 = sub_1D1E68FAC();
        v63 = v62;
        v56(v55, v57);
        __swift_destroy_boxed_opaque_existential_1((v0 + 528));
        v64 = sub_1D1B1312C(v61, v63, v151);

        *(v58 + 4) = v64;
        *(v58 + 12) = 2080;
        v65 = sub_1D1E68FAC();
        v67 = v66;
        v56(v149, v57);
        v68 = sub_1D1B1312C(v65, v67, v151);

        *(v58 + 14) = v68;
        _os_log_impl(&dword_1D16EC000, v53, v54, "failed to found alarm with %s for parent %s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v150, -1, -1);
        MEMORY[0x1D3893640](v58, -1, -1);

        sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
LABEL_21:
        __swift_destroy_boxed_opaque_existential_1((v0 + 368));
        goto LABEL_22;
      }

      v120 = *(v0 + 880);
      v121 = *(v0 + 856);
      sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);

      (v25)(v120, v121);
      v119 = (v0 + 528);
    }

    __swift_destroy_boxed_opaque_existential_1(v119);
    goto LABEL_21;
  }

LABEL_22:
  v122 = *(v0 + 896);
  v123 = *(v0 + 888);
  v124 = *(v0 + 880);
  v125 = *(v0 + 848);
  v126 = *(v0 + 832);
  v127 = *(v0 + 824);
  v128 = *(v0 + 800);

  v129 = *(v0 + 8);

  return v129();
}

uint64_t sub_1D189EEA8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v86 = a5;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v9 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v92 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v90 = *(v11 - 8);
  v91 = v11;
  v12 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v89 = &v79 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v79 - v16;
  v17 = type metadata accessor for StaticAlarm();
  v87 = *(v17 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D1E66A7C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v83 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - v26;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v96 = v20;
  v28 = sub_1D1E6709C();
  __swift_project_value_buffer(v28, qword_1EC6459E8);
  sub_1D17419CC(a2, v98);
  v29 = *(v22 + 16);
  v88 = a3;
  v95 = v29;
  v29(v27, a3, v21);
  v30 = a1;
  v31 = sub_1D1E6707C();
  v32 = sub_1D1E6833C();

  v33 = os_log_type_enabled(v31, v32);
  v94 = v22 + 16;
  v82 = v22;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v97 = v80;
    *v34 = 136315650;
    v35 = v22;
    *&v81 = a4;
    v36 = v99;
    v37 = v100;
    __swift_project_boxed_opaque_existential_1(v98, v99);
    v38 = (*(v37 + 64))(v36, v37);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1(v98);
    v41 = sub_1D1B1312C(v38, v40, &v97);

    *(v34 + 4) = v41;
    *(v34 + 12) = 2080;
    sub_1D1886B8C();
    v42 = sub_1D1E68FAC();
    v44 = v43;
    (*(v35 + 8))(v27, v21);
    v45 = sub_1D1B1312C(v42, v44, &v97);

    *(v34 + 14) = v45;
    *(v34 + 22) = 2080;
    a4 = v81;
    swift_getErrorValue();
    v46 = sub_1D1E6915C();
    v48 = sub_1D1B1312C(v46, v47, &v97);

    *(v34 + 24) = v48;
    _os_log_impl(&dword_1D16EC000, v31, v32, "failed to update alarm %s for parent %s due to %s", v34, 0x20u);
    v49 = v80;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v49, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  else
  {

    (*(v22 + 8))(v27, v21);
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  v50 = a4[3];
  v51 = a4[4];
  v52 = __swift_project_boxed_opaque_existential_1(a4, v50);
  v53 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v79 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v56 + 16))(v55);
  v57 = v83;
  v58 = v88;
  v59 = v95;
  v95(v83, v88, v21);
  sub_1D1869A54(v55, v57, v50, v51, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643168, &unk_1D1E715C0);
  v60 = swift_allocObject();
  v81 = xmmword_1D1E739C0;
  *(v60 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a4, v60 + 32);
  v61 = sub_1D1E67E7C();
  v62 = v85;
  (*(*(v61 - 8) + 56))(v85, 1, 1, v61);
  v59(v57, v58, v21);
  sub_1D1E67E1C();
  v63 = v86;
  v64 = sub_1D1E67E0C();
  v65 = v82;
  v66 = (*(v82 + 80) + 56) & ~*(v82 + 80);
  v67 = swift_allocObject();
  v68 = MEMORY[0x1E69E85E0];
  *(v67 + 16) = v64;
  *(v67 + 24) = v68;
  *(v67 + 32) = 0;
  *(v67 + 40) = v60;
  *(v67 + 48) = v63;
  (*(v65 + 32))(v67 + v66, v57, v21);
  sub_1D17C6EF0(0, 0, v62, &unk_1D1E7BCA8, v67);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v69, qword_1EE07B210);
  v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
  v71 = v92;
  v95(v92, v58, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643438, &qword_1D1E72010);
  v72 = *(v87 + 72);
  v73 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v81;
  v75 = v74 + v73;
  v76 = v96;
  sub_1D18A1F94(v96, v75, type metadata accessor for StaticAlarm);
  *&v71[v70] = v74;
  swift_storeEnumTagMultiPayload();
  v77 = v89;
  sub_1D1E67ECC();
  (*(v90 + 8))(v77, v91);
  return sub_1D18A21A8(v76, type metadata accessor for StaticAlarm);
}

uint64_t CoordinationDataModel.addTimer(_:parentContainerID:)(uint64_t a1, uint64_t a2)
{
  v3[82] = v2;
  v3[81] = a2;
  v3[80] = a1;
  v3[83] = swift_getObjectType();
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v3[84] = updated;
  v5 = *(*(updated - 8) + 64) + 15;
  v3[85] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v3[86] = v6;
  v7 = *(v6 - 8);
  v3[87] = v7;
  v8 = *(v7 + 64) + 15;
  v3[88] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0) - 8) + 64) + 15;
  v3[89] = swift_task_alloc();
  v10 = *(*(sub_1D1E669FC() - 8) + 64) + 15;
  v3[90] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008) - 8) + 64) + 15;
  v3[91] = swift_task_alloc();
  v12 = type metadata accessor for StaticTimer();
  v3[92] = v12;
  v13 = *(v12 - 8);
  v3[93] = v13;
  v3[94] = *(v13 + 64);
  v3[95] = swift_task_alloc();
  v3[96] = swift_task_alloc();
  v14 = sub_1D1E66A7C();
  v3[97] = v14;
  v15 = *(v14 - 8);
  v3[98] = v15;
  v3[99] = *(v15 + 64);
  v3[100] = swift_task_alloc();
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = sub_1D1E67E1C();
  v3[104] = sub_1D1E67E0C();
  v17 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D189FA2C, v17, v16);
}

uint64_t sub_1D189FA2C()
{
  v150 = v0;
  v1 = *(v0 + 832);
  v2 = *(v0 + 656);

  v3 = OBJC_IVAR____TtC13HomeDataModel21CoordinationDataModel_managers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 648);

    v6 = sub_1D1742188(v5);
    if (v7)
    {
      v8 = *(v0 + 640);
      v9 = (*(v4 + 56) + (v6 << 7));
      v10 = v9[3];
      v12 = *v9;
      v11 = v9[1];
      *(v0 + 48) = v9[2];
      *(v0 + 64) = v10;
      *(v0 + 16) = v12;
      *(v0 + 32) = v11;
      v13 = v9[7];
      v15 = v9[4];
      v14 = v9[5];
      *(v0 + 112) = v9[6];
      *(v0 + 128) = v13;
      *(v0 + 80) = v15;
      *(v0 + 96) = v14;
      sub_1D18783EC(v0 + 16, v0 + 144);

      *(v0 + 632) = v8;
      sub_1D1877D48();
      v16 = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
      if (swift_dynamicCast())
      {
        sub_1D16EEE20((v0 + 408), v0 + 368);
        if (qword_1EC642210 != -1)
        {
          swift_once();
        }

        v17 = *(v0 + 816);
        v18 = *(v0 + 784);
        v19 = *(v0 + 776);
        v20 = *(v0 + 648);
        v21 = sub_1D1E6709C();
        __swift_project_value_buffer(v21, qword_1EC6459E8);
        sub_1D17419CC(v0 + 368, v0 + 448);
        v146 = *(v18 + 16);
        v146(v17, v20, v19);
        v22 = sub_1D1E6707C();
        v23 = sub_1D1E6835C();
        v24 = os_log_type_enabled(v22, v23);
        v25 = *(v0 + 816);
        v26 = *(v0 + 784);
        v27 = *(v0 + 776);
        if (v24)
        {
          v28 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          *&v148[0] = v143;
          *v28 = 136315394;
          v30 = *(v0 + 472);
          v29 = *(v0 + 480);
          __swift_project_boxed_opaque_existential_1((v0 + 448), v30);
          v31 = (*(v29 + 72))(v30, v29);
          v33 = v32;
          __swift_destroy_boxed_opaque_existential_1((v0 + 448));
          v34 = sub_1D1B1312C(v31, v33, v148);

          *(v28 + 4) = v34;
          *(v28 + 12) = 2080;
          sub_1D1886B8C();
          v35 = sub_1D1E68FAC();
          v37 = v36;
          v135 = *(v26 + 8);
          v135(v25, v27);
          v38 = sub_1D1B1312C(v35, v37, v148);

          *(v28 + 14) = v38;
          _os_log_impl(&dword_1D16EC000, v22, v23, "attempt to add timer %s for parent %s", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v143, -1, -1);
          MEMORY[0x1D3893640](v28, -1, -1);
        }

        else
        {

          v135 = *(v26 + 8);
          v135(v25, v27);
          __swift_destroy_boxed_opaque_existential_1((v0 + 448));
        }

        v39 = *(v0 + 808);
        v40 = *(v0 + 744);
        v144 = *(v0 + 736);
        v41 = *(v0 + 728);
        v42 = *(v0 + 720);
        v43 = *(v0 + 648);
        v44 = *(v0 + 392);
        v139 = *(v0 + 776);
        v140 = *(v0 + 400);
        v45 = __swift_project_boxed_opaque_existential_1((v0 + 368), v44);
        v46 = *(v44 - 8);
        v47 = *(v46 + 64) + 15;
        v48 = swift_task_alloc();
        (*(v46 + 16))(v48, v45, v44);
        v146(v39, v43, v139);
        _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
        sub_1D186EF48(v48, v39, v42, v44, v140, v41);

        if ((*(v40 + 48))(v41, 1, v144) == 1)
        {
          v49 = *(v0 + 800);
          v50 = *(v0 + 776);
          v51 = *(v0 + 648);
          sub_1D1741A30(*(v0 + 728), &qword_1EC643860, &qword_1D1E72008);
          sub_1D17419CC(v0 + 368, v0 + 488);
          v146(v49, v51, v50);
          v52 = sub_1D1E6707C();
          v53 = sub_1D1E6833C();
          v54 = os_log_type_enabled(v52, v53);
          v55 = *(v0 + 800);
          v56 = *(v0 + 784);
          v57 = *(v0 + 776);
          if (v54)
          {
            v58 = swift_slowAlloc();
            v147 = swift_slowAlloc();
            *&v148[0] = v147;
            *v58 = 136315394;
            v59 = *(v0 + 512);
            v60 = *(v0 + 520);
            __swift_project_boxed_opaque_existential_1((v0 + 488), v59);
            v61 = (*(v60 + 72))(v59, v60);
            v63 = v62;
            __swift_destroy_boxed_opaque_existential_1((v0 + 488));
            v64 = sub_1D1B1312C(v61, v63, v148);

            *(v58 + 4) = v64;
            *(v58 + 12) = 2080;
            sub_1D1886B8C();
            v65 = sub_1D1E68FAC();
            v67 = v66;
            v135(v55, v57);
            v68 = sub_1D1B1312C(v65, v67, v148);

            *(v58 + 14) = v68;
            _os_log_impl(&dword_1D16EC000, v52, v53, "failed to create StaticTimer with %s for parent %s", v58, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v147, -1, -1);
            MEMORY[0x1D3893640](v58, -1, -1);

            sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
          }

          else
          {
            sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);

            v135(v55, v57);
            __swift_destroy_boxed_opaque_existential_1((v0 + 488));
          }
        }

        else
        {
          v69 = *(v0 + 808);
          v141 = *(v0 + 824);
          v145 = *(v0 + 792);
          v70 = *(v0 + 784);
          v71 = *(v0 + 776);
          v72 = *(v0 + 712);
          v136 = v72;
          v73 = *(v0 + 656);
          v74 = *(v0 + 648);
          sub_1D18A2B2C(*(v0 + 728), *(v0 + 768), type metadata accessor for StaticTimer);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
          v75 = swift_allocObject();
          *(v75 + 16) = xmmword_1D1E739C0;
          sub_1D17419CC(v0 + 368, v75 + 32);
          v76 = sub_1D1E67E7C();
          (*(*(v76 - 8) + 56))(v72, 1, 1, v76);
          v77 = v71;
          v146(v69, v74, v71);
          v78 = v73;
          v79 = sub_1D1E67E0C();
          v80 = (*(v70 + 80) + 56) & ~*(v70 + 80);
          v133 = v80 + v145;
          v81 = swift_allocObject();
          v82 = MEMORY[0x1E69E85E0];
          *(v81 + 16) = v79;
          *(v81 + 24) = v82;
          *(v81 + 32) = 0;
          *(v81 + 40) = v75;
          *(v81 + 48) = v78;
          v142 = v80;
          v138 = *(v70 + 32);
          v138(v81 + v80, v69, v77);
          sub_1D17C6EF0(0, 0, v136, &unk_1D1E7BC98, v81);

          if (qword_1EE07B1E8 != -1)
          {
            swift_once();
          }

          v83 = *(v0 + 776);
          v127 = v83;
          v128 = *(v0 + 808);
          v137 = *(v0 + 768);
          v129 = *(v0 + 760);
          v130 = *(v0 + 752);
          v84 = *(v0 + 744);
          v85 = *(v0 + 704);
          v86 = *(v0 + 696);
          v87 = *(v0 + 680);
          v124 = *(v0 + 672);
          v125 = *(v0 + 688);
          v131 = *(v0 + 656);
          v132 = *(v0 + 664);
          v88 = *(v0 + 648);
          v126 = v88;
          v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
          __swift_project_value_buffer(v89, qword_1EE07B210);
          v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
          v146(v87, v88, v83);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
          v91 = *(v84 + 72);
          v92 = *(v84 + 80);
          v93 = swift_allocObject();
          *(v93 + 16) = xmmword_1D1E739C0;
          sub_1D18A1F94(v137, v93 + ((v92 + 32) & ~v92), type metadata accessor for StaticTimer);
          *(v87 + v90) = v93;
          swift_storeEnumTagMultiPayload();
          sub_1D1E67ECC();
          (*(v86 + 8))(v85, v125);
          v94 = *(v0 + 392);
          v95 = *(v0 + 400);
          v96 = __swift_project_boxed_opaque_existential_1((v0 + 368), v94);
          v97 = *(v0 + 120);
          v98 = *(v0 + 88);
          v148[0] = *(v0 + 72);
          v148[1] = v98;
          v148[2] = *(v0 + 104);
          v149 = v97;
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B00, &qword_1D1E7BC48);
          v100 = *(v95 + 8);
          v101 = sub_1D187178C(v96, v99, v94);
          sub_1D17419CC(v0 + 368, v0 + 528);
          v146(v128, v126, v83);
          v102 = swift_allocObject();
          sub_1D16EEE20((v0 + 528), v102 + 16);
          v138(v102 + v142, v128, v83);
          *(v0 + 304) = sub_1D18A2774;
          *(v0 + 312) = v102;
          *(v0 + 272) = MEMORY[0x1E69E9820];
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_1D18A2E5C;
          *(v0 + 296) = &block_descriptor_120;
          v103 = _Block_copy((v0 + 272));
          v104 = *(v0 + 312);

          aBlock = [v101 addSuccessBlock_];
          _Block_release(v103);

          sub_1D17419CC(v0 + 368, v0 + 568);
          v146(v128, v126, v83);
          sub_1D18A1F94(v137, v129, type metadata accessor for StaticTimer);
          v105 = (v133 + 7) & 0xFFFFFFFFFFFFFFF8;
          v106 = (v105 + v92 + 8) & ~v92;
          v107 = swift_allocObject();
          sub_1D16EEE20((v0 + 568), v107 + 16);
          v138(v107 + v142, v128, v127);
          *(v107 + v105) = v131;
          sub_1D18A2B2C(v129, v107 + v106, type metadata accessor for StaticTimer);
          *(v107 + ((v130 + v106 + 7) & 0xFFFFFFFFFFFFFFF8)) = v132;
          *(v0 + 352) = sub_1D18A29E8;
          *(v0 + 360) = v107;
          *(v0 + 320) = MEMORY[0x1E69E9820];
          *(v0 + 328) = 1107296256;
          *(v0 + 336) = sub_1D189C628;
          *(v0 + 344) = &block_descriptor_126;
          v108 = _Block_copy((v0 + 320));
          v109 = *(v0 + 360);
          v110 = v131;

          v111 = [aBlock addFailureBlock_];
          _Block_release(v108);

          sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
          sub_1D18A21A8(v137, type metadata accessor for StaticTimer);
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 368));
      }

      else
      {
        sub_1D1741A30(v0 + 16, &qword_1EC642C30, &qword_1D1E6E980);
        *(v0 + 408) = 0u;
        *(v0 + 424) = 0u;
        *(v0 + 440) = 0;
        sub_1D1741A30(v0 + 408, &qword_1EC6456C0, &unk_1D1E7A3F0);
      }
    }

    else
    {
    }
  }

  v112 = *(v0 + 816);
  v113 = *(v0 + 808);
  v114 = *(v0 + 800);
  v115 = *(v0 + 768);
  v116 = *(v0 + 760);
  v117 = *(v0 + 728);
  v118 = *(v0 + 720);
  v119 = *(v0 + 712);
  v120 = *(v0 + 704);
  v121 = *(v0 + 680);

  v122 = *(v0 + 8);

  return v122();
}

void sub_1D18A080C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC6459E8);
  sub_1D17419CC(a2, v31);
  (*(v8 + 16))(v11, a3, v7);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = a4;
    v30 = v16;
    v17 = v16;
    *v15 = 136315394;
    v18 = v32;
    v19 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v20 = (*(v19 + 72))(v18, v19);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(v31);
    v23 = sub_1D1B1312C(v20, v22, &v30);

    *(v15 + 4) = v23;
    *(v15 + 12) = 2080;
    sub_1D1886B8C();
    v24 = sub_1D1E68FAC();
    v26 = v25;
    (*(v8 + 8))(v11, v7);
    v27 = sub_1D1B1312C(v24, v26, &v30);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_1D16EC000, v13, v14, v29, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }
}

uint64_t sub_1D18A0ADC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v104 = a6;
  v105 = a5;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v10 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v102 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v100 = *(v101 - 8);
  v12 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v99 = v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v98 = v94 - v16;
  v17 = sub_1D1E669FC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v108 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  *&v109 = v94 - v22;
  v107 = type metadata accessor for StaticTimer();
  v113 = *(v107 - 8);
  v23 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v106 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D1E66A7C();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v110 = v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v94 - v30;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v32 = sub_1D1E6709C();
  __swift_project_value_buffer(v32, qword_1EC6459E8);
  sub_1D17419CC(a2, v116);
  v33 = *(v26 + 16);
  v114 = a3;
  v111 = v33;
  v112 = v26 + 16;
  v33(v31, a3, v25);
  v34 = a1;
  v35 = sub_1D1E6707C();
  v36 = sub_1D1E6833C();

  v37 = os_log_type_enabled(v35, v36);
  v97 = v26;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v94[1] = a1;
    v39 = v38;
    v40 = swift_slowAlloc();
    v115 = v40;
    *v39 = 136315650;
    v95 = a4;
    v41 = v117;
    v42 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v43 = (*(v42 + 72))(v41, v42);
    v45 = v44;
    __swift_destroy_boxed_opaque_existential_1(v116);
    v46 = sub_1D1B1312C(v43, v45, &v115);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2080;
    sub_1D1886B8C();
    v47 = sub_1D1E68FAC();
    v49 = v48;
    (*(v26 + 8))(v31, v25);
    v50 = sub_1D1B1312C(v47, v49, &v115);

    *(v39 + 14) = v50;
    *(v39 + 22) = 2080;
    a4 = v95;
    swift_getErrorValue();
    v51 = sub_1D1E6915C();
    v53 = sub_1D1B1312C(v51, v52, &v115);

    *(v39 + 24) = v53;
    _os_log_impl(&dword_1D16EC000, v35, v36, "failed to update timer %s for parent %s due to %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v40, -1, -1);
    MEMORY[0x1D3893640](v39, -1, -1);
  }

  else
  {

    (*(v26 + 8))(v31, v25);
    __swift_destroy_boxed_opaque_existential_1(v116);
  }

  v54 = v25;
  v55 = a4[3];
  v56 = a4[4];
  v57 = __swift_project_boxed_opaque_existential_1(a4, v55);
  v58 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v60 = v94 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v60);
  v62 = v110;
  v63 = v114;
  v111(v110, v114, v54);
  v64 = v108;
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v65 = v55;
  v66 = v109;
  sub_1D186EF48(v60, v62, v64, v65, v56, v109);
  if ((*(v113 + 48))(v66, 1, v107) == 1)
  {
    v67 = &qword_1EC643860;
    v68 = &qword_1D1E72008;
    v69 = v66;
    return sub_1D1741A30(v69, v67, v68);
  }

  v70 = v106;
  sub_1D18A2B2C(v66, v106, type metadata accessor for StaticTimer);
  v71 = v105;
  sub_1D1876968(v104, v63, v116);
  if (!v117)
  {
    sub_1D18A21A8(v70, type metadata accessor for StaticTimer);
    v67 = &qword_1EC6456C0;
    v68 = &unk_1D1E7A3F0;
    v69 = v116;
    return sub_1D1741A30(v69, v67, v68);
  }

  sub_1D1741A30(v116, &qword_1EC6456C0, &unk_1D1E7A3F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
  v72 = swift_allocObject();
  v109 = xmmword_1D1E739C0;
  *(v72 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a4, v72 + 32);
  v73 = sub_1D1E67E7C();
  v74 = v98;
  (*(*(v73 - 8) + 56))(v98, 1, 1, v73);
  v75 = v110;
  v76 = v111;
  v111(v110, v63, v54);
  sub_1D1E67E1C();
  v77 = v71;
  v78 = sub_1D1E67E0C();
  v79 = v54;
  v80 = v97;
  v81 = (*(v97 + 80) + 56) & ~*(v97 + 80);
  v82 = swift_allocObject();
  v83 = MEMORY[0x1E69E85E0];
  *(v82 + 16) = v78;
  *(v82 + 24) = v83;
  *(v82 + 32) = 0;
  *(v82 + 40) = v72;
  *(v82 + 48) = v77;
  (*(v80 + 32))(v82 + v81, v75, v79);
  sub_1D17C6EF0(0, 0, v74, &unk_1D1E7BCD8, v82);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v84, qword_1EE07B210);
  v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
  v86 = v102;
  v76(v102, v114, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
  v87 = *(v113 + 72);
  v88 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v89 = swift_allocObject();
  *(v89 + 16) = v109;
  v90 = v89 + v88;
  v91 = v106;
  sub_1D18A1F94(v106, v90, type metadata accessor for StaticTimer);
  *&v86[v85] = v89;
  swift_storeEnumTagMultiPayload();
  v92 = v99;
  sub_1D1E67ECC();
  (*(v100 + 8))(v92, v101);
  return sub_1D18A21A8(v91, type metadata accessor for StaticTimer);
}

uint64_t sub_1D18A1540(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, int a11)
{
  v78 = a8;
  *&v71 = a7;
  v86 = a5;
  v77 = a4;
  v80 = a10;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v14 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v84 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A60, &qword_1D1E7B980);
  v82 = *(v16 - 8);
  v83 = v16;
  v17 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v69 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v76 = &v69 - v21;
  v22 = sub_1D1E66A7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v72 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v69 - v27;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v79 = a11;
  v73 = a9;
  v29 = sub_1D1E6709C();
  __swift_project_value_buffer(v29, qword_1EC6459E8);
  sub_1D17419CC(a2, v90);
  v88 = *(v23 + 16);
  v88(v28, a3, v22);
  v30 = a1;
  v31 = sub_1D1E6707C();
  v32 = sub_1D1E6833C();

  v33 = os_log_type_enabled(v31, v32);
  v87 = a3;
  v75 = v23 + 16;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v70 = a2;
    v35 = v34;
    v69 = swift_slowAlloc();
    v89 = v69;
    *v35 = 136315650;
    v36 = v91;
    v37 = v92;
    __swift_project_boxed_opaque_existential_1(v90, v91);
    v38 = (*(v37 + 72))(v36, v37);
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1(v90);
    v41 = sub_1D1B1312C(v38, v40, &v89);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2080;
    sub_1D1886B8C();
    v42 = sub_1D1E68FAC();
    v44 = v43;
    (*(v23 + 8))(v28, v22);
    v45 = sub_1D1B1312C(v42, v44, &v89);

    *(v35 + 14) = v45;
    *(v35 + 22) = 2080;
    swift_getErrorValue();
    v46 = sub_1D1E6915C();
    v48 = sub_1D1B1312C(v46, v47, &v89);

    *(v35 + 24) = v48;
    a3 = v87;
    _os_log_impl(&dword_1D16EC000, v31, v32, v71, v35, 0x20u);
    v49 = v69;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v49, -1, -1);
    v50 = v35;
    a2 = v70;
    MEMORY[0x1D3893640](v50, -1, -1);
  }

  else
  {

    (*(v23 + 8))(v28, v22);
    __swift_destroy_boxed_opaque_existential_1(v90);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643178, &unk_1D1E715D0);
  v51 = swift_allocObject();
  v71 = xmmword_1D1E739C0;
  *(v51 + 16) = xmmword_1D1E739C0;
  sub_1D17419CC(a2, v51 + 32);
  v52 = sub_1D1E67E7C();
  v53 = v76;
  (*(*(v52 - 8) + 56))(v76, 1, 1, v52);
  v54 = v72;
  v88(v72, a3, v22);
  sub_1D1E67E1C();
  v55 = v77;
  v56 = sub_1D1E67E0C();
  v57 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v58 = swift_allocObject();
  v59 = MEMORY[0x1E69E85E0];
  *(v58 + 16) = v56;
  *(v58 + 24) = v59;
  *(v58 + 32) = v73;
  *(v58 + 40) = v51;
  *(v58 + 48) = v55;
  (*(v23 + 32))(v58 + v57, v54, v22);
  sub_1D17C6EF0(0, 0, v53, v80, v58);

  if (qword_1EE07B1E8 != -1)
  {
    swift_once();
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645A18, &qword_1D1E7B710);
  __swift_project_value_buffer(v60, qword_1EE07B210);
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
  v62 = v84;
  v88(v84, v87, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643430, &unk_1D1E718B0);
  v63 = *(type metadata accessor for StaticTimer() - 8);
  v64 = *(v63 + 72);
  v65 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v71;
  sub_1D18A1F94(v86, v66 + v65, type metadata accessor for StaticTimer);
  *&v62[v61] = v66;
  swift_storeEnumTagMultiPayload();
  v67 = v81;
  sub_1D1E67ECC();
  return (*(v82 + 8))(v67, v83);
}

void sub_1D18A1CF0(uint64_t a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1D189D11C(a1, v4, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D18A1D7C(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + v6);
  v9 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D189D4B0(a1, v7, v1 + v4, (v1 + v5), v8);
}

uint64_t sub_1D18A1E54(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for StaticAlarm() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_1D189C96C(a1, v1 + 16, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), "failed to delete alarm %s for parent %s due to %s", &unk_1F4D6D290, 0, &unk_1D1E7BCE0, 2);
}

uint64_t sub_1D18A1F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D18A20E0(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v6 + v9) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D18A0ADC(a1, v1 + 16, v1 + v5, (v1 + v7), v10, v1 + v9);
}

uint64_t sub_1D18A21A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D18A2228(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for StaticTimer() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_1D18A1540(a1, v1 + 16, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), "failed to delete timer %s for parent %s due to %s", &unk_1F4D6D240, 0, &unk_1D1E7BCD0, 4);
}

uint64_t objectdestroy_27Tm_0()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for StaticAlarm() - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);

  v12 = *(v0 + v8 + 24);

  v13 = *(v0 + v8 + 32);

  v11(v0 + v8 + v6[11], v1);
  v11(v0 + v8 + v6[12], v1);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1D18A2558(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for StaticAlarm() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_1D189C96C(a1, v1 + 16, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), "failed to add alarm %s for parent %s due to %s", &unk_1F4D6D1A0, 1u, &unk_1D1E7BCB0, 3);
}

uint64_t sub_1D18A26BC(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 47) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D189EEA8(a1, v1 + 16, v1 + v4, (v1 + v5), v7);
}

uint64_t objectdestroy_62Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for StaticTimer() - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);

  v12 = v6[7];
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);
  v14 = *(v0 + v8 + v6[9] + 8);

  v11(v0 + v8 + v6[12], v1);
  v11(v0 + v8 + v6[13], v1);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 8, v9 | 7);
}

uint64_t sub_1D18A29E8(void *a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for StaticTimer() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  return sub_1D18A1540(a1, v1 + 16, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), "failed to add timer %s for parent %s due to %s", &unk_1F4D6D150, 1u, &unk_1D1E7BCA0, 5);
}

uint64_t sub_1D18A2B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18A2B94(uint64_t a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645B10, &qword_1D1E7BCB8) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D189AB94(a1, v9, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_1D18A2CB0(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D189B248(a1, v7, v8, v1 + v5, v9);
}

uint64_t sub_1D18A2E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_1D1E6702C();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_1D1E66FDC();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v11 = *(*(type metadata accessor for CoordinationSnapshot.UpdateType() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18A2FD0, v3, 0);
}

uint64_t sub_1D18A2FD0()
{
  v83 = v0;
  if (qword_1EC642210 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC6459E8);
  sub_1D187832C(v3, v1);

  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  v9 = *(v0 + 72);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v82 = v11;
    *v10 = 134218242;
    *(v10 + 4) = *(v9 + 120);

    *(v10 + 12) = 2080;
    updated = CoordinationSnapshot.UpdateType.description.getter();
    v14 = v13;
    sub_1D1878390(v8);
    v15 = sub_1D1B1312C(updated, v14, &v82);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1D16EC000, v5, v6, "new snapshot based on iteration %ld, %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
    v16 = *(v0 + 72);

    sub_1D1878390(v8);
  }

  v17 = sub_1D18A3D68(*(v0 + 56));
  v19 = v18;
  if (qword_1EC642218 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 136);
  v21 = sub_1D1E6701C();
  __swift_project_value_buffer(v21, qword_1EC6BE0F8);
  sub_1D1E66FCC();
  v22 = sub_1D1E66FFC();
  v23 = sub_1D1E683EC();
  v24 = sub_1D1E6855C();
  if (v24)
  {
    if (v19)
    {
      if (v17 >> 32)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v17 & 0xFFFFF800) == 0xD800)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (v17 >> 16 > 0x10)
      {
        goto LABEL_41;
      }

      v27 = (v0 + 40);
    }

    else
    {
      if (!v17)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v27 = v17;
    }

    v28 = *(v0 + 136);
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v22, v23, v30, v27, "", v29, 2u);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v78 = v19;
  name = v17;

  v32 = *(v0 + 136);
  v31 = *(v0 + 144);
  v79 = *(v0 + 120);
  v33 = *(v0 + 104);
  v34 = *(v0 + 112);
  v36 = *(v0 + 64);
  v35 = *(v0 + 72);
  v37 = *(v0 + 56);
  (*(v34 + 16))(*(v0 + 128), v32, v33);
  v38 = sub_1D1E6705C();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_1D1E6704C();
  v41 = v33;
  v42 = *(v34 + 8);
  v42(v32, v41);
  sub_1D187832C(v37, v31);
  v82 = *(v35 + 112);

  sub_1D1DDD368(v31, v36, &v82, &v81);
  v43 = v81;
  *(v0 + 168) = v81;
  v77 = v35;
  v44 = *(v35 + 112);

  v46 = sub_1D184782C(v45, v43);

  v47 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v48 = sub_1D1E683DC();
  v24 = sub_1D1E6855C();
  if (v24)
  {
    v76 = v42;
    if ((v78 & 1) == 0)
    {
      if (name)
      {
LABEL_25:
        v50 = *(v0 + 88);
        v49 = *(v0 + 96);
        v51 = *(v0 + 80);

        sub_1D1E6706C();

        if ((*(v50 + 88))(v49, v51) == *MEMORY[0x1E69E93E8])
        {
          v52 = "[Error] Interval already ended";
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
          v52 = "";
        }

        v53 = *(v0 + 120);
        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v47, v48, v55, name, v52, v54, 2u);
        MEMORY[0x1D3893640](v54, -1, -1);
        v42 = v76;
        goto LABEL_29;
      }

      __break(1u);
    }

    if (name >> 32)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if ((name & 0xFFFFF800) == 0xD800)
    {
LABEL_44:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v24, v25, v26);
    }

    if (name >> 16 > 0x10)
    {
      goto LABEL_42;
    }

    name = (v0 + 32);
    goto LABEL_25;
  }

LABEL_29:
  v56 = *(v0 + 120);
  v57 = *(v0 + 104);

  v24 = (v42)(v56, v57);
  if ((v46 & 1) == 0)
  {
    v68 = *(v0 + 72);
    v69 = *(v68 + 120);
    v70 = __OFADD__(v69, 1);
    v71 = v69 + 1;
    if (!v70)
    {
      *(v68 + 120) = v71;
      v72 = *(v77 + 112);
      *(v77 + 112) = v43;

      *(v0 + 176) = sub_1D1E67E1C();
      *(v0 + 184) = sub_1D1E67E0C();
      v73 = sub_1D1E67D4C();
      v75 = v74;
      v24 = sub_1D18A365C;
      v25 = v73;
      v26 = v75;

      return MEMORY[0x1EEE6DFA0](v24, v25, v26);
    }

    __break(1u);
    goto LABEL_38;
  }

  v59 = *(v0 + 144);
  v58 = *(v0 + 152);
  v61 = *(v0 + 128);
  v60 = *(v0 + 136);
  v62 = *(v0 + 120);
  v63 = *(v0 + 96);
  v64 = *(v0 + 72);
  **(v0 + 48) = *(v0 + 168);
  v65 = *(v64 + 120);

  v66 = *(v0 + 8);

  return v66(v65);
}

uint64_t sub_1D18A365C()
{
  v1 = *(v0 + 184);

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D18A36F4, v2, 0);
}

uint64_t sub_1D18A36F4()
{
  v1 = *(v0 + 176);
  *(v0 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18A3780, v3, v2);
}

uint64_t sub_1D18A3780()
{
  v1 = v0[24];
  v2 = v0[9];

  v0[25] = qword_1EE07B1E0;

  return MEMORY[0x1EEE6DFA0](sub_1D18A37F8, v2, 0);
}

uint64_t sub_1D18A37F8()
{
  v1 = v0[22];
  v0[26] = *(v0[9] + 112);

  v0[27] = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18A3894, v3, v2);
}

uint64_t sub_1D18A3894()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v2;

  v4 = v3;
  sub_1D1E6712C();
  if (qword_1EC642208 != -1)
  {
    swift_once();
  }

  v5 = v0[9];
  v0[3] = v0[26];
  sub_1D1E670BC();

  return MEMORY[0x1EEE6DFA0](sub_1D18A39AC, v5, 0);
}

uint64_t sub_1D18A39AC()
{
  v1 = *(v0 + 160);

  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = *(v0 + 96);
  v8 = *(v0 + 72);
  **(v0 + 48) = *(v0 + 168);
  v9 = *(v8 + 120);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t CoordinationSnapshotModerator.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t CoordinationSnapshotModerator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D18A3ADC()
{
  v0 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v0, qword_1EC6BE0F8);
  __swift_project_value_buffer(v0, qword_1EC6BE0F8);
  return sub_1D1E6700C();
}

void sub_1D18A3B28()
{
  v0 = sub_1D1E6680C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v3, qword_1EC645B18);
  __swift_project_value_buffer(v0, qword_1EC645B18);
  v6 = [objc_opt_self() defaultManager];
  v7 = [v6 URLForUbiquityContainerIdentifier_];

  if (v7)
  {
    sub_1D1E667CC();

    sub_1D1E667AC();
    (*(v1 + 8))(v5, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static CoordinationSnapshotModerator.iCloudDocumentsURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642220 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6680C();
  v3 = __swift_project_value_buffer(v2, qword_1EC645B18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

const char *sub_1D18A3D68(uint64_t a1)
{
  updated = type metadata accessor for CoordinationSnapshot.UpdateType();
  v3 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D187832C(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return "updateType: .snapshotStream(_)";
      }

      else
      {
        return "updateType: .all";
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v8 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48)];

      v9 = sub_1D1E66A7C();
      (*(*(v9 - 8) + 8))(v5, v9);
      return "updateType: .timers(_,_)";
    }

    else
    {
      v12 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48)];

      v13 = sub_1D1E66A7C();
      (*(*(v13 - 8) + 8))(v5, v13);
      return "updateType: .removeTimers(_,_)";
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48)];

      v11 = sub_1D1E66A7C();
      (*(*(v11 - 8) + 8))(v5, v11);
      return "updateType: .alarms(_,_)";
    }

    else
    {
      v14 = *&v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48)];

      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 8))(v5, v15);
      return "updateType: .removeAlarms(_,_)";
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D1878390(v5);
    return "updateType: .remove(_)";
  }

  else
  {
    sub_1D1878390(v5);
    return "updateType: .data(_)";
  }
}

void *sub_1D18A4014(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - v5;
  v39 = sub_1D1E66A7C();
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v39);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v31 - v11;
  v36 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = sub_1D1E68ACC() | 0x8000000000000000;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v13 = ~v16;
    v12 = a1 + 64;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v14 = v18 & *(a1 + 64);
    v15 = a1;
  }

  v20 = 0;
  v35 = v13;
  v38 = (v7 + 48);
  v31 = v7;
  v32 = (v7 + 32);
  v37 = MEMORY[0x1E69E7CC0];
  while ((v15 & 0x8000000000000000) != 0)
  {
    v24 = sub_1D1E68AEC();
    if (!v24 || (v40 = v24, sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0), swift_dynamicCast(), (v23 = v41) == 0))
    {
LABEL_24:
      sub_1D1716918();
      return v37;
    }

LABEL_17:
    sub_1D1E6781C();
    sub_1D1E66A0C();

    if ((*v38)(v6, 1, v39) == 1)
    {
      result = sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      v25 = *v32;
      v26 = v39;
      (*v32)(v33, v6, v39);
      v25(v34, v33, v26);
      v27 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1D177D0AC(0, v37[2] + 1, 1, v37);
      }

      v29 = v37[2];
      v28 = v37[3];
      if (v29 >= v28 >> 1)
      {
        v37 = sub_1D177D0AC(v28 > 1, v29 + 1, 1, v37);
      }

      v30 = v37;
      v37[2] = v29 + 1;
      result = (v27)(v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29, v34, v39);
    }
  }

  v21 = v20;
  v22 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v22 - 1) & v22;
    v23 = *(*(v15 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= ((v13 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v22 = *(v12 + 8 * v20);
    ++v21;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t HMAccessory.shouldShowInDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMAccessory.shouldShowInDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A64FC;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_10;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMAccessory.shouldShowInDashboard.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMAccessory.shouldShowInDashboard.getter() & 1;
  return sub_1D18A4748;
}

uint64_t HMAccessory.isFavorite.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void HMAccessory.isFavorite.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A64FC;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_6_0;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMAccessory.isFavorite.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMAccessory.isFavorite.getter() & 1;
  return sub_1D18A4A18;
}

uint64_t HMAccessory.contributesToHomeStatus.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMAccessory.contributesToHomeStatus.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A4C9C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_13_0;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMAccessory.contributesToHomeStatus.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMAccessory.contributesToHomeStatus.getter() & 1;
  return sub_1D18A4D04;
}

uint64_t HMAccessory.showAsIndividualTiles.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void HMAccessory.showAsIndividualTiles.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A64FC;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_20_0;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMAccessory.showAsIndividualTiles.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMAccessory.showAsIndividualTiles.getter() & 1;
  return sub_1D18A4FD4;
}

uint64_t HMAccessory.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v21 - v5;
  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (!v9)
  {
    goto LABEL_5;
  }

  v21[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = v21[1];
  v10 = v21[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v12 = sub_1D1E6836C();
  if (!v12)
  {
    sub_1D174E7C4(v11, v10);
LABEL_5:
    v13 = sub_1D1E669FC();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  v15 = v12;
  v16 = sub_1D1E669FC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v6, 1, 1, v16);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v11, v10);

  if ((*(v17 + 48))(v6, 1, v16) == 1)
  {
    v19 = a1;
    v20 = 1;
  }

  else
  {
    (*(v17 + 32))(a1, v6, v16);
    v19 = a1;
    v20 = 0;
  }

  return (v18)(v19, v20, 1, v16);
}

unint64_t sub_1D18A52E4()
{
  result = qword_1EC645BA0;
  if (!qword_1EC645BA0)
  {
    sub_1D1E669FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645BA0);
  }

  return result;
}

uint64_t sub_1D18A533C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1D174A548(a1, &v10 - v6);
  v8 = *a2;
  return HMAccessory.dateAdded.setter(v7);
}

uint64_t HMAccessory.dateAdded.setter(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29[-v5];
  sub_1D174A548(a1, &v29[-v5]);
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC642570, &qword_1D1E6C6A0);
    v35 = 0u;
    v36 = 0u;
    v9 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v32 = sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
    *&aBlock = v9;
    if (*(&v36 + 1))
    {
      sub_1D1741A30(&v35, &qword_1EC649700, &qword_1D1E6E910);
    }
  }

  else
  {
    *(&v36 + 1) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    sub_1D1742194(&v35, &aBlock);
  }

  v11 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&aBlock, v32);
  v12 = sub_1D1E6903C();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *&aBlock = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&aBlock];
  swift_unknownObjectRelease();
  v14 = aBlock;
  if (v13)
  {
    v15 = sub_1D1E668BC();
    v17 = v16;

    v18 = [v1 applicationData];
    v19 = sub_1D1E6688C();
    v20 = sub_1D1E677EC();
    [v18 setObject:v19 forKeyedSubscript:v20];

    v21 = [v1 applicationData];
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    v33 = sub_1D18A64FC;
    v34 = v22;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v31 = sub_1D1C40BA8;
    v32 = &block_descriptor_27_0;
    v23 = _Block_copy(&aBlock);
    v24 = v1;

    [v24 updateApplicationData:v21 completionHandler:v23];
    _Block_release(v23);

    sub_1D174E7C4(v15, v17);
  }

  else
  {
    v25 = v14;
    v26 = sub_1D1E6656C();

    swift_willThrow();
  }

  result = sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void (*HMAccessory.dateAdded.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMAccessory.dateAdded.getter(v4);
  return sub_1D18A5870;
}

void sub_1D18A5870(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMAccessory.dateAdded.setter(v2);
    sub_1D1741A30(v3, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    HMAccessory.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t HMAccessory.customNearbyAccessoryIdentifiers.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = [v0 applicationData];
  v13 = sub_1D1E677EC();
  v14 = [v12 objectForKeyedSubscript_];

  if (!v14)
  {
    return 0;
  }

  v34 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v16 = v32;
  v15 = v33;
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
  v17 = sub_1D1E6837C();
  if (!v17)
  {
    sub_1D174E7C4(v16, v15);
    return 0;
  }

  v19 = sub_1D18A4014(v17);

  v32 = MEMORY[0x1E69E7CD0];
  v20 = v19[2];
  if (v20)
  {
    v29 = v16;
    v30 = v15;
    v23 = *(v2 + 16);
    v22 = v2 + 16;
    v21 = v23;
    v24 = *(v22 + 64);
    v28 = v19;
    v25 = v19 + ((v24 + 32) & ~v24);
    v31 = *(v22 + 56);
    v26 = (v22 - 8);
    do
    {
      v21(v11, v25, v1);
      v21(v6, v11, v1);
      sub_1D1762CB8(v9, v6);
      v27 = *v26;
      (*v26)(v9, v1);
      v27(v11, v1);
      v25 += v31;
      --v20;
    }

    while (v20);
    sub_1D174E7C4(v29, v30);

    return v32;
  }

  else
  {
    sub_1D174E7C4(v16, v15);

    return MEMORY[0x1E69E7CD0];
  }
}

void HMAccessory.customNearbyAccessoryIdentifiers.setter(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    a1 = MEMORY[0x1E69E7CD0];
  }

  v7 = sub_1D18D95FC(MEMORY[0x1E69E7CC0]);
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;
  v55 = v3 + 16;
  v56 = v3;
  v52 = (v3 + 8);
  v57 = a1;

  v13 = 0;
  v54 = v2;
  v53 = v6;
  if (v11)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      while (1)
      {
        (*(v56 + 16))(v6, *(v57 + 48) + *(v56 + 72) * (__clz(__rbit64(v11)) | (v15 << 6)), v2);
        sub_1D1E66A1C();
        v16 = sub_1D1E677EC();

        *&v61 = v16;
        v17 = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
        sub_1D18A646C();
        v18 = v16;
        sub_1D1E687DC();
        v62 = v17;
        *&v61 = v18;
        sub_1D1742194(&v61, v60);
        v19 = v18;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v58 = v7;
        v22 = sub_1D171D804(aBlock);
        v23 = v7[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_27;
        }

        v26 = v21;
        if (v7[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D1739124();
          }
        }

        else
        {
          sub_1D1728940(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_1D171D804(aBlock);
          if ((v26 & 1) != (v28 & 1))
          {
            sub_1D1E690FC();
            __break(1u);
            return;
          }

          v22 = v27;
        }

        v11 &= v11 - 1;
        v7 = v58;
        if (v26)
        {
          v14 = (v58[7] + 32 * v22);
          __swift_destroy_boxed_opaque_existential_1(v14);
          sub_1D1742194(v60, v14);

          sub_1D1741BB4(aBlock);
          v6 = v53;
          v2 = v54;
          (*v52)(v53, v54);
          v13 = v15;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v58[(v22 >> 6) + 8] |= 1 << v22;
          sub_1D1741B58(aBlock, v7[6] + 40 * v22);
          sub_1D1742194(v60, (v7[7] + 32 * v22));

          sub_1D1741BB4(aBlock);
          v6 = v53;
          v2 = v54;
          (*v52)(v53, v54);
          v29 = v7[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_28;
          }

          v7[2] = v31;
          v13 = v15;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v15 = v13;
      }
    }
  }

  v32 = objc_opt_self();
  v33 = sub_1D1E675DC();

  aBlock[0] = 0;
  v34 = [v32 archivedDataWithRootObject:v33 requiringSecureCoding:1 error:aBlock];

  v35 = aBlock[0];
  if (v34)
  {
    v36 = sub_1D1E668BC();
    v38 = v37;

    v39 = v51;
    v40 = [v51 applicationData];
    v41 = sub_1D1E6688C();
    v42 = sub_1D1E677EC();
    [v40 setObject:v41 forKeyedSubscript:v42];

    v43 = [v39 applicationData];
    v44 = swift_allocObject();
    v44[2] = v39;
    aBlock[4] = sub_1D18A64FC;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_33;
    v45 = _Block_copy(aBlock);
    v46 = v39;

    [v46 updateApplicationData:v43 completionHandler:v45];
    _Block_release(v45);

    sub_1D174E7C4(v36, v38);
  }

  else
  {
    v47 = v35;
    v48 = sub_1D1E6656C();

    swift_willThrow();
  }

  v49 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1D18A6214(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4 = *(*(updated - 8) + 64);
  MEMORY[0x1EEE9AC00](updated);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v12, qword_1EE07DCE0);
  *v6 = [a2 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v8 + 8))(v11, v7);
}

void (*HMAccessory.customNearbyAccessoryIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HMAccessory.customNearbyAccessoryIdentifiers.getter();
  return sub_1D18A6414;
}

void sub_1D18A6414(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    HMAccessory.customNearbyAccessoryIdentifiers.setter(v5);
  }

  else
  {
    HMAccessory.customNearbyAccessoryIdentifiers.setter(*a1);
  }
}

unint64_t sub_1D18A646C()
{
  result = qword_1EC645BB0;
  if (!qword_1EC645BB0)
  {
    sub_1D1741B10(255, &qword_1EC645BA8, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645BB0);
  }

  return result;
}

uint64_t HMActionSet.shouldShowInDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  v4 = [v0 applicationData];
  v5 = sub_1D1E677EC();
  v6 = [v4 objectForKeyedSubscript_];

  if (v6 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

void HMActionSet.shouldShowInDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A6800;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_11;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMActionSet.shouldShowInDashboard.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = HMActionSet.shouldShowInDashboard.getter() & 1;
  return sub_1D18A6880;
}

BOOL HMActionSet.hasSetDashboardVisibility.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

double HMActionSet.icon.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = [v1 applicationData];
  v4 = sub_1D1E677EC();
  v5 = [v3 objectForKeyedSubscript_];

  if (v5 && (v11 = v5, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v10;
    v13[0] = 2;
    *&v13[8] = v10;
    v13[24] = 2;
    v14 = v10;
    v15[0] = 2;
    *&v15[8] = v10;
    v15[24] = 2;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v6 = [v1 actionSetType];
    sub_1D1E6781C();

    HMActionSet.ActionSetKind.init(rawValue:)(&v10);
    Icon.init(actionSetKind:)(&v10, &v12);
  }

  v7 = v14;
  a1[2] = *&v13[16];
  a1[3] = v7;
  a1[4] = *v15;
  *(a1 + 73) = *&v15[9];
  result = *&v12;
  v9 = *v13;
  *a1 = v12;
  a1[1] = v9;
  return result;
}

void HMActionSet.icon.setter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[4];
  v5 = a1[7];
  v6 = a1[10];
  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = sub_1D1E677EC();
  [v7 setObject:v8 forKeyedSubscript:v9];

  v10 = [v1 applicationData];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  v14[4] = sub_1D18A9C34;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D1C40BA8;
  v14[3] = &block_descriptor_6_1;
  v12 = _Block_copy(v14);
  v13 = v1;

  [v13 updateApplicationData:v10 completionHandler:v12];
  _Block_release(v12);
}

uint64_t (*HMActionSet.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x188uLL);
  }

  *a1 = v3;
  *(v3 + 384) = v1;
  HMActionSet.icon.getter(v3);
  return sub_1D18A9C30;
}

uint64_t HMActionSet.iconTint.getter()
{
  v1 = [v0 applicationData];
  v2 = [v1 dictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v3 = sub_1D1E675FC();

  if (*(v3 + 16) && (v4 = sub_1D171D2F0(0xD00000000000001FLL, 0x80000001D1EBB8B0), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643420, &qword_1D1E718A0);
    if (swift_dynamicCast())
    {
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 0;
  }

  return Color.init(_:)(v7);
}

unint64_t sub_1D18A6E38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BE8, &qword_1D1E7BE00);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v32 >= v26)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v32);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v34 = v33 | (v32 << 6);
          v35 = *(*(a1 + 48) + 8 * v34);
          sub_1D1741970(*(a1 + 56) + 32 * v34, &v48 + 8);
          *&v48 = v35;
          v45 = v48;
          v46 = v49;
          v47 = v50;
          sub_1D16EEE38((&v45 + 8), &v41);
          v36 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          swift_dynamicCast();
          sub_1D16EEE38((v43 + 8), (v44 + 8));
          sub_1D16EEE38((v44 + 8), v42);
          sub_1D16EEE38(v42, v44);
          result = sub_1D171D368(v35);
          if (v37)
          {
            v28 = *(v2 + 48);
            v29 = *(v28 + 8 * result);
            *(v28 + 8 * result) = v35;
            v30 = result;

            v31 = (*(v2 + 56) + 32 * v30);
            __swift_destroy_boxed_opaque_existential_1(v31);
            result = sub_1D16EEE38(v44, v31);
            v27 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v35;
            result = sub_1D16EEE38(v44, (*(v2 + 56) + 32 * result));
            v38 = *(v2 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v40;
            v27 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v32 = v27;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v12 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      sub_1D1741970(*(a1 + 56) + 32 * v15, &v48 + 8);
      *&v48 = v16;
      v45 = v48;
      v46 = v49;
      v47 = v50;
      sub_1D16EEE38((&v45 + 8), v42);
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      swift_dynamicCast();
      sub_1D16EEE38((v43 + 8), (v44 + 8));
      sub_1D16EEE38((v44 + 8), v43);
      v18 = *(v2 + 40);
      result = sub_1D1E684EC();
      v19 = -1 << *(v2 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v13) = v16;
      result = sub_1D16EEE38(v43, (*(v2 + 56) + 32 * v13));
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1D18A72A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_1D16EEE38(&v25, v27);
        sub_1D16EEE38(v27, v28);
        sub_1D16EEE38(v28, &v26);
        result = sub_1D171D2F0(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1D16EEE38(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1D16EEE38(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D18A74EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A58, &qword_1D1E7E6F0);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_1D1741970(*(a1 + 56) + 32 * v12, v28 + 8);
    LOBYTE(v28[0]) = v13;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v27 = v29;
    LOBYTE(v25[0]) = v13;
    sub_1D16EEE38((v26 + 8), &v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    swift_dynamicCast();
    v22 = v25[0];
    sub_1D16EEE38((v25 + 8), v23);
    sub_1D16EEE38(v23, v25);
    v14 = *(v2 + 40);
    sub_1D1E6920C();
    LOBYTE(v24) = v22;
    CharacteristicKind.rawValue.getter();
    sub_1D1E678EC();

    result = sub_1D1E6926C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    *(*(v2 + 48) + v10) = v22;
    result = sub_1D16EEE38(v25, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1D18A77C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF0, &unk_1D1E7E8B0);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1D1741970(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_1D16EEE38(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        swift_dynamicCast();
        sub_1D16EEE38(&v25, v27);
        sub_1D16EEE38(v27, v28);
        sub_1D16EEE38(v28, &v26);
        result = sub_1D171D2F0(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1D16EEE38(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_1D16EEE38(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D18A7A4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_1D1741970(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_1D16EEE38(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        swift_dynamicCast();
        sub_1D16EEE38(&v25, v27);
        sub_1D16EEE38(v27, v28);
        sub_1D16EEE38(v28, &v26);
        result = sub_1D171D2F0(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_1D16EEE38(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_1D16EEE38(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}