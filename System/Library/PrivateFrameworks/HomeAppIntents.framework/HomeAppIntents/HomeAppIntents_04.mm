uint64_t sub_25276EA94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25276EAF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25276EB68()
{
  result = qword_27F4FCF30;
  if (!qword_27F4FCF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF30);
  }

  return result;
}

unint64_t sub_25276EBC0()
{
  result = qword_27F4FCF38;
  if (!qword_27F4FCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF38);
  }

  return result;
}

unint64_t sub_25276EC98()
{
  result = qword_27F4FCF40;
  if (!qword_27F4FCF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF40);
  }

  return result;
}

uint64_t sub_25276ECEC(uint64_t a1, void *a2)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF68, &unk_2528C6E20);
  v4 = *(*(v57 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v57);
  v63 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v58 = a1;

  v17 = 0;
  v54 = v16;
  v55 = a1 + 64;
  v64 = a2;
  v56 = v11;
  while (v15)
  {
LABEL_11:
    v24 = __clz(__rbit64(v15)) | (v17 << 6);
    v25 = v58;
    v26 = *(v58 + 48);
    v27 = sub_2528BECF0();
    v62 = *(v27 - 8);
    v60 = v62[9];
    v28 = v62[2];
    v65 = v27;
    v61 = v28;
    v59 = v62 + 2;
    (v28)(v11, v26 + v60 * v24);
    v29 = *(*(v25 + 56) + 8 * v24);
    v30 = v57;
    *&v11[*(v57 + 48)] = v29;
    v31 = v9;
    sub_25272006C(v11, v9, &qword_27F4FCF68, &unk_2528C6E20);
    v32 = *&v9[*(v30 + 48)];
    v33 = v29;

    v34 = v63;
    sub_25272006C(v11, v63, &qword_27F4FCF68, &unk_2528C6E20);
    v35 = *(v34 + *(v30 + 48));
    v36 = v64;
    v37 = *v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *v36;
    v39 = v66;
    *v36 = 0x8000000000000000;
    v41 = sub_252785C40(v31);
    v42 = v39[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      goto LABEL_23;
    }

    v45 = v40;
    if (v39[3] >= v44)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2527E2224();
      }

      v9 = v31;
    }

    else
    {
      sub_2527DF760(v44, isUniquelyReferenced_nonNull_native);
      v9 = v31;
      v46 = sub_252785C40(v31);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_25;
      }

      v41 = v46;
    }

    v11 = v56;
    v48 = v66;
    if (v45)
    {
      v18 = v66[7];
      v19 = *(v18 + 8 * v41);
      *(v18 + 8 * v41) = v35;
    }

    else
    {
      v66[(v41 >> 6) + 8] |= 1 << v41;
      v61(v48[6] + v41 * v60, v9, v65);
      *(v48[7] + 8 * v41) = v35;
      v49 = v48[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_24;
      }

      v48[2] = v51;
    }

    v15 &= v15 - 1;
    v20 = v62[1];
    v21 = v65;
    v20(v9, v65);
    v22 = v63;
    *v64 = v48;
    v20(v22, v21);
    sub_2527213D8(v11, &qword_27F4FCF68, &unk_2528C6E20);
    v16 = v54;
    v12 = v55;
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
    }

    v15 = *(v12 + 8 * v23);
    ++v17;
    if (v15)
    {
      v17 = v23;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_25276F0F4()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5028F0);
  __swift_project_value_buffer(v0, qword_27F5028F0);
  return sub_2528BEC20();
}

uint64_t sub_25276F188()
{
  v1 = *(v0 + 40);
  sub_2528BE790();
  return v3;
}

uint64_t sub_25276F1E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC68, &qword_2528C6CC0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25276F2B4, 0, 0);
}

uint64_t sub_25276F2B4()
{
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v0[8] = __swift_project_value_buffer(v2, qword_27F5025C8);
  sub_2527BC198(v1);
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v3 = v0[3];
  v4 = sub_2528C0820();
  v0[9] = __swift_project_value_buffer(v4, qword_27F5025E0);
  v0[10] = sub_2528B867C(v3);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_25276F3FC;
  v6 = v0[2];
  v7 = v0[3];

  return sub_25276F6F8(v6);
}

uint64_t sub_25276F3FC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_25276F648;
  }

  else
  {
    v3 = sub_25276F510;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25276F510()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  (*(v4 + 16))(v3, v0[2], v5);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, v3, v5);
  sub_2527BD42C(v6, v1, sub_252756420);

  sub_2527BE4E8(v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_25276F648()
{
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[3];
  sub_2527BF5FC(v5, v0[10], v1);
  sub_2527C084C(v5, v1);
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[12];

  return v6();
}

uint64_t sub_25276F6F8(uint64_t a1)
{
  v2[56] = a1;
  v2[57] = v1;
  v3 = type metadata accessor for HomeEntity(0);
  v2[58] = v3;
  v4 = *(v3 - 8);
  v2[59] = v4;
  v5 = *(v4 + 64) + 15;
  v2[60] = swift_task_alloc();
  v6 = type metadata accessor for ShowDeviceResultIntent();
  v2[61] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v8 = sub_2528BECF0();
  v2[65] = v8;
  v9 = *(v8 - 8);
  v2[66] = v9;
  v10 = *(v9 + 64) + 15;
  v2[67] = swift_task_alloc();
  v11 = sub_2528BEEC0();
  v2[68] = v11;
  v12 = *(v11 - 8);
  v2[69] = v12;
  v13 = *(v12 + 64) + 15;
  v2[70] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v15 = *(type metadata accessor for DeviceEntity() - 8);
  v2[74] = v15;
  v16 = *(v15 + 64) + 15;
  v2[75] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v2[76] = swift_task_alloc();
  v18 = sub_2528C0060();
  v2[77] = v18;
  v19 = *(v18 - 8);
  v2[78] = v19;
  v20 = *(v19 + 64) + 15;
  v2[79] = swift_task_alloc();
  v21 = sub_2528BEE30();
  v2[80] = v21;
  v22 = *(v21 - 8);
  v2[81] = v22;
  v23 = *(v22 + 64) + 15;
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v24 = sub_2528C00D0();
  v2[85] = v24;
  v25 = *(v24 - 8);
  v2[86] = v25;
  v26 = *(v25 + 64) + 15;
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v27 = sub_2528BE8B0();
  v2[89] = v27;
  v28 = *(v27 - 8);
  v2[90] = v28;
  v29 = *(v28 + 64) + 15;
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0) - 8) + 64) + 15;
  v2[93] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA8, &unk_2528C5CB0) - 8) + 64) + 15;
  v2[94] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB0, &qword_2528D2DB0) - 8) + 64) + 15;
  v2[95] = swift_task_alloc();
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0) - 8) + 64) + 15;
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();
  v34 = sub_2528BF400();
  v2[102] = v34;
  v35 = *(v34 - 8);
  v2[103] = v35;
  v2[104] = *(v35 + 64);
  v2[105] = swift_task_alloc();
  v2[106] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[107] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25276FD64, 0, 0);
}

uint64_t sub_25276FD64()
{
  v57 = v0;
  *(v0 + 904) = *(*(v0 + 456) + 16);
  sub_2528BE790();
  v1 = *(*(v0 + 376) + 16);

  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + 456);
  v3 = v2[7];
  *(v0 + 912) = *v2;
  sub_2528BE790();
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  sub_252870158(v56);
  sub_25272C15C(v4, v5, v6, v7, v8);
  if (sub_25277B234(v56[0], v3))
  {
    v9 = *(v0 + 896);
    v10 = *(v0 + 856);
    *(v0 + 920) = *(*(v0 + 456) + 24);
    sub_2528BE790();
    sub_2528BE790();
    v11 = *(v0 + 384);
    *(v0 + 928) = v11;
    v12 = sub_2528C05D0();
    *(v0 + 936) = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    *(v0 + 944) = v14;
    *(v0 + 952) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v10, 1, 1, v12);
    v15 = swift_task_alloc();
    *(v0 + 960) = v15;
    *v15 = v0;
    v15[1] = sub_2527701E0;
    v16 = *(v0 + 896);
    v17 = *(v0 + 856);

    return sub_25277ECE4(v16, v11, 0, v17);
  }

  else
  {
LABEL_6:
    type metadata accessor for HomeAppIntentError();
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v19 = *(v0 + 896);
    v20 = *(v0 + 888);
    v21 = *(v0 + 880);
    v22 = *(v0 + 872);
    v23 = *(v0 + 864);
    v24 = *(v0 + 856);
    v25 = *(v0 + 848);
    v26 = *(v0 + 840);
    v27 = *(v0 + 808);
    v28 = *(v0 + 800);
    v30 = *(v0 + 792);
    v31 = *(v0 + 784);
    v32 = *(v0 + 776);
    v33 = *(v0 + 768);
    v34 = *(v0 + 760);
    v35 = *(v0 + 752);
    v36 = *(v0 + 744);
    v37 = *(v0 + 736);
    v38 = *(v0 + 728);
    v39 = *(v0 + 704);
    v40 = *(v0 + 696);
    v41 = *(v0 + 672);
    v42 = *(v0 + 664);
    v43 = *(v0 + 656);
    v44 = *(v0 + 632);
    v45 = *(v0 + 608);
    v46 = *(v0 + 600);
    v47 = *(v0 + 584);
    v48 = *(v0 + 576);
    v49 = *(v0 + 568);
    v50 = *(v0 + 560);
    v51 = *(v0 + 536);
    v52 = *(v0 + 512);
    v53 = *(v0 + 504);
    v54 = *(v0 + 496);
    v55 = *(v0 + 480);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_2527701E0(uint64_t a1)
{
  v2 = *(*v1 + 960);
  v3 = *(*v1 + 928);
  v4 = *(*v1 + 896);
  v5 = *(*v1 + 856);
  v7 = *v1;
  *(*v1 + 968) = a1;

  sub_2527213D8(v5, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v4, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252770360, 0, 0);
}

uint64_t sub_252770360()
{
  v1 = *(v0 + 752);
  sub_2527D38F8(*(v0 + 968), v1);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 760);
    sub_2527213D8(*(v0 + 752), &qword_27F4FCDA8, &unk_2528C5CB0);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
LABEL_4:
    v17 = *(v0 + 920);
    v18 = *(v0 + 872);
    v19 = *(v0 + 464);
    v20 = *(v0 + 472);
    sub_2527213D8(*(v0 + 760), &qword_27F4FCDB0, &qword_2528D2DB0);
    type metadata accessor for HomeAppIntentError();
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    v22 = v21;
    sub_2528BE790();
    v23 = *(v20 + 48);
    v24 = 1;
    if (!v23(v18, 1, v19))
    {
      (*(*(v0 + 528) + 16))(v22, *(v0 + 872), *(v0 + 520));
      v24 = 0;
    }

    v25 = *(v0 + 920);
    v26 = *(v0 + 864);
    v27 = *(v0 + 528);
    v28 = *(v0 + 520);
    v29 = *(v0 + 464);
    sub_2527213D8(*(v0 + 872), &qword_27F4FC488, &unk_2528C3F80);
    (*(v27 + 56))(v22, v24, 1, v28);
    v30 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48));
    sub_2528BE790();
    v31 = v23(v26, 1, v29);
    v32 = *(v0 + 864);
    if (v31)
    {
      sub_2527213D8(v32, &qword_27F4FC488, &unk_2528C3F80);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v35 = *(v0 + 480);
      v36 = *(v0 + 464);
      v37 = *(v0 + 864);
      sub_2527691F4(v32, v35, type metadata accessor for HomeEntity);
      sub_2527213D8(v37, &qword_27F4FC488, &unk_2528C3F80);
      v38 = *(v35 + *(v36 + 20));
      sub_2528BE6B0();
      v33 = *(v0 + 328);
      v34 = *(v0 + 336);
      sub_2527567C0(v35, type metadata accessor for HomeEntity);
    }

    *v30 = v33;
    v30[1] = v34;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_10;
  }

  v5 = *(v0 + 824);
  v6 = *(v0 + 816);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v11 = v8 + *(v2 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC8, &unk_2528D4D20);
  v13 = *(v12 + 48);
  v155 = *(v5 + 16);
  v155(v7, v11, v6);
  v14 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v11 + *(v14 + 20), v7 + v13, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527567C0(v11, type metadata accessor for HomeEntity.SnapshotPair);
  v15 = *(v12 - 8);
  (*(v15 + 56))(v7, 0, 1, v12);
  v16 = *(v9 + 8);
  *(v0 + 976) = v16;
  *(v0 + 984) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v8, v10);
  if ((*(v15 + 48))(v7, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v150 = *(v0 + 920);
  v137 = *(v0 + 904);
  v139 = *(v0 + 912);
  v143 = *(v0 + 888);
  v51 = *(v0 + 848);
  v52 = *(v0 + 840);
  v134 = *(v0 + 832);
  v53 = *(v0 + 824);
  v54 = *(v0 + 816);
  v55 = *(v0 + 808);
  v147 = *(v0 + 800);
  v56 = *(v0 + 760);
  v132 = *(v0 + 744);
  v153 = *(v0 + 736);
  v141 = *(v0 + 688);
  v145 = *(v0 + 680);
  v57 = *(v0 + 456);
  v58 = *(v12 + 48);
  v59 = *(v53 + 32);
  v59(v51, v56, v54);
  sub_25274AA0C(v56 + v58, v55, &qword_27F4FCDB8, &unk_2528C5CC0);
  v60 = sub_2528C0C40();
  (*(*(v60 - 8) + 56))(v132, 1, 1, v60);
  v155(v52, v51, v54);
  v61 = (*(v53 + 80) + 96) & ~*(v53 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v63 = *v57;
  v64 = v57[1];
  v65 = v57[3];
  *(v62 + 64) = v57[2];
  *(v62 + 80) = v65;
  *(v62 + 32) = v63;
  *(v62 + 48) = v64;
  v59(v62 + v61, v52, v54);
  sub_25277AFA0(v57, v0 + 16);
  sub_2527D3B74(0, 0, v132, &unk_2528C6DE0, v62);

  sub_2528BE790();
  v66 = *(v0 + 392);
  *(v0 + 992) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC780, &unk_2528D4C50);
  inited = swift_initStackObject();
  *(v0 + 1000) = inited;
  *(inited + 16) = xmmword_2528C3910;
  sub_2528BE790();
  v68 = *(v0 + 288);
  v69 = *(v0 + 296);
  v70 = *(v0 + 304);
  v71 = *(v0 + 312);
  LOBYTE(v56) = *(v0 + 320);
  sub_252870158((inited + 32));
  sub_25272C15C(v68, v69, v70, v71, v56);
  sub_2528BE790();
  v72 = *(v141 + 56);
  *(v0 + 1008) = v72;
  *(v0 + 1016) = (v141 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v72(v147, 1, 1, v145);
  *(v0 + 1024) = *(v57 + 6);
  sub_2528BE790();
  *(v0 + 1032) = *(v0 + 344);
  *(v0 + 245) = *(v0 + 352);
  v74 = v57[2];
  v73 = v57[3];
  v75 = v57[1];
  *(v0 + 80) = *v57;
  *(v0 + 96) = v75;
  *(v0 + 112) = v74;
  *(v0 + 128) = v73;
  *(v0 + 1040) = sub_25276EC98();
  sub_2528BE5B0();
  v76 = *(v66 + 16);
  *(v0 + 1048) = v76;
  if (!v76)
  {
    v100 = *(v0 + 888);
    v101 = *(v0 + 824);
    v151 = *(v0 + 816);
    v154 = *(v0 + 848);
    v148 = *(v0 + 808);
    v102 = *(v0 + 800);
    v103 = *(v0 + 736);
    v104 = *(v0 + 720);
    v105 = *(v0 + 712);
    swift_setDeallocating();

    type metadata accessor for HomeAppIntentError();
    sub_25276926C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v104 + 8))(v103, v105);
    sub_2527213D8(v102, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v100, &qword_27F4FC488, &unk_2528C3F80);
    sub_2527213D8(v148, &qword_27F4FCDB8, &unk_2528C5CC0);
    (*(v101 + 8))(v154, v151);
LABEL_10:
    v39 = *(v0 + 896);
    v40 = *(v0 + 888);
    v41 = *(v0 + 880);
    v42 = *(v0 + 872);
    v43 = *(v0 + 864);
    v44 = *(v0 + 856);
    v45 = *(v0 + 848);
    v46 = *(v0 + 840);
    v47 = *(v0 + 808);
    v48 = *(v0 + 800);
    v116 = *(v0 + 792);
    v117 = *(v0 + 784);
    v118 = *(v0 + 776);
    v119 = *(v0 + 768);
    v120 = *(v0 + 760);
    v121 = *(v0 + 752);
    v122 = *(v0 + 744);
    v123 = *(v0 + 736);
    v124 = *(v0 + 728);
    v125 = *(v0 + 704);
    v126 = *(v0 + 696);
    v127 = *(v0 + 672);
    v128 = *(v0 + 664);
    v129 = *(v0 + 656);
    v130 = *(v0 + 632);
    v131 = *(v0 + 608);
    v133 = *(v0 + 600);
    v135 = *(v0 + 584);
    v136 = *(v0 + 576);
    v138 = *(v0 + 568);
    v140 = *(v0 + 560);
    v142 = *(v0 + 536);
    v144 = *(v0 + 512);
    v146 = *(v0 + 504);
    v149 = *(v0 + 496);
    v152 = *(v0 + 480);

    v49 = *(v0 + 8);

    return v49();
  }

  v77 = *(v0 + 792);
  v78 = *(v0 + 688);
  v79 = *(v0 + 680);
  sub_25272006C(*(v0 + 800), v77, &qword_27F4FCDB8, &unk_2528C5CC0);
  v80 = *(v78 + 48);
  *(v0 + 1056) = v80;
  *(v0 + 1064) = (v78 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v80(v77, 1, v79) == 1)
  {
    sub_2527213D8(*(v0 + 792), &qword_27F4FCDB8, &unk_2528C5CC0);
    v81 = 0;
    v82 = MEMORY[0x277D84F90];
    *(v0 + 1152) = MEMORY[0x277D84F90];
    v83 = *(v0 + 592);
    v156 = v82;
    v84 = *(v0 + 992) + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v85 = *(v83 + 72);
    do
    {
      v86 = *(v0 + 1048);
      v87 = *(v0 + 1000);
      v88 = *(v0 + 600);
      sub_2527691F4(v84, v88, type metadata accessor for DeviceEntity);
      ++v81;
      v89 = swift_task_alloc();
      *(v89 + 16) = v88;
      v90 = sub_2527A3118(sub_2527565E8, v89, v87);
      *(v0 + 1328) = 0;

      sub_2527567C0(v88, type metadata accessor for DeviceEntity);
      sub_252735C48(v90);
      v84 += v85;
    }

    while (v81 != v86);
    v91 = *(v0 + 245);
    v92 = *(v0 + 1032);
    v93 = *(v0 + 992);
    v94 = *(v0 + 848);
    *(v0 + 1160) = v156;
    v95 = swift_task_alloc();
    *(v0 + 1168) = v95;
    *(v95 + 16) = v94;
    *(v95 + 24) = v93;
    *(v95 + 32) = v92;
    *(v95 + 40) = v91;
    v96 = swift_task_alloc();
    *(v0 + 1176) = v96;
    *v96 = v0;
    v96[1] = sub_252771BEC;
    v97 = *(v0 + 1000);
    v98 = *(v0 + 992);
    v99 = *(v0 + 848);

    return sub_2527764BC(v156, v99, v97, v98, &unk_2528C6DF0, v95);
  }

  else
  {
    v106 = *(v0 + 848);
    v107 = *(v0 + 792);
    v108 = *(v0 + 704);
    v109 = *(v0 + 688);
    v110 = *(v0 + 680);
    v111 = *(v0 + 672);
    v112 = *(v109 + 32);
    *(v0 + 1072) = v112;
    *(v0 + 1080) = (v109 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v112(v108, v107, v110);
    sub_2528BF2F0();
    v113 = *(MEMORY[0x277D151F0] + 4);
    v114 = swift_task_alloc();
    *(v0 + 1088) = v114;
    *v114 = v0;
    v114[1] = sub_2527710A8;
    v115 = *(v0 + 672);

    return MEMORY[0x28216E680]();
  }
}

uint64_t sub_2527710A8(uint64_t a1)
{
  v2 = *(*v1 + 1088);
  v3 = *(*v1 + 672);
  v4 = *(*v1 + 648);
  v5 = *(*v1 + 640);
  v7 = *v1;
  *(*v1 + 1096) = a1;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252771208, 0, 0);
}

uint64_t sub_252771208()
{
  if (*(v0 + 1096))
  {
    v1 = *(v0 + 992);
    v2 = *(v0 + 704);
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v0 + 1104) = sub_2527A2F84(sub_252756820, v3, v1);
    *(v0 + 1112) = 0;

    *(v0 + 1120) = sub_2528BEFC0();
    sub_2528C0C20();
    *(v0 + 1128) = sub_2528C0C10();
    v5 = sub_2528C0BD0();

    return MEMORY[0x2822009F8](sub_2527714F4, v5, v4);
  }

  else
  {
    (*(*(v0 + 688) + 8))(*(v0 + 704), *(v0 + 680));
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    *(v0 + 1152) = MEMORY[0x277D84F90];
    v8 = *(v0 + 592);
    v26 = v7;
    v9 = *(v0 + 992) + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    do
    {
      v11 = *(v0 + 1048);
      v12 = *(v0 + 1000);
      v13 = *(v0 + 600);
      sub_2527691F4(v9, v13, type metadata accessor for DeviceEntity);
      ++v6;
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      v15 = sub_2527A3118(sub_2527565E8, v14, v12);
      *(v0 + 1328) = 0;

      sub_2527567C0(v13, type metadata accessor for DeviceEntity);
      sub_252735C48(v15);
      v9 += v10;
    }

    while (v6 != v11);
    v16 = *(v0 + 245);
    v17 = *(v0 + 1032);
    v18 = *(v0 + 992);
    v19 = *(v0 + 848);
    *(v0 + 1160) = v26;
    v20 = swift_task_alloc();
    *(v0 + 1168) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v18;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    v21 = swift_task_alloc();
    *(v0 + 1176) = v21;
    *v21 = v0;
    v21[1] = sub_252771BEC;
    v22 = *(v0 + 1000);
    v23 = *(v0 + 992);
    v24 = *(v0 + 848);

    return sub_2527764BC(v26, v24, v22, v23, &unk_2528C6DF0, v20);
  }
}

uint64_t sub_2527714F4()
{
  v1 = v0[141];
  v2 = v0[140];

  v0[142] = sub_2528BEF70();

  return MEMORY[0x2822009F8](sub_252771568, 0, 0);
}

uint64_t sub_252771568()
{
  v1 = v0[137];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[77];
  v5 = v0[76];
  v6 = sub_252743EF0(v0[138]);

  *v2 = v6;
  v2[1] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D16508], v4);
  v7 = sub_2528C00B0();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = *(MEMORY[0x277D16AE8] + 4);
  v9 = v1;
  v10 = swift_task_alloc();
  v0[143] = v10;
  *v10 = v0;
  v10[1] = sub_2527716C8;
  v11 = v0[142];
  v12 = v0[98];
  v13 = v0[79];
  v14 = v0[76];

  return MEMORY[0x282170970](v12, v13, v9, v14);
}

uint64_t sub_2527716C8()
{
  v1 = *(*v0 + 1144);
  v2 = *(*v0 + 1136);
  v3 = *(*v0 + 632);
  v4 = *(*v0 + 624);
  v5 = *(*v0 + 616);
  v6 = *(*v0 + 608);
  v8 = *v0;

  sub_2527213D8(v6, &qword_27F4FC478, &unk_2528C3F70);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252771870, 0, 0);
}

uint64_t sub_252771870()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 784);
  v5 = *(v0 + 776);
  v6 = *(v0 + 680);
  (*(v0 + 1008))(v4, 0, 1, v6);
  sub_25272006C(v4, v5, &qword_27F4FCDB8, &unk_2528C5CC0);
  v7 = v2(v5, 1, v6);
  v8 = MEMORY[0x277D84F90];
  if (v7 == 1)
  {
    v9 = *(v0 + 1096);
    v10 = *(v0 + 784);
    v11 = *(v0 + 688);
    sub_2527213D8(*(v0 + 776), &qword_27F4FCDB8, &unk_2528C5CC0);

    sub_2527213D8(v10, &qword_27F4FCDB8, &unk_2528C5CC0);
    v12 = *(v0 + 1112);
    v13 = MEMORY[0x277D84F90];
    (*(v11 + 8))(*(v0 + 704), *(v0 + 680));
  }

  else
  {
    v12 = *(v0 + 1112);
    v14 = *(v0 + 1096);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 1000);
    v17 = *(v0 + 992);
    v18 = *(v0 + 784);
    v19 = *(v0 + 696);
    v20 = *(v0 + 688);
    v21 = *(v0 + 680);
    (*(v0 + 1072))(v19, *(v0 + 776), v21);
    v22 = swift_task_alloc();
    *(v22 + 16) = v16;
    v8 = MEMORY[0x277D84F90];
    *(v22 + 24) = v19;
    v13 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25275683C, v22, v17);

    sub_2527213D8(v18, &qword_27F4FCDB8, &unk_2528C5CC0);
    v23 = *(v20 + 8);
    v23(v19, v21);
    v23(*(v0 + 704), *(v0 + 680));
  }

  v24 = 0;
  *(v0 + 1152) = v13;
  v25 = *(v0 + 592);
  v43 = v8;
  v26 = *(v0 + 992) + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v27 = *(v25 + 72);
  do
  {
    v28 = *(v0 + 1048);
    v29 = *(v0 + 1000);
    v30 = *(v0 + 600);
    sub_2527691F4(v26, v30, type metadata accessor for DeviceEntity);
    ++v24;
    v31 = swift_task_alloc();
    *(v31 + 16) = v30;
    v32 = sub_2527A3118(sub_2527565E8, v31, v29);
    *(v0 + 1328) = v12;

    sub_2527567C0(v30, type metadata accessor for DeviceEntity);
    sub_252735C48(v32);
    v26 += v27;
  }

  while (v24 != v28);
  v33 = *(v0 + 245);
  v34 = *(v0 + 1032);
  v35 = *(v0 + 992);
  v36 = *(v0 + 848);
  *(v0 + 1160) = v43;
  v37 = swift_task_alloc();
  *(v0 + 1168) = v37;
  *(v37 + 16) = v36;
  *(v37 + 24) = v35;
  *(v37 + 32) = v34;
  *(v37 + 40) = v33;
  v38 = swift_task_alloc();
  *(v0 + 1176) = v38;
  *v38 = v0;
  v38[1] = sub_252771BEC;
  v39 = *(v0 + 1000);
  v40 = *(v0 + 992);
  v41 = *(v0 + 848);

  return sub_2527764BC(v43, v41, v39, v40, &unk_2528C6DF0, v37);
}

uint64_t sub_252771BEC(uint64_t a1)
{
  v2 = *(*v1 + 1176);
  v3 = *(*v1 + 1168);
  v4 = *(*v1 + 1160);
  v6 = *v1;
  *(*v1 + 1184) = a1;

  return MEMORY[0x2822009F8](sub_252771D28, 0, 0);
}

uint64_t sub_252771D28()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 848);
  v5 = MEMORY[0x277D84F90];
  v6 = sub_25278D334(MEMORY[0x277D84F90]);
  v7 = swift_task_alloc();
  *(v7 + 16) = v4;
  *(v7 + 24) = v2;
  v8 = sub_2527F2ADC(v6, sub_252756604, v7, v3);
  *(v0 + 1192) = v8;

  if (*(v8 + 16))
  {
    v9 = *(v0 + 848);
    v10 = *(v0 + 824);
    v11 = *(v0 + 816);
    v12 = *(v0 + 664);
    v13 = *(v0 + 584);
    v14 = *(v10 + 56);
    *(v0 + 1200) = v14;
    *(v0 + 1208) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v13, 1, 1, v11);
    sub_2528BF2F0();
    *(v0 + 1216) = sub_2528BEFC0();
    v15 = *(MEMORY[0x277D15430] + 4);
    v16 = swift_task_alloc();
    *(v0 + 1224) = v16;
    *v16 = v0;
    v16[1] = sub_25277220C;

    return MEMORY[0x28216EA40]();
  }

  else
  {
    v17 = *(v0 + 1192);
    v18 = *(v0 + 1184);
    v19 = *(v0 + 1152);
    v20 = *(v0 + 1000);
    v21 = *(v0 + 992);
    v67 = *(v0 + 888);
    v22 = *(v0 + 800);
    v23 = *(v0 + 736);
    v24 = *(v0 + 720);
    v25 = *(v0 + 712);
    v69 = *(v0 + 456);

    sub_252735C2C(v18);
    sub_252735C2C(v19);
    v26 = sub_25280D9C4(v5);

    v27 = *(v24 + 8);
    *(v0 + 1304) = v27;
    *(v0 + 1312) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v23, v25);
    sub_2527213D8(v22, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v67, &qword_27F4FC488, &unk_2528C3F80);
    v28 = sub_25277405C(v26);
    *(v0 + 1320) = v28;

    v29 = v28 + 64;
    v30 = -1;
    v31 = -1 << *(v28 + 32);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v32 = v30 & *(v28 + 64);
    v33 = (63 - v31) >> 6;
    v70 = v28;
    swift_bridgeObjectRetain_n();
    v34 = 0;
    while (1)
    {
      *(v0 + 1336) = v5;
      if (!v32)
      {
        break;
      }

LABEL_14:
      v36 = (v34 << 9) | (8 * __clz(__rbit64(v32)));
      v37 = *(*(v70 + 56) + v36);
      v38 = *(v37 + 16);
      v39 = *(v5 + 2);
      v40 = v39 + v38;
      if (__OFADD__(v39, v38))
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return MEMORY[0x28216EA40]();
      }

      v41 = *(*(v70 + 56) + v36);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v40 > *(v5 + 3) >> 1)
      {
        if (v39 <= v40)
        {
          v43 = v39 + v38;
        }

        else
        {
          v43 = v39;
        }

        v5 = sub_252737E74(isUniquelyReferenced_nonNull_native, v43, 1, v5);
      }

      v32 &= v32 - 1;
      if (*(v37 + 16))
      {
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v38)
        {
          goto LABEL_32;
        }

        swift_arrayInitWithCopy();

        if (v38)
        {
          v44 = *(v5 + 2);
          v45 = __OFADD__(v44, v38);
          v46 = v44 + v38;
          if (v45)
          {
            goto LABEL_33;
          }

          *(v5 + 2) = v46;
        }
      }

      else
      {

        if (v38)
        {
          goto LABEL_31;
        }
      }
    }

    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v35 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v35);
      ++v34;
      if (v32)
      {
        v34 = v35;
        goto LABEL_14;
      }
    }

    v47 = *(v0 + 1024);
    v48 = *(v0 + 1016);
    v49 = *(v0 + 1008);
    v50 = *(v0 + 920);
    v51 = *(v0 + 880);
    v52 = *(v0 + 768);
    v66 = *(v0 + 728);
    v68 = *(v0 + 1040);
    v53 = *(v0 + 680);
    v54 = *(v0 + 456);

    sub_2528BE790();
    sub_2528BE790();
    v55 = *(v0 + 360);
    v56 = *(v0 + 368);
    v49(v52, 1, 1, v53);
    v57 = *v54;
    v58 = v54[1];
    v59 = v54[3];
    *(v0 + 176) = v54[2];
    *(v0 + 192) = v59;
    *(v0 + 144) = v57;
    *(v0 + 160) = v58;
    sub_2528BE5B0();
    v60 = swift_task_alloc();
    *(v0 + 1344) = v60;
    *v60 = v0;
    v60[1] = sub_252773258;
    v61 = *(v0 + 880);
    v62 = *(v0 + 848);
    v63 = *(v0 + 768);
    v64 = *(v0 + 728);

    return sub_252791C80(v70, v61, v55, v56, v62, v63);
  }
}

uint64_t sub_25277220C(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 1224);
  v6 = *(*v1 + 245);
  v7 = *v1;
  v4[154] = a1;

  v8 = *(MEMORY[0x277D15420] + 4);
  v9 = swift_task_alloc();
  v4[155] = v9;
  *v9 = v7;
  v9[1] = sub_2527723AC;
  v10 = v3[149];
  v11 = v3[129];
  v12 = v3[83];
  v13 = v3[72];

  return MEMORY[0x28216EA10](v13, v12, v10, v11, v6, 0);
}

uint64_t sub_2527723AC()
{
  v2 = *v1;
  v3 = *(*v1 + 1240);
  v4 = *v1;
  v2[156] = v0;

  v5 = v2[154];
  if (v0)
  {

    v6 = sub_252772948;
  }

  else
  {
    (*(v2[81] + 8))(v2[83], v2[80]);

    v6 = sub_252772500;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

char *sub_252772500()
{
  sub_2527213D8(*(v0 + 584), &qword_27F4FCD98, &qword_2528C6200);
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 992);
  v4 = *(v0 + 584);
  sub_25274AA0C(*(v0 + 576), v4, &qword_27F4FCD98, &qword_2528C6200);
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v5, v3);

  sub_2527213D8(v4, &qword_27F4FCD98, &qword_2528C6200);
  v8 = *(v0 + 1192);
  v9 = *(v0 + 1184);
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1000);
  v12 = *(v0 + 992);
  v55 = *(v0 + 800);
  v57 = *(v0 + 888);
  v13 = *(v0 + 736);
  v14 = *(v0 + 720);
  v15 = *(v0 + 712);
  v59 = *(v0 + 456);

  sub_252735C2C(v9);
  sub_252735C2C(v10);
  v16 = sub_25280D9C4(v7);

  v17 = *(v14 + 8);
  *(v0 + 1304) = v17;
  *(v0 + 1312) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v15);
  sub_2527213D8(v55, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527213D8(v57, &qword_27F4FC488, &unk_2528C3F80);
  v18 = sub_25277405C(v16);
  *(v0 + 1320) = v18;

  v19 = v18 + 64;
  v20 = -1;
  v21 = -1 << *(v18 + 32);
  if (-v21 < 64)
  {
    v20 = ~(-1 << -v21);
  }

  v22 = v20 & *(v18 + 64);
  v23 = (63 - v21) >> 6;
  v60 = v18;
  result = swift_bridgeObjectRetain_n();
  v25 = 0;
  while (1)
  {
    *(v0 + 1336) = v6;
    if (!v22)
    {
      break;
    }

LABEL_10:
    v27 = (v25 << 9) | (8 * __clz(__rbit64(v22)));
    v28 = *(*(v60 + 56) + v27);
    v29 = *(v28 + 16);
    v30 = *(v6 + 2);
    v31 = v30 + v29;
    if (__OFADD__(v30, v29))
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v32 = *(*(v60 + 56) + v27);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v31 > *(v6 + 3) >> 1)
    {
      if (v30 <= v31)
      {
        v33 = v30 + v29;
      }

      else
      {
        v33 = v30;
      }

      result = sub_252737E74(result, v33, 1, v6);
      v6 = result;
    }

    v22 &= v22 - 1;
    if (*(v28 + 16))
    {
      if ((*(v6 + 3) >> 1) - *(v6 + 2) < v29)
      {
        goto LABEL_28;
      }

      swift_arrayInitWithCopy();

      if (v29)
      {
        v34 = *(v6 + 2);
        v35 = __OFADD__(v34, v29);
        v36 = v34 + v29;
        if (v35)
        {
          goto LABEL_29;
        }

        *(v6 + 2) = v36;
      }
    }

    else
    {

      if (v29)
      {
        goto LABEL_27;
      }
    }
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v26 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v26);
    ++v25;
    if (v22)
    {
      v25 = v26;
      goto LABEL_10;
    }
  }

  v37 = *(v0 + 1024);
  v38 = *(v0 + 1016);
  v39 = *(v0 + 1008);
  v40 = *(v0 + 920);
  v41 = *(v0 + 880);
  v42 = *(v0 + 768);
  v56 = *(v0 + 728);
  v58 = *(v0 + 1040);
  v43 = *(v0 + 680);
  v44 = *(v0 + 456);

  sub_2528BE790();
  sub_2528BE790();
  v45 = *(v0 + 360);
  v46 = *(v0 + 368);
  v39(v42, 1, 1, v43);
  v47 = *v44;
  v48 = v44[1];
  v49 = v44[3];
  *(v0 + 176) = v44[2];
  *(v0 + 192) = v49;
  *(v0 + 144) = v47;
  *(v0 + 160) = v48;
  sub_2528BE5B0();
  v50 = swift_task_alloc();
  *(v0 + 1344) = v50;
  *v50 = v0;
  v50[1] = sub_252773258;
  v51 = *(v0 + 880);
  v52 = *(v0 + 848);
  v53 = *(v0 + 768);
  v54 = *(v0 + 728);

  return sub_252791C80(v60, v51, v45, v46, v52, v53);
}

uint64_t sub_252772948()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[107];
  v5 = v0[83];
  v6 = v0[81];
  v7 = v0[80];
  v8 = *(v6 + 8);
  v0[157] = v8;
  v0[158] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  v2(v4, 1, 1, v3);
  v9 = *(MEMORY[0x277D153E8] + 4);
  v10 = swift_task_alloc();
  v0[159] = v10;
  *v10 = v0;
  v10[1] = sub_252772A3C;
  v11 = v0[152];
  v12 = v0[107];

  return MEMORY[0x28216E990](v12);
}

uint64_t sub_252772A3C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1272);
  v7 = *v1;
  *(v3 + 1280) = a1;

  v5 = swift_task_alloc();
  *(v3 + 1288) = v5;
  *v5 = v7;
  v5[1] = sub_252772B88;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_252772B88(uint64_t a1)
{
  v2 = *(*v1 + 1288);
  v4 = *v1;
  *(*v1 + 1296) = a1;

  return MEMORY[0x2822009F8](sub_252772C88, 0, 0);
}

char *sub_252772C88()
{
  v1 = *(v0 + 1296);
  v2 = *(v0 + 1264);
  v3 = *(v0 + 1256);
  v4 = *(v0 + 856);
  v5 = *(v0 + 848);
  v6 = *(v0 + 656);
  v7 = *(v0 + 640);
  v8 = *(v0 + 536);

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  v3(v6, v7);
  if (*(v1 + 16) && (v9 = *(v0 + 1296), v10 = sub_252785C40(*(v0 + 536)), (v11 & 1) != 0))
  {
    v12 = *(v0 + 984);
    v13 = *(v0 + 976);
    v83 = *(v0 + 1248);
    v86 = *(v0 + 584);
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 552);
    v17 = *(v0 + 544);
    v18 = *(v0 + 536);
    v19 = *(v0 + 520);
    (*(v16 + 16))(v15, *(*(v0 + 1296) + 56) + *(v16 + 72) * v10, v17);
    v13(v18, v19);

    sub_2528BEE70();

    sub_2527213D8(v86, &qword_27F4FCD98, &qword_2528C6200);
    (*(v16 + 8))(v15, v17);
    v20 = 0;
  }

  else
  {
    v21 = *(v0 + 1296);
    v22 = *(v0 + 984);
    v23 = *(v0 + 976);
    v24 = *(v0 + 584);
    v25 = *(v0 + 536);
    v26 = *(v0 + 520);

    v23(v25, v26);
    sub_2527213D8(v24, &qword_27F4FCD98, &qword_2528C6200);
    v20 = 1;
  }

  v27 = *(v0 + 1208);
  (*(v0 + 1200))(*(v0 + 568), v20, 1, *(v0 + 816));
  v28 = *(v0 + 1000);
  v29 = *(v0 + 992);
  v30 = *(v0 + 584);
  sub_25274AA0C(*(v0 + 568), v30, &qword_27F4FCD98, &qword_2528C6200);
  v31 = swift_task_alloc();
  *(v31 + 16) = v28;
  *(v31 + 24) = v30;
  v32 = MEMORY[0x277D84F90];
  v33 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_252756620, v31, v29);

  sub_2527213D8(v30, &qword_27F4FCD98, &qword_2528C6200);
  v34 = *(v0 + 1192);
  v35 = *(v0 + 1184);
  v36 = *(v0 + 1152);
  v37 = *(v0 + 1000);
  v38 = *(v0 + 992);
  v81 = *(v0 + 800);
  v84 = *(v0 + 888);
  v39 = *(v0 + 736);
  v40 = *(v0 + 720);
  v41 = *(v0 + 712);
  v87 = *(v0 + 456);

  sub_252735C2C(v35);
  sub_252735C2C(v36);
  v42 = sub_25280D9C4(v33);

  v43 = *(v40 + 8);
  *(v0 + 1304) = v43;
  *(v0 + 1312) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v39, v41);
  sub_2527213D8(v81, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_2527213D8(v84, &qword_27F4FC488, &unk_2528C3F80);
  v44 = sub_25277405C(v42);
  *(v0 + 1320) = v44;

  v45 = v44 + 64;
  v46 = -1;
  v47 = -1 << *(v44 + 32);
  if (-v47 < 64)
  {
    v46 = ~(-1 << -v47);
  }

  v48 = v46 & *(v44 + 64);
  v49 = (63 - v47) >> 6;
  v88 = v44;
  result = swift_bridgeObjectRetain_n();
  v51 = 0;
  while (1)
  {
    *(v0 + 1336) = v32;
    if (!v48)
    {
      break;
    }

LABEL_14:
    v53 = (v51 << 9) | (8 * __clz(__rbit64(v48)));
    v54 = *(*(v88 + 56) + v53);
    v55 = *(v54 + 16);
    v56 = *(v32 + 2);
    v57 = v56 + v55;
    if (__OFADD__(v56, v55))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v58 = *(*(v88 + 56) + v53);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v57 > *(v32 + 3) >> 1)
    {
      if (v56 <= v57)
      {
        v59 = v56 + v55;
      }

      else
      {
        v59 = v56;
      }

      result = sub_252737E74(result, v59, 1, v32);
      v32 = result;
    }

    v48 &= v48 - 1;
    if (*(v54 + 16))
    {
      if ((*(v32 + 3) >> 1) - *(v32 + 2) < v55)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v55)
      {
        v60 = *(v32 + 2);
        v61 = __OFADD__(v60, v55);
        v62 = v60 + v55;
        if (v61)
        {
          goto LABEL_33;
        }

        *(v32 + 2) = v62;
      }
    }

    else
    {

      if (v55)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v51;
    if (v48)
    {
      v51 = v52;
      goto LABEL_14;
    }
  }

  v63 = *(v0 + 1024);
  v64 = *(v0 + 1016);
  v65 = *(v0 + 1008);
  v66 = *(v0 + 920);
  v67 = *(v0 + 880);
  v68 = *(v0 + 768);
  v82 = *(v0 + 728);
  v85 = *(v0 + 1040);
  v69 = *(v0 + 680);
  v70 = *(v0 + 456);

  sub_2528BE790();
  sub_2528BE790();
  v71 = *(v0 + 360);
  v72 = *(v0 + 368);
  v65(v68, 1, 1, v69);
  v73 = *v70;
  v74 = v70[1];
  v75 = v70[3];
  *(v0 + 176) = v70[2];
  *(v0 + 192) = v75;
  *(v0 + 144) = v73;
  *(v0 + 160) = v74;
  sub_2528BE5B0();
  v76 = swift_task_alloc();
  *(v0 + 1344) = v76;
  *v76 = v0;
  v76[1] = sub_252773258;
  v77 = *(v0 + 880);
  v78 = *(v0 + 848);
  v79 = *(v0 + 768);
  v80 = *(v0 + 728);

  return sub_252791C80(v88, v77, v71, v72, v78, v79);
}

uint64_t sub_252773258(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1344);
  v22 = *v2;
  v3[169] = a1;
  v3[170] = v1;

  if (v1)
  {
    v5 = v3[167];
    v6 = v3[165];
    v7 = v3[164];
    v8 = v3[163];
    v9 = v3[110];
    v10 = v3[96];
    v11 = v3[91];
    v12 = v3[89];

    v8(v11, v12);
    sub_2527213D8(v10, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v9, &qword_27F4FC488, &unk_2528C3F80);
    v13 = sub_252773DBC;
  }

  else
  {
    v14 = v3[165];
    v15 = v3[164];
    v16 = v3[163];
    v17 = v3[110];
    v18 = v3[96];
    v19 = v3[91];
    v20 = v3[89];

    v16(v19, v20);
    sub_2527213D8(v18, &qword_27F4FCDB8, &unk_2528C5CC0);
    sub_2527213D8(v17, &qword_27F4FC488, &unk_2528C3F80);
    v13 = sub_25277344C;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_25277344C()
{
  v112 = v0;
  v1 = *(v0 + 1336);
  v2 = *(v1 + 16);
  if (v2)
  {
    v108 = MEMORY[0x277D84F90];
    sub_25282F064(0, v2, 0);
    v3 = v108;
    v4 = (v1 + 64);
    do
    {
      v5 = *v4;
      v6 = *(v4 - 1);
      v110[0] = *(v4 - 2);
      v110[1] = v6;
      v111 = v5;
      sub_252870158(&v109);
      v7 = v109;
      v9 = *(v108 + 16);
      v8 = *(v108 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_25282F064((v8 > 1), v9 + 1, 1);
      }

      *(v108 + 16) = v9 + 1;
      *(v108 + v9 + 32) = v7;
      v4 += 40;
      --v2;
    }

    while (v2);
    v10 = *(v0 + 1336);
  }

  else
  {
    v11 = *(v0 + 1336);

    v3 = MEMORY[0x277D84F90];
  }

  v12 = *(v0 + 1352);
  v13 = *(v0 + 904);
  v14 = *(v0 + 848);
  v15 = *(v0 + 808);
  v16 = *(v0 + 504);
  sub_2528BE790();
  v17 = *(v0 + 400);
  ShowDeviceResultIntent.init()(v16);
  sub_252859C3C(v12, v14, v15, v110);
  v18 = v16[1];
  *(v0 + 241) = v110[0];
  sub_2528BE7A0();
  sub_2528BE790();
  v19 = *(v0 + 242);
  if (v19 == 4 || (sub_252852964(v19, 1u) & 1) == 0)
  {
  }

  else
  {
    v20 = *(v0 + 1360);
    v21 = *(v0 + 1352);
    v22 = *(v0 + 848);
    v23 = *(v0 + 504);
    v24 = swift_task_alloc();
    *(v24 + 16) = v22;
    *(v24 + 24) = v17;
    v25 = sub_252853180(sub_252760634, v24, v21);

    v26 = *(v23 + 48);
    *(v0 + 432) = v25;
    sub_2528BE7A0();
    v27 = *(v23 + 56);
    *(v0 + 440) = v21;

    sub_2528BE7A0();
  }

  sub_25285A33C(v3, v110);

  v28 = v110[0];
  if (LOBYTE(v110[0]) != 2)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v29 = sub_2528C08B0();
    __swift_project_value_buffer(v29, qword_27F5025C8);
    v30 = sub_2528C0890();
    v31 = sub_2528C0D10();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v110[0] = v33;
      *v32 = 136315138;
      if (v28)
      {
        v34 = 0xD000000000000010;
      }

      else
      {
        v34 = 6449010;
      }

      if (v28)
      {
        v35 = 0x80000002528E51C0;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v36 = sub_2527389AC(v34, v35, v110);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_252711000, v30, v31, "Setting SecondaryAccessoryControlDestinationin in ShowDeviceResultIntent: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x2530A8D80](v33, -1, -1);
      MEMORY[0x2530A8D80](v32, -1, -1);
    }

    v37 = *(*(v0 + 504) + 64);
    *(v0 + 244) = v28 & 1;
    sub_2528BE7A0();
  }

  v38 = _s14HomeAppIntents22ShowDeviceResultIntentV019getSuccessAndFailedE3IDs4fromShySSG07successeL0_AF06failedeL0tSayAA0eF0VG_tFZ_0(*(v0 + 1352));
  v39 = v38;
  v41 = v40;
  v42 = *(v38 + 16);
  if (v42)
  {
    v43 = sub_252865988(*(v38 + 16), 0);
    v44 = sub_252868828(v110, v43 + 4, v42, v39);
    sub_25271A648();
    if (v44 == v42)
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  v43 = MEMORY[0x277D84F90];
LABEL_28:
  v45 = *(*(v0 + 504) + 16);
  *(v0 + 408) = v43;
  sub_2528BE7A0();
  v46 = *(v41 + 16);
  if (v46)
  {
    v47 = sub_252865988(*(v41 + 16), 0);
    v48 = sub_252868828(v110, v47 + 4, v46, v41);
    sub_25271A648();
    if (v48 == v46)
    {
      goto LABEL_32;
    }

    __break(1u);
  }

  v47 = MEMORY[0x277D84F90];
LABEL_32:
  v50 = *(v0 + 504);
  v49 = *(v0 + 512);
  v51 = *(v50 + 24);
  *(v0 + 416) = v47;
  sub_2528BE7A0();
  sub_25275663C(v50, v49);
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v52 = *(v0 + 512);
  v53 = *(v0 + 496);
  v54 = sub_2528C08B0();
  __swift_project_value_buffer(v54, qword_27F5025C8);
  sub_2527691F4(v52, v53, type metadata accessor for ShowDeviceResultIntent);
  v55 = sub_2528C0890();
  v56 = sub_2528C0D10();
  v57 = os_log_type_enabled(v55, v56);
  v58 = *(v0 + 496);
  if (v57)
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v110[0] = v60;
    *v59 = 136315138;
    v61 = *(v58 + 8);
    result = sub_2528BE790();
    v63 = *(v0 + 243);
    if (v63 <= 1)
    {
      if (*(v0 + 243))
      {
        v65 = 0x6B6E694C70656564;
      }

      else
      {
        v65 = 0x726577736E61;
      }

      if (*(v0 + 243))
      {
        v64 = 0xE800000000000000;
      }

      else
      {
        v64 = 0xE600000000000000;
      }
    }

    else if (v63 == 2)
    {
      v64 = 0xE600000000000000;
      v65 = 0x656369746F6ELL;
    }

    else
    {
      if (v63 != 3)
      {
        __break(1u);
        return result;
      }

      v64 = 0xE600000000000000;
      v65 = 0x686372616573;
    }

    sub_2527567C0(*(v0 + 496), type metadata accessor for ShowDeviceResultIntent);
    v66 = sub_2527389AC(v65, v64, v110);

    *(v59 + 4) = v66;
    _os_log_impl(&dword_252711000, v55, v56, "DeltaAttributeValueIntent returning ShowDeviceResultIntent for %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    MEMORY[0x2530A8D80](v60, -1, -1);
    MEMORY[0x2530A8D80](v59, -1, -1);
  }

  else
  {

    sub_2527567C0(v58, type metadata accessor for ShowDeviceResultIntent);
  }

  v75 = *(v0 + 896);
  v76 = *(v0 + 888);
  v77 = *(v0 + 880);
  v78 = *(v0 + 872);
  v79 = *(v0 + 864);
  v80 = *(v0 + 856);
  v67 = *(v0 + 848);
  v68 = *(v0 + 824);
  v74 = *(v0 + 816);
  v69 = *(v0 + 808);
  v81 = *(v0 + 840);
  v82 = *(v0 + 800);
  v83 = *(v0 + 792);
  v84 = *(v0 + 784);
  v85 = *(v0 + 776);
  v86 = *(v0 + 768);
  v87 = *(v0 + 760);
  v88 = *(v0 + 752);
  v89 = *(v0 + 744);
  v90 = *(v0 + 736);
  v91 = *(v0 + 728);
  v92 = *(v0 + 704);
  v93 = *(v0 + 696);
  v94 = *(v0 + 672);
  v95 = *(v0 + 664);
  v96 = *(v0 + 656);
  v97 = *(v0 + 632);
  v99 = *(v0 + 608);
  v101 = *(v0 + 600);
  v103 = *(v0 + 584);
  *(v0 + 424) = *(v0 + 1352);
  v98 = *(v0 + 576);
  v100 = *(v0 + 568);
  v102 = *(v0 + 560);
  v70 = *(v0 + 512);
  v104 = *(v0 + 536);
  v105 = *(v0 + 504);
  v71 = *(v0 + 488);
  v106 = *(v0 + 496);
  v107 = *(v0 + 480);
  v72 = *(v0 + 448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD8, &qword_2528C5D00);
  sub_2527566A0();
  sub_25276926C(&qword_27F4FCDF0, type metadata accessor for ShowDeviceResultIntent);
  sub_2528BE650();
  sub_2527567C0(v70, type metadata accessor for ShowDeviceResultIntent);
  sub_2527213D8(v69, &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v68 + 8))(v67, v74);

  v73 = *(v0 + 8);

  return v73();
}

uint64_t sub_252773DBC()
{
  v1 = v0[106];
  v2 = v0[103];
  v3 = v0[102];
  sub_2527213D8(v0[101], &qword_27F4FCDB8, &unk_2528C5CC0);
  (*(v2 + 8))(v1, v3);
  v42 = v0[170];
  v4 = v0[112];
  v5 = v0[111];
  v6 = v0[110];
  v7 = v0[109];
  v8 = v0[108];
  v9 = v0[107];
  v10 = v0[106];
  v11 = v0[105];
  v12 = v0[101];
  v13 = v0[100];
  v16 = v0[99];
  v17 = v0[98];
  v18 = v0[97];
  v19 = v0[96];
  v20 = v0[95];
  v21 = v0[94];
  v22 = v0[93];
  v23 = v0[92];
  v24 = v0[91];
  v25 = v0[88];
  v26 = v0[87];
  v27 = v0[84];
  v28 = v0[83];
  v29 = v0[82];
  v30 = v0[79];
  v31 = v0[76];
  v32 = v0[75];
  v33 = v0[73];
  v34 = v0[72];
  v35 = v0[71];
  v36 = v0[70];
  v37 = v0[67];
  v38 = v0[64];
  v39 = v0[63];
  v40 = v0[62];
  v41 = v0[60];

  v14 = v0[1];

  return v14();
}

uint64_t sub_25277405C(uint64_t a1)
{
  v88 = type metadata accessor for DeviceEntity();
  v89 = *(v88 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x28223BE20](v88);
  v94 = (&v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_25278D51C(MEMORY[0x277D84F90]);
  v92 = *(a1 + 16);
  if (!v92)
  {
LABEL_67:
    if (qword_27F4FBB40 != -1)
    {
      goto LABEL_77;
    }

    goto LABEL_68;
  }

  v6 = 0;
  v91 = a1 + 32;
  *&v5 = 136315394;
  v90 = v5;
  while (1)
  {
    v99 = v4;
    v96 = v6;
    v7 = (v91 + 16 * v6);
    v8 = v7[1];
    v98 = *v7;
    sub_2528BEA50();
    sub_2528BEA50();
    v95 = v8;
    sub_2528BE6B0();
    v9 = *(*&v110 + 16);
    v97 = *&v110;
    if (v9)
    {
      v10 = (*&v110 + 40);
      v102 = MEMORY[0x277D84F90];
      while (1)
      {
        v4 = *(v10 - 1);
        v17 = *v10;
        sub_2528BEA50();
        sub_2528BEA50();
        sub_2528BE6B0();
        if (v115)
        {
          break;
        }

        sub_25276925C(*&v110, v111, v112, v113, v114, 0);
        sub_2528BE6B0();
        v11 = *&v110;
        v12 = v111;
        v13 = v112;
        v14 = v113;
        v15 = v114;
        v16 = v115;
        if (!v115)
        {
          v18 = *v104;
          v107 = v110;
          v106 = v111;
          v19 = v112;
          v20 = v113;
          sub_252760C18(*&v110, v111, v112, v113, v114);
          v101 = v18;
          sub_2528BE790();
          v105 = *&v116;
          v103 = v117;
          v21 = v118;
          v108 = v15;
          v22 = v15 >> 1;
          v23 = v120;
          if (v15 >> 1 == 4)
          {
            if ((v120 & 0xFE) == 8)
            {
              LODWORD(v100) = v120;
              v101 = v119;

              v35 = v104[1];
              sub_2528BE790();
              if (LOBYTE(v110))
              {
                v36 = sub_2528C1060();

                v28 = v20;
                if ((v36 & 1) == 0)
                {
                  v32 = *&v105;
                  v33 = v108;
                  if (__OFSUB__(*&v107, *&v105))
                  {
                    goto LABEL_76;
                  }

                  v37 = (*&v107 - *&v105) & ~((*&v107 - *&v105) >> 63);
LABEL_48:
                  v121[0] = v37;
                  memset(&v121[1], 0, 24);
                  v122 = 8;
                  sub_252779D90(v121, v37);
                  goto LABEL_53;
                }
              }

              else
              {

                v28 = v20;
              }

              v32 = *&v105;
              v33 = v108;
              if (__OFADD__(*&v107, *&v105))
              {
                goto LABEL_73;
              }

              if ((*&v107 + *&v105) >= 100)
              {
                v37 = 100;
              }

              else
              {
                v37 = *&v107 + *&v105;
              }

              goto LABEL_48;
            }
          }

          else if (v22 == 59)
          {
            if ((v120 & 0xFE) == 0x76)
            {
              LODWORD(v100) = v120;
              v101 = v119;

              v30 = v104[1];
              sub_2528BE790();
              if (LOBYTE(v110))
              {
                v31 = sub_2528C1060();

                v28 = v20;
                if ((v31 & 1) == 0)
                {
                  v32 = *&v105;
                  v33 = v108;
                  if (__OFSUB__(*&v107, *&v105))
                  {
                    goto LABEL_75;
                  }

                  v34 = (*&v107 - *&v105) & ~((*&v107 - *&v105) >> 63);
LABEL_42:
                  v125[0] = v34;
                  memset(&v125[1], 0, 24);
                  v126 = 118;
                  sub_252779D90(v125, v34);
                  goto LABEL_53;
                }
              }

              else
              {

                v28 = v20;
              }

              v32 = *&v105;
              v33 = v108;
              if (__OFADD__(*&v107, *&v105))
              {
                goto LABEL_74;
              }

              if ((*&v107 + *&v105) >= 100)
              {
                v34 = 100;
              }

              else
              {
                v34 = *&v107 + *&v105;
              }

              goto LABEL_42;
            }
          }

          else if (v22 == 47 && (v120 & 0xFE) == 0x5E)
          {
            LODWORD(v100) = v120;
            v101 = v119;
            v24 = v107;

            v25 = v105;
            v26 = v104[1];
            sub_2528BE790();
            if (LOBYTE(v110))
            {
              v27 = sub_2528C1060();

              v28 = v20;
              if ((v27 & 1) == 0)
              {
                v29 = v24 - v25;
                if (v24 - v25 < 0.0)
                {
                  v29 = 0.0;
                }

                goto LABEL_52;
              }
            }

            else
            {

              v28 = v20;
            }

            v29 = v24 + v25;
            if (v24 + v25 > 100.0)
            {
              v29 = 100.0;
            }

LABEL_52:
            v33 = v108;
            v32 = *&v105;
            *v123 = v29;
            memset(&v123[1], 0, 24);
            v124 = 94;
            v59 = sub_252779FA0(v123, v29);
LABEL_53:
            v102 = v59;

            sub_25272C15C(*&v107, v106, v19, v28, v33);
            sub_25272C15C(v32, v103, v21, v101, v100);
            goto LABEL_9;
          }

          v100 = v4;
          v38 = *&v107;
          v39 = v106;
          v40 = v119;
          sub_25272C15C(*&v107, v106, v19, v20, v108);
          sub_25272C15C(*&v105, v103, v21, v40, v23);
          if (qword_27F4FBB40 != -1)
          {
            swift_once();
          }

          v41 = sub_2528C08B0();
          v105 = COERCE_DOUBLE(__swift_project_value_buffer(v41, qword_27F5025C8));
          sub_25277B0C4(v38, v39, v19, v20, v108, 0);
          v42 = v39;
          v43 = v38;
          v44 = v104;
          sub_25277AFA0(v104, &v110);
          v4 = sub_2528C0890();
          v45 = sub_2528C0CF0();
          v46 = v43;
          v103 = v19;
          v105 = *&v20;
          v47 = v108;
          sub_25276925C(v46, v42, v19, v20, v108, 0);
          sub_25277B0D4(v44);
          v48 = v45;
          if (!os_log_type_enabled(v4, v45))
          {

            sub_25276925C(*&v107, v106, v103, *&v105, v47, 0);
            goto LABEL_9;
          }

          v49 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v109 = v93;
          *v49 = v90;
          v110 = v107;
          v111 = v106;
          v112 = v103;
          v113 = *&v105;
          v114 = v47;
          v50 = sub_252873604();
          v52 = v51;
          sub_25272C15C(*&v110, v111, v112, v113, v114);
          v53 = sub_2527389AC(v50, v52, &v109);

          *(v49 + 4) = v53;
          *(v49 + 12) = 2080;
          sub_2528BE790();
          v54 = sub_252873604();
          v56 = v55;
          sub_25272C15C(*&v110, v111, v112, v113, v114);
          v57 = sub_2527389AC(v54, v56, &v109);

          *(v49 + 14) = v57;
          _os_log_impl(&dword_252711000, v4, v48, "Unexpected attribute result for incoming attribute. %s, %s", v49, 0x16u);
          v58 = v93;
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v58, -1, -1);
          MEMORY[0x2530A8D80](v49, -1, -1);

          goto LABEL_12;
        }

        sub_25276925C(v11, v12, v13, v14, v15, v16);
LABEL_9:
        v10 += 2;
        if (!--v9)
        {
          goto LABEL_55;
        }
      }

      sub_25276925C(*&v110, v111, v112, v113, v114, v115);

LABEL_12:

      goto LABEL_9;
    }

    v102 = MEMORY[0x277D84F90];
LABEL_55:

    v60 = v102;
    if (!*(v102 + 2))
    {

      v4 = v99;
      goto LABEL_4;
    }

    v61 = v94;
    sub_2528BE6B0();
    v62 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = *&v62;
    v64 = sub_252785BD4(v61);
    v66 = *(v62 + 16);
    v67 = (v65 & 1) == 0;
    v68 = __OFADD__(v66, v67);
    v69 = v66 + v67;
    if (v68)
    {
      break;
    }

    v70 = v65;
    if (*(v62 + 24) >= v69)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v77 = v64;
        sub_2527E12F8();
        v64 = v77;
      }
    }

    else
    {
      sub_2527DE0A0(v69, isUniquelyReferenced_nonNull_native);
      v64 = sub_252785BD4(v94);
      if ((v70 & 1) != (v71 & 1))
      {
        result = sub_2528C10A0();
        __break(1u);
        return result;
      }
    }

    v4 = *&v110;
    if (v70)
    {
      v72 = *(*&v110 + 56);
      v73 = *(v72 + 8 * v64);
      *(v72 + 8 * v64) = v60;
    }

    else
    {
      *(*&v110 + 8 * (v64 >> 6) + 64) |= 1 << v64;
      v74 = v64;
      sub_2527691F4(v94, v4[6].isa + *(v89 + 72) * v64, type metadata accessor for DeviceEntity);
      *(v4[7].isa + v74) = v60;
      isa = v4[2].isa;
      v68 = __OFADD__(isa, 1);
      v76 = (isa + 1);
      if (v68)
      {
        goto LABEL_72;
      }

      v4[2].isa = v76;
    }

    sub_2527567C0(v94, type metadata accessor for DeviceEntity);

LABEL_4:
    v6 = v96 + 1;
    if (v96 + 1 == v92)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  swift_once();
LABEL_68:
  v78 = sub_2528C08B0();
  __swift_project_value_buffer(v78, qword_27F5025C8);
  v79 = sub_2528C0890();
  v80 = sub_2528C0D10();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v110 = *&v82;
    *v81 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE90, &qword_2528C6720);
    sub_25276926C(&qword_27F4FCE98, type metadata accessor for DeviceEntity);
    v83 = sub_2528C08E0();
    v85 = v84;

    v86 = sub_2527389AC(v83, v85, &v110);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_252711000, v79, v80, "Created delta dicctionary %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    MEMORY[0x2530A8D80](v82, -1, -1);
    MEMORY[0x2530A8D80](v81, -1, -1);
  }

  return v4;
}

uint64_t sub_252774DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(type metadata accessor for DeviceEntity() - 8);
  v5[5] = v6;
  v7 = *(v6 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252774EA4, 0, 0);
}

uint64_t sub_252774EA4()
{
  v17 = v0;
  v1 = *(*(v0 + 24) + 16);
  sub_2528BE790();
  v2 = *(v0 + 16);
  v15 = MEMORY[0x277D84FA0];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v7 = *(v4 + 72);
    do
    {
      v8 = *(v0 + 48);
      sub_2527691F4(v6, v8, type metadata accessor for DeviceEntity);
      v9 = *(v5 + 16);
      sub_2528BE6B0();
      sub_25273A214(v16, *(v0 + 56));
      sub_2527567C0(v8, type metadata accessor for DeviceEntity);
      v6 += v7;
      --v3;
    }

    while (v3);

    v10 = v15;
  }

  else
  {

    v10 = MEMORY[0x277D84FA0];
  }

  v11 = *(v0 + 48);
  v12 = swift_task_alloc();
  *(v12 + 16) = *(v0 + 24);
  sub_2527E4D64(sub_25277B104, v12, v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252775030(_WORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = sub_2528BF400();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDA0, &unk_2528C6AC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19[-v11];
  LOWORD(a1) = *a1;
  v13 = sub_2528C0C40();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(&v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v6);
  v14 = (*(v7 + 80) + 104) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  v16 = a2[1];
  *(v15 + 40) = *a2;
  *(v15 + 56) = v16;
  v17 = a2[3];
  *(v15 + 72) = a2[2];
  *(v15 + 88) = v17;
  (*(v7 + 32))(v15 + v14, &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  sub_25277AFA0(a2, v19);
  sub_2527D4188(0, 0, v12, &unk_2528C6E38, v15);
}

uint64_t sub_252775248(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 184) = a5;
  *(v6 + 192) = a6;
  *(v6 + 114) = a4;
  *(v6 + 176) = a1;
  v7 = sub_2528BEC90();
  *(v6 + 200) = v7;
  v8 = *(v7 - 8);
  *(v6 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 216) = swift_task_alloc();
  v10 = sub_2528BEEC0();
  *(v6 + 224) = v10;
  v11 = *(v10 - 8);
  *(v6 + 232) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 240) = swift_task_alloc();
  v13 = sub_2528BF400();
  *(v6 + 248) = v13;
  v14 = *(v13 - 8);
  *(v6 + 256) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE00, &qword_2528C5D20) - 8) + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  *(v6 + 288) = swift_task_alloc();
  v17 = sub_2528BE8B0();
  *(v6 + 296) = v17;
  v18 = *(v17 - 8);
  *(v6 + 304) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 312) = swift_task_alloc();
  v20 = sub_2528BECF0();
  *(v6 + 320) = v20;
  v21 = *(v20 - 8);
  *(v6 + 328) = v21;
  v22 = *(v21 + 64) + 15;
  *(v6 + 336) = swift_task_alloc();
  v23 = sub_2528BEE30();
  *(v6 + 344) = v23;
  v24 = *(v23 - 8);
  *(v6 + 352) = v24;
  v25 = *(v24 + 64) + 15;
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252775538, 0, 0);
}

uint64_t sub_252775538()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 352);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v23 = *(v0 + 304);
  v24 = *(v0 + 296);
  v21 = *(v0 + 312);
  v22 = *(v0 + 288);
  v3 = *(v0 + 184);
  v18 = *(v0 + 192);
  v4 = *v3;
  sub_2528BE790();
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  *(v0 + 120) = v6;
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  *(v0 + 128) = v5;
  *(v0 + 136) = v7;
  *(v0 + 144) = v8;
  v9 = *(v0 + 112);
  *(v0 + 152) = v9;
  sub_252870158((v0 + 113));
  sub_25272C15C(v6, v5, v7, v8, v9);
  *(v0 + 116) = *(v0 + 113);
  sub_2528BF2F0();
  sub_2528BEE00();
  v10 = *(v2 + 8);
  *(v0 + 376) = v10;
  *(v0 + 384) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v20);
  v11 = *v3;
  v12 = *(v3 + 1);
  v13 = *(v3 + 3);
  *(v0 + 48) = *(v3 + 2);
  *(v0 + 64) = v13;
  *(v0 + 16) = v11;
  *(v0 + 32) = v12;
  sub_25276EC98();
  sub_2528BE5B0();
  sub_2528BE8A0();
  (*(v23 + 8))(v21, v24);
  v14 = v3[6];
  sub_2528BE790();
  *(v0 + 392) = *(v0 + 160);
  *(v0 + 117) = *(v0 + 168);
  sub_2528BEFC0();
  v15 = *(MEMORY[0x277D15430] + 4);
  v16 = swift_task_alloc();
  *(v0 + 400) = v16;
  *v16 = v0;
  v16[1] = sub_25277571C;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25277571C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 400);
  v7 = *v1;
  *(v3 + 408) = a1;

  v5 = swift_task_alloc();
  *(v3 + 416) = v5;
  *v5 = v7;
  v5[1] = sub_252775868;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_252775868(uint64_t a1)
{
  v2 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = a1;

  return MEMORY[0x2822009F8](sub_252775968, 0, 0);
}

uint64_t sub_252775968()
{
  v1 = *(v0 + 424);

  if (*(v1 + 16) && (v2 = *(v0 + 424), v3 = sub_252785C40(*(v0 + 336)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 280);
    v65 = *(v0 + 288);
    v7 = *(v0 + 264);
    v6 = *(v0 + 272);
    v8 = *(v0 + 248);
    v9 = *(v0 + 256);
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    v12 = *(v0 + 224);
    (*(v10 + 16))(v11, *(*(v0 + 424) + 56) + *(v10 + 72) * v3, v12);

    sub_2528BEE70();
    (*(v10 + 8))(v11, v12);
    (*(v9 + 32))(v6, v7, v8);
    sub_25272006C(v65, v5, &qword_27F4FCE00, &qword_2528C5D20);
    v13 = sub_2528BE890();
    v14 = *(v13 - 8);
    v15 = (*(v14 + 48))(v5, 1, v13);
    v16 = *(v0 + 280);
    if (v15 == 1)
    {
      sub_2527213D8(*(v0 + 280), &qword_27F4FCE00, &qword_2528C5D20);
      v66 = 0;
    }

    else
    {
      v66 = sub_2528BE880();
      (*(v14 + 8))(v16, v13);
    }

    v32 = v15 == 1;
    v59 = *(v0 + 376);
    v60 = *(v0 + 384);
    v33 = *(v0 + 360);
    v58 = *(v0 + 344);
    v63 = *(v0 + 336);
    v64 = *(v0 + 116);
    v34 = *(v0 + 328);
    v61 = *(v0 + 288);
    v62 = *(v0 + 320);
    v35 = *(v0 + 272);
    v37 = *(v0 + 248);
    v36 = *(v0 + 256);
    v39 = *(v0 + 208);
    v38 = *(v0 + 216);
    v40 = *(v0 + 200);
    v41 = *(v0 + 114);
    *(v0 + 432) = v32;
    sub_2528BEC80();
    sub_2528BEC60();
    v31 = v42;
    (*(v39 + 8))(v38, v40);
    sub_2528BF2F0();
    v43 = sub_2528BEDD0();
    v59(v33, v58);
    (*(v36 + 8))(v35, v37);
    sub_2527213D8(v61, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v34 + 8))(v63, v62);
    if ((v41 & 0xC000) == 0x4000)
    {
      v44 = HIBYTE(v41) & 0x3F;
    }

    else
    {
      v44 = v41;
    }

    v25 = v44 + 1;
    v24 = v66;
    v26 = qword_2528C6E48[v64];
    v28 = *(v0 + 117);
    *(v0 + 440) = v28;
    v30 = *(v0 + 432);
    v29 = v43 & 1;
    v27 = *(v0 + 392);
    v22 = 0xD000000000000028;
    v23 = 0x80000002528E5820;
  }

  else
  {
    v17 = *(v0 + 424);
    v19 = *(v0 + 328);
    v18 = *(v0 + 336);
    v20 = *(v0 + 320);
    v21 = *(v0 + 288);

    sub_2527213D8(v21, &qword_27F4FCE00, &qword_2528C5D20);
    (*(v19 + 8))(v18, v20);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

  v46 = *(v0 + 360);
  v45 = *(v0 + 368);
  v47 = *(v0 + 336);
  v48 = *(v0 + 312);
  v50 = *(v0 + 280);
  v49 = *(v0 + 288);
  v52 = *(v0 + 264);
  v51 = *(v0 + 272);
  v53 = *(v0 + 240);
  v54 = *(v0 + 216);
  v55 = *(v0 + 176);
  *v55 = v22;
  *(v55 + 8) = v23;
  *(v55 + 16) = v24;
  *(v55 + 24) = v30;
  *(v55 + 32) = v31;
  *(v55 + 40) = v29;
  *(v55 + 48) = v25;
  *(v55 + 56) = v26;
  *(v55 + 64) = v27;
  *(v55 + 72) = v28;

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_252775D88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB678 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5028F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252775E30(uint64_t a1)
{
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_252775EDC;

  return sub_25276F1E0(a1);
}

uint64_t sub_252775EDC()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double sub_252775FD0@<D0>(_OWORD *a1@<X8>)
{
  sub_25277A1C0(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

uint64_t sub_252776010(uint64_t a1)
{
  v2 = sub_25276EC98();

  return MEMORY[0x28210B538](a1, v2);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252776060(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2527760A8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_252776108()
{
  v1 = v0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v2 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  sub_2528C0E70();
  MEMORY[0x2530A80B0](0x7475626972747461, 0xEB00000000203A65);
  v3 = *v0;
  sub_2528BE790();
  v4 = sub_252873604();
  v6 = v5;
  sub_25272C15C(0, 0xE000000000000000, v21, v22, v23);
  MEMORY[0x2530A80B0](v4, v6);

  MEMORY[0x2530A80B0](0x203A61746C656420, 0xE800000000000000);
  v7 = v1[1];
  sub_2528BE790();
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](0x7365636976656420, 0xEA0000000000203ALL);
  v8 = v1[2];
  sub_2528BE790();
  v9 = type metadata accessor for DeviceEntity();
  v10 = MEMORY[0x2530A81A0](0, v9);
  v12 = v11;

  MEMORY[0x2530A80B0](v10, v12);

  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  v13 = v1[3];
  sub_2528BE790();
  v14 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v14);

  MEMORY[0x2530A80B0](0x746E45656E6F7A20, 0xEF203A7365697469);
  v15 = v1[4];
  sub_2528BE790();
  MEMORY[0x2530A80B0](0, 0xE000000000000000);

  MEMORY[0x2530A80B0](0x746E456D6F6F7220, 0xEF203A7365697469);
  v16 = v1[5];
  sub_2528BE790();
  MEMORY[0x2530A80B0](0, 0xE000000000000000);

  MEMORY[0x2530A80B0](0x74756F656D697420, 0xEA0000000000203ALL);
  v17 = v1[6];
  sub_2528BE790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE10, &unk_2528C6280);
  v18 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v18);

  return 0;
}

uint64_t sub_2527764BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_2528BECF0();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = sub_2528BEE30();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = sub_2528BEEC0();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF60, &unk_2528C6E10) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v18 = sub_2528BF2B0();
  v6[21] = v18;
  v19 = *(v18 - 8);
  v6[22] = v19;
  v20 = *(v19 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25277677C, 0, 0);
}

uint64_t sub_25277677C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 32);
  v3 = sub_2528BF400();
  *(v0 + 240) = v3;
  v4 = *(v3 - 8);
  *(v0 + 248) = v4;
  v6 = v4 + 56;
  v5 = *(v4 + 56);
  *(v0 + 256) = v5;
  *(v0 + 264) = v6 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  *(v0 + 16) = sub_25278D310(MEMORY[0x277D84F90]);
  v7 = *(v2 + 16);
  *(v0 + 272) = v7;
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    v10 = *(sub_2528BFD30() - 8);
    v11 = *(v10 + 80);
    *(v0 + 352) = v11;
    v12 = (v11 + 32) & ~v11;
    v13 = *(v10 + 72);
    *(v0 + 356) = *MEMORY[0x277D159B8];
    *(v0 + 280) = v13;
    *(v0 + 288) = 0;
    v45 = (v8 + *v8);
    v14 = v8[1];
    v15 = swift_task_alloc();
    *(v0 + 296) = v15;
    *v15 = v0;
    v15[1] = sub_252776BD8;
    v16 = *(v0 + 208);
    v17 = *(v0 + 72);

    return v45(v16, v9 + v12);
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v21, &qword_27F4FCD98, &qword_2528C6200);
    v22 = *(v20 + 48);
    v23 = v22(v21, 1, v19);
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    if (v23 == 1)
    {
      (*(v24 + 16))(v26, *(v0 + 40), *(v0 + 240));
      if (v22(v27, 1, v25) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v24 + 32))(v26, *(v0 + 216), *(v0 + 240));
    }

    v28 = *(v0 + 264);
    v29 = *(v0 + 232);
    v30 = *(v0 + 224);
    v32 = *(v0 + 200);
    v31 = *(v0 + 208);
    v39 = *(v0 + 192);
    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v42 = *(v0 + 152);
    v43 = *(v0 + 128);
    v44 = *(v0 + 120);
    v46 = *(v0 + 96);
    v34 = *(v0 + 48);
    v33 = *(v0 + 56);
    (*(v0 + 256))(v30, 0, 1, *(v0 + 240));
    v35 = *(v0 + 16);
    v36 = swift_task_alloc();
    v36[2] = v34;
    v36[3] = v35;
    v36[4] = v30;
    v37 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B21C, v36, v33);

    sub_2527213D8(v29, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v30, &qword_27F4FCD98, &qword_2528C6200);

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_252776BD8()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_2527770B0;
  }

  else
  {
    v3 = sub_252776CEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252776CEC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  sub_2527213D8(v1, &qword_27F4FCD98, &qword_2528C6200);
  sub_25274AA0C(v2, v1, &qword_27F4FCD98, &qword_2528C6200);
  v3 = *(v0 + 288) + 1;
  if (v3 == *(v0 + 272))
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v7, &qword_27F4FCD98, &qword_2528C6200);
    v8 = *(v6 + 48);
    v9 = v8(v7, 1, v5);
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    if (v9 == 1)
    {
      (*(v10 + 16))(v12, *(v0 + 40), *(v0 + 240));
      if (v8(v13, 1, v11) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v10 + 32))(v12, *(v0 + 216), *(v0 + 240));
    }

    v20 = *(v0 + 264);
    v21 = *(v0 + 232);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);
    v31 = *(v0 + 200);
    v32 = *(v0 + 192);
    v33 = *(v0 + 184);
    v34 = *(v0 + 160);
    v35 = *(v0 + 152);
    v36 = *(v0 + 128);
    v24 = *(v0 + 120);
    v38 = *(v0 + 96);
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    (*(v0 + 256))(v22, 0, 1, *(v0 + 240));
    v27 = *(v0 + 16);
    v28 = swift_task_alloc();
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = v22;
    v29 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B21C, v28, v25);

    sub_2527213D8(v21, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v22, &qword_27F4FCD98, &qword_2528C6200);

    v30 = *(v0 + 8);

    return v30(v29);
  }

  else
  {
    *(v0 + 288) = v3;
    v14 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v3;
    v37 = (*(v0 + 64) + **(v0 + 64));
    v15 = *(*(v0 + 64) + 4);
    v16 = swift_task_alloc();
    *(v0 + 296) = v16;
    *v16 = v0;
    v16[1] = sub_252776BD8;
    v17 = *(v0 + 208);
    v18 = *(v0 + 72);

    return v37(v17, v14);
  }
}

uint64_t sub_2527770B0()
{
  v1 = *(v0 + 304);
  *(v0 + 24) = v1;
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 356);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    (*(v9 + 56))(v10, 0, 1, v8);
    (*(v9 + 32))(v6, v10, v8);
    (*(v9 + 16))(v7, v6, v8);
    if ((*(v9 + 88))(v7, v8) == v5)
    {
      v11 = *(v0 + 184);
      v12 = *(v0 + 128);
      (*(*(v0 + 176) + 96))(v11, *(v0 + 168));
      sub_25276ECEC(*v11, (v0 + 16));
      *(v0 + 312) = 0;

      v13 = sub_2528C05D0();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      sub_2528BEFC0();
      v14 = *(MEMORY[0x277D153E8] + 4);
      v15 = swift_task_alloc();
      *(v0 + 320) = v15;
      *v15 = v0;
      v15[1] = sub_25277769C;
      v16 = *(v0 + 128);

      return MEMORY[0x28216E990](v16);
    }

    v20 = *(v0 + 304);
    v21 = *(v0 + 184);
    v22 = *(v0 + 168);
    v23 = *(*(v0 + 176) + 8);
    v23(*(v0 + 192), v22);

    v23(v21, v22);
  }

  else
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    v19 = *(v0 + 160);

    (*(v18 + 56))(v19, 1, 1, v17);
    sub_2527213D8(v19, &qword_27F4FCF60, &unk_2528C6E10);
  }

  v24 = *(v0 + 288) + 1;
  if (v24 == *(v0 + 272))
  {
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);
    v27 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v27, &qword_27F4FCD98, &qword_2528C6200);
    v28 = *(v26 + 48);
    v29 = v28(v27, 1, v25);
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v33 = *(v0 + 216);
    v32 = *(v0 + 224);
    if (v29 == 1)
    {
      (*(v30 + 16))(v32, *(v0 + 40), *(v0 + 240));
      if (v28(v33, 1, v31) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v30 + 32))(v32, *(v0 + 216), *(v0 + 240));
    }

    v39 = *(v0 + 264);
    v40 = *(v0 + 232);
    v41 = *(v0 + 224);
    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v51 = *(v0 + 192);
    v52 = *(v0 + 184);
    v53 = *(v0 + 160);
    v54 = *(v0 + 152);
    v55 = *(v0 + 128);
    v56 = *(v0 + 120);
    v58 = *(v0 + 96);
    v45 = *(v0 + 48);
    v44 = *(v0 + 56);
    (*(v0 + 256))(v41, 0, 1, *(v0 + 240));
    v46 = *(v0 + 16);
    v47 = swift_task_alloc();
    v47[2] = v45;
    v47[3] = v46;
    v47[4] = v41;
    v48 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B21C, v47, v44);

    sub_2527213D8(v40, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v41, &qword_27F4FCD98, &qword_2528C6200);

    v49 = *(v0 + 8);

    return v49(v48);
  }

  else
  {
    *(v0 + 288) = v24;
    v34 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v24;
    v57 = (*(v0 + 64) + **(v0 + 64));
    v35 = *(*(v0 + 64) + 4);
    v36 = swift_task_alloc();
    *(v0 + 296) = v36;
    *v36 = v0;
    v36[1] = sub_252776BD8;
    v37 = *(v0 + 208);
    v38 = *(v0 + 72);

    return v57(v37, v34);
  }
}

uint64_t sub_25277769C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v7 = *v1;
  *(v3 + 328) = a1;

  v5 = swift_task_alloc();
  *(v3 + 336) = v5;
  *v5 = v7;
  v5[1] = sub_2527777E8;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_2527777E8(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_2527778E8, 0, 0);
}

uint64_t sub_2527778E8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 40);

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  (*(v5 + 8))(v2, v4);
  if (*(v1 + 16) && (v8 = *(v0 + 344), v9 = sub_252785C40(*(v0 + 96)), (v10 & 1) != 0))
  {
    v11 = *(v0 + 304);
    v12 = *(v0 + 200);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    (*(v14 + 16))(v13, *(*(v0 + 344) + 56) + *(v14 + 72) * v9, v15);
    (*(v17 + 8))(v16, v18);

    sub_2528BEE70();

    (*(v14 + 8))(v13, v15);
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + 344);
    v21 = *(v0 + 304);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 80);

    (*(v23 + 8))(v22, v24);
    v19 = 1;
  }

  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  v29 = *(v0 + 200);
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  sub_2527213D8(v28, &qword_27F4FCD98, &qword_2528C6200);
  v26(v29, v19, 1, v27);
  sub_25274AA0C(v29, v28, &qword_27F4FCD98, &qword_2528C6200);
  v30 = *(v0 + 288) + 1;
  if (v30 == *(v0 + 272))
  {
    v31 = *(v0 + 312);
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    v34 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v34, &qword_27F4FCD98, &qword_2528C6200);
    v35 = *(v33 + 48);
    v36 = v35(v34, 1, v32);
    v38 = *(v0 + 240);
    v37 = *(v0 + 248);
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    if (v36 == 1)
    {
      (*(v37 + 16))(v39, *(v0 + 40), *(v0 + 240));
      if (v35(v40, 1, v38) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v37 + 32))(v39, *(v0 + 216), *(v0 + 240));
    }

    v47 = *(v0 + 264);
    v48 = *(v0 + 232);
    v49 = *(v0 + 224);
    v50 = *(v0 + 208);
    v58 = *(v0 + 200);
    v59 = *(v0 + 192);
    v60 = *(v0 + 184);
    v61 = *(v0 + 160);
    v62 = *(v0 + 152);
    v63 = *(v0 + 128);
    v51 = *(v0 + 120);
    v65 = *(v0 + 96);
    v53 = *(v0 + 48);
    v52 = *(v0 + 56);
    (*(v0 + 256))(v49, 0, 1, *(v0 + 240));
    v54 = *(v0 + 16);
    v55 = swift_task_alloc();
    v55[2] = v53;
    v55[3] = v54;
    v55[4] = v49;
    v56 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B21C, v55, v52);

    sub_2527213D8(v48, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v49, &qword_27F4FCD98, &qword_2528C6200);

    v57 = *(v0 + 8);

    return v57(v56);
  }

  else
  {
    *(v0 + 288) = v30;
    v41 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v30;
    v64 = (*(v0 + 64) + **(v0 + 64));
    v42 = *(*(v0 + 64) + 4);
    v43 = swift_task_alloc();
    *(v0 + 296) = v43;
    *v43 = v0;
    v43[1] = sub_252776BD8;
    v44 = *(v0 + 208);
    v45 = *(v0 + 72);

    return v64(v44, v41);
  }
}

uint64_t sub_252777E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_2528BECF0();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = sub_2528BEE30();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v14 = sub_2528BEEC0();
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v16 = *(v15 + 64) + 15;
  v6[19] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF60, &unk_2528C6E10) - 8) + 64) + 15;
  v6[20] = swift_task_alloc();
  v18 = sub_2528BF2B0();
  v6[21] = v18;
  v19 = *(v18 - 8);
  v6[22] = v19;
  v20 = *(v19 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD98, &qword_2528C6200) - 8) + 64) + 15;
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527780E0, 0, 0);
}

uint64_t sub_2527780E0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 32);
  v3 = sub_2528BF400();
  *(v0 + 240) = v3;
  v4 = *(v3 - 8);
  *(v0 + 248) = v4;
  v6 = v4 + 56;
  v5 = *(v4 + 56);
  *(v0 + 256) = v5;
  *(v0 + 264) = v6 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  *(v0 + 16) = sub_25278D310(MEMORY[0x277D84F90]);
  v7 = *(v2 + 16);
  *(v0 + 272) = v7;
  if (v7)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 32);
    v10 = *(sub_2528BFD00() - 8);
    v11 = *(v10 + 80);
    *(v0 + 352) = v11;
    v12 = (v11 + 32) & ~v11;
    v13 = *(v10 + 72);
    *(v0 + 356) = *MEMORY[0x277D159B8];
    *(v0 + 280) = v13;
    *(v0 + 288) = 0;
    v45 = (v8 + *v8);
    v14 = v8[1];
    v15 = swift_task_alloc();
    *(v0 + 296) = v15;
    *v15 = v0;
    v15[1] = sub_25277853C;
    v16 = *(v0 + 208);
    v17 = *(v0 + 72);

    return v45(v16, v9 + v12);
  }

  else
  {
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);
    v21 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v21, &qword_27F4FCD98, &qword_2528C6200);
    v22 = *(v20 + 48);
    v23 = v22(v21, 1, v19);
    v25 = *(v0 + 240);
    v24 = *(v0 + 248);
    v27 = *(v0 + 216);
    v26 = *(v0 + 224);
    if (v23 == 1)
    {
      (*(v24 + 16))(v26, *(v0 + 40), *(v0 + 240));
      if (v22(v27, 1, v25) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v24 + 32))(v26, *(v0 + 216), *(v0 + 240));
    }

    v28 = *(v0 + 264);
    v29 = *(v0 + 232);
    v30 = *(v0 + 224);
    v32 = *(v0 + 200);
    v31 = *(v0 + 208);
    v39 = *(v0 + 192);
    v40 = *(v0 + 184);
    v41 = *(v0 + 160);
    v42 = *(v0 + 152);
    v43 = *(v0 + 128);
    v44 = *(v0 + 120);
    v46 = *(v0 + 96);
    v34 = *(v0 + 48);
    v33 = *(v0 + 56);
    (*(v0 + 256))(v30, 0, 1, *(v0 + 240));
    v35 = *(v0 + 16);
    v36 = swift_task_alloc();
    v36[2] = v34;
    v36[3] = v35;
    v36[4] = v30;
    v37 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B0A4, v36, v33);

    sub_2527213D8(v29, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v30, &qword_27F4FCD98, &qword_2528C6200);

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_25277853C()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_252778A14;
  }

  else
  {
    v3 = sub_252778650;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252778650()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  sub_2527213D8(v1, &qword_27F4FCD98, &qword_2528C6200);
  sub_25274AA0C(v2, v1, &qword_27F4FCD98, &qword_2528C6200);
  v3 = *(v0 + 288) + 1;
  if (v3 == *(v0 + 272))
  {
    v4 = *(v0 + 304);
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v7, &qword_27F4FCD98, &qword_2528C6200);
    v8 = *(v6 + 48);
    v9 = v8(v7, 1, v5);
    v11 = *(v0 + 240);
    v10 = *(v0 + 248);
    v13 = *(v0 + 216);
    v12 = *(v0 + 224);
    if (v9 == 1)
    {
      (*(v10 + 16))(v12, *(v0 + 40), *(v0 + 240));
      if (v8(v13, 1, v11) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v10 + 32))(v12, *(v0 + 216), *(v0 + 240));
    }

    v20 = *(v0 + 264);
    v21 = *(v0 + 232);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);
    v31 = *(v0 + 200);
    v32 = *(v0 + 192);
    v33 = *(v0 + 184);
    v34 = *(v0 + 160);
    v35 = *(v0 + 152);
    v36 = *(v0 + 128);
    v24 = *(v0 + 120);
    v38 = *(v0 + 96);
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    (*(v0 + 256))(v22, 0, 1, *(v0 + 240));
    v27 = *(v0 + 16);
    v28 = swift_task_alloc();
    v28[2] = v26;
    v28[3] = v27;
    v28[4] = v22;
    v29 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B0A4, v28, v25);

    sub_2527213D8(v21, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v22, &qword_27F4FCD98, &qword_2528C6200);

    v30 = *(v0 + 8);

    return v30(v29);
  }

  else
  {
    *(v0 + 288) = v3;
    v14 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v3;
    v37 = (*(v0 + 64) + **(v0 + 64));
    v15 = *(*(v0 + 64) + 4);
    v16 = swift_task_alloc();
    *(v0 + 296) = v16;
    *v16 = v0;
    v16[1] = sub_25277853C;
    v17 = *(v0 + 208);
    v18 = *(v0 + 72);

    return v37(v17, v14);
  }
}

uint64_t sub_252778A14()
{
  v1 = *(v0 + 304);
  *(v0 + 24) = v1;
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC210, &qword_2528C6230);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 356);
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = *(v0 + 160);
    (*(v9 + 56))(v10, 0, 1, v8);
    (*(v9 + 32))(v6, v10, v8);
    (*(v9 + 16))(v7, v6, v8);
    if ((*(v9 + 88))(v7, v8) == v5)
    {
      v11 = *(v0 + 184);
      v12 = *(v0 + 128);
      (*(*(v0 + 176) + 96))(v11, *(v0 + 168));
      sub_25276ECEC(*v11, (v0 + 16));
      *(v0 + 312) = 0;

      v13 = sub_2528C05D0();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
      sub_2528BEFC0();
      v14 = *(MEMORY[0x277D153E8] + 4);
      v15 = swift_task_alloc();
      *(v0 + 320) = v15;
      *v15 = v0;
      v15[1] = sub_252779000;
      v16 = *(v0 + 128);

      return MEMORY[0x28216E990](v16);
    }

    v20 = *(v0 + 304);
    v21 = *(v0 + 184);
    v22 = *(v0 + 168);
    v23 = *(*(v0 + 176) + 8);
    v23(*(v0 + 192), v22);

    v23(v21, v22);
  }

  else
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    v19 = *(v0 + 160);

    (*(v18 + 56))(v19, 1, 1, v17);
    sub_2527213D8(v19, &qword_27F4FCF60, &unk_2528C6E10);
  }

  v24 = *(v0 + 288) + 1;
  if (v24 == *(v0 + 272))
  {
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);
    v27 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v27, &qword_27F4FCD98, &qword_2528C6200);
    v28 = *(v26 + 48);
    v29 = v28(v27, 1, v25);
    v31 = *(v0 + 240);
    v30 = *(v0 + 248);
    v33 = *(v0 + 216);
    v32 = *(v0 + 224);
    if (v29 == 1)
    {
      (*(v30 + 16))(v32, *(v0 + 40), *(v0 + 240));
      if (v28(v33, 1, v31) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v30 + 32))(v32, *(v0 + 216), *(v0 + 240));
    }

    v39 = *(v0 + 264);
    v40 = *(v0 + 232);
    v41 = *(v0 + 224);
    v43 = *(v0 + 200);
    v42 = *(v0 + 208);
    v51 = *(v0 + 192);
    v52 = *(v0 + 184);
    v53 = *(v0 + 160);
    v54 = *(v0 + 152);
    v55 = *(v0 + 128);
    v56 = *(v0 + 120);
    v58 = *(v0 + 96);
    v45 = *(v0 + 48);
    v44 = *(v0 + 56);
    (*(v0 + 256))(v41, 0, 1, *(v0 + 240));
    v46 = *(v0 + 16);
    v47 = swift_task_alloc();
    v47[2] = v45;
    v47[3] = v46;
    v47[4] = v41;
    v48 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B0A4, v47, v44);

    sub_2527213D8(v40, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v41, &qword_27F4FCD98, &qword_2528C6200);

    v49 = *(v0 + 8);

    return v49(v48);
  }

  else
  {
    *(v0 + 288) = v24;
    v34 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v24;
    v57 = (*(v0 + 64) + **(v0 + 64));
    v35 = *(*(v0 + 64) + 4);
    v36 = swift_task_alloc();
    *(v0 + 296) = v36;
    *v36 = v0;
    v36[1] = sub_25277853C;
    v37 = *(v0 + 208);
    v38 = *(v0 + 72);

    return v57(v37, v34);
  }
}

uint64_t sub_252779000(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 320);
  v7 = *v1;
  *(v3 + 328) = a1;

  v5 = swift_task_alloc();
  *(v3 + 336) = v5;
  *v5 = v7;
  v5[1] = sub_25277914C;

  return (sub_25279D1DC)(a1);
}

uint64_t sub_25277914C(uint64_t a1)
{
  v2 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](sub_25277924C, 0, 0);
}

uint64_t sub_25277924C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 40);

  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2528BF2F0();
  sub_2528BEE00();
  (*(v5 + 8))(v2, v4);
  if (*(v1 + 16) && (v8 = *(v0 + 344), v9 = sub_252785C40(*(v0 + 96)), (v10 & 1) != 0))
  {
    v11 = *(v0 + 304);
    v12 = *(v0 + 200);
    v14 = *(v0 + 144);
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    (*(v14 + 16))(v13, *(*(v0 + 344) + 56) + *(v14 + 72) * v9, v15);
    (*(v17 + 8))(v16, v18);

    sub_2528BEE70();

    (*(v14 + 8))(v13, v15);
    v19 = 0;
  }

  else
  {
    v20 = *(v0 + 344);
    v21 = *(v0 + 304);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 80);

    (*(v23 + 8))(v22, v24);
    v19 = 1;
  }

  v26 = *(v0 + 256);
  v25 = *(v0 + 264);
  v28 = *(v0 + 232);
  v27 = *(v0 + 240);
  v29 = *(v0 + 200);
  (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
  sub_2527213D8(v28, &qword_27F4FCD98, &qword_2528C6200);
  v26(v29, v19, 1, v27);
  sub_25274AA0C(v29, v28, &qword_27F4FCD98, &qword_2528C6200);
  v30 = *(v0 + 288) + 1;
  if (v30 == *(v0 + 272))
  {
    v31 = *(v0 + 312);
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    v34 = *(v0 + 216);
    sub_25272006C(*(v0 + 232), v34, &qword_27F4FCD98, &qword_2528C6200);
    v35 = *(v33 + 48);
    v36 = v35(v34, 1, v32);
    v38 = *(v0 + 240);
    v37 = *(v0 + 248);
    v40 = *(v0 + 216);
    v39 = *(v0 + 224);
    if (v36 == 1)
    {
      (*(v37 + 16))(v39, *(v0 + 40), *(v0 + 240));
      if (v35(v40, 1, v38) != 1)
      {
        sub_2527213D8(*(v0 + 216), &qword_27F4FCD98, &qword_2528C6200);
      }
    }

    else
    {
      (*(v37 + 32))(v39, *(v0 + 216), *(v0 + 240));
    }

    v47 = *(v0 + 264);
    v48 = *(v0 + 232);
    v49 = *(v0 + 224);
    v50 = *(v0 + 208);
    v58 = *(v0 + 200);
    v59 = *(v0 + 192);
    v60 = *(v0 + 184);
    v61 = *(v0 + 160);
    v62 = *(v0 + 152);
    v63 = *(v0 + 128);
    v51 = *(v0 + 120);
    v65 = *(v0 + 96);
    v53 = *(v0 + 48);
    v52 = *(v0 + 56);
    (*(v0 + 256))(v49, 0, 1, *(v0 + 240));
    v54 = *(v0 + 16);
    v55 = swift_task_alloc();
    v55[2] = v53;
    v55[3] = v54;
    v55[4] = v49;
    v56 = sub_2527F2ADC(MEMORY[0x277D84F90], sub_25277B0A4, v55, v52);

    sub_2527213D8(v48, &qword_27F4FCD98, &qword_2528C6200);
    sub_2527213D8(v49, &qword_27F4FCD98, &qword_2528C6200);

    v57 = *(v0 + 8);

    return v57(v56);
  }

  else
  {
    *(v0 + 288) = v30;
    v41 = *(v0 + 32) + ((*(v0 + 352) + 32) & ~*(v0 + 352)) + *(v0 + 280) * v30;
    v64 = (*(v0 + 64) + **(v0 + 64));
    v42 = *(*(v0 + 64) + 4);
    v43 = swift_task_alloc();
    *(v0 + 296) = v43;
    *v43 = v0;
    v43[1] = sub_25277853C;
    v44 = *(v0 + 208);
    v45 = *(v0 + 72);

    return v64(v44, v41);
  }
}

uint64_t sub_252779784@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD00, &unk_2528C6A90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - v5;
  sub_2527FECD0(&v48, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD08, &unk_2528C5B90);
  v8 = sub_252755F54();
  MEMORY[0x2530A60E0](&v34, &v48, v7, &type metadata for DeviceEntityFromAccessoryTypeResolver, v8);
  v41[4] = v52;
  v41[5] = v53;
  v41[6] = v54;
  v41[0] = v48;
  v41[1] = v49;
  v41[2] = v50;
  v41[3] = v51;
  v9 = sub_252755FA8(v41);
  sub_2527FECD0(&v48, v9);
  v10 = sub_252755FFC();
  MEMORY[0x2530A60E0](&v27, &v48, v7, &type metadata for DeviceEntityFromInputTypeResolver, v10);
  v42[4] = v52;
  v42[5] = v53;
  v42[6] = v54;
  v42[0] = v48;
  v42[1] = v49;
  v42[2] = v50;
  v42[3] = v51;
  sub_252756050(v42);
  v43[4] = v38;
  v43[5] = v39;
  v43[6] = v40;
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = v36;
  v43[3] = v37;
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v23 = v37;
  sub_2527560A4(v43, &v48);
  sub_252756100();
  sub_2528BEAA0();
  v44[4] = v24;
  v44[5] = v25;
  v44[6] = v26;
  v44[0] = v20;
  v44[1] = v21;
  v44[2] = v22;
  v44[3] = v23;
  sub_252755FA8(v44);
  v45[4] = v31;
  v45[5] = v32;
  v45[6] = v33;
  v45[0] = v27;
  v45[1] = v28;
  v45[2] = v29;
  v45[3] = v30;
  v17 = v31;
  v18 = v32;
  v19 = v33;
  v13 = v27;
  v14 = v28;
  v15 = v29;
  v16 = v30;
  sub_2527561B4(v45, &v48);
  v12[2] = v8;
  v12[3] = &type metadata for DeviceEntityFromAccessoryTypeResolver;
  sub_2528BEA90();
  v46[4] = v17;
  v46[5] = v18;
  v46[6] = v19;
  v46[0] = v13;
  v46[1] = v14;
  v46[3] = v16;
  v46[2] = v15;
  sub_252756050(v46);
  (*(v2 + 8))(v6, v1);
  v47[4] = v31;
  v47[5] = v32;
  v47[6] = v33;
  v47[0] = v27;
  v47[1] = v28;
  v47[3] = v30;
  v47[2] = v29;
  sub_252756050(v47);
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  return sub_252755FA8(&v48);
}

uint64_t sub_252779AB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD78, &qword_2528C5C90);
  v1 = sub_252756318();
  MEMORY[0x2530A60E0](&v4, &v3, v0, &type metadata for ZoneEntityFromNameResolver, v1);

  v3 = v4;
  sub_25275636C();
  sub_2528BEAA0();
}

uint64_t sub_252779B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD30, &unk_2528CF3D0);
  swift_getKeyPath();
  v0 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD38, &qword_2528C5BC8);
  swift_getKeyPath();
  v1 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD40, &unk_2528CF3E0);
  swift_getKeyPath();
  v2 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD48, &qword_2528C5C28);
  swift_getKeyPath();
  v3 = sub_2528BE9C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD50, &qword_2528CF3F0);
  swift_getKeyPath();
  v7 = v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = sub_2528BE9C0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCD58, &qword_2528C5C88);
  v5 = sub_252756210();
  MEMORY[0x2530A60E0](v12, &v7, v4, &type metadata for RoomEntityFromNameResolver, v5);

  v7 = v12[0];
  v8 = v12[1];
  v9 = v12[2];
  v10 = v12[3];
  v11 = v12[4];
  sub_252756264();
  sub_2528BEAA0();
}

double sub_252779D90(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v26[0] = *a1;
  v26[1] = v4;
  v27 = *(a1 + 32);
  sub_252870158(&v25);
  if (!sub_25277B234(v25, &unk_286493C58))
  {
    sub_252760E08(a1, v26);
    v16 = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_252737E74((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v15 = &v16[40 * v18];
    goto LABEL_11;
  }

  if (a2 > 0)
  {
    v6 = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    v9 = v8 + 1;
    if (v8 >= v7 >> 1)
    {
      v6 = sub_252737E74((v7 > 1), v8 + 1, 1, v6);
    }

    *(v6 + 2) = v9;
    v10 = &v6[40 * v8];
    *(v10 + 4) = 1;
    *(v10 + 5) = 0;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0;
    v10[64] = 88;
    v11 = v6;
    sub_252760E08(a1, v26);
    v12 = v11;
    v13 = *(v11 + 3);
    v14 = v8 + 2;
    if (v14 > (v13 >> 1))
    {
      v12 = sub_252737E74((v13 > 1), v14, 1, v11);
    }

    *(v12 + 2) = v14;
    v15 = &v12[40 * v9];
LABEL_11:
    v5 = *a1;
    v19 = *(a1 + 16);
    v15[64] = *(a1 + 32);
    *(v15 + 2) = v5;
    *(v15 + 3) = v19;
    return *&v5;
  }

  if (!a2)
  {
    v20 = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    if (v22 >= v21 >> 1)
    {
      v20 = sub_252737E74((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[40 * v22];
    *&v5 = 0;
    *(v23 + 2) = 0u;
    *(v23 + 3) = 0u;
    v23[64] = 88;
  }

  return *&v5;
}

char *sub_252779FA0(uint64_t a1, double a2)
{
  v4 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v4;
  v24 = *(a1 + 32);
  sub_252870158(&v22);
  if (!sub_25277B234(v22, &unk_286493C80))
  {
    sub_252760E08(a1, v23);
    result = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(result + 2);
    v15 = *(result + 3);
    if (v16 >= v15 >> 1)
    {
      result = sub_252737E74((v15 > 1), v16 + 1, 1, result);
    }

    *(result + 2) = v16 + 1;
    v14 = &result[40 * v16];
    goto LABEL_11;
  }

  if (a2 > 0.0)
  {
    v5 = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v8 = v7 + 1;
    if (v7 >= v6 >> 1)
    {
      v5 = sub_252737E74((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v8;
    v9 = &v5[40 * v7];
    *(v9 + 4) = 1;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *(v9 + 7) = 0;
    v9[64] = 88;
    v10 = v5;
    sub_252760E08(a1, v23);
    result = v10;
    v12 = *(v10 + 3);
    v13 = v7 + 2;
    if ((v7 + 2) > (v12 >> 1))
    {
      result = sub_252737E74((v12 > 1), v7 + 2, 1, v10);
      v13 = v7 + 2;
    }

    *(result + 2) = v13;
    v14 = &result[40 * v8];
LABEL_11:
    v17 = *a1;
    v18 = *(a1 + 16);
    v14[64] = *(a1 + 32);
    *(v14 + 2) = v17;
    *(v14 + 3) = v18;
    return result;
  }

  if (a2 != 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_252737E74(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = *(result + 2);
  v19 = *(result + 3);
  if (v20 >= v19 >> 1)
  {
    result = sub_252737E74((v19 > 1), v20 + 1, 1, result);
  }

  *(result + 2) = v20 + 1;
  v21 = &result[40 * v20];
  *(v21 + 2) = 0u;
  *(v21 + 3) = 0u;
  v21[64] = 88;
  return result;
}

uint64_t sub_25277A1C0@<X0>(uint64_t *a1@<X8>)
{
  v75 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC78, &unk_2528C5B30);
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = *(v73 + 64);
  MEMORY[0x28223BE20](v1);
  v72 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = &v63 - v6;
  v88 = sub_2528BE950();
  v7 = *(v88 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v88);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC80, &unk_2528C6080);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v77 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v63 - v19;
  v21 = sub_2528BEC40();
  v79 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF48, &qword_2528C6CC8);
  sub_2528BEC20();
  v85 = *(v22 + 56);
  v85(v20, 1, 1, v21);
  v84 = v22 + 56;
  v26 = sub_2528BE630();
  v27 = *(v26 - 8);
  v87 = *(v27 + 56);
  v83 = v27 + 56;
  v87(v16, 1, 1, v26);
  v80 = *MEMORY[0x277CBA308];
  v28 = *(v7 + 104);
  v81 = v7 + 104;
  v86 = v28;
  v29 = v88;
  (v28)(v10);
  sub_2527604A4();
  v78 = v25;
  v30 = v20;
  v71 = sub_2528BE7C0();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCF50, &unk_2528C6CD0);
  sub_2528BEC20();
  v31 = v79;
  v85(v20, 1, 1, v79);
  LOBYTE(v89) = 2;
  v82 = v26;
  v32 = v87;
  v87(v16, 1, 1, v26);
  v33 = v77;
  v32(v77, 1, 1, v26);
  v63 = v10;
  v34 = v80;
  v86(v10, v80, v29);
  sub_25277AE58();
  v76 = v30;
  v35 = v33;
  v70 = sub_2528BE7D0();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCD8, &qword_2528C5B68);
  sub_2528BEC20();
  v85(v30, 1, 1, v31);
  v93 = 0;
  v36 = v82;
  v37 = v87;
  v87(v16, 1, 1, v82);
  v38 = v35;
  v37(v35, 1, 1, v36);
  v39 = v63;
  v86(v63, v34, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCE0, &unk_2528C5B70);
  v67 = MEMORY[0x277CBA480];
  sub_25272275C(&qword_27F4FCCE8, &qword_27F4FCCE0, &unk_2528C5B70);
  sub_25276926C(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v40 = v76;
  v68 = sub_2528BE7E0();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC88, &unk_2528C5B40);
  sub_2528BEC20();
  v41 = v40;
  v42 = v85;
  v85(v41, 1, 1, v31);
  v43 = type metadata accessor for HomeEntity(0);
  (*(*(v43 - 8) + 56))(v69, 1, 1, v43);
  v44 = v16;
  v45 = v82;
  v46 = v87;
  v87(v16, 1, 1, v82);
  v46(v38, 1, 1, v45);
  v47 = v39;
  v48 = v80;
  v49 = v86;
  v86(v39, v80, v88);
  sub_25276926C(&qword_27F4FCC90, type metadata accessor for HomeEntity);
  v50 = v76;
  v64 = v44;
  v69 = sub_2528BE7F0();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCC98, &unk_2528C60A0);
  sub_2528BEC20();
  v42(v50, 1, 1, v79);
  v92 = 0;
  v51 = v44;
  v52 = v82;
  v53 = v87;
  v87(v51, 1, 1, v82);
  v53(v38, 1, 1, v52);
  v49(v47, v48, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCA0, &unk_2528C5B50);
  sub_25272275C(&qword_27F4FCCA8, &qword_27F4FCCA0, &unk_2528C5B50);
  sub_25276926C(&qword_27F4FCCB0, type metadata accessor for ZoneEntity);
  v54 = v64;
  v66 = sub_2528BE7E0();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCB8, &unk_2528C60B0);
  sub_2528BEC20();
  v55 = v79;
  v85(v50, 1, 1, v79);
  v91 = 0;
  v56 = v82;
  v57 = v87;
  v87(v54, 1, 1, v82);
  v57(v38, 1, 1, v56);
  v86(v47, v80, v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCC0, &qword_2528C5B60);
  sub_25272275C(&qword_27F4FCCC8, &qword_27F4FCCC0, &qword_2528C5B60);
  sub_25276926C(&qword_27F4FCCD0, type metadata accessor for RoomEntity);
  v58 = sub_2528BE7E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCCF8, &unk_2528C5B80);
  sub_2528BEC20();
  v85(v50, 1, 1, v55);
  v89 = 0;
  v90 = 1;
  v87(v54, 1, 1, v82);
  (*(v73 + 104))(v72, *MEMORY[0x277CB9ED0], v74);
  v86(v47, v80, v88);
  result = sub_2528BE820();
  v60 = v75;
  v61 = v70;
  *v75 = v71;
  v60[1] = v61;
  v62 = v69;
  v60[2] = v68;
  v60[3] = v62;
  v60[4] = v66;
  v60[5] = v58;
  v60[6] = result;
  v60[7] = &unk_286493CD0;
  return result;
}

unint64_t sub_25277AE58()
{
  result = qword_27F4FCF58;
  if (!qword_27F4FCF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCF58);
  }

  return result;
}

uint64_t sub_25277AEAC(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25271F3AC;

  return sub_252774DE8(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_25277AFD8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25271F3AC;

  return sub_252799C24(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_25277B0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (!a6)
  {
    return sub_252760C18(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_25277B120(uint64_t a1)
{
  v4 = *(sub_2528BF400() - 8);
  v5 = (*(v4 + 80) + 104) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2527228B0;

  return sub_252775248(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

BOOL sub_25277B234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v12 = *v3;
    v7 = AttributeKind.rawValue.getter();
    v9 = v8;
    if (v7 == AttributeKind.rawValue.getter() && v9 == v10)
    {

      return v5 != 0;
    }

    v4 = sub_2528C1060();

    ++v3;
  }

  while ((v4 & 1) == 0);
  return v5 != 0;
}

BOOL sub_25277B310(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_2528BECF0() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_2527810F4(&qword_27F4FC680, MEMORY[0x277CC95F0]);
  }

  while ((sub_2528C0930() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_25277B41C(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_2528BECF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v33 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD068, &qword_2528C7498);
  v11 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    sub_25272006C(v16, v13, &qword_27F4FC628, &qword_2528C4750);
    sub_25272006C(v32, &v13[v19], &qword_27F4FC628, &qword_2528C4750);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_25272006C(v13, v33, &qword_27F4FC628, &qword_2528C4750);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    sub_2527810F4(&qword_27F4FC680, MEMORY[0x277CC95F0]);
    v29 = sub_2528C0930();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    sub_2527213D8(v13, &qword_27F4FC628, &qword_2528C4750);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    sub_2527213D8(v13, &qword_27F4FD068, &qword_2528C7498);
    goto LABEL_5;
  }

  sub_2527213D8(v13, &qword_27F4FC628, &qword_2528C4750);
  return 1;
}

uint64_t HomeEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeEntity.id.setter(uint64_t a1)
{
  v3 = sub_2528BECF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HomeEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_2528BEC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_2528C09B0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  v14 = *(v0 + *(type metadata accessor for HomeEntity(0) + 20));
  sub_2528BE6B0();
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = sub_2528BE8D0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_2528BE900();
}

uint64_t sub_25277BB6C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F4FCF70);
  __swift_project_value_buffer(v0, qword_27F4FCF70);
  return sub_2528BE9D0();
}

uint64_t static HomeEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB680 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCF70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HomeEntity.init(name:id:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_2528BEC40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *(type metadata accessor for HomeEntity(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *(a2 + v6) = sub_2528BE730();
  v7 = sub_2528BECF0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2, a1, v7);
  sub_2528BE6C0();
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_25277BDC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB680 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FCF70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_25277BE70(uint64_t a1)
{
  v2 = sub_2527810F4(&qword_27F4FCC90, type metadata accessor for HomeEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25277BEF0(uint64_t a1)
{
  v2 = sub_2527810F4(&qword_27F4FCFB8, type metadata accessor for HomeEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t HomeEntityQuery.entities(for:)(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_2528C0830();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = sub_2528C07F0();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v7 = *(v6 + 64) + 15;
  v1[10] = swift_task_alloc();
  v8 = *(*(sub_2528BEC40() - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v9 = sub_2528BECF0();
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v13 = type metadata accessor for HomeEntity(0);
  v1[18] = v13;
  v14 = *(v13 - 8);
  v1[19] = v14;
  v15 = *(v14 + 64) + 15;
  v1[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25277C1BC, 0, 0);
}

uint64_t sub_25277C1BC()
{
  v23 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_2528C08B0();
  v0[21] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x2530A81A0](v6, v5);
    v11 = sub_2527389AC(v9, v10, v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_252711000, v3, v4, "Query: Searching for homes with identifiers: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  v12 = v0[12];
  v13 = v0[4];
  strcpy(v22, "identifiers: ");
  HIWORD(v22[1]) = -4864;
  v14 = MEMORY[0x2530A81A0](v13, v12);
  MEMORY[0x2530A80B0](v14);

  v15 = v22[0];
  v16 = v22[1];
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v17 = sub_2528C0820();
  v18 = __swift_project_value_buffer(v17, qword_27F5025E0);
  v0[22] = v18;

  v0[23] = sub_2528B91C4(2u, 0, v18, v15, v16);
  swift_bridgeObjectRelease_n();
  sub_2528BEFC0();
  v19 = *(MEMORY[0x277D15430] + 4);
  v20 = swift_task_alloc();
  v0[24] = v20;
  *v20 = v0;
  v20[1] = sub_25277C464;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25277C464(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_25277C564, 0, 0);
}

uint64_t sub_25277C564()
{
  sub_2528C0C20();
  *(v0 + 208) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25277C5F8, v2, v1);
}

uint64_t sub_25277C5F8()
{
  v2 = v0[25];
  v1 = v0[26];

  v0[27] = [v2 sortedHomes];

  return MEMORY[0x2822009F8](sub_25277C680, 0, 0);
}

uint64_t sub_25277C680()
{
  v102 = v0;
  v1 = v0[27];
  sub_252760B90();
  v2 = sub_2528C0B30();

  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v2; v3; i = v2)
  {
    v4 = 0;
    v5 = v0[19];
    v82 = v0[18];
    v6 = v0[13];
    v95 = v2 & 0xFFFFFFFFFFFFFF8;
    v96 = v2 & 0xC000000000000001;
    v89 = v2 + 32;
    v92 = (v5 + 56);
    v93 = (v6 + 8);
    v83 = v5;
    v91 = (v5 + 48);
    v7 = MEMORY[0x277D84F90];
    v90 = v0[4];
    v94 = v3;
    while (1)
    {
      v98 = v7;
      if (v96)
      {
        v8 = MEMORY[0x2530A84E0](v4, i);
      }

      else
      {
        if (v4 >= *(v95 + 16))
        {
          goto LABEL_23;
        }

        v8 = *(v89 + 8 * v4);
      }

      v9 = v8;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v11 = v0[15];
      v12 = [v8 uniqueIdentifier];
      sub_2528BECD0();

      v13 = 0;
      v14 = *(v90 + 16);
      while (1)
      {
        v15 = v0[15];
        v16 = v0[12];
        if (v14 == v13)
        {
          break;
        }

        v17 = v13 + 1;
        v18 = v0[4] + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13;
        sub_2527810F4(&qword_27F4FC680, MEMORY[0x277CC95F0]);
        v19 = sub_2528C0930();
        v13 = v17;
        if (v19)
        {
          v20 = v0[14];
          v21 = v0[12];
          v86 = v21;
          v87 = v0[16];
          v88 = *v93;
          (*v93)(v0[15]);
          v22 = [v9 name];
          v23 = sub_2528C09F0();
          v84 = v24;
          v85 = v23;

          v25 = [v9 uniqueIdentifier];
          sub_2528BECD0();

          v26 = *(v82 + 20);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
          sub_2528BEC20();
          *(v87 + v26) = sub_2528BE730();
          (*(v6 + 16))();
          v0[2] = v85;
          v0[3] = v84;
          sub_2528BE6C0();

          v88(v20, v86);
          v27 = 0;
          goto LABEL_15;
        }
      }

      (*v93)(v0[15], v0[12]);

      v27 = 1;
LABEL_15:
      v2 = v0[17];
      v28 = v0[18];
      v29 = v0[16];
      (*v92)(v29, v27, 1, v28);
      sub_25274AA0C(v29, v2, &qword_27F4FC488, &unk_2528C3F80);
      v7 = v98;
      if ((*v91)(v2, 1, v28) == 1)
      {
        sub_2527213D8(v0[17], &qword_27F4FC488, &unk_2528C3F80);
      }

      else
      {
        sub_252782788(v0[17], v0[20], type metadata accessor for HomeEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2527382A4(0, v98[2] + 1, 1, v98);
        }

        v2 = v7[2];
        v30 = v7[3];
        if (v2 >= v30 >> 1)
        {
          v7 = sub_2527382A4(v30 > 1, v2 + 1, 1, v7);
        }

        v31 = v0[20];
        v7[2] = v2 + 1;
        sub_252782788(v31, v7 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v2, type metadata accessor for HomeEntity);
      }

      if (v4 == v94)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v3 = sub_2528C0EF0();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_26:
  v33 = v0[22];
  v32 = v0[23];
  v34 = v0[10];

  v35 = sub_2528C0810();
  sub_2528C0840();
  v36 = sub_2528C0D30();
  if (sub_2528C0D90())
  {
    v37 = v0[23];
    v39 = v0[6];
    v38 = v0[7];
    v40 = v0[5];
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v39 + 88))(v38, v40) == *MEMORY[0x277D85B00])
    {
      v41 = 0;
      v97 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[6] + 8))(v0[7], v0[5]);
      v97 = "%s: Found %s";
      v41 = 2;
    }

    v46 = v0[9];
    v45 = v0[10];
    v99 = v0[8];
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v101 = v48;
    *v47 = v41;
    *(v47 + 1) = v41;
    *(v47 + 2) = 2080;
    *(v47 + 4) = sub_2527389AC(0x69746E45656D6F68, 0xEA00000000007974, &v101);
    *(v47 + 12) = 2080;
    v49 = sub_25277DDA8(v7);
    v51 = v7;
    v52 = sub_2527389AC(v49, v50, &v101);

    *(v47 + 14) = v52;
    v7 = v51;
    v53 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v35, v36, v53, "HomeAppIntentQuery", v97, v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v48, -1, -1);
    MEMORY[0x2530A8D80](v47, -1, -1);

    (*(v46 + 8))(v45, v99);
  }

  else
  {
    v43 = v0[9];
    v42 = v0[10];
    v44 = v0[8];

    (*(v43 + 8))(v42, v44);
  }

  v54 = v0[21];
  v55 = v0[4];

  v56 = sub_2528C0890();
  v57 = sub_2528C0D10();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v0[23];
  if (v58)
  {
    v60 = v0[18];
    v100 = v0[12];
    v61 = v0[4];
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v101 = v63;
    *v62 = 136315394;
    v64 = MEMORY[0x2530A81A0](v7, v60);
    v66 = v7;
    v67 = sub_2527389AC(v64, v65, &v101);

    *(v62 + 4) = v67;
    v7 = v66;
    *(v62 + 12) = 2080;
    v68 = MEMORY[0x2530A81A0](v61, v100);
    v70 = sub_2527389AC(v68, v69, &v101);

    *(v62 + 14) = v70;
    _os_log_impl(&dword_252711000, v56, v57, "Query: Found homeEntities: %s for identifiers: %s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v63, -1, -1);
    MEMORY[0x2530A8D80](v62, -1, -1);
  }

  v71 = v0[20];
  v72 = v0[16];
  v73 = v0[17];
  v75 = v0[14];
  v74 = v0[15];
  v77 = v0[10];
  v76 = v0[11];
  v78 = v0[7];

  v79 = v0[1];

  return v79(v7);
}

uint64_t HomeEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2528C0830();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_2528C07F0();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = *(*(sub_2528BEC40() - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_2528BECF0();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v14 = type metadata accessor for HomeEntity(0);
  v2[18] = v14;
  v15 = *(v14 - 8);
  v2[19] = v15;
  v16 = *(v15 + 64) + 15;
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25277D148, 0, 0);
}

uint64_t sub_25277D148()
{
  v20 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_2528C08B0();
  v0[21] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2527389AC(v6, v5, &v18);
    _os_log_impl(&dword_252711000, v3, v4, "Query: Searching for homes with string: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  v9 = v0[4];
  v10 = v0[5];
  v18 = 0x203A676E69727473;
  v19 = 0xE800000000000000;
  MEMORY[0x2530A80B0](v9, v10);
  v11 = v18;
  v12 = v19;
  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v13 = sub_2528C0820();
  v14 = __swift_project_value_buffer(v13, qword_27F5025E0);
  v0[22] = v14;

  v0[23] = sub_2528B91C4(2u, 0, v14, v11, v12);
  swift_bridgeObjectRelease_n();
  sub_2528BEFC0();
  v15 = *(MEMORY[0x277D15430] + 4);
  v16 = swift_task_alloc();
  v0[24] = v16;
  *v16 = v0;
  v16[1] = sub_25277D3B8;

  return MEMORY[0x28216EA40]();
}

uint64_t sub_25277D3B8(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](sub_25277D4B8, 0, 0);
}

uint64_t sub_25277D4B8()
{
  sub_2528C0C20();
  *(v0 + 208) = sub_2528C0C10();
  v2 = sub_2528C0BD0();

  return MEMORY[0x2822009F8](sub_25277D54C, v2, v1);
}

uint64_t sub_25277D54C()
{
  v2 = v0[25];
  v1 = v0[26];

  v0[27] = [v2 sortedHomes];

  return MEMORY[0x2822009F8](sub_25277D5D4, 0, 0);
}

uint64_t sub_25277D5D4()
{
  v100 = v0;
  v1 = v0[27];
  sub_252760B90();
  v2 = sub_2528C0B30();

  if (v2 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2528C0EF0())
  {
    v4 = 0;
    v5 = v0[19];
    v6 = v0[14];
    v91 = v2 & 0xC000000000000001;
    v90 = v2 & 0xFFFFFFFFFFFFFF8;
    v88 = (v5 + 56);
    v85 = (v6 + 16);
    v86 = v0[18];
    v83 = v5;
    v84 = (v6 + 8);
    v87 = (v5 + 48);
    v7 = MEMORY[0x277D84F90];
    v89 = i;
    while (1)
    {
      if (v91)
      {
        v8 = MEMORY[0x2530A84E0](v4, v2);
      }

      else
      {
        if (v4 >= *(v90 + 16))
        {
          goto LABEL_26;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v96 = v4 + 1;
      v11 = v0[4];
      v10 = v0[5];
      v12 = [v8 name];
      v13 = sub_2528C09F0();
      v15 = v14;

      if (v13 == v11 && v15 == v10)
      {

LABEL_17:
        formata = v7;
        v21 = v0[15];
        v22 = v0[16];
        v23 = v0[12];
        v24 = v0[13];
        v25 = v2;
        v26 = [v9 name];
        v27 = sub_2528C09F0();
        v92 = v28;
        v93 = v27;

        v29 = [v9 uniqueIdentifier];
        sub_2528BECD0();

        v30 = *(v86 + 20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
        sub_2528BEC20();
        v2 = v25;
        *(v22 + v30) = sub_2528BE730();
        v31 = v22;
        v7 = formata;
        (*v85)(v31, v21, v24);
        v0[2] = v93;
        v0[3] = v92;
        sub_2528BE6C0();

        (*v84)(v21, v24);
        v20 = 0;
        goto LABEL_18;
      }

      v17 = v0[4];
      v18 = v0[5];
      v19 = sub_2528C1060();

      if (v19)
      {
        goto LABEL_17;
      }

      v20 = 1;
LABEL_18:
      v32 = v0[17];
      v33 = v0[18];
      v34 = v0[16];
      (*v88)(v34, v20, 1, v33);
      sub_25274AA0C(v34, v32, &qword_27F4FC488, &unk_2528C3F80);
      if ((*v87)(v32, 1, v33) == 1)
      {
        sub_2527213D8(v0[17], &qword_27F4FC488, &unk_2528C3F80);
      }

      else
      {
        sub_252782788(v0[17], v0[20], type metadata accessor for HomeEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2527382A4(0, *(v7 + 2) + 1, 1, v7);
        }

        v36 = *(v7 + 2);
        v35 = *(v7 + 3);
        if (v36 >= v35 >> 1)
        {
          v7 = sub_2527382A4(v35 > 1, v36 + 1, 1, v7);
        }

        v37 = v0[20];
        *(v7 + 2) = v36 + 1;
        sub_252782788(v37, &v7[((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v36], type metadata accessor for HomeEntity);
      }

      ++v4;
      if (v96 == v89)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_29:
  v39 = v0[22];
  v38 = v0[23];
  v40 = v0[11];

  v41 = sub_2528C0810();
  sub_2528C0840();
  v42 = sub_2528C0D30();
  if (sub_2528C0D90())
  {
    v43 = v0[23];
    v45 = v0[7];
    v44 = v0[8];
    v46 = v0[6];
    sub_2528BEA50();
    sub_2528C0870();

    if ((*(v45 + 88))(v44, v46) == *MEMORY[0x277D85B00])
    {
      v47 = 0;
      format = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[7] + 8))(v0[8], v0[6]);
      format = "%s: Found %s";
      v47 = 2;
    }

    v52 = v0[10];
    v51 = v0[11];
    v97 = v0[9];
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v99 = v54;
    *v53 = v47;
    *(v53 + 1) = v47;
    *(v53 + 2) = 2080;
    *(v53 + 4) = sub_2527389AC(0x69746E45656D6F68, 0xEA00000000007974, &v99);
    *(v53 + 12) = 2080;
    v55 = sub_25277DDA8(v7);
    v57 = v7;
    v58 = sub_2527389AC(v55, v56, &v99);

    *(v53 + 14) = v58;
    v7 = v57;
    v59 = sub_2528C07D0();
    _os_signpost_emit_with_name_impl(&dword_252711000, v41, v42, v59, "HomeAppIntentQuery", format, v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v54, -1, -1);
    MEMORY[0x2530A8D80](v53, -1, -1);

    (*(v52 + 8))(v51, v97);
  }

  else
  {
    v49 = v0[10];
    v48 = v0[11];
    v50 = v0[9];

    (*(v49 + 8))(v48, v50);
  }

  v60 = v0[21];
  v61 = v0[5];

  v62 = sub_2528C0890();
  v63 = sub_2528C0D10();

  v64 = os_log_type_enabled(v62, v63);
  v65 = v0[23];
  if (v64)
  {
    v66 = v0[18];
    v67 = v0[4];
    v98 = v0[5];
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v99 = v69;
    *v68 = 136315394;
    v70 = MEMORY[0x2530A81A0](v7, v66);
    v72 = v7;
    v73 = sub_2527389AC(v70, v71, &v99);

    *(v68 + 4) = v73;
    v7 = v72;
    *(v68 + 12) = 2080;
    *(v68 + 14) = sub_2527389AC(v67, v98, &v99);
    _os_log_impl(&dword_252711000, v62, v63, "Query: Found homeEntities: %s for string: %s", v68, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v69, -1, -1);
    MEMORY[0x2530A8D80](v68, -1, -1);
  }

  v74 = v0[20];
  v75 = v0[16];
  v76 = v0[17];
  v77 = v0[15];
  v79 = v0[11];
  v78 = v0[12];
  v80 = v0[8];

  v81 = v0[1];

  return v81(v7);
}

uint64_t sub_25277DDA8(uint64_t a1)
{
  v19[0] = type metadata accessor for HomeEntity(0);
  v2 = *(v19[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19[0]);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2528C0880() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v20 = MEMORY[0x277D84F90];
    sub_25282EFBC(0, v6, 0);
    v7 = v20;
    v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_252782854(v8, v5, type metadata accessor for HomeEntity);
      v10 = *&v5[*(v19[0] + 20)];
      sub_2528BE6B0();
      MEMORY[0x2530A80B0](40, 0xE100000000000000);
      sub_2528BECF0();
      sub_2527810F4(&qword_27F4FD070, MEMORY[0x277CC95F0]);
      v11 = sub_2528C1040();
      MEMORY[0x2530A80B0](v11);

      MEMORY[0x2530A80B0](41, 0xE100000000000000);
      v13 = v19[1];
      v12 = v19[2];
      sub_2527828BC(v5, type metadata accessor for HomeEntity);
      v20 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_25282EFBC((v14 > 1), v15 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v18 = MEMORY[0x2530A81A0](v7, MEMORY[0x277D837D0]);

  return v18;
}

uint64_t sub_25277E004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return HomeEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_25277E0A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25274BC70;

  return HomeEntityQuery.entities(for:)(a1);
}

uint64_t sub_25277E138(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2527811CC();
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_25277E1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25271F3AC;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_25277E2A0()
{
  v1 = sub_2528C00D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_2528C1130();
  sub_2528BF400();
  sub_2527810F4(&qword_27F4FD030, MEMORY[0x277D15A58]);
  sub_2528C0910();
  v10 = type metadata accessor for HomeEntity.SnapshotPair(0);
  sub_25272006C(v0 + *(v10 + 20), v9, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_2528C1150();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_2528C1150();
    sub_2527810F4(&qword_27F4FD038, MEMORY[0x277D16528]);
    sub_2528C0910();
    (*(v2 + 8))(v5, v1);
  }

  return sub_2528C1180();
}

uint64_t sub_25277E4F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C00D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_2528BF400();
  sub_2527810F4(&qword_27F4FD030, MEMORY[0x277D15A58]);
  sub_2528C0910();
  sub_25272006C(v2 + *(a2 + 20), v12, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return sub_2528C1150();
  }

  (*(v5 + 32))(v8, v12, v4);
  sub_2528C1150();
  sub_2527810F4(&qword_27F4FD038, MEMORY[0x277D16528]);
  sub_2528C0910();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_25277E734(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C00D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v14 - v11;
  sub_2528C1130();
  sub_2528BF400();
  sub_2527810F4(&qword_27F4FD030, MEMORY[0x277D15A58]);
  sub_2528C0910();
  sub_25272006C(v2 + *(a2 + 20), v12, &qword_27F4FCDB8, &unk_2528C5CC0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_2528C1150();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_2528C1150();
    sub_2527810F4(&qword_27F4FD038, MEMORY[0x277D16528]);
    sub_2528C0910();
    (*(v5 + 8))(v8, v4);
  }

  return sub_2528C1180();
}

BOOL sub_25277E990(uint64_t a1, uint64_t a2)
{
  v4 = sub_2528C00D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDB8, &unk_2528C5CC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD040, &qword_2528C7478);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - v15;
  if ((MEMORY[0x2530A6A20](a1, a2) & 1) == 0)
  {
    return 0;
  }

  v25 = v8;
  v17 = *(type metadata accessor for HomeEntity.SnapshotPair(0) + 20);
  v18 = *(v13 + 48);
  sub_25272006C(a1 + v17, v16, &qword_27F4FCDB8, &unk_2528C5CC0);
  sub_25272006C(a2 + v17, &v16[v18], &qword_27F4FCDB8, &unk_2528C5CC0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_2527213D8(v16, &qword_27F4FCDB8, &unk_2528C5CC0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_25272006C(v16, v12, &qword_27F4FCDB8, &unk_2528C5CC0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_2527213D8(v16, &qword_27F4FD040, &qword_2528C7478);
    return 0;
  }

  v21 = v25;
  (*(v5 + 32))(v25, &v16[v18], v4);
  sub_2527810F4(&qword_27F4FD048, MEMORY[0x277D16528]);
  v22 = sub_2528C0930();
  v23 = *(v5 + 8);
  v23(v21, v4);
  v23(v12, v4);
  sub_2527213D8(v16, &qword_27F4FCDB8, &unk_2528C5CC0);
  return (v22 & 1) != 0;
}

uint64_t sub_25277ECE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a4;
  *(v4 + 416) = a3;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD078, &qword_2528C74A8) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD080, &qword_2528C74B0) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v7 = sub_2528BEE30();
  *(v4 + 64) = v7;
  v8 = *(v7 - 8);
  *(v4 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDC0, &unk_2528C5CD0);
  *(v4 + 88) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v12 = type metadata accessor for HomeEntity.SnapshotPair(0);
  *(v4 + 128) = v12;
  v13 = *(v12 - 8);
  *(v4 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v15 = sub_2528BEEC0();
  *(v4 + 184) = v15;
  v16 = *(v15 - 8);
  *(v4 + 192) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  v18 = type metadata accessor for DeviceEntity();
  *(v4 + 232) = v18;
  v19 = *(v18 - 8);
  *(v4 + 240) = v19;
  v20 = *(v19 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  v21 = sub_2528BECF0();
  *(v4 + 256) = v21;
  v22 = *(v21 - 8);
  *(v4 + 264) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  v24 = type metadata accessor for HomeEntity(0);
  *(v4 + 328) = v24;
  v25 = *(v24 - 8);
  *(v4 + 336) = v25;
  v26 = *(v25 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  *(v4 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25277F16C, 0, 0);
}

uint64_t sub_25277F16C()
{
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];
  sub_25272006C(v0[2], v1, &qword_27F4FC488, &unk_2528C3F80);
  v4 = *(v3 + 48);
  v0[47] = v4;
  v0[48] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    sub_2527213D8(v0[45], &qword_27F4FC488, &unk_2528C3F80);
    v5 = 1;
  }

  else
  {
    v6 = v0[45];
    (*(v0[33] + 16))(v0[46], v6, v0[32]);
    sub_2527828BC(v6, type metadata accessor for HomeEntity);
    v5 = 0;
  }

  (*(v0[33] + 56))(v0[46], v5, 1, v0[32]);
  v7 = swift_task_alloc();
  v0[49] = v7;
  *v7 = v0;
  v7[1] = sub_25277F2EC;
  v8 = v0[46];
  v9 = v0[4];

  return sub_25279E2F8(v9, v8);
}

uint64_t sub_25277F2EC(uint64_t a1)
{
  v2 = *(*v1 + 392);
  v3 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 400) = a1;

  sub_2527213D8(v3, &qword_27F4FC628, &qword_2528C4750);

  return MEMORY[0x2822009F8](sub_25277F41C, 0, 0);
}

unint64_t sub_25277F41C()
{
  v275 = v0;
  v1 = v0;
  v2 = *(v0 + 384);
  v3 = *(v1 + 376);
  v4 = *(v1 + 352);
  v5 = *(v1 + 328);
  sub_25272006C(*(v1 + 16), v4, &qword_27F4FC488, &unk_2528C3F80);
  v6 = v3(v4, 1, v5);
  v7 = *(v1 + 352);
  if (v6 == 1)
  {
    v8 = *(v1 + 24);
    sub_2527213D8(v7, &qword_27F4FC488, &unk_2528C3F80);
    if (v8)
    {
      v9 = *(v1 + 24);
      v10 = *(v9 + 16);
      v11 = MEMORY[0x277D84F90];
      if (v10)
      {
        v12 = *(v1 + 264);
        v13 = *(v1 + 240);
        v269 = *(v1 + 232);
        v273 = MEMORY[0x277D84F90];
        sub_25282EFDC(0, v10, 0);
        v11 = v273;
        v14 = v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v266 = *(v13 + 72);
        do
        {
          v15 = *(v1 + 320);
          v16 = v1;
          v19 = v1 + 248;
          v18 = *(v1 + 248);
          v17 = *(v19 + 8);
          sub_252782854(v14, v18, type metadata accessor for DeviceEntity);
          (*(v12 + 16))(v15, v18 + *(v269 + 48), v17);
          sub_2527828BC(v18, type metadata accessor for DeviceEntity);
          v273 = v11;
          v21 = *(v11 + 16);
          v20 = *(v11 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_25282EFDC(v20 > 1, v21 + 1, 1);
            v11 = v273;
          }

          v22 = *(v16 + 320);
          v23 = *(v16 + 256);
          *(v11 + 16) = v21 + 1;
          (*(v12 + 32))(v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v22, v23);
          v14 += v266;
          --v10;
          v1 = v16;
        }

        while (v10);
      }
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v30 = sub_252743D54(v11);
  }

  else
  {
    v24 = *(v1 + 344);
    v25 = *(v1 + 256);
    v26 = *(v1 + 264);
    sub_252782788(v7, v24, type metadata accessor for HomeEntity);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC828, &qword_2528C48D8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2528C3910;
    (*(v26 + 16))(v29 + v28, v24, v25);
    v30 = sub_252744890(v29);
    swift_setDeallocating();
    (*(v26 + 8))(v29 + v28, v25);
    swift_deallocClassInstance();
    sub_2527828BC(v24, type metadata accessor for HomeEntity);
  }

  v267 = v1;
  if (*(v30 + 16))
  {
    v258 = *(v1 + 400);
    v31 = *(v1 + 264);
    v32 = v30 + 56;
    v33 = -1;
    v34 = -1 << *(v30 + 32);
    if (-v34 < 64)
    {
      v33 = ~(-1 << -v34);
    }

    v35 = v33 & *(v30 + 56);
    v36 = (63 - v34) >> 6;
    v220 = *(v1 + 128);
    v222 = *(v1 + 192);
    v255 = *(v1 + 264);
    v229 = (v31 + 8);
    v232 = (v31 + 32);
    v214 = *(v1 + 136);
    v212 = (v222 + 8);

    v37 = 0;
    v270 = MEMORY[0x277D84F98];
    v38 = 0x27F4FB000uLL;
    LODWORD(v218) = 136315138;
    v245 = v36;
    v248 = v30 + 56;
    v252 = v30;
LABEL_16:
    v39 = v37;
    while (v35)
    {
      v37 = v39;
LABEL_24:
      v41 = *(v1 + 304);
      v42 = *(v1 + 312);
      v43 = *(v1 + 256);
      v44 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v45 = *(v30 + 48);
      v46 = *(v255 + 72);
      v47 = *(v255 + 16);
      v47(v42, v45 + v46 * (v44 | (v37 << 6)), v43);
      (*(v255 + 32))(v41, v42, v43);
      if (*(v258 + 16))
      {
        v48 = *(v1 + 400);
        v49 = sub_252785C40(*(v1 + 304));
        if (v50)
        {
          v68 = v1;
          v69 = *(v1 + 304);
          v70 = v68[37];
          v71 = v68[32];
          v72 = v68[22];
          v73 = v68[21];
          (*(v222 + 16))(v68[28], *(v258 + 56) + *(v222 + 72) * v49, v68[23]);
          v47(v70, v69, v71);
          sub_2528BEE70();
          v74 = *(v220 + 20);
          sub_2528BEE80();
          v75 = sub_2528C00D0();
          (*(*(v75 - 8) + 56))(v72 + v74, 0, 1, v75);
          sub_252782788(v72, v73, type metadata accessor for HomeEntity.SnapshotPair);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v273 = v270;
          result = sub_252785C40(v70);
          v79 = *(v270 + 16);
          v80 = (v78 & 1) == 0;
          v81 = __OFADD__(v79, v80);
          v82 = v79 + v80;
          if (v81)
          {
            __break(1u);
          }

          else
          {
            v83 = v78;
            if (*(v270 + 24) >= v82)
            {
              v1 = v267;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v98 = result;
                sub_2527E0A74();
                result = v98;
                v270 = v273;
              }
            }

            else
            {
              v84 = v267[37];
              sub_2527DD2B0(v82, isUniquelyReferenced_nonNull_native);
              v85 = v84;
              v1 = v267;
              v270 = v273;
              result = sub_252785C40(v85);
              if ((v83 & 1) != (v86 & 1))
              {
LABEL_101:
                v210 = *(v1 + 256);

                return sub_2528C10A0();
              }
            }

            v88 = *(v1 + 296);
            v87 = *(v1 + 304);
            v89 = *(v1 + 256);
            v90 = v1;
            v91 = *(v1 + 224);
            v236 = *(v90 + 184);
            v241 = v87;
            v92 = *(v90 + 168);
            if (v83)
            {
              sub_2527827F0(v92, *(v270 + 56) + *(v214 + 72) * result);
              v93 = *v229;
              (*v229)(v88, v89);
              (*v212)(v91, v236);
              v93(v241, v89);
LABEL_40:
              v1 = v267;
              v38 = 0x27F4FB000;
              v32 = v248;
              v30 = v252;
              v36 = v245;
              goto LABEL_16;
            }

            *(v270 + 8 * (result >> 6) + 64) |= 1 << result;
            v94 = result;
            v47(*(v270 + 48) + result * v46, v88, v89);
            sub_252782788(v92, *(v270 + 56) + *(v214 + 72) * v94, type metadata accessor for HomeEntity.SnapshotPair);
            v95 = *v229;
            (*v229)(v88, v89);
            (*v212)(v91, v236);
            result = (v95)(v241, v89);
            v96 = *(v270 + 16);
            v81 = __OFADD__(v96, 1);
            v97 = v96 + 1;
            if (!v81)
            {
              *(v270 + 16) = v97;
              goto LABEL_40;
            }
          }

          __break(1u);
          return result;
        }
      }

      if (*(v38 + 2880) != -1)
      {
        swift_once();
      }

      v51 = *(v1 + 304);
      v52 = *(v1 + 288);
      v53 = *(v1 + 256);
      v54 = sub_2528C08B0();
      __swift_project_value_buffer(v54, qword_27F5025C8);
      v47(v52, v51, v53);
      v1 = v267;
      v55 = sub_2528C0890();
      v56 = sub_2528C0CF0();
      v57 = os_log_type_enabled(v55, v56);
      v58 = v267[38];
      v59 = v267[36];
      v60 = v267[32];
      if (v57)
      {
        v61 = swift_slowAlloc();
        v240 = swift_slowAlloc();
        v273 = v240;
        *v61 = 136315138;
        sub_2527810F4(&qword_27F4FD070, MEMORY[0x277CC95F0]);
        v235 = v58;
        v62 = sub_2528C1040();
        v225 = v56;
        v64 = v63;
        v65 = *v229;
        (*v229)(v59, v60);
        v66 = sub_2527389AC(v62, v64, &v273);

        *(v61 + 4) = v66;
        _os_log_impl(&dword_252711000, v55, v225, "Failed to find home with ID %s", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v240);
        MEMORY[0x2530A8D80](v240, -1, -1);
        v67 = v61;
        v1 = v267;
        MEMORY[0x2530A8D80](v67, -1, -1);

        v65(v235, v60);
        v38 = 0x27F4FB000;
      }

      else
      {

        v40 = *v229;
        (*v229)(v59, v60);
        v40(v58, v60);
      }

      v39 = v37;
      v32 = v248;
      v30 = v252;
      v36 = v245;
    }

    while (1)
    {
      v37 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_105;
      }

      if (v37 >= v36)
      {

        v35 = v270;
        if (!*(v270 + 16))
        {
          v30 = v270;
          break;
        }

        v99 = *(v1 + 400);

        v100 = *(v270 + 16);
        if (v100)
        {
          v226 = *(v1 + 88);
          v101 = *(v1 + 72);
          v272 = MEMORY[0x277D84F90];

          sub_25282EFBC(0, v100, 0);
          v30 = v272;
          v102 = -1 << *(v270 + 32);
          v103 = sub_2528C0E00();
          v223 = (v101 + 8);
          v35 = v270;
          while (1)
          {
            v237 = v100;
            v253 = *(v1 + 280);
            v256 = v103;
            v104 = *(v1 + 256);
            v106 = *(v1 + 112);
            v105 = *(v1 + 120);
            v107 = *(v1 + 104);
            v246 = *(v1 + 96);
            v249 = *(v1 + 80);
            v262 = *(v1 + 64);
            v108 = *(v35 + 36);
            v109 = v35;
            v110 = *(v226 + 48);
            v242 = v108;
            sub_2527D63AC(v105, v105 + v110, v103, v108, 0, v109);
            v111 = *v232;
            (*v232)(v106, v105, v104);
            v259 = v106;
            sub_252782788(v105 + v110, v106 + *(v226 + 48), type metadata accessor for HomeEntity.SnapshotPair);
            sub_25272006C(v106, v107, &qword_27F4FCDC0, &unk_2528C5CD0);
            v112 = *(v226 + 48);
            v111(v246, v107, v104);
            sub_252782788(v107 + v112, v246 + v112, type metadata accessor for HomeEntity.SnapshotPair);
            sub_2528BF2F0();
            v273 = sub_2528BEE20();
            v274 = v113;

            MEMORY[0x2530A80B0](40, 0xE100000000000000);

            v1 = v273;
            v114 = v274;
            sub_2528BEE00();
            v115 = sub_2528BECB0();
            v117 = v116;
            (*v229)(v253, v104);
            v273 = v1;
            v274 = v114;

            MEMORY[0x2530A80B0](v115, v117);

            MEMORY[0x2530A80B0](41, 0xE100000000000000);

            v119 = v273;
            v118 = v274;
            (*v223)(v249, v262);
            sub_2527213D8(v246, &qword_27F4FCDC0, &unk_2528C5CD0);
            sub_2527213D8(v259, &qword_27F4FCDC0, &unk_2528C5CD0);
            v121 = *(v272 + 16);
            v120 = *(v272 + 24);
            if (v121 >= v120 >> 1)
            {
              sub_25282EFBC((v120 > 1), v121 + 1, 1);
            }

            *(v272 + 16) = v121 + 1;
            v122 = v272 + 16 * v121;
            *(v122 + 32) = v119;
            *(v122 + 40) = v118;
            v35 = v270;
            if (v256 < 0 || v256 >= -(-1 << *(v270 + 32)))
            {
              goto LABEL_106;
            }

            if (((*(v270 + 64 + ((v256 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v256) & 1) == 0)
            {
              goto LABEL_107;
            }

            if (v242 != *(v270 + 36))
            {
              goto LABEL_108;
            }

            v103 = sub_2528C0E20();
            --v100;
            v1 = v267;
            if (v237 == 1)
            {
              v38 = 0x27F4FB000;
              goto LABEL_93;
            }
          }
        }

        v30 = MEMORY[0x277D84F90];
LABEL_93:
        if (*(v38 + 2880) != -1)
        {
          goto LABEL_111;
        }

        goto LABEL_94;
      }

      v35 = *(v32 + 8 * v37);
      ++v39;
      if (v35)
      {
        goto LABEL_24;
      }
    }
  }

  v123 = *(v1 + 416);

  if (v123 == 1)
  {
    if (qword_27F4FBB40 != -1)
    {
      swift_once();
    }

    v124 = sub_2528C08B0();
    __swift_project_value_buffer(v124, qword_27F5025C8);
    v125 = sub_2528C0890();
    v126 = sub_2528C0D10();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_252711000, v125, v126, "Using all homeStateSnapshots for snapshot search", v127, 2u);
      MEMORY[0x2530A8D80](v127, -1, -1);
    }

    v128 = *(v1 + 400);
    v129 = *(v1 + 264);
    v130 = *(v1 + 192);
    v238 = *(v1 + 136);
    v243 = *(v1 + 128);

    v131 = sub_25278D0F4(MEMORY[0x277D84F90]);
    v35 = v131;
    v132 = 0;
    v133 = *(v128 + 64);
    v218 = v128 + 64;
    v227 = v128;
    v134 = -1;
    v135 = -1 << *(v128 + 32);
    if (-v135 < 64)
    {
      v134 = ~(-1 << -v135);
    }

    v136 = v134 & v133;
    v216 = (63 - v135) >> 6;
    v250 = v129;
    v260 = (v129 + 32);
    v230 = (v130 + 8);
    v233 = (v129 + 8);
    v271 = v131;
    if ((v134 & v133) != 0)
    {
      while (1)
      {
        v137 = v132;
LABEL_69:
        v140 = *(v1 + 280);
        v141 = *(v1 + 256);
        v142 = *(v1 + 216);
        v263 = *(v1 + 184);
        v143 = *(v1 + 48);
        v144 = __clz(__rbit64(v136));
        v136 &= v136 - 1;
        v145 = v144 | (v137 << 6);
        (*(v250 + 16))(v140, *(v227 + 48) + *(v250 + 72) * v145, v141);
        (*(v130 + 16))(v142, *(v227 + 56) + *(v130 + 72) * v145, v263);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
        v147 = *(v146 + 48);
        (*(v250 + 32))(v143, v140, v141);
        v148 = v143 + v147;
        v1 = v267;
        (*(v130 + 32))(v148, v142, v263);
        (*(*(v146 - 8) + 56))(v143, 0, 1, v146);
        v139 = v137;
LABEL_70:
        v149 = *(v1 + 56);
        sub_25274AA0C(*(v1 + 48), v149, &qword_27F4FD080, &qword_2528C74B0);
        v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
        if ((*(*(v150 - 8) + 48))(v149, 1, v150) == 1)
        {
          break;
        }

        v264 = v139;
        v151 = *(v1 + 272);
        v152 = *(v1 + 256);
        v30 = *(v1 + 152);
        v153 = *(v1 + 160);
        v154 = *(v1 + 56);
        (*(v130 + 32))(*(v1 + 208), v154 + *(v150 + 48), *(v1 + 184));
        (*v260)(v151, v154, v152);
        sub_2528BEE70();
        v155 = *(v243 + 20);
        sub_2528BEE80();
        v156 = sub_2528C00D0();
        (*(*(v156 - 8) + 56))(v153 + v155, 0, 1, v156);
        sub_252782788(v153, v30, type metadata accessor for HomeEntity.SnapshotPair);
        v35 = v271;
        v157 = swift_isUniquelyReferenced_nonNull_native();
        v273 = v271;
        v158 = sub_252785C40(v151);
        v160 = *(v271 + 16);
        v161 = (v159 & 1) == 0;
        v81 = __OFADD__(v160, v161);
        v162 = v160 + v161;
        if (v81)
        {
          goto LABEL_109;
        }

        v163 = v159;
        if (*(v271 + 24) >= v162)
        {
          if ((v157 & 1) == 0)
          {
            v179 = v158;
            sub_2527E0A74();
            v158 = v179;
            v35 = v273;
          }
        }

        else
        {
          v164 = *(v1 + 272);
          sub_2527DD2B0(v162, v157);
          v165 = v164;
          v35 = v273;
          v158 = sub_252785C40(v165);
          if ((v163 & 1) != (v166 & 1))
          {
            goto LABEL_101;
          }
        }

        v30 = *(v1 + 272);
        v167 = *(v1 + 256);
        v168 = *(v1 + 208);
        v169 = *(v1 + 184);
        v170 = *(v1 + 152);
        if (v163)
        {
          sub_2527827F0(*(v1 + 152), *(v35 + 56) + *(v238 + 72) * v158);
          (*v233)(v30, v167);
          (*v230)(v168, v169);
        }

        else
        {
          *(v35 + 8 * (v158 >> 6) + 64) |= 1 << v158;
          v171 = *(v35 + 48) + *(v250 + 72) * v158;
          v172 = v35;
          v173 = v158;
          (*(v250 + 16))(v171, v30, v167);
          v174 = *(v172 + 56) + *(v238 + 72) * v173;
          v35 = v172;
          sub_252782788(v170, v174, type metadata accessor for HomeEntity.SnapshotPair);
          (*(v250 + 8))(v30, v167);
          (*v230)(v168, v169);
          v175 = *(v172 + 16);
          v81 = __OFADD__(v175, 1);
          v176 = v175 + 1;
          if (v81)
          {
            goto LABEL_110;
          }

          *(v172 + 16) = v176;
        }

        v132 = v264;
        v271 = v35;
        if (!v136)
        {
          goto LABEL_62;
        }
      }

      v188 = *(v1 + 400);

LABEL_98:
      v199 = *(v1 + 360);
      v198 = *(v1 + 368);
      v201 = *(v1 + 344);
      v200 = *(v1 + 352);
      v203 = *(v1 + 312);
      v202 = *(v1 + 320);
      v204 = v1;
      v205 = *(v1 + 304);
      v207 = v204[36];
      v206 = v204[37];
      v208 = v204[35];
      v211 = v204[34];
      v213 = v204[31];
      v215 = v204[28];
      v217 = v204[27];
      v219 = v204[26];
      v221 = v204[25];
      v224 = v204[22];
      v228 = v204[21];
      v231 = v204[20];
      v234 = v204[19];
      v239 = v204[18];
      v244 = v204[15];
      v247 = v204[14];
      v251 = v204[13];
      v254 = v204[12];
      v257 = v204[10];
      v261 = v204[7];
      v265 = v204[6];
      v268 = v204[5];

      v209 = v204[1];

      return v209(v271);
    }

LABEL_62:
    if (v216 <= v132 + 1)
    {
      v138 = v132 + 1;
    }

    else
    {
      v138 = v216;
    }

    v139 = v138 - 1;
    while (1)
    {
      v137 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        break;
      }

      if (v137 >= v216)
      {
        v177 = *(v1 + 48);
        v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
        (*(*(v178 - 8) + 56))(v177, 1, 1, v178);
        v136 = 0;
        goto LABEL_70;
      }

      v136 = *(v218 + 8 * v137);
      ++v132;
      if (v136)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    swift_once();
LABEL_94:
    v189 = sub_2528C08B0();
    __swift_project_value_buffer(v189, qword_27F5025C8);

    v190 = sub_2528C0890();
    v191 = sub_2528C0D10();

    v271 = v35;
    if (os_log_type_enabled(v190, v191))
    {
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      v273 = v193;
      *v192 = v218;
      v194 = MEMORY[0x2530A81A0](v30, MEMORY[0x277D837D0]);
      v196 = v195;

      v197 = sub_2527389AC(v194, v196, &v273);

      *(v192 + 4) = v197;
      _os_log_impl(&dword_252711000, v190, v191, "Using snapshots for homes %s for snapshot search", v192, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v193);
      MEMORY[0x2530A8D80](v193, -1, -1);
      MEMORY[0x2530A8D80](v192, -1, -1);
    }

    else
    {
    }

    goto LABEL_98;
  }

  v180 = *(v1 + 400);

  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v181 = sub_2528C08B0();
  __swift_project_value_buffer(v181, qword_27F5025C8);
  v182 = sub_2528C0890();
  v183 = sub_2528C0D10();
  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    *v184 = 0;
    _os_log_impl(&dword_252711000, v182, v183, "Using current snapshot for snapshot search", v184, 2u);
    MEMORY[0x2530A8D80](v184, -1, -1);
  }

  v185 = swift_task_alloc();
  *(v1 + 408) = v185;
  *v185 = v1;
  v185[1] = sub_252780BA4;
  v187 = *(v1 + 32);
  v186 = *(v1 + 40);

  return sub_252799538(v186, v187);
}

uint64_t sub_252780BA4()
{
  v1 = *(*v0 + 408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_252780CA0, 0, 0);
}

uint64_t sub_252780CA0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[5];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2527213D8(v3, &qword_27F4FD078, &qword_2528C74A8);
    v48 = sub_25278D0F4(MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = v0[18];
    v5 = v0[16];
    v6 = v0[9];
    v7 = v0[10];
    v46 = v0[25];
    v49 = v0[8];
    (*(v2 + 32))(v46, v3, v1);
    sub_2528BEE70();
    v8 = *(v5 + 20);
    sub_2528BEE80();
    v9 = sub_2528C00D0();
    (*(*(v9 - 8) + 56))(v4 + v8, 0, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD088, &qword_2528C74B8);
    v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD090, &unk_2528C95C0) - 8);
    v11 = *(*v10 + 72);
    v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2528C3910;
    v14 = v13 + v12;
    v15 = v10[14];
    sub_2528BF2F0();
    sub_2528BEE00();
    (*(v6 + 8))(v7, v49);
    sub_252782854(v4, v14 + v15, type metadata accessor for HomeEntity.SnapshotPair);
    v48 = sub_25278D0F4(v13);
    swift_setDeallocating();
    sub_2527213D8(v14, &qword_27F4FD090, &unk_2528C95C0);
    swift_deallocClassInstance();
    sub_2527828BC(v4, type metadata accessor for HomeEntity.SnapshotPair);
    (*(v2 + 8))(v46, v1);
  }

  v17 = v0[45];
  v16 = v0[46];
  v19 = v0[43];
  v18 = v0[44];
  v21 = v0[39];
  v20 = v0[40];
  v23 = v0[37];
  v22 = v0[38];
  v24 = v0[35];
  v25 = v0[36];
  v28 = v0[34];
  v29 = v0[31];
  v30 = v0[28];
  v31 = v0[27];
  v32 = v0[26];
  v33 = v0[25];
  v34 = v0[22];
  v35 = v0[21];
  v36 = v0[20];
  v37 = v0[19];
  v38 = v0[18];
  v39 = v0[15];
  v40 = v0[14];
  v41 = v0[13];
  v42 = v0[12];
  v43 = v0[10];
  v44 = v0[7];
  v45 = v0[6];
  v47 = v0[5];

  v26 = v0[1];

  return v26(v48);
}

uint64_t sub_2527810F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2527811CC()
{
  result = qword_27F4FCFA0;
  if (!qword_27F4FCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFA0);
  }

  return result;
}

unint64_t sub_2527812FC()
{
  result = qword_27F4FCFC0;
  if (!qword_27F4FCFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCFC8, &qword_2528C7198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFC0);
  }

  return result;
}

unint64_t sub_2527813AC()
{
  result = qword_27F4FCFD8;
  if (!qword_27F4FCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFD8);
  }

  return result;
}

unint64_t sub_252781404()
{
  result = qword_27F4FCFE0;
  if (!qword_27F4FCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFE0);
  }

  return result;
}

unint64_t sub_2527814A4()
{
  result = qword_27F4FCFE8;
  if (!qword_27F4FCFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFE8);
  }

  return result;
}

unint64_t sub_2527814FC()
{
  result = qword_27F4FCFF0;
  if (!qword_27F4FCFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FCFF8, qword_2528C7310);
    sub_2527810F4(&qword_27F4FC4A0, type metadata accessor for HomeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FCFF0);
  }

  return result;
}

uint64_t sub_252781688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_252781718()
{
  if (!qword_27F4FD020)
  {
    sub_2528C00D0();
    v0 = sub_2528C0DC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4FD020);
    }
  }
}

uint64_t sub_2527817B8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD050, &qword_2528CE320);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v5 = sub_2528BEEC0();
  v2[8] = v5;
  v6 = *(v5 - 8);
  v2[9] = v6;
  v7 = *(v6 + 64) + 15;
  v2[10] = swift_task_alloc();
  v8 = sub_2528C00D0();
  v2[11] = v8;
  v9 = *(v8 - 8);
  v2[12] = v9;
  v10 = *(v9 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v11 = type metadata accessor for HomeEntity(0);
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v2[24] = swift_task_alloc();
  v18 = sub_2528C05D0();
  v2[25] = v18;
  v19 = *(v18 - 8);
  v2[26] = v19;
  v20 = *(v19 + 64) + 15;
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252781AF0, 0, 0);
}

uint64_t sub_252781AF0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[17];
  v7 = v0[18];
  v8 = v0[2];
  sub_25272006C(v0[3], v0[24], &qword_27F4FC478, &unk_2528C3F70);
  sub_2528C0590();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  sub_25272006C(v8, v5, &qword_27F4FC488, &unk_2528C3F80);
  v9 = *(v7 + 48);
  v0[28] = v9;
  v0[29] = (v7 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v10 = v9(v5, 1, v6);
  v11 = v0[21];
  v12 = v0[22];
  if (v10 == 1)
  {
    sub_2527213D8(v0[21], &qword_27F4FC488, &unk_2528C3F80);
    v13 = sub_2528BECF0();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  else
  {
    v14 = sub_2528BECF0();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v12, v11, v14);
    sub_2527828BC(v11, type metadata accessor for HomeEntity);
    (*(v15 + 56))(v12, 0, 1, v14);
  }

  v16 = swift_task_alloc();
  v0[30] = v16;
  *v16 = v0;
  v16[1] = sub_252781D90;
  v17 = v0[22];
  v18 = v0[23];

  return sub_25279E2F8(v18, v17);
}

uint64_t sub_252781D90(uint64_t a1)
{
  v2 = *(*v1 + 240);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  v6 = *v1;
  *(*v1 + 248) = a1;

  sub_2527213D8(v4, &qword_27F4FC628, &qword_2528C4750);
  sub_2527213D8(v3, &qword_27F4FC480, &unk_2528C7FA0);

  return MEMORY[0x2822009F8](sub_252781EEC, 0, 0);
}

unint64_t sub_252781EEC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[20];
  v4 = v0[17];
  sub_25272006C(v0[2], v3, &qword_27F4FC488, &unk_2528C3F80);
  if (v2(v3, 1, v4) == 1)
  {
    sub_2527213D8(v0[20], &qword_27F4FC488, &unk_2528C3F80);
LABEL_7:
    v23 = v0[31];
    v24 = v0[12];
    v25 = v0[9];
    v102 = v0[4];
    v104 = sub_25278DBC0(MEMORY[0x277D84F90]);
    v26 = v23 + 64;
    v27 = -1;
    v28 = -1 << *(v23 + 32);
    if (-v28 < 64)
    {
      v27 = ~(-1 << -v28);
    }

    v29 = v27 & *(v23 + 64);
    v30 = (63 - v28) >> 6;
    v84 = v25;
    v88 = (v24 + 32);
    v82 = v24;
    v85 = v23;

    v32 = 0;
    v80 = v30;
    v81 = v23 + 64;
    v83 = v0;
    while (1)
    {
      if (!v29)
      {
        while (1)
        {
          v38 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v38 >= v30)
          {
            v68 = v0[31];
            (*(v0[26] + 8))(v0[27], v0[25]);

            goto LABEL_27;
          }

          v29 = *(v26 + 8 * v38);
          ++v32;
          if (v29)
          {
            v32 = v38;
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

LABEL_17:
      v91 = v0[14];
      v94 = v0[13];
      v97 = v0[11];
      v39 = v0[7];
      v40 = v0[8];
      v41 = v0[5];
      v42 = v0[6];
      v43 = __clz(__rbit64(v29)) | (v32 << 6);
      v44 = *(v85 + 48);
      v45 = sub_2528BECF0();
      v86 = *(*(v45 - 8) + 72);
      v89 = *(v45 - 8);
      v90 = v45;
      v87 = *(v89 + 16);
      v87(v39, v44 + v86 * v43);
      v46 = v40;
      (*(v84 + 16))(v39 + *(v102 + 48), *(v85 + 56) + *(v84 + 72) * v43, v40);
      sub_25272006C(v39, v42, &qword_27F4FD050, &qword_2528CE320);
      sub_25272006C(v39, v41, &qword_27F4FD050, &qword_2528CE320);
      v47 = *(v102 + 48);
      sub_2528BEE80();
      v48 = *(v84 + 8);
      v48(v41 + v47, v46);
      v49 = *v88;
      (*v88)(v94, v91, v97);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = sub_252785C40(v42);
      v52 = v104[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_34;
      }

      v56 = v104;
      v57 = v51;
      if (v104[3] >= v55)
      {
        v0 = v83;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = result;
          sub_2527E130C();
          result = v67;
          v56 = v104;
        }
      }

      else
      {
        v0 = v83;
        v58 = v83[6];
        sub_2527DE0B4(v55, isUniquelyReferenced_nonNull_native);
        result = sub_252785C40(v58);
        if ((v57 & 1) != (v59 & 1))
        {

          return sub_2528C10A0();
        }

        v56 = v104;
      }

      v60 = v0[13];
      v61 = v0[11];
      v62 = v0[7];
      v104 = v56;
      if (v57)
      {
        (*(v82 + 40))(v56[7] + *(v82 + 72) * result, v60, v61);
        sub_2527213D8(v62, &qword_27F4FD050, &qword_2528CE320);
      }

      else
      {
        v63 = v0[6];
        v56[(result >> 6) + 8] |= 1 << result;
        v64 = result;
        (v87)(v56[6] + result * v86, v63, v90);
        v49(v104[7] + *(v82 + 72) * v64, v60, v61);
        result = sub_2527213D8(v62, &qword_27F4FD050, &qword_2528CE320);
        v65 = v104[2];
        v54 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v54)
        {
          goto LABEL_35;
        }

        v104[2] = v66;
      }

      v29 &= v29 - 1;
      v33 = v0[8];
      v35 = v0[5];
      v34 = v0[6];
      v36 = *(v102 + 48);
      v37 = *(v89 + 8);
      v37(v34, v90);
      v37(v35, v90);
      result = (v48)(v34 + v36, v33);
      v30 = v80;
      v26 = v81;
    }
  }

  v5 = v0[31];
  sub_252782788(v0[20], v0[19], type metadata accessor for HomeEntity);
  if (!*(v5 + 16) || (v6 = v0[31], v7 = sub_252785C40(v0[19]), (v8 & 1) == 0))
  {
    sub_2527828BC(v0[19], type metadata accessor for HomeEntity);
    goto LABEL_7;
  }

  v99 = v0[25];
  v101 = v0[27];
  v93 = v0[19];
  v96 = v0[26];
  v9 = v0[15];
  v10 = v0[16];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  (*(v13 + 16))(v14, *(v0[31] + 56) + *(v13 + 72) * v7, v15);

  sub_2528BEE80();
  (*(v13 + 8))(v14, v15);
  (*(v11 + 32))(v10, v9, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD058, &qword_2528C7488);
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD060, &qword_2528C7490) - 8);
  v17 = *(*v16 + 72);
  v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2528C3910;
  v20 = v19 + v18;
  v21 = v16[14];
  v22 = sub_2528BECF0();
  (*(*(v22 - 8) + 16))(v20, v93, v22);
  (*(v11 + 16))(v20 + v21, v10, v12);
  v104 = sub_25278DBC0(v19);
  swift_setDeallocating();
  sub_2527213D8(v20, &qword_27F4FD060, &qword_2528C7490);
  swift_deallocClassInstance();
  (*(v11 + 8))(v10, v12);
  sub_2527828BC(v93, type metadata accessor for HomeEntity);
  (*(v96 + 8))(v101, v99);
LABEL_27:
  v69 = v0[27];
  v71 = v0[23];
  v70 = v0[24];
  v73 = v0[21];
  v72 = v0[22];
  v75 = v0[19];
  v74 = v0[20];
  v77 = v0[15];
  v76 = v0[16];
  v92 = v0[14];
  v95 = v0[13];
  v98 = v0[10];
  v100 = v0[7];
  v103 = v0[6];
  v78 = v0[5];

  v79 = v0[1];

  return v79(v104);
}

uint64_t sub_252782788(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527827F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeEntity.SnapshotPair(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252782854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527828BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ValueWrapper()
{
  result = qword_27F4FD170;
  if (!qword_27F4FD170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252782A50()
{
  result = qword_27F4FD0B0;
  if (!qword_27F4FD0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD0B0);
  }

  return result;
}

uint64_t sub_252782AA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      MEMORY[0x2530A87A0](1);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = 0;
      }

      return MEMORY[0x2530A87D0](v6);
    }

    else
    {
      MEMORY[0x2530A87A0](0);
      return sub_2528C1150();
    }
  }

  else if (a4 == 2)
  {
    MEMORY[0x2530A87A0](2);
    return sub_2528C1160();
  }

  else if (a4 == 3)
  {
    MEMORY[0x2530A87A0](3);
    return MEMORY[0x2530A87A0](a2);
  }

  else
  {
    MEMORY[0x2530A87A0](4);

    return sub_2528C0A40();
  }
}

uint64_t sub_252782B84()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2528C1130();
  sub_252782AA4(v5, v1, v2, v3);
  return sub_2528C1180();
}

uint64_t sub_252782BEC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_2528C1130();
  sub_252782AA4(v5, v1, v2, v3);
  return sub_2528C1180();
}

uint64_t sub_252782C60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = sub_2528BEC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_2528C09B0();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v14);
  v15 = (v0 + *(type metadata accessor for ValueWrapper() + 20));
  v16 = *v15;
  v17 = *(v15 + 16);
  if (v17 <= 1)
  {
    if (*(v15 + 16))
    {
      goto LABEL_9;
    }

    sub_2528C09A0();
    sub_2528C0990();
    sub_2528C0970();
  }

  else
  {
    if (v17 == 2)
    {
      sub_2528C09A0();
      sub_2528C0990();
      LODWORD(v22) = v16;
LABEL_10:
      sub_2528C0960();
      goto LABEL_11;
    }

    if (v17 == 3)
    {
LABEL_9:
      sub_2528C09A0();
      sub_2528C0990();
      v22 = v16;
      goto LABEL_10;
    }

    v18 = v15[1];
    sub_2528C09A0();
    sub_2528C0990();
    sub_2528C0970();
  }

LABEL_11:
  sub_2528C0990();
  sub_2528BEC30();
  (*(v10 + 56))(v8, 1, 1, v9);
  v19 = sub_2528BE8D0();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  return sub_2528BE900();
}

uint64_t sub_252783070()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502908);
  __swift_project_value_buffer(v0, qword_27F502908);
  return sub_2528BE9D0();
}

uint64_t sub_2527831B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB688 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F502908);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_252783260()
{
  result = qword_27F4FD0D8;
  if (!qword_27F4FD0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD0E0, &qword_2528C7608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD0D8);
  }

  return result;
}

uint64_t sub_2527832C4(uint64_t a1)
{
  v2 = sub_252783500(&qword_27F4FD100, type metadata accessor for ValueWrapper);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_25278338C(uint64_t a1)
{
  v2 = sub_252783500(&qword_27F4FD0D0, type metadata accessor for ValueWrapper);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_25278340C()
{
  result = qword_27F4FD0F0;
  if (!qword_27F4FD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD0F0);
  }

  return result;
}

unint64_t sub_252783464()
{
  result = qword_27F4FD0F8;
  if (!qword_27F4FD0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD0F8);
  }

  return result;
}

uint64_t sub_252783500(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25278354C()
{
  result = qword_27F4FD108;
  if (!qword_27F4FD108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD108);
  }

  return result;
}

unint64_t sub_2527835A4()
{
  result = qword_27F4FD110;
  if (!qword_27F4FD110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FD118, qword_2528C7748);
    sub_252783500(&qword_27F4FD0C8, type metadata accessor for ValueWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD110);
  }

  return result;
}

uint64_t sub_252783658(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_252782A50();
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v7);
}

unint64_t sub_252783710()
{
  result = qword_27F4FD120;
  if (!qword_27F4FD120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD120);
  }

  return result;
}

uint64_t sub_252783764(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252783788, 0, 0);
}

uint64_t sub_252783788()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_2528BE550();
  v3 = type metadata accessor for ValueWrapper();
  v4 = v2 + *(v3 + 20);
  *v4 = v1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 3;
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v5 = v0[1];

  return v5();
}

unint64_t sub_252783848()
{
  result = qword_27F4FD128;
  if (!qword_27F4FD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD128);
  }

  return result;
}

unint64_t sub_2527838A0()
{
  result = qword_27F4FD130;
  if (!qword_27F4FD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD130);
  }

  return result;
}

unint64_t sub_2527838F8()
{
  result = qword_27F4FD138;
  if (!qword_27F4FD138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD138);
  }

  return result;
}

uint64_t sub_25278394C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252783970, 0, 0);
}

uint64_t sub_252783970()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_2528BE550();
  v3 = type metadata accessor for ValueWrapper();
  v4 = v2 + *(v3 + 20);
  *v4 = v1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v5 = v0[1];

  return v5();
}

unint64_t sub_252783A30()
{
  result = qword_27F4FD140;
  if (!qword_27F4FD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD140);
  }

  return result;
}

unint64_t sub_252783A88()
{
  result = qword_27F4FD148;
  if (!qword_27F4FD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD148);
  }

  return result;
}

unint64_t sub_252783AE0()
{
  result = qword_27F4FD150;
  if (!qword_27F4FD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD150);
  }

  return result;
}

uint64_t sub_252783B34(uint64_t a1, _BYTE *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return MEMORY[0x2822009F8](sub_252783B5C, 0, 0);
}

uint64_t sub_252783B5C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_2528BE550();
  v3 = type metadata accessor for ValueWrapper();
  v4 = v2 + *(v3 + 20);
  *v4 = v1;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v5 = *(v0 + 8);

  return v5();
}

unint64_t sub_252783C1C()
{
  result = qword_27F4FD158;
  if (!qword_27F4FD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD158);
  }

  return result;
}

unint64_t sub_252783C74()
{
  result = qword_27F4FD160;
  if (!qword_27F4FD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD160);
  }

  return result;
}

uint64_t sub_252783CC8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[2] = a1;
  v2[3] = v3;
  v2[4] = v4;
  return MEMORY[0x2822009F8](sub_252783CF0, 0, 0);
}

uint64_t sub_252783CF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_2528BE550();
  v4 = type metadata accessor for ValueWrapper();
  v5 = v3 + *(v4 + 20);
  *v5 = v2;
  *(v5 + 8) = v1;
  *(v5 + 16) = 4;
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v7 = v0[1];

  return v7();
}

unint64_t sub_252783DCC()
{
  result = qword_27F4FD168;
  if (!qword_27F4FD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD168);
  }

  return result;
}

uint64_t sub_252783E98()
{
  result = sub_2528BECF0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_252783F2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_252783F74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_252783FD4()
{
  result = qword_27F4FD180;
  if (!qword_27F4FD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FD180);
  }

  return result;
}

uint64_t sub_252784028(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    v9 = a4 ^ a1 ^ 1;
    if (a6)
    {
      v9 = 0;
    }

    v10 = a6 == 1 && *&a1 == *&a4;
    if (a3)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else if (a3 == 2)
  {
    return a6 == 2 && *&a1 == *&a4;
  }

  else if (a3 == 3)
  {
    return a6 == 3 && a1 == a4;
  }

  else if (a6 == 4)
  {
    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {
      return sub_2528C1060();
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25278410C()
{
  v1 = type metadata accessor for HomeAppIntentError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252791A94(v0, v4, type metadata accessor for HomeAppIntentError);
  result = swift_getEnumCaseMultiPayload();
  if (result > 5)
  {
    if (result > 8)
    {
      if (result != 9 && result != 10)
      {
        return 11;
      }
    }

    else if (result == 6)
    {
      sub_252791BB4(v4, type metadata accessor for HomeAppIntentError);
      return 8;
    }

    else if (result == 7)
    {
      return 3;
    }

    else
    {
      return 6;
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      return 4;
    }

    else if (result == 4)
    {
      return 5;
    }

    else
    {
      return 7;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      v6 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48) + 8];

      sub_25278E110(v4);
      return 1;
    }

    else
    {
      v8 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48) + 8];

      sub_25278E110(v4);
      return 2;
    }
  }

  else
  {
    v7 = *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48) + 8];

    sub_25278E110(v4);
    return 0;
  }

  return result;
}

unint64_t HomeAppIntentError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_2528BECF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeAppIntentError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = sub_25278DFE0(MEMORY[0x277D84F90]);
  sub_252791A94(v1, v10, type metadata accessor for HomeAppIntentError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if ((EnumCaseMultiPayload - 7) >= 5)
    {
      v22 = *(v10 + 2);
      if (*v10 != 63)
      {
        v32 = *(v10 + 1);
        v43 = *v10;
        v33 = AttributeKind.rawValue.getter();
        v34 = MEMORY[0x277D837D0];
        v45 = MEMORY[0x277D837D0];
        *&v44 = v33;
        *(&v44 + 1) = v35;
        sub_252712E3C(&v44, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v18;
        sub_25278BE40(v42, 0x7475626972747461, 0xED0000646E694B65, isUniquelyReferenced_nonNull_native);
        v37 = v41;
        v45 = v34;
        *&v44 = v32;
        *(&v44 + 1) = v22;
        sub_252712E3C(&v44, v42);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        v41 = v37;
        v28 = 0x80000002528E5890;
        v27 = 0xD000000000000010;
        goto LABEL_14;
      }

      v23 = *(v10 + 2);
    }
  }

  else if (EnumCaseMultiPayload >= 3)
  {
    if (*v10 != 63)
    {
      v43 = *v10;
      v24 = AttributeKind.rawValue.getter();
      v45 = MEMORY[0x277D837D0];
      *&v44 = v24;
      *(&v44 + 1) = v25;
      sub_252712E3C(&v44, v42);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v18;
      v27 = 0x7475626972747461;
      v28 = 0xED0000646E694B65;
LABEL_14:
      sub_25278BE40(v42, v27, v28, v26);
      return v41;
    }
  }

  else
  {
    v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCDD0, &qword_2528C5CE0) + 48)];
    v21 = *(v20 + 1);
    v40 = *v20;
    sub_25274AA0C(v10, v17, &qword_27F4FC628, &qword_2528C4750);
    sub_25274AA0C(v17, v15, &qword_27F4FC628, &qword_2528C4750);
    if ((*(v3 + 48))(v15, 1, v2) == 1)
    {
      sub_25278E110(v15);
      if (!v21)
      {
        return v18;
      }

      goto LABEL_12;
    }

    (*(v3 + 32))(v6, v15, v2);
    v29 = sub_2528BECB0();
    v45 = MEMORY[0x277D837D0];
    *&v44 = v29;
    *(&v44 + 1) = v30;
    sub_252712E3C(&v44, v42);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v41 = v18;
    sub_25278BE40(v42, 25705, 0xE200000000000000, v31);
    (*(v3 + 8))(v6, v2);
    v18 = v41;
    if (v21)
    {
LABEL_12:
      v45 = MEMORY[0x277D837D0];
      *&v44 = v40;
      *(&v44 + 1) = v21;
      sub_252712E3C(&v44, v42);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v18;
      v27 = 1701667182;
      v28 = 0xE400000000000000;
      goto LABEL_14;
    }
  }

  return v18;
}

uint64_t sub_25278556C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17[-v6];
  v8 = [a1 userInfo];
  v9 = sub_2528C08D0();

  if (*(v9 + 16) && (v10 = sub_252785B30(25705, 0xE200000000000000), (v11 & 1) != 0))
  {
    sub_25272BF98(*(v9 + 56) + 32 * v10, v17);

    if (swift_dynamicCast())
    {
      sub_2528BECA0();

      v12 = sub_2528BECF0();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v7, 1, v12) != 1)
      {
        (*(v13 + 32))(a2, v7, v12);
        return (*(v13 + 56))(a2, 0, 1, v12);
      }

      sub_25278E110(v7);
    }
  }

  else
  {
  }

  v14 = sub_2528BECF0();
  return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
}

unint64_t sub_2527857C4(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v5 = sub_2528C1180();

  return sub_252786EFC(a1 & 1, v5);
}

unint64_t sub_252785868(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v5 = sub_2528C1180();

  return sub_252787040(a1 & 1, v5);
}

unint64_t sub_252785918(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_252787184(a1, v4);
}

unint64_t sub_252785A50(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_2527873E8(a1, v4);
}

unint64_t sub_252785B30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();
  v6 = sub_2528C1180();

  return sub_252787578(a1, a2, v6);
}

unint64_t sub_252785BD4(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  DeviceEntity.hash(into:)(v6);
  v4 = sub_2528C1180();

  return sub_25278774C(a1, v4);
}

unint64_t sub_252785C40(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528BECF0();
  v5 = MEMORY[0x277CC95F0];
  sub_252791B6C(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
  v6 = sub_2528C0900();
  return sub_2527878AC(a1, v6, MEMORY[0x277CC95F0], &qword_27F4FC680, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_252785D14(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528BF9D0();
  v5 = MEMORY[0x277D15AC0];
  sub_252791B6C(&qword_27F4FD230, MEMORY[0x277D15AC0]);
  v6 = sub_2528C0900();
  return sub_2527878AC(a1, v6, MEMORY[0x277D15AC0], &qword_27F4FD238, v5, MEMORY[0x277D15AD0]);
}

unint64_t sub_252785DE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528BFB20();
  v5 = MEMORY[0x277D15C30];
  sub_252791B6C(&qword_27F4FD1E8, MEMORY[0x277D15C30]);
  v6 = sub_2528C0900();
  return sub_2527878AC(a1, v6, MEMORY[0x277D15C30], &qword_27F4FD1F0, v5, MEMORY[0x277D15C48]);
}

unint64_t sub_252785EBC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528BFDE0();
  v5 = MEMORY[0x277D16348];
  sub_252791B6C(&qword_27F4FC798, MEMORY[0x277D16348]);
  v6 = sub_2528C0900();
  return sub_2527878AC(a1, v6, MEMORY[0x277D16348], &qword_27F4FC7A0, v5, MEMORY[0x277D16360]);
}

unint64_t sub_252785FBC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_2527885B4(a1, v4);
}

unint64_t sub_252786084(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v5 = sub_2528C1180();

  return sub_252788748(a1 & 1, v5);
}

unint64_t sub_252786128(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v5 = sub_2528C1180();

  return sub_25278888C(a1 & 1, v5);
}

unint64_t sub_2527861D0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_2527889D0(a1, v4);
}

unint64_t sub_25278628C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_252788B58(a1, v4);
}

unint64_t sub_2527863A0(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_252788D70(a1, v4);
}

unint64_t sub_252786470(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_252788F10(a1, v4);
}

unint64_t sub_252786554(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_2527890AC(a1, v4);
}

unint64_t sub_252786654(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_252789660(a1, v4);
}

unint64_t sub_252786710(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_252789F0C(a1, v4);
}

unint64_t sub_252786804(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_25278A0E0(a1, v4);
}

unint64_t sub_2527868FC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_25278A2B4(a1, v4);
}

unint64_t sub_252786A08(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v5 = sub_2528C1180();

  return sub_25278A4B8(a1 & 1, v5);
}

unint64_t sub_252786AB8(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v5 = sub_2528C1180();

  return sub_25278A5FC(a1 & 1, v5);
}

uint64_t sub_252786B48(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  v7 = sub_2528C1130();
  a2(v7);
  sub_2528C0A40();

  v8 = sub_2528C1180();

  return a3(a1, v8);
}

unint64_t sub_252786BE8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528BF0B0();
  v5 = MEMORY[0x277D15558];
  sub_252791B6C(&qword_27F4FD1B8, MEMORY[0x277D15558]);
  v6 = sub_2528C0900();
  return sub_2527878AC(a1, v6, MEMORY[0x277D15558], &qword_27F4FD1C0, v5, MEMORY[0x277D15588]);
}

unint64_t sub_252786CBC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v4 = sub_2528C1180();

  return sub_25278AFB0(a1, v4);
}

unint64_t sub_252786DD0(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v5 = sub_2528C1180();

  return sub_25278B1C4(a1 & 1, v5);
}

unint64_t sub_252786E74(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2528C0D50();

  return sub_25278B2FC(a1, v5);
}

unint64_t sub_252786EB8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_2528BB1EC();

  return sub_25278B3D0(a1, v4);
}

unint64_t sub_252786EFC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7465736E7573;
    }

    else
    {
      v6 = 0x657369726E7573;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7465736E7573 : 0x657369726E7573;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252787040(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6F48657669727261;
    }

    else
    {
      v6 = 0x6D6F48657661656CLL;
    }

    if (a1)
    {
      v7 = 0xEA0000000000656DLL;
    }

    else
    {
      v7 = 0xE900000000000065;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6F48657669727261 : 0x6D6F48657661656CLL;
      v9 = *(*(v2 + 48) + v4) ? 0xEA0000000000656DLL : 0xE900000000000065;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2528C1060();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252787184(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
          v8 = 0x7065656C73;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x6966654472657375;
          }

          else
          {
            v8 = 1701736302;
          }

          if (v7 == 4)
          {
            v9 = 0xEB0000000064656ELL;
          }

          else
          {
            v9 = 0xE400000000000000;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 0x61706544656D6F68;
        }

        else
        {
          v8 = 0x7055656B6177;
        }

        if (v7 == 1)
        {
          v9 = 0xED00006572757472;
        }

        else
        {
          v9 = 0xE600000000000000;
        }
      }

      else
      {
        v8 = 0x69727241656D6F68;
        v9 = 0xEB000000006C6176;
      }

      v10 = 0x6966654472657375;
      if (v6 != 4)
      {
        v10 = 1701736302;
      }

      v11 = 0xEB0000000064656ELL;
      if (v6 != 4)
      {
        v11 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v10 = 0x7065656C73;
        v11 = 0xE500000000000000;
      }

      v12 = 0x61706544656D6F68;
      if (v6 != 1)
      {
        v12 = 0x7055656B6177;
      }

      v13 = 0xED00006572757472;
      if (v6 != 1)
      {
        v13 = 0xE600000000000000;
      }

      if (!v6)
      {
        v12 = 0x69727241656D6F68;
        v13 = 0xEB000000006C6176;
      }

      v14 = v6 <= 2 ? v12 : v10;
      v15 = v6 <= 2 ? v13 : v11;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_2528C1060();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2527873E8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v18 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v20 + 48) + v4) == 2 ? 0x656369746F6ELL : 0x686372616573;
      v7 = *(*(v20 + 48) + v4) ? 0x6B6E694C70656564 : 0x726577736E61;
      v8 = *(*(v20 + 48) + v4) ? 0xE800000000000000 : 0xE600000000000000;
      v9 = *(*(v20 + 48) + v4) <= 1u ? v7 : v6;
      v10 = *(*(v20 + 48) + v4) <= 1u ? v8 : 0xE600000000000000;
      v11 = v5 == 2 ? 0x656369746F6ELL : 0x686372616573;
      v12 = v5 ? 0x6B6E694C70656564 : 0x726577736E61;
      v13 = v5 ? 0xE800000000000000 : 0xE600000000000000;
      v14 = v5 <= 1 ? v12 : v11;
      v15 = v5 <= 1 ? v13 : 0xE600000000000000;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = sub_2528C1060();

      if ((v16 & 1) == 0)
      {
        v4 = (v4 + 1) & v18;
        if ((*(v19 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252787578(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2528C1060())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_252787630(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    while (1)
    {
      v15 = *(*(v6 + 48) + v5);
      v8 = AttributeKind.rawValue.getter();
      v10 = v9;
      if (v8 == AttributeKind.rawValue.getter() && v10 == v11)
      {
        break;
      }

      v13 = sub_2528C1060();

      if ((v13 & 1) == 0)
      {
        v5 = (v5 + 1) & v7;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_25278774C(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for DeviceEntity();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_252791A94(*(v2 + 48) + v13 * v11, v9, type metadata accessor for DeviceEntity);
      v14 = _s14HomeAppIntents12DeviceEntityV2eeoiySbAC_ACtFZ_0(v9, a1);
      sub_252791BB4(v9, type metadata accessor for DeviceEntity);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2527878AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_252791B6C(v24, v25);
      v20 = sub_2528C0930();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_252787A4C(uint64_t a1, uint64_t a2)
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

unint64_t sub_252787AB8(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4850;
          break;
        case 2:
          break;
        case 3:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000002528E4870;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4890;
          break;
        case 5:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E48B0;
          break;
        case 6:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E48D0;
          break;
        case 7:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E48F0;
          break;
        case 8:
          v8 = 0xD000000000000013;
          v7 = 0x80000002528E4910;
          break;
        case 9:
          v8 = 0xD000000000000011;
          v7 = 0x80000002528E4930;
          break;
        case 0xA:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4950;
          break;
        case 0xB:
          v8 = 0xD00000000000001CLL;
          v7 = 0x80000002528E4970;
          break;
        case 0xC:
          v8 = 0xD000000000000020;
          v7 = 0x80000002528E4990;
          break;
        case 0xD:
          v8 = 0xD000000000000014;
          v7 = 0x80000002528E49C0;
          break;
        case 0xE:
          v7 = 0xEC00000064656B63;
          v8 = 0x6F4C656369766564;
          break;
        case 0xF:
          v8 = 0x6544737365636361;
          v7 = 0xEC0000006465696ELL;
          break;
        case 0x10:
          v8 = 0xD000000000000010;
          v7 = 0x80000002528E49F0;
          break;
        case 0x11:
          v8 = 0xD000000000000012;
          v7 = 0x80000002528E4A10;
          break;
        case 0x12:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E4A30;
          break;
        case 0x13:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000002528E4A50;
          break;
        default:
          v8 = 0xD000000000000014;
          v7 = 0x80000002528E4830;
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 1:
          v9 = 0x80000002528E4850;
          if (v8 == 0xD000000000000015)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          goto LABEL_59;
        case 3:
          v9 = 0x80000002528E4870;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v9 = 0x80000002528E4890;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v9 = 0x80000002528E48B0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v9 = 0x80000002528E48D0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v9 = 0x80000002528E48F0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v10 = 0xD000000000000013;
          v9 = 0x80000002528E4910;
LABEL_59:
          if (v8 == v10)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 9:
          v9 = 0x80000002528E4930;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v9 = 0x80000002528E4950;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v9 = 0x80000002528E4970;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v9 = 0x80000002528E4990;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v9 = 0x80000002528E49C0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v9 = 0xEC00000064656B63;
          if (v8 != 0x6F4C656369766564)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v9 = 0xEC0000006465696ELL;
          if (v8 != 0x6544737365636361)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v9 = 0x80000002528E49F0;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v9 = 0x80000002528E4A10;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 18:
          v9 = 0x80000002528E4A30;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v9 = 0x80000002528E4A50;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
          v9 = 0x80000002528E4830;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_61:
          v11 = sub_2528C1060();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_252788010(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001DLL;
          v7 = 0x80000002528E4A90;
          break;
        case 2:
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4AB0;
          break;
        case 4:
          v8 = 0xD00000000000001ALL;
          v7 = 0x80000002528E4AD0;
          break;
        case 5:
          v7 = 0xE800000000000000;
          v8 = 0x6B63757453637672;
          break;
        case 6:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000002528E4B00;
          break;
        case 7:
          v8 = 0xD000000000000011;
          v7 = 0x80000002528E4B20;
          break;
        case 8:
          v8 = 0x4274737544637672;
          v7 = 0xEE006C6C75466E69;
          break;
        case 9:
          v8 = 0xD000000000000013;
          v7 = 0x80000002528E4B50;
          break;
        case 0xA:
          v8 = 0xD000000000000011;
          v7 = 0x80000002528E4B70;
          break;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x80000002528E4B90;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4BB0;
          break;
        case 0xD:
          v8 = 0x6574746142637672;
          v7 = 0xED0000776F4C7972;
          break;
        case 0xE:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4BE0;
          break;
        case 0xF:
          v8 = 0xD000000000000015;
          v7 = 0x80000002528E4C00;
          break;
        case 0x10:
          v8 = 0xD000000000000018;
          v7 = 0x80000002528E4C20;
          break;
        case 0x11:
          v8 = 0x6C65656857637672;
          v7 = 0xEF64656D6D614A73;
          break;
        case 0x12:
          v8 = 0x6873757242637672;
          v7 = 0xEE0064656D6D614ALL;
          break;
        case 0x13:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000002528E4C60;
          break;
        default:
          v8 = 0xD000000000000016;
          v7 = 0x80000002528E4A70;
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      switch(a1)
      {
        case 1:
          v9 = 0x80000002528E4A90;
          if (v8 == 0xD00000000000001DLL)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          goto LABEL_59;
        case 3:
          v9 = 0x80000002528E4AB0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v9 = 0x80000002528E4AD0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v9 = 0xE800000000000000;
          if (v8 != 0x6B63757453637672)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v9 = 0x80000002528E4B00;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v9 = 0x80000002528E4B20;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v10 = 0x4274737544637672;
          v9 = 0xEE006C6C75466E69;
LABEL_59:
          if (v8 == v10)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 9:
          v9 = 0x80000002528E4B50;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v9 = 0x80000002528E4B70;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v9 = 0x80000002528E4B90;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v9 = 0x80000002528E4BB0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v9 = 0xED0000776F4C7972;
          if (v8 != 0x6574746142637672)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v9 = 0x80000002528E4BE0;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v9 = 0x80000002528E4C00;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v9 = 0x80000002528E4C20;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v9 = 0xEF64656D6D614A73;
          if (v8 != 0x6C65656857637672)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 18:
          v9 = 0xEE0064656D6D614ALL;
          if (v8 != 0x6873757242637672)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v9 = 0x80000002528E4C60;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
          v9 = 0x80000002528E4A70;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_61:
          v11 = sub_2528C1060();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2527885B4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x73656E656373;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0x657469726F766166;
          v7 = 0xE900000000000073;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v8 != 0x736172656D6163)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE700000000000000;
        v8 = 0x736172656D6163;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x73656E656373;
      }

      else
      {
        v10 = 0x657469726F766166;
      }

      if (v9 == 1)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE900000000000073;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_2528C1060();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}