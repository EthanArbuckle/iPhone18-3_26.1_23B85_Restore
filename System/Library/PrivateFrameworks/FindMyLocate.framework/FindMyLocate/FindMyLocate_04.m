uint64_t sub_1B8016E00()
{
  v1 = *(*v0 + 1872);
  v2 = *(*v0 + 1656);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8016F10, v2, 0);
}

uint64_t sub_1B8016F10()
{
  v1 = (v0 + 1248);
  v2 = *(v0 + 1760);
  v3 = *(v0 + 1744);
  v4 = *(v0 + 1736);
  sub_1B7FB8448(*(v0 + 1656) + *(v0 + 1840), v2, &qword_1EBA66088, &qword_1B80D2CF0);
  if ((*(v3 + 48))(v2, 1, v4))
  {
    v5 = *(v0 + 1760);
    v6 = *(v0 + 1688);
    v7 = *(v0 + 1680);
    sub_1B7FCAD28(v0 + 1248);
    sub_1B803380C(v7, type metadata accessor for Location);
    sub_1B803380C(v6, type metadata accessor for Location);
    sub_1B7FB86D4(v5, &qword_1EBA66088, &qword_1B80D2CF0);
    v8 = 1;
  }

  else
  {
    v9 = *(v0 + 1776);
    v10 = *(v0 + 1760);
    v11 = *(v0 + 1752);
    v12 = *(v0 + 1744);
    v13 = *(v0 + 1736);
    v14 = *(v0 + 1728);
    v15 = *(v0 + 1720);
    v97 = *(v0 + 1688);
    v16 = *(v0 + 1680);
    (*(v12 + 16))(v11, v10, v13);
    sub_1B7FB86D4(v10, &qword_1EBA66088, &qword_1B80D2CF0);
    v17 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
    sub_1B80337A4(v16, v14, type metadata accessor for Location);
    v19 = *(v0 + 1264);
    v18 = *(v0 + 1280);
    *v17 = *v1;
    v17[1] = v19;
    v17[2] = v18;
    v20 = *(v0 + 1344);
    v22 = *(v0 + 1296);
    v21 = *(v0 + 1312);
    v17[5] = *(v0 + 1328);
    v17[6] = v20;
    v17[3] = v22;
    v17[4] = v21;
    v23 = *(v0 + 1408);
    v25 = *(v0 + 1360);
    v24 = *(v0 + 1376);
    v17[9] = *(v0 + 1392);
    v17[10] = v23;
    v17[7] = v25;
    v17[8] = v24;
    swift_storeEnumTagMultiPayload();
    sub_1B80C92EC();
    (*(v12 + 8))(v11, v13);
    sub_1B803380C(v16, type metadata accessor for Location);
    sub_1B803380C(v97, type metadata accessor for Location);
    v8 = 0;
  }

  v26 = *(v0 + 1776);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
  (*(*(v27 - 8) + 56))(v26, v8, 1, v27);
  result = sub_1B7FB86D4(v26, &qword_1EBA660D0, &qword_1B80D2E90);
  v29 = *(v0 + 1864);
  v30 = *(v0 + 1856);
  if (v30)
  {
    v31 = *(v0 + 1848);
LABEL_14:
    v36 = *(v0 + 1800);
    v37 = *(v0 + 1792);
    v38 = *(v0 + 1704);
    v39 = *(v0 + 1696);
    v40 = *(v0 + 1672);
    v41 = (v30 - 1) & v30;
    v42 = __clz(__rbit64(v30)) | (v29 << 6);
    v43 = (*(v31 + 48) + 176 * v42);
    v45 = v43[1];
    v44 = v43[2];
    *(v0 + 896) = *v43;
    *(v0 + 912) = v45;
    *(v0 + 928) = v44;
    v46 = v43[6];
    v48 = v43[3];
    v47 = v43[4];
    *(v0 + 976) = v43[5];
    *(v0 + 992) = v46;
    *(v0 + 944) = v48;
    *(v0 + 960) = v47;
    v49 = v43[10];
    v51 = v43[7];
    v50 = v43[8];
    *(v0 + 1040) = v43[9];
    *(v0 + 1056) = v49;
    *(v0 + 1008) = v51;
    *(v0 + 1024) = v50;
    sub_1B80337A4(*(v31 + 56) + *(v40 + 72) * v42, v39, type metadata accessor for Location);
    v52 = *(v37 + 48);
    v54 = *(v0 + 912);
    v53 = *(v0 + 928);
    *v38 = *(v0 + 896);
    v38[1] = v54;
    v38[2] = v53;
    v55 = *(v0 + 944);
    v56 = *(v0 + 960);
    v57 = *(v0 + 992);
    v38[5] = *(v0 + 976);
    v38[6] = v57;
    v38[3] = v55;
    v38[4] = v56;
    v58 = *(v0 + 1008);
    v59 = *(v0 + 1024);
    v60 = *(v0 + 1056);
    v38[9] = *(v0 + 1040);
    v38[10] = v60;
    v38[7] = v58;
    v38[8] = v59;
    sub_1B80344D4(v39, v38 + v52, type metadata accessor for Location);
    (*(v36 + 56))(v38, 0, 1, v37);
    sub_1B7FC8DA4(v0 + 896, v0 + 1072);
    v34 = v29;
LABEL_15:
    *(v0 + 1864) = v34;
    *(v0 + 1856) = v41;
    v61 = *(v0 + 1800);
    v62 = *(v0 + 1792);
    v63 = *(v0 + 1712);
    sub_1B7FC8F2C(*(v0 + 1704), v63, &qword_1EBA660C8, &qword_1B80D2E88);
    if ((*(v61 + 48))(v63, 1, v62) == 1)
    {
      v64 = *(v0 + 1848);

      v65 = *(v0 + 1808);
      v66 = *(v0 + 1784);
      v67 = *(v0 + 1776);
      v68 = *(v0 + 1768);
      v69 = *(v0 + 1760);
      v70 = *(v0 + 1752);
      v71 = *(v0 + 1728);
      v72 = *(v0 + 1712);
      v73 = *(v0 + 1704);
      v74 = *(v0 + 1696);
      v96 = *(v0 + 1688);
      v98 = *(v0 + 1680);

      v75 = *(v0 + 8);

      return v75();
    }

    else
    {
      v76 = *(v0 + 1792);
      v77 = *(v0 + 1712);
      v78 = *(v0 + 1688);
      v80 = v77[1];
      v79 = v77[2];
      *v1 = *v77;
      *(v0 + 1264) = v80;
      *(v0 + 1280) = v79;
      v81 = v77[6];
      v83 = v77[3];
      v82 = v77[4];
      *(v0 + 1328) = v77[5];
      *(v0 + 1344) = v81;
      *(v0 + 1296) = v83;
      *(v0 + 1312) = v82;
      v84 = v77[10];
      v86 = v77[7];
      v85 = v77[8];
      *(v0 + 1392) = v77[9];
      *(v0 + 1408) = v84;
      *(v0 + 1360) = v86;
      *(v0 + 1376) = v85;
      sub_1B80344D4(v77 + *(v76 + 48), v78, type metadata accessor for Location);
      v87 = *(v0 + 1344);
      *(v0 + 1536) = *(v0 + 1360);
      v88 = *(v0 + 1392);
      *(v0 + 1552) = *(v0 + 1376);
      *(v0 + 1568) = v88;
      *(v0 + 1584) = *(v0 + 1408);
      v89 = *(v0 + 1280);
      *(v0 + 1472) = *(v0 + 1296);
      v90 = *(v0 + 1328);
      *(v0 + 1488) = *(v0 + 1312);
      *(v0 + 1504) = v90;
      *(v0 + 1520) = v87;
      v91 = *(v0 + 1264);
      *(v0 + 1424) = *v1;
      *(v0 + 1440) = v91;
      *(v0 + 1456) = v89;
      v92 = swift_task_alloc();
      *(v0 + 1872) = v92;
      *v92 = v0;
      v92[1] = sub_1B8016E00;
      v93 = *(v0 + 1688);
      v94 = *(v0 + 1680);
      v95 = *(v0 + 1656);

      return sub_1B8026644(v94, (v0 + 1424), v93);
    }
  }

  else
  {
    v32 = ((1 << *(v0 + 1880)) + 63) >> 6;
    if (v32 <= (v29 + 1))
    {
      v33 = v29 + 1;
    }

    else
    {
      v33 = ((1 << *(v0 + 1880)) + 63) >> 6;
    }

    v34 = v33 - 1;
    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v32)
      {
        (*(*(v0 + 1800) + 56))(*(v0 + 1704), 1, 1, *(v0 + 1792));
        v41 = 0;
        goto LABEL_15;
      }

      v31 = *(v0 + 1848);
      v30 = *(v31 + 8 * v35 + 64);
      ++v29;
      if (v30)
      {
        v29 = v35;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B8017590(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 48) = *v5;
  *(v6 + 104) = *a3;
  *(v6 + 105) = *a4;
  *(v6 + 56) = *(a4 + 8);
  *(v6 + 72) = *(a4 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B80175FC, v5, 0);
}

uint64_t sub_1B80175FC()
{
  v1 = *(v0 + 72);
  v14 = *(v0 + 56);
  v2 = *(v0 + 105);
  v3 = *(v0 + 104);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v15 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v6;
  *(v8 + 32) = v3;
  *(v8 + 33) = 0;
  *(v8 + 40) = v2;
  *(v8 + 48) = v14;
  *(v8 + 64) = v1;
  *(v8 + 72) = v7;
  *(v8 + 80) = v5;
  v9 = *(MEMORY[0x1E69E8920] + 4);
  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *v10 = v0;
  v10[1] = sub_1B8017788;
  v12 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v12, v4, v15, 0xD000000000000049, 0x80000001B80CCA30, sub_1B8031CF4, v8, v11);
}

uint64_t sub_1B8017788()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B803490C, v4, 0);
  }

  else
  {
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B80178C4(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 104) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = *v6;
  *(v7 + 105) = *a3;
  *(v7 + 106) = *a5;
  *(v7 + 56) = *(a5 + 8);
  *(v7 + 72) = *(a5 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B8017934, v6, 0);
}

uint64_t sub_1B8017934()
{
  v1 = *(v0 + 72);
  v15 = *(v0 + 56);
  v2 = *(v0 + 106);
  v3 = *(v0 + 105);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 104);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v16 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v8;
  *(v9 + 32) = v3;
  *(v9 + 33) = v6;
  *(v9 + 40) = v2;
  *(v9 + 48) = v15;
  *(v9 + 64) = v1;
  *(v9 + 72) = v7;
  *(v9 + 80) = v5;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *v11 = v0;
  v11[1] = sub_1B8017AC4;
  v13 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v13, v4, v16, 0xD000000000000049, 0x80000001B80CCA30, sub_1B8034908, v9, v12);
}

uint64_t sub_1B8017AC4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B8017C00, v4, 0);
  }

  else
  {
    v5 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B8017C00()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_1B8017C64(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v45 = a7;
  v46 = a8;
  v42 = a5;
  v43 = a6;
  v40 = a4;
  v39 = a3;
  v47 = a11;
  v41 = a9;
  v36 = a10;
  v37 = a2;
  v12 = sub_1B80C8E9C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClientID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v35 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  v38 = sub_1B80C8A0C();
  v23 = swift_allocObject();
  swift_weakInit();
  (*(v19 + 16))(v22, a1, v18);
  sub_1B80337A4(v36, &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v25 = (v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 17) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v16 + 80) + v26 + 32) & ~*(v16 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  (*(v19 + 32))(v28 + v24, v22, v18);
  v29 = v28 + v25;
  *v29 = v39;
  *(v29 + 8) = v40;
  v30 = v43;
  *(v29 + 9) = v42;
  v31 = v28 + v26;
  *v31 = v30;
  v32 = v46;
  *(v31 + 8) = v45;
  *(v31 + 16) = v32;
  *(v31 + 24) = v41;
  sub_1B80344D4(v35, v28 + v27, type metadata accessor for ClientID);
  *(v28 + ((v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v47;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v33 = *(v37 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B8017FE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 136) = v15;
  *(v8 + 112) = a7;
  *(v8 + 120) = a8;
  *(v8 + 203) = a6;
  *(v8 + 202) = a5;
  *(v8 + 201) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *(v8 + 144) = v9;
  v10 = *(v9 - 8);
  *(v8 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80180E0, 0, 0);
}

uint64_t sub_1B80180E0()
{
  v23 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 176) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 203);
    *(v0 + 200) = *(v0 + 201);
    *(v0 + 16) = v3;
    v4 = *(v0 + 128);
    *(v0 + 24) = *(v0 + 112);
    *(v0 + 40) = v4;
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_1B8018394;
    v6 = *(v0 + 168);
    v7 = *(v0 + 136);
    v8 = *(v0 + 202);
    v9 = *(v0 + 104);

    return sub_1B8018654(v6, v9, (v0 + 200), v8, v0 + 16, v7);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v11 = sub_1B80C900C();
    __swift_project_value_buffer(v11, qword_1ED8DDF28);
    v12 = sub_1B80C8FEC();
    v13 = sub_1B80C941C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_1B7FB84FC(0xD000000000000049, 0x80000001B80CCA30, &v22);
      _os_log_impl(&dword_1B7FB5000, v12, v13, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v14, -1, -1);
    }

    v16 = *(v0 + 96);
    sub_1B8010040();
    v17 = swift_allocError();
    *v18 = 10;
    *(v0 + 72) = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
    sub_1B80C927C();
    v20 = *(v0 + 160);
    v19 = *(v0 + 168);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1B8018394()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1B8018594;
  }

  else
  {
    v3 = sub_1B80184A8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B80184A8()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[18];
  v4 = v0[12];
  (*(v2 + 16))(v0[20], v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
  sub_1B80C928C();

  (*(v2 + 8))(v1, v3);
  v6 = v0[20];
  v5 = v0[21];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B8018594()
{
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[12];
  v0[10] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B8, &qword_1B80D2E28);
  sub_1B80C927C();

  v6 = v0[20];
  v5 = v0[21];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B8018654(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 832) = a6;
  *(v7 + 840) = v6;
  *(v7 + 974) = a4;
  *(v7 + 824) = a2;
  *(v7 + 816) = a1;
  *(v7 + 848) = *v6;
  v10 = *(type metadata accessor for ClientID() - 8);
  *(v7 + 856) = v10;
  *(v7 + 864) = *(v10 + 64);
  *(v7 + 872) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0) - 8) + 64) + 15;
  *(v7 + 880) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C0, &qword_1B80D2E50);
  *(v7 + 888) = v12;
  v13 = *(v12 - 8);
  *(v7 + 896) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 904) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  *(v7 + 912) = v15;
  v16 = *(v15 - 8);
  *(v7 + 920) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 928) = swift_task_alloc();
  *(v7 + 975) = *a3;
  *(v7 + 976) = *a5;
  *(v7 + 936) = *(a5 + 8);
  *(v7 + 952) = *(a5 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B801888C, v6, 0);
}

unint64_t sub_1B801888C()
{
  v93 = v0;
  v1 = *(v0 + 824);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v5 = v3[1];
      v4 = v3[2];
      *(v0 + 16) = *v3;
      *(v0 + 32) = v5;
      *(v0 + 48) = v4;
      v6 = v3[6];
      v8 = v3[3];
      v7 = v3[4];
      *(v0 + 96) = v3[5];
      *(v0 + 112) = v6;
      *(v0 + 64) = v8;
      *(v0 + 80) = v7;
      v9 = v3[10];
      v11 = v3[7];
      v10 = v3[8];
      *(v0 + 160) = v3[9];
      *(v0 + 176) = v9;
      *(v0 + 128) = v11;
      *(v0 + 144) = v10;
      v12 = *(v0 + 975);
      v13 = v3[9];
      v90 = v3[8];
      v91 = v13;
      v92 = v3[10];
      v14 = v3[5];
      v86 = v3[4];
      v87 = v14;
      v15 = v3[7];
      v88 = v3[6];
      v89 = v15;
      v16 = v3[1];
      v82 = *v3;
      v83 = v16;
      v17 = v3[3];
      v84 = v3[2];
      v85 = v17;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      sub_1B8032820(&v82, v12);
      v18 = v91;
      *(v0 + 672) = v90;
      *(v0 + 688) = v18;
      *(v0 + 704) = v92;
      v19 = v87;
      *(v0 + 608) = v86;
      *(v0 + 624) = v19;
      v20 = v89;
      *(v0 + 640) = v88;
      *(v0 + 656) = v20;
      v21 = v83;
      *(v0 + 544) = v82;
      *(v0 + 560) = v21;
      v22 = v85;
      *(v0 + 576) = v84;
      *(v0 + 592) = v22;
      sub_1B7FCAD28(v0 + 544);
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  v23 = *(v0 + 928);
  v24 = *(v0 + 920);
  v25 = *(v0 + 912);
  v26 = *(v0 + 904);
  v27 = *(v0 + 896);
  v28 = *(v0 + 888);
  v29 = *(v0 + 880);
  v78 = *(v0 + 840);
  v80 = *(v0 + 974);
  v30 = *(v0 + 816);
  type metadata accessor for LocationStreamChange();
  (*(v27 + 104))(v26, *MEMORY[0x1E69E8650], v28);
  sub_1B80C92DC();
  (*(v27 + 8))(v26, v28);
  (*(v24 + 16))(v29, v23, v25);
  (*(v24 + 56))(v29, 0, 1, v25);
  v31 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B8032A88(v29, v78 + v31);
  swift_endAccess();
  v32 = *(v0 + 824);
  swift_beginAccess();
  if (v80 == 1)
  {

    sub_1B8031EE0(v33);
    swift_endAccess();
  }

  else
  {
    sub_1B8030C8C(v32);
    swift_endAccess();
  }

  v34 = *(v0 + 840);
  v35 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  v36 = *(v0 + 975);
  swift_beginAccess();
  v37 = *(v34 + v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v82 = *(v34 + v35);
  v39 = v82;
  *(v34 + v35) = 0x8000000000000000;
  result = sub_1B7FDA504(v36);
  v42 = v39[2];
  v43 = (v41 & 1) == 0;
  v44 = __OFADD__(v42, v43);
  v45 = v42 + v43;
  if (v44)
  {
    __break(1u);
    goto LABEL_24;
  }

  v36 = v41;
  if (v39[3] >= v45)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

LABEL_24:
    v66 = result;
    sub_1B809230C();
    result = v66;
    v39 = v82;
    *(v34 + v35) = v82;
    if ((v36 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  v46 = *(v0 + 975);
  sub_1B8090F00(v45, isUniquelyReferenced_nonNull_native);
  v39 = v82;
  result = sub_1B7FDA504(v46);
  if ((v36 & 1) != (v47 & 1))
  {

    return sub_1B80C986C();
  }

LABEL_14:
  *(v34 + v35) = v39;
  if ((v36 & 1) == 0)
  {
LABEL_15:
    v48 = *(v0 + 975);
    v39[(result >> 6) + 8] |= 1 << result;
    *(v39[6] + result) = v48;
    *(v39[7] + 8 * result) = MEMORY[0x1E69E7CD0];
    v49 = v39[2];
    v44 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v44)
    {
      __break(1u);
      return result;
    }

    v39[2] = v50;
  }

LABEL_17:
  v51 = *(v0 + 975);
  v52 = *(v0 + 824);
  v53 = v39[7] + 8 * result;

  sub_1B8031EE0(v54);
  swift_endAccess();

  if (v51 == 2)
  {
    v55 = sub_1B80C981C();
    v75 = 2;
  }

  else
  {
    v75 = 1;
    v55 = 1;
  }

  v56 = *(v0 + 952);
  v70 = *(v0 + 936);
  v68 = *(v0 + 975);
  v69 = *(v0 + 976);
  v72 = *(v0 + 944);
  v73 = *(v0 + 920);
  v76 = *(v0 + 912);
  v77 = *(v0 + 928);
  v79 = *(v0 + 904);
  v81 = *(v0 + 880);
  v57 = *(v0 + 872);
  v67 = *(v0 + 864);
  v58 = *(v0 + 856);
  v74 = *(v0 + 848);
  v59 = *(v0 + 840);
  v60 = *(v0 + 832);
  v61 = *(v0 + 824);

  v71 = *(v59 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue);
  v62 = swift_allocObject();
  swift_weakInit();
  sub_1B80337A4(v60, v57, type metadata accessor for ClientID);
  v63 = (*(v58 + 80) + 77) & ~*(v58 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = v62;
  *(v64 + 24) = v61;
  *(v64 + 32) = v68;
  *(v64 + 33) = *(v0 + 960);
  *(v64 + 36) = *(v0 + 963);
  *(v64 + 40) = v69;
  *(v64 + 41) = *(v0 + 967);
  *(v64 + 44) = *(v0 + 970);
  *(v64 + 48) = v70;
  *(v64 + 56) = v72;
  *(v64 + 64) = v56;
  *(v64 + 72) = v55 & 1;
  *(v64 + 73) = v75;
  *(v64 + 74) = 259;
  *(v64 + 76) = 0;
  sub_1B80344D4(v57, v64 + v63, type metadata accessor for ClientID);
  *(v64 + ((v67 + v63 + 7) & 0xFFFFFFFFFFFFFFF8)) = v74;

  sub_1B80C8A2C();

  (*(v73 + 8))(v77, v76);

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1B8018FD8(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 96) = a4;
  *(v6 + 24) = a5;
  *(v6 + 32) = v5;
  *(v6 + 16) = a1;
  *(v6 + 40) = *v5;
  *(v6 + 97) = *a2;
  *(v6 + 98) = *a3;
  *(v6 + 48) = *(a3 + 8);
  *(v6 + 64) = *(a3 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B8019048, v5, 0);
}

uint64_t sub_1B8019048()
{
  v1 = *(v0 + 64);
  v14 = *(v0 + 48);
  v2 = *(v0 + 98);
  v3 = *(v0 + 97);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 96);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v15 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v7;
  *(v9 + 32) = v3;
  *(v9 + 40) = v2;
  *(v9 + 48) = v14;
  *(v9 + 64) = v1;
  *(v9 + 72) = v6;
  *(v9 + 80) = v8;
  *(v9 + 88) = v5;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1B80191C4;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v11, v4, v15, 0xD00000000000004CLL, 0x80000001B80CCD30, sub_1B8033D94, v9, v12);
}

uint64_t sub_1B80191C4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B80192EC;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 32);

    v5 = sub_1B7FFAF5C;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80192EC()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_1B8019350(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v43 = a7;
  v44 = a8;
  v42 = a6;
  v38 = a4;
  v37 = a3;
  v35 = a2;
  v39 = a9;
  v40 = a5;
  v45 = a11;
  v12 = sub_1B80C8E9C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v41 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ClientID();
  v34 = *(v15 - 8);
  v16 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v33 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v36 = sub_1B80C8A0C();
  v22 = swift_allocObject();
  swift_weakInit();
  (*(v18 + 16))(v21, a1, v17);
  sub_1B80337A4(a10, &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v23 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v24 = (v23 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v34 + 80) + v25 + 33) & ~*(v34 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  (*(v18 + 32))(v27 + v23, v21, v17);
  v28 = v27 + v24;
  *v28 = v37;
  *(v28 + 8) = v38;
  v29 = v27 + v25;
  *v29 = v40;
  v30 = v43;
  *(v29 + 8) = v42;
  *(v29 + 16) = v30;
  *(v29 + 24) = v44;
  *(v29 + 32) = v39;
  sub_1B80344D4(v33, v27 + v26, type metadata accessor for ClientID);
  *(v27 + ((v16 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v31 = *(v35 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B80196DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = a8;
  *(v8 + 136) = v11;
  *(v8 + 171) = v10;
  *(v8 + 112) = a6;
  *(v8 + 120) = a7;
  *(v8 + 170) = a5;
  *(v8 + 169) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8019720, 0, 0);
}

uint64_t sub_1B8019720()
{
  v20 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 144) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 170);
    *(v0 + 168) = *(v0 + 169);
    *(v0 + 16) = v3;
    v4 = *(v0 + 128);
    *(v0 + 24) = *(v0 + 112);
    *(v0 + 40) = v4;
    v5 = swift_task_alloc();
    *(v0 + 152) = v5;
    *v5 = v0;
    v5[1] = sub_1B80199C0;
    v6 = *(v0 + 136);
    v7 = *(v0 + 171);
    v8 = *(v0 + 104);

    return sub_1B8019C0C(v8, (v0 + 168), v0 + 16, v7, v6);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v10 = sub_1B80C900C();
    __swift_project_value_buffer(v10, qword_1ED8DDF28);
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C941C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1B7FB84FC(0xD00000000000004CLL, 0x80000001B80CCD30, &v19);
      _os_log_impl(&dword_1B7FB5000, v11, v12, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1B8CB8970](v14, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    v15 = *(v0 + 96);
    sub_1B8010040();
    v16 = swift_allocError();
    *v17 = 10;
    *(v0 + 72) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    sub_1B80C927C();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1B80199C0()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_1B8019B5C;
  }

  else
  {
    v3 = sub_1B8019AD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8019AD4()
{
  v1 = v0[18];
  v2 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C928C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B8019B5C()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[12];
  v0[10] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C927C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B8019C0C(uint64_t a1, _BYTE *a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 832) = v5;
  *(v6 + 824) = a5;
  *(v6 + 918) = a4;
  *(v6 + 816) = a1;
  *(v6 + 840) = *v5;
  v9 = *(type metadata accessor for ClientID() - 8);
  *(v6 + 848) = v9;
  *(v6 + 856) = *(v9 + 64);
  *(v6 + 864) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0) - 8) + 64) + 15;
  *(v6 + 872) = swift_task_alloc();
  *(v6 + 919) = *a2;
  *(v6 + 920) = *a3;
  *(v6 + 880) = *(a3 + 8);
  *(v6 + 896) = *(a3 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1B8019D6C, v5, 0);
}

unint64_t sub_1B8019D6C()
{
  v104 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 816);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 816);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v93 = v7;
    *v6 = 136446723;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000004DLL, 0x80000001B80CCD80, &v93);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    v8 = MEMORY[0x1B8CB7B30](v5, &type metadata for Handle);
    v10 = sub_1B7FB84FC(v8, v9, &v93);

    *(v6 + 24) = v10;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s with handles: %{private,mask.hash}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = *(v0 + 872);
  v12 = *(v0 + 832);
  v13 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v12 + v13, v11, &qword_1EBA66088, &qword_1B80D2CF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  LODWORD(v12) = (*(*(v14 - 8) + 48))(v11, 1, v14);
  sub_1B7FB86D4(v11, &qword_1EBA66088, &qword_1B80D2CF0);
  if (v12 == 1)
  {
    v15 = sub_1B80C8FEC();
    v16 = sub_1B80C93FC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v93 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_1B7FB84FC(0xD00000000000004DLL, 0x80000001B80CCD80, &v93);
      _os_log_impl(&dword_1B7FB5000, v15, v16, "%{public}s locationContinuation is nil", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CB8970](v18, -1, -1);
      MEMORY[0x1B8CB8970](v17, -1, -1);
    }

    v19 = *(v0 + 872);
    v20 = *(v0 + 864);
    sub_1B8010040();
    swift_allocError();
    *v21 = 5;
    swift_willThrow();

    v22 = *(v0 + 8);
LABEL_32:

    return v22();
  }

  v23 = *(v0 + 832);
  v24 = *(v0 + 816);
  if (*(v0 + 918) == 1)
  {
    swift_beginAccess();

    sub_1B8031EE0(v25);
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    sub_1B8030C8C(v24);
    swift_endAccess();
  }

  v26 = *(v0 + 832);
  v27 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  v28 = *(v0 + 919);
  swift_beginAccess();
  v29 = *(v26 + v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v93 = *(v26 + v27);
  v31 = v93;
  *(v26 + v27) = 0x8000000000000000;
  result = sub_1B7FDA504(v28);
  v34 = v31[2];
  v35 = (v33 & 1) == 0;
  v36 = __OFADD__(v34, v35);
  v37 = v34 + v35;
  if (v36)
  {
    __break(1u);
    goto LABEL_36;
  }

  v28 = v33;
  if (v31[3] >= v37)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_19:
      *(v26 + v27) = v31;
      if ((v28 & 1) == 0)
      {
LABEL_20:
        v40 = *(v0 + 919);
        v31[(result >> 6) + 8] |= 1 << result;
        *(v31[6] + result) = v40;
        *(v31[7] + 8 * result) = MEMORY[0x1E69E7CD0];
        v41 = v31[2];
        v36 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v36)
        {
          __break(1u);
          return result;
        }

        v31[2] = v42;
      }

LABEL_22:
      v43 = *(v0 + 919);
      v44 = *(v0 + 816);
      v45 = v31[7] + 8 * result;

      sub_1B8031EE0(v46);
      swift_endAccess();

      if (v43 == 2)
      {
        v47 = sub_1B80C981C();
      }

      else
      {
        v47 = 1;
      }

      v48 = *(v0 + 896);
      v49 = *(v0 + 816);

      v50 = *(v49 + 16);
      if (v50)
      {
        v51 = (*(v0 + 816) + 32);
        do
        {
          v52 = *(v0 + 832);
          v54 = v51[1];
          v53 = v51[2];
          *(v0 + 16) = *v51;
          *(v0 + 32) = v54;
          *(v0 + 48) = v53;
          v55 = v51[6];
          v57 = v51[3];
          v56 = v51[4];
          *(v0 + 96) = v51[5];
          *(v0 + 112) = v55;
          *(v0 + 64) = v57;
          *(v0 + 80) = v56;
          v58 = v51[10];
          v60 = v51[7];
          v59 = v51[8];
          *(v0 + 160) = v51[9];
          *(v0 + 176) = v58;
          *(v0 + 128) = v60;
          *(v0 + 144) = v59;
          v61 = *(v0 + 919);
          v62 = v51[9];
          v101 = v51[8];
          v102 = v62;
          v103 = v51[10];
          v63 = v51[5];
          v97 = v51[4];
          v98 = v63;
          v64 = v51[7];
          v99 = v51[6];
          v100 = v64;
          v65 = v51[1];
          v93 = *v51;
          v94 = v65;
          v66 = v51[3];
          v95 = v51[2];
          v96 = v66;
          sub_1B7FC8DA4(v0 + 16, v0 + 192);
          sub_1B8032DE0(&v93, v61, v52);
          v67 = v102;
          *(v0 + 672) = v101;
          *(v0 + 688) = v67;
          *(v0 + 704) = v103;
          v68 = v98;
          *(v0 + 608) = v97;
          *(v0 + 624) = v68;
          v69 = v100;
          *(v0 + 640) = v99;
          *(v0 + 656) = v69;
          v70 = v94;
          *(v0 + 544) = v93;
          *(v0 + 560) = v70;
          v71 = v96;
          *(v0 + 576) = v95;
          *(v0 + 592) = v71;
          sub_1B7FCAD28(v0 + 544);
          v51 += 11;
          --v50;
        }

        while (v50);
      }

      v88 = *(v0 + 880);
      v85 = *(v0 + 919);
      v92 = *(v0 + 872);
      v72 = *(v0 + 864);
      v73 = *(v0 + 856);
      v74 = v47;
      v75 = *(v0 + 848);
      v89 = *(v0 + 896);
      v90 = *(v0 + 840);
      v76 = v43;
      v77 = *(v0 + 824);
      v78 = *(v0 + 816);
      if (v76 == 2)
      {
        v79 = 2;
      }

      else
      {
        v79 = 1;
      }

      v86 = v79;
      v87 = *(v0 + 920);
      v84 = v74 & 1;
      v91 = *(*(v0 + 832) + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue);
      v80 = swift_allocObject();
      swift_weakInit();
      sub_1B80337A4(v77, v72, type metadata accessor for ClientID);
      v81 = (*(v75 + 80) + 77) & ~*(v75 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = v80;
      *(v82 + 24) = v78;
      *(v82 + 32) = v85;
      *(v82 + 33) = *(v0 + 904);
      *(v82 + 36) = *(v0 + 907);
      *(v82 + 40) = v87;
      *(v82 + 41) = *(v0 + 911);
      *(v82 + 44) = *(v0 + 914);
      *(v82 + 48) = v88;
      *(v82 + 64) = v89;
      *(v82 + 72) = v84;
      *(v82 + 73) = v86;
      *(v82 + 74) = 259;
      *(v82 + 76) = 0;
      sub_1B80344D4(v72, v82 + v81, type metadata accessor for ClientID);
      *(v82 + ((v73 + v81 + 7) & 0xFFFFFFFFFFFFFFF8)) = v90;

      sub_1B80C8A2C();

      v22 = *(v0 + 8);
      goto LABEL_32;
    }

LABEL_36:
    v83 = result;
    sub_1B809230C();
    result = v83;
    v31 = v93;
    *(v26 + v27) = v93;
    if ((v28 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  v38 = *(v0 + 919);
  sub_1B8090F00(v37, isUniquelyReferenced_nonNull_native);
  v31 = v93;
  result = sub_1B7FDA504(v38);
  if ((v28 & 1) == (v39 & 1))
  {
    goto LABEL_19;
  }

  return sub_1B80C986C();
}

uint64_t sub_1B801A6B8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B801A70C, v3, 0);
}

uint64_t sub_1B801A70C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v1;
  *(v7 + 40) = v4;
  *(v7 + 48) = v3;
  v8 = *(MEMORY[0x1E69E8920] + 4);
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  v9[1] = sub_1B801A858;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v9, v2, v6, 0xD000000000000032, 0x80000001B80CCCB0, sub_1B8033AF8, v7, v10);
}

uint64_t sub_1B801A858()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B7FF8E48;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1B8011C90;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B801A980(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v29 = a5;
  v30 = a3;
  v32 = a4;
  v27 = a2;
  v7 = sub_1B80C8E9C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ClientID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v28 = sub_1B80C8A0C();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v17, a1, v13);
  sub_1B80337A4(v29, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v11 + 80) + v20 + 9) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  (*(v14 + 32))(v22 + v19, v17, v13);
  v23 = v22 + v20;
  *v23 = v30;
  *(v23 + 8) = v32;
  sub_1B80344D4(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ClientID);
  *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v24 = *(v27 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B801ACBC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 113) = a4;
  *(v5 + 72) = a3;
  *(v5 + 80) = a5;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B801ACE4, 0, 0);
}

uint64_t sub_1B801ACE4()
{
  v17 = v0;
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    *(v0 + 112) = *(v0 + 113);
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_1B801AF5C;
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);

    return sub_1B801B1A8(v5, (v0 + 112), v4);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v7 = sub_1B80C900C();
    __swift_project_value_buffer(v7, qword_1ED8DDF28);
    v8 = sub_1B80C8FEC();
    v9 = sub_1B80C941C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CCCB0, &v16);
      _os_log_impl(&dword_1B7FB5000, v8, v9, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v10, -1, -1);
    }

    v12 = *(v0 + 64);
    sub_1B8010040();
    v13 = swift_allocError();
    *v14 = 10;
    *(v0 + 40) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    sub_1B80C927C();
    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1B801AF5C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1B801B0F8;
  }

  else
  {
    v3 = sub_1B801B070;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B801B070()
{
  v1 = v0[11];
  v2 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C928C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B801B0F8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  v0[6] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C927C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B801B1A8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 672) = v3;
  *(v4 + 664) = a3;
  *(v4 + 656) = a1;
  v6 = *(type metadata accessor for ClientID() - 8);
  *(v4 + 680) = v6;
  *(v4 + 688) = *(v6 + 64);
  *(v4 + 696) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  *(v4 + 704) = v7;
  v8 = *(v7 - 8);
  *(v4 + 712) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 720) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0) - 8) + 64) + 15;
  *(v4 + 728) = swift_task_alloc();
  *(v4 + 736) = swift_task_alloc();
  *(v4 + 744) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B801B334, v3, 0);
}

uint64_t sub_1B801B334()
{
  v56 = v0;
  v51 = (v0 + 576);
  v1 = *(v0 + 656);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3;
      v5 = v3[2];
      *(v0 + 32) = v3[1];
      *(v0 + 48) = v5;
      *(v0 + 16) = v4;
      v6 = v3[3];
      v7 = v3[4];
      v8 = v3[6];
      *(v0 + 96) = v3[5];
      *(v0 + 112) = v8;
      *(v0 + 64) = v6;
      *(v0 + 80) = v7;
      v9 = v3[7];
      v10 = v3[8];
      v11 = v3[10];
      *(v0 + 160) = v3[9];
      *(v0 + 176) = v11;
      *(v0 + 128) = v9;
      *(v0 + 144) = v10;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      if (qword_1ED8DD848 != -1)
      {
        swift_once();
      }

      v12 = sub_1B80C900C();
      __swift_project_value_buffer(v12, qword_1ED8DDF28);
      sub_1B7FC8DA4(v0 + 16, v0 + 368);
      v13 = sub_1B80C8FEC();
      v14 = sub_1B80C941C();
      sub_1B7FCAD28(v0 + 16);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v55 = v16;
        *v15 = 136446723;
        *(v15 + 4) = sub_1B7FB84FC(0xD000000000000033, 0x80000001B80CCCF0, &v55);
        *(v15 + 12) = 2160;
        *(v15 + 14) = 1752392040;
        *(v15 + 22) = 2081;
        *(v15 + 24) = sub_1B7FB84FC(*(v0 + 16), *(v0 + 24), &v55);
        _os_log_impl(&dword_1B7FB5000, v13, v14, "%{public}s for handle: %{private,mask.hash}s", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8CB8970](v16, -1, -1);
        MEMORY[0x1B8CB8970](v15, -1, -1);
      }

      sub_1B7FCAD28(v0 + 16);
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  v17 = *(v0 + 672);
  v18 = *(v0 + 744);
  v19 = sub_1B8012F00();
  v20 = sub_1B802BDC8(v51, v18);
  if (*v21)
  {
    sub_1B8030C8C(*(v0 + 656));
  }

  (v20)(v51, 0);
  (v19)(v0 + 544, 0);
  v22 = *(v0 + 672);
  if ((sub_1B802AB10() & 1) == 0)
  {
    v23 = *(v0 + 736);
    v24 = *(v0 + 712);
    v25 = *(v0 + 704);
    v26 = *(v0 + 672);
    v27 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    swift_beginAccess();
    sub_1B7FB8448(v26 + v27, v23, &qword_1EBA66088, &qword_1B80D2CF0);
    v28 = (*(v24 + 48))(v23, 1, v25);
    v29 = *(v0 + 736);
    if (v28)
    {
      sub_1B7FB86D4(*(v0 + 736), &qword_1EBA66088, &qword_1B80D2CF0);
    }

    else
    {
      v30 = *(v0 + 720);
      v31 = *(v0 + 712);
      v32 = *(v0 + 704);
      (*(v31 + 16))(v30, *(v0 + 736), v32);
      sub_1B7FB86D4(v29, &qword_1EBA66088, &qword_1B80D2CF0);
      sub_1B80C92FC();
      (*(v31 + 8))(v30, v32);
    }

    v33 = *(v0 + 728);
    (*(*(v0 + 712) + 56))(v33, 1, 1, *(v0 + 704));
    swift_beginAccess();
    sub_1B8032A88(v33, v26 + v27);
    swift_endAccess();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v34 = sub_1B80C900C();
    __swift_project_value_buffer(v34, qword_1ED8DDF28);
    v35 = sub_1B80C8FEC();
    v36 = sub_1B80C941C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_1B7FB84FC(0xD000000000000033, 0x80000001B80CCCF0, &v55);
      _os_log_impl(&dword_1B7FB5000, v35, v36, "%{public}s Clear locationContinuation and empty cached locations since empty handles", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1B8CB8970](v38, -1, -1);
      MEMORY[0x1B8CB8970](v37, -1, -1);
    }
  }

  v39 = *(v0 + 744);
  v52 = *(v0 + 736);
  v53 = *(v0 + 728);
  v54 = *(v0 + 720);
  v40 = *(v0 + 696);
  v41 = *(v0 + 688);
  v42 = *(v0 + 680);
  v43 = *(v0 + 664);
  v44 = *(v0 + 656);
  v45 = *(*(v0 + 672) + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue);
  v46 = swift_allocObject();
  swift_weakInit();
  sub_1B80337A4(v43, v40, type metadata accessor for ClientID);
  v47 = (*(v42 + 80) + 33) & ~*(v42 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = v44;
  *(v48 + 32) = v39;
  sub_1B80344D4(v40, v48 + v47, type metadata accessor for ClientID);

  sub_1B80C8A2C();

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1B801B980(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B801B9C8, v1, 0);
}

uint64_t sub_1B801B9C8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v5 = swift_task_alloc();
  v0[5] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1B801BB04;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, v1, v4, 0xD000000000000021, 0x80000001B80CCC50, sub_1B803386C, v5, v8);
}

uint64_t sub_1B801BB04()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1B7FFF194;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 24);

    v5 = sub_1B8011C90;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B801BC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v21 = a2;
  v22 = a1;
  v4 = sub_1B80C8E9C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = type metadata accessor for ClientID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v20 - v12;
  v23 = sub_1B80C8A0C();
  v14 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v13, v22, v9);
  sub_1B80337A4(v24, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v16 = (v11 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  (*(v10 + 32))(v17 + v15, v13, v9);
  sub_1B80344D4(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ClientID);
  *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v18 = *(v21 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B801BF2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B801BF50, 0, 0);
}

uint64_t sub_1B801BF50()
{
  v16 = v0;
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1B801C1B8;
    v4 = v0[9];

    return sub_1B801C404(v4);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v6 = sub_1B80C900C();
    __swift_project_value_buffer(v6, qword_1ED8DDF28);
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C941C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CCC50, &v15);
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v11 = v0[8];
    sub_1B8010040();
    v12 = swift_allocError();
    *v13 = 10;
    v0[5] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    sub_1B80C927C();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B801C1B8()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1B801C354;
  }

  else
  {
    v3 = sub_1B801C2CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B801C2CC()
{
  v1 = v0[10];
  v2 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C928C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B801C354()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[8];
  v0[6] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C927C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B801C404(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  v3 = *(type metadata accessor for ClientID() - 8);
  v2[14] = v3;
  v2[15] = *(v3 + 64);
  v2[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v6 = *(v5 + 64) + 15;
  v2[19] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0) - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B801C59C, v1, 0);
}

uint64_t sub_1B801C59C()
{
  v35 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v34 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CCC80, &v34);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s for all", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[12];
  v10 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v9 + v10, v6, &qword_1EBA66088, &qword_1B80D2CF0);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = v0[21];
  if (v11)
  {
    sub_1B7FB86D4(v0[21], &qword_1EBA66088, &qword_1B80D2CF0);
  }

  else
  {
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    (*(v14 + 16))(v13, v0[21], v15);
    sub_1B7FB86D4(v12, &qword_1EBA66088, &qword_1B80D2CF0);
    sub_1B80C92FC();
    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[20];
  v32 = v0[21];
  v33 = v0[19];
  v17 = v0[16];
  v19 = v0[14];
  v18 = v0[15];
  v20 = v0[12];
  v31 = v0[13];
  v21 = v0[11];
  (*(v0[18] + 56))(v16, 1, 1, v0[17]);
  swift_beginAccess();
  sub_1B8032A88(v16, v9 + v10);
  swift_endAccess();
  v22 = sub_1B8083354(MEMORY[0x1E69E7CC0]);
  v23 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  v24 = *(v20 + v23);
  *(v20 + v23) = v22;

  v25 = *(v20 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue);
  v26 = swift_allocObject();
  swift_weakInit();
  sub_1B80337A4(v21, v17, type metadata accessor for ClientID);
  v27 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  sub_1B80344D4(v17, v28 + v27, type metadata accessor for ClientID);
  *(v28 + ((v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;

  sub_1B80C8A2C();

  v29 = v0[1];

  return v29();
}

uint64_t sub_1B801C9B8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5, _BYTE *a6)
{
  *(v7 + 104) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = v6;
  *(v7 + 24) = a2;
  *(v7 + 48) = *v6;
  *(v7 + 105) = *a1;
  *(v7 + 56) = *(a1 + 8);
  *(v7 + 72) = *(a1 + 24);
  *(v7 + 106) = *a4;
  *(v7 + 107) = *a6;
  return MEMORY[0x1EEE6DFA0](sub_1B801CA30, v6, 0);
}

uint64_t sub_1B801CA30()
{
  v15 = *(v0 + 107);
  v1 = *(v0 + 106);
  v2 = *(v0 + 72);
  v14 = *(v0 + 56);
  v3 = *(v0 + 105);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v16 = v4;
  v6 = *(v0 + 104);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v17 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v14;
  *(v9 + 48) = v2;
  *(v9 + 56) = v7;
  *(v9 + 64) = v1;
  *(v9 + 65) = v6;
  *(v9 + 66) = v15;
  *(v9 + 72) = v8;
  *(v9 + 80) = v5;
  v10 = *(MEMORY[0x1E69E8920] + 4);
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v11 = v0;
  v11[1] = sub_1B801CBD4;

  return MEMORY[0x1EEE6DE38](v0 + 16, v16, v17, 0xD000000000000049, 0x80000001B80CCE30, sub_1B80345A4, v9, v12);
}

uint64_t sub_1B801CBD4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1B8017C00;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 40);

    v5 = sub_1B7FFF178;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B801CCFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v48 = a8;
  v47 = a7;
  v44 = a5;
  v45 = a6;
  v42 = a4;
  v38 = a2;
  v43 = a10;
  v40 = a3;
  v41 = a9;
  v49 = a12;
  v13 = sub_1B80C8E9C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ClientID();
  v37 = *(v16 - 8);
  v17 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v35 - v21;
  v39 = sub_1B80C8A0C();
  v23 = swift_allocObject();
  swift_weakInit();
  (*(v19 + 16))(v22, a1, v18);
  sub_1B80337A4(a11, &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v25 = (v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 39) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v37 + 80) + v26 + 11) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  (*(v19 + 32))(v28 + v24, v22, v18);
  v29 = v28 + v25;
  *v29 = v40;
  v30 = v44;
  v31 = v45;
  *(v29 + 8) = v42;
  *(v29 + 16) = v30;
  *(v29 + 24) = v31;
  v32 = v28 + v26;
  *v32 = v47;
  *(v32 + 8) = v48;
  *(v32 + 9) = v41;
  *(v32 + 10) = v43;
  sub_1B80344D4(v36, v28 + v27, type metadata accessor for ClientID);
  *(v28 + ((v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v49;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v33 = *(v38 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B801D098(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 216) = a7;
  *(v8 + 224) = v12;
  *(v8 + 125) = v11;
  *(v8 + 71) = v10;
  *(v8 + 70) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a2;
  *(v8 + 192) = a4;
  *(v8 + 69) = a3;
  *(v8 + 176) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B801D0E4, 0, 0);
}

uint64_t sub_1B801D0E4()
{
  v14 = v0;
  v1 = v0[22];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B801D314, Strong, 0);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = sub_1B80C8FEC();
    v5 = sub_1B80C941C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1B7FB84FC(0xD000000000000049, 0x80000001B80CCE30, &v13);
      _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CB8970](v7, -1, -1);
      MEMORY[0x1B8CB8970](v6, -1, -1);
    }

    v8 = v0[23];
    sub_1B8010040();
    v9 = swift_allocError();
    *v10 = 10;
    v0[19] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
    sub_1B80C927C();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1B801D314()
{
  v28 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136446723;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000004ALL, 0x80000001B80CCE80, &v27);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    v8 = MEMORY[0x1B8CB7B30](v5, &type metadata for Handle);
    v10 = sub_1B7FB84FC(v8, v9, &v27);

    *(v6 + 24) = v10;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s for handles: %{private,mask.hash}s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = *(v0 + 70);
  if (v11 == 2)
  {
    v12 = sub_1B80C981C();
    LOBYTE(v11) = *(v0 + 70);
    v25 = v12;
    v26 = 2;
  }

  else
  {
    v25 = 1;
    v26 = 1;
  }

  v13 = *(v0 + 125);
  v14 = *(v0 + 71);
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);
  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v19 = *(v0 + 69);

  *(v0 + 16) = v15;
  *(v0 + 24) = v11;
  *(v0 + 32) = v19;
  *(v0 + 40) = v17;
  *(v0 + 48) = v18;
  v20 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 56) = v16;
  *(v0 + 64) = v25 & 1;
  *(v0 + 65) = v26;
  *(v0 + 66) = v13;
  *(v0 + 67) = 0;
  *(v0 + 68) = v14;
  *(v0 + 88) = v20;
  *(v0 + 104) = *(v0 + 48);
  *(v0 + 117) = *(v0 + 61);
  v21 = swift_task_alloc();
  *(v0 + 240) = v21;
  *v21 = v0;
  v21[1] = sub_1B801D634;
  v22 = *(v0 + 224);
  v23 = *(v0 + 232);

  return sub_1B80351B0(v0 + 72, v22);
}

uint64_t sub_1B801D634(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = *(v4 + 232);
    v8 = sub_1B801D810;
  }

  else
  {
    *(v4 + 256) = a1;
    sub_1B7FD0404(v4 + 16);
    v8 = sub_1B801D770;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1B801D770()
{
  v1 = v0[29];
  v2 = v0[23];
  v0[21] = v0[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
  sub_1B80C928C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B801D810()
{
  sub_1B7FD0404(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B801D878, 0, 0);
}

uint64_t sub_1B801D878()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[23];
  v0[20] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8);
  sub_1B80C927C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B801D928(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *v1;
  *(v2 + 80) = *a1;
  *(v2 + 32) = *(a1 + 8);
  *(v2 + 48) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B801D988, v1, 0);
}

uint64_t sub_1B801D988()
{
  v1 = *(v0 + 48);
  v9 = *(v0 + 32);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  *(v5 + 32) = v9;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_1B801DAE4;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1B801DAE4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_1B801DC0C;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 16);

    v5 = sub_1B8011C90;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B801DC0C()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1B801DC70(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a5;
  v27 = a7;
  v25 = a4;
  v24 = a3;
  v23[0] = a2;
  v9 = *(*(sub_1B80C8E9C() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = v23 - v13;
  v23[1] = sub_1B80C8A0C();
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, a1, v10);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  (*(v11 + 32))(v18 + v16, v14, v10);
  v19 = v18 + v17;
  *v19 = v24;
  v20 = v26;
  *(v19 + 8) = v25;
  *(v19 + 16) = v20;
  *(v19 + 24) = a6;
  *(v18 + ((v17 + 39) & 0xFFFFFFFFFFFFFFF8)) = v27;

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();

  v21 = *(v23[0] + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B801DEE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = a6;
  *(v6 + 80) = a2;
  *(v6 + 88) = a4;
  *(v6 + 128) = a3;
  *(v6 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B801DF10, 0, 0);
}

uint64_t sub_1B801DF10()
{
  v15 = v0;
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 112) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 104);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 24) = *(v0 + 88);
    *(v0 + 40) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1B801E154, Strong, 0);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v4 = sub_1B80C900C();
    __swift_project_value_buffer(v4, qword_1ED8DDF28);
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C941C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CCDD0, &v14);
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s - LocationConnection is nil, during enqueued WorkItem", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v9 = *(v0 + 80);
    sub_1B8010040();
    v10 = swift_allocError();
    *v11 = 10;
    *(v0 + 16) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    sub_1B80C927C();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1B801E154()
{
  v1 = *(v0 + 112);
  sub_1B801E318((v0 + 16));
  *(v0 + 120) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1B801E1E4, 0, 0);
}

uint64_t sub_1B801E1E4()
{
  v1 = v0[14];
  v2 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C928C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B801E26C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v0[2] = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  sub_1B80C927C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B801E318(char *a1)
{
  v2 = v1;
  v44 = *a1;
  v42 = *(a1 + 2);
  v43 = *(a1 + 1);
  v47 = *(a1 + 3);
  if (qword_1ED8DD848 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = sub_1B80C8FEC();
    v5 = sub_1B80C941C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v48 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CCE00, &v48);
      _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CB8970](v7, -1, -1);
      MEMORY[0x1B8CB8970](v6, -1, -1);
    }

    result = sub_1B802AB10();
    if ((result & 1) == 0)
    {
      return result;
    }

    v9 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
    swift_beginAccess();
    v40 = v2;
    v10 = *(v2 + v9);
    v11 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v38 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue;
    v15 = (v12 + 63) >> 6;
    v41 = v10;

    v16 = 0;
    v39 = v11;
    v37 = v15;
    while (v14)
    {
LABEL_14:
      v21 = __clz(__rbit64(v14)) | (v16 << 6);
      v22 = *(*(v41 + 48) + v21);
      v23 = *(*(v41 + 56) + 8 * v21);
      swift_bridgeObjectRetain_n();
      v24 = sub_1B80C8FEC();
      v25 = sub_1B80C941C();

      if (os_log_type_enabled(v24, v25))
      {
        v45 = v22;
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v48 = v27;
        *v26 = 136315394;
        sub_1B8032C04();
        v28 = sub_1B80C93BC();
        v30 = sub_1B7FB84FC(v28, v29, &v48);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v45;
        _os_log_impl(&dword_1B7FB5000, v24, v25, "Retry refreshing locations for: %s. Priority %ld", v26, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x1B8CB8970](v27, -1, -1);
        v31 = v26;
        v22 = v45;
        MEMORY[0x1B8CB8970](v31, -1, -1);
      }

      v32 = *(v23 + 16);
      if (v32)
      {
        v2 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
        v33 = swift_allocObject();
        v34 = _swift_stdlib_malloc_size(v33);
        *(v33 + 16) = v32;
        *(v33 + 24) = 2 * ((v34 - 32) / 176);
        v46 = sub_1B808D510(&v48, (v33 + 32), v32, v23);

        sub_1B80343D8();
        if (v46 != v32)
        {
          goto LABEL_28;
        }
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      v35 = 1;
      if (v22 == 2)
      {
        v36 = 2;
      }

      else
      {
        v36 = 1;
      }

      if (v22 == 2)
      {
        v35 = sub_1B80C981C();
      }

      v14 &= v14 - 1;

      v17 = v35 & 1;
      v18 = *(v40 + v38);
      v19 = swift_allocObject();
      swift_weakInit();
      v2 = swift_allocObject();
      *(v2 + 16) = v19;
      *(v2 + 24) = v33;
      *(v2 + 32) = v22;
      *(v2 + 33) = *v50;
      *(v2 + 36) = *&v50[3];
      *(v2 + 40) = v44;
      *(v2 + 41) = v49[0];
      *(v2 + 44) = *(v49 + 3);
      *(v2 + 48) = v43;
      *(v2 + 56) = v42;
      *(v2 + 64) = v47;
      *(v2 + 72) = v17;
      *(v2 + 73) = v36;
      *(v2 + 74) = 259;
      *(v2 + 76) = 0;

      sub_1B80C8A2C();

      v11 = v39;
      v15 = v37;
    }

    while (1)
    {
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v20 >= v15)
      {
      }

      v14 = *(v11 + 8 * v20);
      ++v16;
      if (v14)
      {
        v16 = v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

uint64_t sub_1B801E8AC(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B801E8CC, v1, 0);
}

uint64_t sub_1B801E8CC()
{
  v11 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  v0[10] = __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCBB0, &v10);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1B801EA80;
  v7 = v0[8];
  v8 = v0[9];

  return sub_1B8034910(v7);
}

uint64_t sub_1B801EA80(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1B801EBC8, v8, 0);
  }
}

uint64_t sub_1B801EBC8()
{
  v41 = v0;
  v1 = v0[12];
  v2 = v0[10];

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40[0] = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    type metadata accessor for Location();
    sub_1B8032C04();
    v8 = sub_1B80C902C();
    v10 = sub_1B7FB84FC(v8, v9, v40);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Received background proactive locations: %{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = v0[9];
  v12 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  v13 = *(v11 + v12);
  if (*(v13 + 16) && (v14 = sub_1B7FDA504(3u), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[10];

  v20 = sub_1B80335D8(v18, v16);
  v0[14] = v20;

  v21 = sub_1B80C8FEC();
  v22 = sub_1B80C941C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40[0] = v24;
    *v23 = 136315394;
    v25 = sub_1B801F398(v16);

    v26 = MEMORY[0x1B8CB7B30](v25, MEMORY[0x1E69E6158]);
    v28 = v27;

    v29 = sub_1B7FB84FC(v26, v28, v40);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    type metadata accessor for Location();
    sub_1B8032C04();
    v30 = sub_1B80C902C();
    v32 = sub_1B7FB84FC(v30, v31, v40);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1B7FB5000, v21, v22, "backgroundProactiveHandles: %s. locationsOfInterest: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v24, -1, -1);
    MEMORY[0x1B8CB8970](v23, -1, -1);
  }

  else
  {
  }

  v33 = v0[12];
  v34 = v0[9];
  v35 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles;
  swift_beginAccess();
  v36 = *(v34 + v35);
  *(v34 + v35) = v33;

  v37 = swift_task_alloc();
  v0[15] = v37;
  *v37 = v0;
  v37[1] = sub_1B801EFD8;
  v38 = v0[9];

  return sub_1B801F5C4(v20);
}

uint64_t sub_1B801EFD8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1B801F168;
  }

  else
  {
    v6 = sub_1B801F104;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B801F104()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B801F168()
{
  v1 = v0[14];

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1B801F1CC(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_1B80C993C();
  v5 = *a1;
  v6 = a1[1];
  sub_1B80C90FC();
  sub_1B80C911C();

  v7 = sub_1B80C997C();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a2 + 48) + 176 * v9);
    v13 = v11[1];
    v12 = v11[2];
    v27[0] = *v11;
    v27[1] = v13;
    v27[2] = v12;
    v14 = v11[6];
    v16 = v11[3];
    v15 = v11[4];
    v27[5] = v11[5];
    v27[6] = v14;
    v27[3] = v16;
    v27[4] = v15;
    v17 = v11[10];
    v19 = v11[7];
    v18 = v11[8];
    v27[9] = v11[9];
    v27[10] = v17;
    v27[7] = v19;
    v27[8] = v18;
    v20 = sub_1B80C90FC();
    v22 = v21;
    if (v20 == sub_1B80C90FC() && v22 == v23)
    {
      break;
    }

    v24 = sub_1B80C981C();
    sub_1B7FC8DA4(v27, v26);

    sub_1B7FCAD28(v27);
    if (v24)
    {
      return 1;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B7FC8DA4(v27, v26);

  sub_1B7FCAD28(v27);
  return 1;
}

uint64_t sub_1B801F398(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B7FCF988(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_1B80C94CC();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 176 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1B7FCF988((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1B8033798(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1B8033798(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1B801F5C4(uint64_t a1)
{
  v2[171] = v1;
  v2[170] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630) - 8) + 64) + 15;
  v2[172] = swift_task_alloc();
  v2[173] = swift_task_alloc();
  v4 = sub_1B80C8E9C();
  v2[174] = v4;
  v5 = *(v4 - 8);
  v2[175] = v5;
  v6 = *(v5 + 64) + 15;
  v2[176] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530) - 8) + 64) + 15;
  v2[177] = swift_task_alloc();
  v8 = type metadata accessor for Location();
  v2[178] = v8;
  v9 = *(v8 - 8);
  v2[179] = v9;
  v2[180] = *(v9 + 64);
  v2[181] = swift_task_alloc();
  v2[182] = swift_task_alloc();
  v2[183] = swift_task_alloc();
  v2[184] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C8, &qword_1B80D2E88) - 8) + 64) + 15;
  v2[185] = swift_task_alloc();
  v2[186] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B801F7D0, v1, 0);
}

uint64_t sub_1B801F7D0()
{
  v139 = v0;
  if (qword_1ED8DD848 == -1)
  {
    goto LABEL_2;
  }

  while (2)
  {
    swift_once();
LABEL_2:
    v1 = *(v0 + 1360);
    v2 = sub_1B80C900C();
    *(v0 + 1496) = __swift_project_value_buffer(v2, qword_1ED8DDF28);

    v3 = sub_1B80C8FEC();
    v4 = sub_1B80C941C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 1424);
      v6 = *(v0 + 1360);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&v138[0] = v8;
      *v7 = 136446723;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, v138);
      *(v7 + 12) = 2160;
      *(v7 + 14) = 1752392040;
      *(v7 + 22) = 2081;
      sub_1B8032C04();
      v9 = sub_1B80C902C();
      v11 = sub_1B7FB84FC(v9, v10, v138);

      *(v7 + 24) = v11;
      _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s with locations: %{private,mask.hash}s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v12 = *(v0 + 1368);
    v13 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
    swift_beginAccess();
    v14 = *(v12 + v13);
    v15 = *(v14 + 64);
    *&v138[0] = MEMORY[0x1E69E7CC0];
    v16 = -1;
    v17 = -1 << *(v14 + 32);
    if (-v17 < 64)
    {
      v16 = ~(-1 << -v17);
    }

    v18 = v16 & v15;
    v19 = (63 - v17) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    if (v18)
    {
      while (1)
      {
        v21 = v20;
LABEL_12:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = *(*(v14 + 56) + ((v21 << 9) | (8 * v22)));

        sub_1B808BF58(v24);
        if (!v18)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_56;
      }

      if (v21 >= v19)
      {
        break;
      }

      v18 = *(v14 + 64 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_12;
      }
    }

    v25 = *(v0 + 1368);
    v26 = *(v0 + 1360);

    *(v0 + 1504) = sub_1B808D774(*&v138[0]);

    v27 = *(v26 + 32);
    *(v0 + 1568) = v27;
    v28 = 1 << v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v30 = v29 & *(v26 + 64);
    *(v0 + 1512) = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles;

    swift_beginAccess();
    v31 = 0;
    if (!v30)
    {
LABEL_21:
      v36 = ((1 << *(v0 + 1568)) + 63) >> 6;
      if (v36 <= (v31 + 1))
      {
        v37 = v31 + 1;
      }

      else
      {
        v37 = ((1 << *(v0 + 1568)) + 63) >> 6;
      }

      v38 = v37 - 1;
      while (1)
      {
        v39 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v39 >= v36)
        {
          v101 = *(v0 + 1480);
          v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
          (*(*(v102 - 8) + 56))(v101, 1, 1, v102);
          v30 = 0;
          v31 = v38;
          goto LABEL_30;
        }

        v35 = *(v0 + 1360);
        v30 = *(v35 + 8 * v39 + 64);
        ++v31;
        if (v30)
        {
          v31 = v39;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      continue;
    }

    break;
  }

  while (1)
  {
    v35 = *(v0 + 1360);
LABEL_29:
    v40 = *(v0 + 1480);
    v41 = *(v0 + 1472);
    v42 = *(v0 + 1432);
    v43 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v44 = v43 | (v31 << 6);
    v45 = (*(v35 + 48) + 176 * v44);
    v47 = v45[1];
    v46 = v45[2];
    *(v0 + 192) = *v45;
    *(v0 + 208) = v47;
    *(v0 + 224) = v46;
    v48 = v45[6];
    v50 = v45[3];
    v49 = v45[4];
    *(v0 + 272) = v45[5];
    *(v0 + 288) = v48;
    *(v0 + 240) = v50;
    *(v0 + 256) = v49;
    v51 = v45[10];
    v53 = v45[7];
    v52 = v45[8];
    *(v0 + 336) = v45[9];
    *(v0 + 352) = v51;
    *(v0 + 304) = v53;
    *(v0 + 320) = v52;
    sub_1B80337A4(*(v35 + 56) + *(v42 + 72) * v44, v41, type metadata accessor for Location);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v55 = *(v54 + 48);
    v57 = *(v0 + 208);
    v56 = *(v0 + 224);
    *v40 = *(v0 + 192);
    v40[1] = v57;
    v40[2] = v56;
    v58 = *(v0 + 240);
    v59 = *(v0 + 256);
    v60 = *(v0 + 288);
    v40[5] = *(v0 + 272);
    v40[6] = v60;
    v40[3] = v58;
    v40[4] = v59;
    v61 = *(v0 + 304);
    v62 = *(v0 + 320);
    v63 = *(v0 + 352);
    v40[9] = *(v0 + 336);
    v40[10] = v63;
    v40[7] = v61;
    v40[8] = v62;
    sub_1B80344D4(v41, v40 + v55, type metadata accessor for Location);
    (*(*(v54 - 8) + 56))(v40, 0, 1, v54);
    sub_1B7FC8DA4(v0 + 192, v0 + 368);
LABEL_30:
    *(v0 + 1528) = v31;
    *(v0 + 1520) = v30;
    v64 = *(v0 + 1488);
    sub_1B7FC8F2C(*(v0 + 1480), v64, &qword_1EBA660C8, &qword_1B80D2E88);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v66 = (*(*(v65 - 8) + 48))(v64, 1, v65);
    v67 = *(v0 + 1488);
    if (v66 == 1)
    {
      break;
    }

    v68 = *(v0 + 1512);
    v69 = *(v0 + 1464);
    v70 = *(v0 + 1368);
    v72 = v67[1];
    v71 = v67[2];
    *(v0 + 16) = *v67;
    *(v0 + 32) = v72;
    *(v0 + 48) = v71;
    v73 = v67[6];
    v75 = v67[3];
    v74 = v67[4];
    *(v0 + 96) = v67[5];
    *(v0 + 112) = v73;
    *(v0 + 64) = v75;
    *(v0 + 80) = v74;
    v76 = v67[10];
    v78 = v67[7];
    v77 = v67[8];
    *(v0 + 160) = v67[9];
    *(v0 + 176) = v76;
    *(v0 + 128) = v78;
    *(v0 + 144) = v77;
    sub_1B80344D4(v67 + *(v65 + 48), v69, type metadata accessor for Location);
    v79 = *(v70 + v68);
    if (*(v79 + 16))
    {
      v80 = *(v70 + v68);

      v81 = sub_1B7FDA47C((v0 + 16));
      if (v82)
      {
        sub_1B80337A4(*(v79 + 56) + *(*(v0 + 1432) + 72) * v81, *(v0 + 1416), type metadata accessor for Location);
        v83 = 0;
      }

      else
      {
        v83 = 1;
      }
    }

    else
    {
      v83 = 1;
    }

    v84 = *(v0 + 1464);
    v85 = *(v0 + 1416);
    v86 = *(v0 + 1368);
    (*(*(v0 + 1432) + 56))(v85, v83, 1, *(v0 + 1424));
    v87 = *(v0 + 160);
    v138[8] = *(v0 + 144);
    v138[9] = v87;
    v138[10] = *(v0 + 176);
    v88 = *(v0 + 96);
    v138[4] = *(v0 + 80);
    v138[5] = v88;
    v89 = *(v0 + 128);
    v138[6] = *(v0 + 112);
    v138[7] = v89;
    v90 = *(v0 + 32);
    v138[0] = *(v0 + 16);
    v138[1] = v90;
    v91 = *(v0 + 64);
    v138[2] = *(v0 + 48);
    v138[3] = v91;
    if (sub_1B8025048(v138, v84, v85))
    {
      v118 = *(v0 + 1472);
      v119 = *(v0 + 1464);
      v120 = *(v0 + 1408);
      v121 = *(v0 + 1400);
      v122 = *(v0 + 1392);
      v123 = *(v0 + 1368);
      *(v0 + 1536) = sub_1B8012DD8();
      sub_1B80337A4(v119, v118, type metadata accessor for Location);
      v124 = type metadata accessor for LocationShiftingRequest();
      v125 = *(v124 + 48);
      v126 = *(v124 + 52);
      v127 = swift_allocObject();
      *(v0 + 1544) = v127;
      _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
      v128 = sub_1B80C8E4C();
      v130 = v129;
      (*(v121 + 8))(v120, v122);
      v131 = (v127 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
      *v131 = v128;
      v131[1] = v130;
      sub_1B80344D4(v118, v127 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
      v132 = swift_task_alloc();
      *(v0 + 1552) = v132;
      *v132 = v0;
      v132[1] = sub_1B80203A4;
      v133 = *(v0 + 1456);

      return sub_1B809EB08(v133, v127);
    }

    v92 = *(v0 + 1496);
    sub_1B80337A4(*(v0 + 1464), *(v0 + 1448), type metadata accessor for Location);
    sub_1B7FC8DA4(v0 + 16, v0 + 544);
    v93 = sub_1B80C8FEC();
    v94 = sub_1B80C941C();
    sub_1B7FCAD28(v0 + 16);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = *(v0 + 1448);
      v96 = *(v0 + 1424);
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *(v0 + 1352) = v98;
      *v97 = 136446979;
      *(v97 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, (v0 + 1352));
      *(v97 + 12) = 2082;
      if (*(v95 + *(v96 + 60)) > 1u)
      {
        if (*(v95 + *(v96 + 60)) == 2)
        {
          v99 = 0xE500000000000000;
          v100 = 0x6576696C2ELL;
        }

        else
        {
          v99 = 0xEA00000000006574;
          v100 = 0x696C6C657461732ELL;
        }
      }

      else if (*(v95 + *(v96 + 60)))
      {
        v100 = 0xD000000000000013;
        v99 = 0x80000001B80CCF10;
      }

      else
      {
        v99 = 0xE700000000000000;
        v100 = 0x79636167656C2ELL;
      }

      v134 = *(v0 + 1416);
      v136 = *(v0 + 1464);
      sub_1B803380C(*(v0 + 1448), type metadata accessor for Location);
      v103 = sub_1B7FB84FC(v100, v99, (v0 + 1352));

      *(v97 + 14) = v103;
      *(v97 + 22) = 2160;
      *(v97 + 24) = 1752392040;
      *(v97 + 32) = 2081;
      v104 = *(v0 + 16);
      v105 = *(v0 + 24);

      sub_1B7FCAD28(v0 + 16);
      v106 = sub_1B7FB84FC(v104, v105, (v0 + 1352));

      *(v97 + 34) = v106;
      _os_log_impl(&dword_1B7FB5000, v93, v94, "%{public}s\nNot forwarding %{public}s\nlocation for handle %{private,mask.hash}s", v97, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v98, -1, -1);
      MEMORY[0x1B8CB8970](v97, -1, -1);

      sub_1B7FB86D4(v134, &qword_1EBA65D60, &unk_1B80DC530);
      sub_1B803380C(v136, type metadata accessor for Location);
      if (!v30)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v32 = *(v0 + 1464);
      v33 = *(v0 + 1448);
      v34 = *(v0 + 1416);

      sub_1B7FCAD28(v0 + 16);
      sub_1B803380C(v33, type metadata accessor for Location);
      sub_1B7FB86D4(v34, &qword_1EBA65D60, &unk_1B80DC530);
      sub_1B803380C(v32, type metadata accessor for Location);
      if (!v30)
      {
        goto LABEL_21;
      }
    }
  }

  v107 = *(v0 + 1504);
  v108 = *(v0 + 1480);
  v109 = *(v0 + 1472);
  v110 = *(v0 + 1464);
  v111 = *(v0 + 1456);
  v112 = *(v0 + 1448);
  v113 = *(v0 + 1416);
  v114 = *(v0 + 1408);
  v135 = *(v0 + 1384);
  v137 = *(v0 + 1376);
  v115 = *(v0 + 1360);

  v116 = *(v0 + 8);

  return v116();
}

uint64_t sub_1B80203A4()
{
  v2 = *v1;
  v3 = *(*v1 + 1552);
  v10 = *v1;
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v4 = v2[171];
    v5 = sub_1B8021330;
  }

  else
  {
    v6 = v2[193];
    v7 = v2[192];
    v8 = v2[171];

    v5 = sub_1B80204D8;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80204D8()
{
  v156 = v0;
  v1 = *(v0 + 1512);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1496);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1456);
  v6 = *(v0 + 1368);
  swift_beginAccess();
  sub_1B80337A4(v5, v4, type metadata accessor for Location);
  sub_1B7FC8DA4(v0 + 16, v0 + 896);
  v7 = *(v6 + v1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v155[0] = *(v6 + v1);
  sub_1B802F3C8(v4, (v0 + 16), isUniquelyReferenced_nonNull_native);
  sub_1B7FCAD28(v0 + 16);
  *(v6 + v1) = *&v155[0];
  swift_endAccess();
  sub_1B7FC8DA4(v0 + 16, v0 + 1072);

  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C941C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1504);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v155[0] = v14;
    *v13 = 136446979;
    *(v13 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, v155);
    *(v13 + 12) = 1024;
    *(v13 + 14) = sub_1B801F1CC((v0 + 16), v12) & 1;

    sub_1B7FCAD28(v0 + 16);
    *(v13 + 18) = 2160;
    *(v13 + 20) = 1752392040;
    *(v13 + 28) = 2081;
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);

    v17 = sub_1B7FB84FC(v15, v16, v155);

    *(v13 + 30) = v17;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s\nContains: %{BOOL}d. Handle: %{private,mask.hash}s.", v13, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v14, -1, -1);
    MEMORY[0x1B8CB8970](v13, -1, -1);
  }

  else
  {
    v18 = *(v0 + 1504);

    sub_1B7FCAD28(v0 + 16);
  }

  if (sub_1B801F1CC((v0 + 16), *(v0 + 1504)))
  {
    v19 = *(v0 + 1472);
    v20 = *(v0 + 1456);
    v21 = *(v0 + 1440);
    v22 = *(v0 + 1432);
    v23 = *(v0 + 1384);
    v152 = *(v0 + 1376);
    v24 = *(v0 + 1368);
    v25 = sub_1B80C92CC();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v23, 1, 1, v25);
    sub_1B80337A4(v20, v19, type metadata accessor for Location);
    v27 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
    v28 = (*(v22 + 80) + 216) & ~*(v22 + 80);
    v29 = swift_allocObject();
    v30 = *(v0 + 112);
    *(v29 + 152) = *(v0 + 128);
    v31 = *(v0 + 160);
    *(v29 + 168) = *(v0 + 144);
    *(v29 + 184) = v31;
    *(v29 + 200) = *(v0 + 176);
    v32 = *(v0 + 48);
    *(v29 + 88) = *(v0 + 64);
    v33 = *(v0 + 96);
    *(v29 + 104) = *(v0 + 80);
    *(v29 + 120) = v33;
    *(v29 + 136) = v30;
    v34 = *(v0 + 32);
    *(v29 + 40) = *(v0 + 16);
    *(v29 + 56) = v34;
    *(v29 + 16) = v24;
    *(v29 + 24) = v27;
    *(v29 + 32) = v24;
    *(v29 + 72) = v32;
    sub_1B80344D4(v19, v29 + v28, type metadata accessor for Location);
    sub_1B7FB8448(v23, v152, &unk_1EBA66000, &unk_1B80D2630);
    LODWORD(v21) = (*(v26 + 48))(v152, 1, v25);
    swift_retain_n();

    v35 = *(v0 + 1376);
    if (v21 == 1)
    {
      sub_1B7FB86D4(*(v0 + 1376), &unk_1EBA66000, &unk_1B80D2630);
    }

    else
    {
      sub_1B80C92BC();
      (*(v26 + 8))(v35, v25);
    }

    v40 = *(v29 + 16);
    v39 = *(v29 + 24);
    swift_unknownObjectRetain();

    if (v40)
    {
      swift_getObjectType();
      v41 = sub_1B80C926C();
      v43 = v42;
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    sub_1B7FB86D4(*(v0 + 1384), &unk_1EBA66000, &unk_1B80D2630);
    v44 = swift_allocObject();
    *(v44 + 16) = &unk_1B80D3008;
    *(v44 + 24) = v29;
    if (v43 | v41)
    {
      *(v0 + 1248) = 0;
      *(v0 + 1256) = 0;
      *(v0 + 1264) = v41;
      *(v0 + 1272) = v43;
    }

    v36 = *(v0 + 1464);
    v37 = *(v0 + 1456);
    v38 = *(v0 + 1416);
    swift_task_create();
  }

  else
  {
    v36 = *(v0 + 1464);
    v37 = *(v0 + 1456);
    v38 = *(v0 + 1416);
    sub_1B7FCAD28(v0 + 16);
  }

  sub_1B803380C(v37, type metadata accessor for Location);
  sub_1B7FB86D4(v38, &qword_1EBA65D60, &unk_1B80DC530);
  result = sub_1B803380C(v36, type metadata accessor for Location);
  v46 = *(v0 + 1528);
  v47 = *(v0 + 1520);
  while (v47)
  {
    v52 = *(v0 + 1360);
LABEL_28:
    v57 = *(v0 + 1480);
    v58 = *(v0 + 1472);
    v59 = *(v0 + 1432);
    v60 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v61 = v60 | (v46 << 6);
    v62 = (*(v52 + 48) + 176 * v61);
    v64 = v62[1];
    v63 = v62[2];
    *(v0 + 192) = *v62;
    *(v0 + 208) = v64;
    *(v0 + 224) = v63;
    v65 = v62[6];
    v67 = v62[3];
    v66 = v62[4];
    *(v0 + 272) = v62[5];
    *(v0 + 288) = v65;
    *(v0 + 240) = v67;
    *(v0 + 256) = v66;
    v68 = v62[10];
    v70 = v62[7];
    v69 = v62[8];
    *(v0 + 336) = v62[9];
    *(v0 + 352) = v68;
    *(v0 + 304) = v70;
    *(v0 + 320) = v69;
    sub_1B80337A4(*(v52 + 56) + *(v59 + 72) * v61, v58, type metadata accessor for Location);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v72 = *(v71 + 48);
    v74 = *(v0 + 208);
    v73 = *(v0 + 224);
    *v57 = *(v0 + 192);
    v57[1] = v74;
    v57[2] = v73;
    v75 = *(v0 + 240);
    v76 = *(v0 + 256);
    v77 = *(v0 + 288);
    v57[5] = *(v0 + 272);
    v57[6] = v77;
    v57[3] = v75;
    v57[4] = v76;
    v78 = *(v0 + 304);
    v79 = *(v0 + 320);
    v80 = *(v0 + 352);
    v57[9] = *(v0 + 336);
    v57[10] = v80;
    v57[7] = v78;
    v57[8] = v79;
    sub_1B80344D4(v58, v57 + v72, type metadata accessor for Location);
    (*(*(v71 - 8) + 56))(v57, 0, 1, v71);
    sub_1B7FC8DA4(v0 + 192, v0 + 368);
LABEL_29:
    *(v0 + 1528) = v46;
    *(v0 + 1520) = v47;
    v81 = *(v0 + 1488);
    sub_1B7FC8F2C(*(v0 + 1480), v81, &qword_1EBA660C8, &qword_1B80D2E88);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
    v84 = *(v0 + 1488);
    if (v83 == 1)
    {
      v124 = *(v0 + 1504);
      v125 = *(v0 + 1480);
      v126 = *(v0 + 1472);
      v127 = *(v0 + 1464);
      v128 = *(v0 + 1456);
      v129 = *(v0 + 1448);
      v130 = *(v0 + 1416);
      v131 = *(v0 + 1408);
      v151 = *(v0 + 1384);
      v154 = *(v0 + 1376);
      v132 = *(v0 + 1360);

      v133 = *(v0 + 8);

      return v133();
    }

    v85 = *(v0 + 1512);
    v86 = *(v0 + 1464);
    v87 = *(v0 + 1368);
    v89 = v84[1];
    v88 = v84[2];
    *(v0 + 16) = *v84;
    *(v0 + 32) = v89;
    *(v0 + 48) = v88;
    v90 = v84[6];
    v92 = v84[3];
    v91 = v84[4];
    *(v0 + 96) = v84[5];
    *(v0 + 112) = v90;
    *(v0 + 64) = v92;
    *(v0 + 80) = v91;
    v93 = v84[10];
    v95 = v84[7];
    v94 = v84[8];
    *(v0 + 160) = v84[9];
    *(v0 + 176) = v93;
    *(v0 + 128) = v95;
    *(v0 + 144) = v94;
    sub_1B80344D4(v84 + *(v82 + 48), v86, type metadata accessor for Location);
    v96 = *(v87 + v85);
    if (*(v96 + 16))
    {
      v97 = *(v87 + v85);

      v98 = sub_1B7FDA47C((v0 + 16));
      if (v99)
      {
        sub_1B80337A4(*(v96 + 56) + *(*(v0 + 1432) + 72) * v98, *(v0 + 1416), type metadata accessor for Location);
        v100 = 0;
      }

      else
      {
        v100 = 1;
      }
    }

    else
    {
      v100 = 1;
    }

    v101 = *(v0 + 1464);
    v102 = *(v0 + 1416);
    v103 = *(v0 + 1368);
    (*(*(v0 + 1432) + 56))(v102, v100, 1, *(v0 + 1424));
    v104 = *(v0 + 160);
    v155[8] = *(v0 + 144);
    v155[9] = v104;
    v155[10] = *(v0 + 176);
    v105 = *(v0 + 96);
    v155[4] = *(v0 + 80);
    v155[5] = v105;
    v106 = *(v0 + 128);
    v155[6] = *(v0 + 112);
    v155[7] = v106;
    v107 = *(v0 + 32);
    v155[0] = *(v0 + 16);
    v155[1] = v107;
    v108 = *(v0 + 64);
    v155[2] = *(v0 + 48);
    v155[3] = v108;
    if (sub_1B8025048(v155, v101, v102))
    {
      v134 = *(v0 + 1472);
      v135 = *(v0 + 1408);
      v136 = *(v0 + 1400);
      v137 = *(v0 + 1392);
      v138 = *(v0 + 1368);
      v139 = *(v0 + 1464);
      *(v0 + 1536) = sub_1B8012DD8();
      sub_1B80337A4(v139, v134, type metadata accessor for Location);
      v140 = type metadata accessor for LocationShiftingRequest();
      v141 = *(v140 + 48);
      v142 = *(v140 + 52);
      v143 = swift_allocObject();
      *(v0 + 1544) = v143;
      _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
      v144 = sub_1B80C8E4C();
      v146 = v145;
      (*(v136 + 8))(v135, v137);
      v147 = (v143 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
      *v147 = v144;
      v147[1] = v146;
      sub_1B80344D4(v134, v143 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
      v148 = swift_task_alloc();
      *(v0 + 1552) = v148;
      *v148 = v0;
      v148[1] = sub_1B80203A4;
      v149 = *(v0 + 1456);

      return sub_1B809EB08(v149, v143);
    }

    v109 = *(v0 + 1496);
    sub_1B80337A4(*(v0 + 1464), *(v0 + 1448), type metadata accessor for Location);
    sub_1B7FC8DA4(v0 + 16, v0 + 544);
    v110 = sub_1B80C8FEC();
    v111 = sub_1B80C941C();
    sub_1B7FCAD28(v0 + 16);
    if (os_log_type_enabled(v110, v111))
    {
      v112 = *(v0 + 1448);
      v113 = *(v0 + 1424);
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *(v0 + 1352) = v115;
      *v114 = 136446979;
      *(v114 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, (v0 + 1352));
      *(v114 + 12) = 2082;
      if (*(v112 + *(v113 + 60)) > 1u)
      {
        if (*(v112 + *(v113 + 60)) == 2)
        {
          v116 = 0xE500000000000000;
          v117 = 0x6576696C2ELL;
        }

        else
        {
          v116 = 0xEA00000000006574;
          v117 = 0x696C6C657461732ELL;
        }
      }

      else if (*(v112 + *(v113 + 60)))
      {
        v117 = 0xD000000000000013;
        v116 = 0x80000001B80CCF10;
      }

      else
      {
        v116 = 0xE700000000000000;
        v117 = 0x79636167656C2ELL;
      }

      v150 = *(v0 + 1416);
      v153 = *(v0 + 1464);
      sub_1B803380C(*(v0 + 1448), type metadata accessor for Location);
      v120 = sub_1B7FB84FC(v117, v116, (v0 + 1352));

      *(v114 + 14) = v120;
      *(v114 + 22) = 2160;
      *(v114 + 24) = 1752392040;
      *(v114 + 32) = 2081;
      v121 = *(v0 + 16);
      v122 = *(v0 + 24);

      sub_1B7FCAD28(v0 + 16);
      v123 = sub_1B7FB84FC(v121, v122, (v0 + 1352));

      *(v114 + 34) = v123;
      _os_log_impl(&dword_1B7FB5000, v110, v111, "%{public}s\nNot forwarding %{public}s\nlocation for handle %{private,mask.hash}s", v114, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v115, -1, -1);
      MEMORY[0x1B8CB8970](v114, -1, -1);

      sub_1B7FB86D4(v150, &qword_1EBA65D60, &unk_1B80DC530);
      v51 = v153;
    }

    else
    {
      v48 = *(v0 + 1464);
      v49 = *(v0 + 1448);
      v50 = *(v0 + 1416);

      sub_1B7FCAD28(v0 + 16);
      sub_1B803380C(v49, type metadata accessor for Location);
      sub_1B7FB86D4(v50, &qword_1EBA65D60, &unk_1B80DC530);
      v51 = v48;
    }

    result = sub_1B803380C(v51, type metadata accessor for Location);
  }

  v53 = ((1 << *(v0 + 1568)) + 63) >> 6;
  if (v53 <= (v46 + 1))
  {
    v54 = v46 + 1;
  }

  else
  {
    v54 = ((1 << *(v0 + 1568)) + 63) >> 6;
  }

  v55 = v54 - 1;
  while (1)
  {
    v56 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v56 >= v53)
    {
      v118 = *(v0 + 1480);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
      (*(*(v119 - 8) + 56))(v118, 1, 1, v119);
      v47 = 0;
      v46 = v55;
      goto LABEL_29;
    }

    v52 = *(v0 + 1360);
    v47 = *(v52 + 8 * v56 + 64);
    ++v46;
    if (v47)
    {
      v46 = v56;
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8021330()
{
  v130 = v0;
  v1 = *(v0 + 1560);
  v2 = *(v0 + 1544);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1496);

  sub_1B7FC8DA4(v0 + 16, v0 + 720);
  v5 = v1;
  v6 = sub_1B80C8FEC();
  v7 = sub_1B80C93FC();
  sub_1B7FCAD28(v0 + 16);

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1560);
  v10 = *(v0 + 1464);
  v11 = *(v0 + 1416);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v126 = v10;
    *&v129[0] = v14;
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);

    sub_1B7FCAD28(v0 + 16);
    v17 = sub_1B7FB84FC(v16, v15, v129);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2114;
    v18 = sub_1B80C8CFC();
    *(v12 + 24) = v18;
    *v13 = v18;
    _os_log_impl(&dword_1B7FB5000, v6, v7, "Shifting failed for handle: %{private,mask.hash}s with ERROR: %{public}@", v12, 0x20u);
    sub_1B7FB86D4(v13, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B8CB8970](v14, -1, -1);
    MEMORY[0x1B8CB8970](v12, -1, -1);

    sub_1B7FB86D4(v11, &qword_1EBA65D60, &unk_1B80DC530);
    v19 = v126;
  }

  else
  {

    sub_1B7FCAD28(v0 + 16);
    sub_1B7FB86D4(v11, &qword_1EBA65D60, &unk_1B80DC530);
    v19 = v10;
  }

  result = sub_1B803380C(v19, type metadata accessor for Location);
  v21 = *(v0 + 1528);
  v22 = *(v0 + 1520);
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = *(v0 + 1360);
LABEL_16:
      v31 = *(v0 + 1480);
      v32 = *(v0 + 1472);
      v33 = *(v0 + 1432);
      v34 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v35 = v34 | (v21 << 6);
      v36 = (*(v26 + 48) + 176 * v35);
      v38 = v36[1];
      v37 = v36[2];
      *(v0 + 192) = *v36;
      *(v0 + 208) = v38;
      *(v0 + 224) = v37;
      v39 = v36[6];
      v41 = v36[3];
      v40 = v36[4];
      *(v0 + 272) = v36[5];
      *(v0 + 288) = v39;
      *(v0 + 240) = v41;
      *(v0 + 256) = v40;
      v42 = v36[10];
      v44 = v36[7];
      v43 = v36[8];
      *(v0 + 336) = v36[9];
      *(v0 + 352) = v42;
      *(v0 + 304) = v44;
      *(v0 + 320) = v43;
      sub_1B80337A4(*(v26 + 56) + *(v33 + 72) * v35, v32, type metadata accessor for Location);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
      v46 = *(v45 + 48);
      v48 = *(v0 + 208);
      v47 = *(v0 + 224);
      *v31 = *(v0 + 192);
      v31[1] = v48;
      v31[2] = v47;
      v49 = *(v0 + 240);
      v50 = *(v0 + 256);
      v51 = *(v0 + 288);
      v31[5] = *(v0 + 272);
      v31[6] = v51;
      v31[3] = v49;
      v31[4] = v50;
      v52 = *(v0 + 304);
      v53 = *(v0 + 320);
      v54 = *(v0 + 352);
      v31[9] = *(v0 + 336);
      v31[10] = v54;
      v31[7] = v52;
      v31[8] = v53;
      sub_1B80344D4(v32, v31 + v46, type metadata accessor for Location);
      (*(*(v45 - 8) + 56))(v31, 0, 1, v45);
      sub_1B7FC8DA4(v0 + 192, v0 + 368);
LABEL_17:
      *(v0 + 1528) = v21;
      *(v0 + 1520) = v22;
      v55 = *(v0 + 1488);
      sub_1B7FC8F2C(*(v0 + 1480), v55, &qword_1EBA660C8, &qword_1B80D2E88);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
      if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
      {
        v97 = *(v0 + 1504);
        v98 = *(v0 + 1488);
        v99 = *(v0 + 1480);
        v100 = *(v0 + 1472);
        v101 = *(v0 + 1464);
        v102 = *(v0 + 1456);
        v103 = *(v0 + 1448);
        v104 = *(v0 + 1416);
        v105 = *(v0 + 1408);
        v125 = *(v0 + 1384);
        v128 = *(v0 + 1376);
        v106 = *(v0 + 1360);

        v107 = *(v0 + 8);

        return v107();
      }

      v57 = *(v0 + 1512);
      v58 = *(v0 + 1488);
      v59 = *(v0 + 1464);
      v60 = *(v0 + 1368);
      v62 = v58[1];
      v61 = v58[2];
      *(v0 + 16) = *v58;
      *(v0 + 32) = v62;
      *(v0 + 48) = v61;
      v63 = v58[6];
      v65 = v58[3];
      v64 = v58[4];
      *(v0 + 96) = v58[5];
      *(v0 + 112) = v63;
      *(v0 + 64) = v65;
      *(v0 + 80) = v64;
      v66 = v58[10];
      v68 = v58[7];
      v67 = v58[8];
      *(v0 + 160) = v58[9];
      *(v0 + 176) = v66;
      *(v0 + 128) = v68;
      *(v0 + 144) = v67;
      sub_1B80344D4(v58 + *(v56 + 48), v59, type metadata accessor for Location);
      v69 = *(v60 + v57);
      if (*(v69 + 16))
      {
        v70 = *(v60 + v57);

        v71 = sub_1B7FDA47C((v0 + 16));
        if (v72)
        {
          sub_1B80337A4(*(v69 + 56) + *(*(v0 + 1432) + 72) * v71, *(v0 + 1416), type metadata accessor for Location);
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }
      }

      else
      {
        v73 = 1;
      }

      v74 = *(v0 + 1464);
      v75 = *(v0 + 1416);
      v76 = *(v0 + 1368);
      (*(*(v0 + 1432) + 56))(v75, v73, 1, *(v0 + 1424));
      v77 = *(v0 + 160);
      v129[8] = *(v0 + 144);
      v129[9] = v77;
      v129[10] = *(v0 + 176);
      v78 = *(v0 + 96);
      v129[4] = *(v0 + 80);
      v129[5] = v78;
      v79 = *(v0 + 128);
      v129[6] = *(v0 + 112);
      v129[7] = v79;
      v80 = *(v0 + 32);
      v129[0] = *(v0 + 16);
      v129[1] = v80;
      v81 = *(v0 + 64);
      v129[2] = *(v0 + 48);
      v129[3] = v81;
      if (sub_1B8025048(v129, v74, v75))
      {
        v108 = *(v0 + 1472);
        v109 = *(v0 + 1408);
        v110 = *(v0 + 1400);
        v111 = *(v0 + 1392);
        v112 = *(v0 + 1368);
        v113 = *(v0 + 1464);
        *(v0 + 1536) = sub_1B8012DD8();
        sub_1B80337A4(v113, v108, type metadata accessor for Location);
        v114 = type metadata accessor for LocationShiftingRequest();
        v115 = *(v114 + 48);
        v116 = *(v114 + 52);
        v117 = swift_allocObject();
        *(v0 + 1544) = v117;
        _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
        v118 = sub_1B80C8E4C();
        v120 = v119;
        (*(v110 + 8))(v109, v111);
        v121 = (v117 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
        *v121 = v118;
        v121[1] = v120;
        sub_1B80344D4(v108, v117 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
        v122 = swift_task_alloc();
        *(v0 + 1552) = v122;
        *v122 = v0;
        v122[1] = sub_1B80203A4;
        v123 = *(v0 + 1456);

        return sub_1B809EB08(v123, v117);
      }

      v82 = *(v0 + 1496);
      sub_1B80337A4(*(v0 + 1464), *(v0 + 1448), type metadata accessor for Location);
      sub_1B7FC8DA4(v0 + 16, v0 + 544);
      v83 = sub_1B80C8FEC();
      v84 = sub_1B80C941C();
      sub_1B7FCAD28(v0 + 16);
      if (os_log_type_enabled(v83, v84))
      {
        break;
      }

      v23 = *(v0 + 1464);
      v24 = *(v0 + 1448);
      v25 = *(v0 + 1416);

      sub_1B7FCAD28(v0 + 16);
      sub_1B803380C(v24, type metadata accessor for Location);
      sub_1B7FB86D4(v25, &qword_1EBA65D60, &unk_1B80DC530);
      result = sub_1B803380C(v23, type metadata accessor for Location);
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    v85 = *(v0 + 1448);
    v86 = *(v0 + 1424);
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *(v0 + 1352) = v88;
    *v87 = 136446979;
    *(v87 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CCEF0, (v0 + 1352));
    *(v87 + 12) = 2082;
    if (*(v85 + *(v86 + 60)) > 1u)
    {
      if (*(v85 + *(v86 + 60)) == 2)
      {
        v89 = 0xE500000000000000;
        v90 = 0x6576696C2ELL;
      }

      else
      {
        v89 = 0xEA00000000006574;
        v90 = 0x696C6C657461732ELL;
      }
    }

    else if (*(v85 + *(v86 + 60)))
    {
      v90 = 0xD000000000000013;
      v89 = 0x80000001B80CCF10;
    }

    else
    {
      v89 = 0xE700000000000000;
      v90 = 0x79636167656C2ELL;
    }

    v124 = *(v0 + 1416);
    v127 = *(v0 + 1464);
    sub_1B803380C(*(v0 + 1448), type metadata accessor for Location);
    v93 = sub_1B7FB84FC(v90, v89, (v0 + 1352));

    *(v87 + 14) = v93;
    *(v87 + 22) = 2160;
    *(v87 + 24) = 1752392040;
    *(v87 + 32) = 2081;
    v94 = *(v0 + 16);
    v95 = *(v0 + 24);

    sub_1B7FCAD28(v0 + 16);
    v96 = sub_1B7FB84FC(v94, v95, (v0 + 1352));

    *(v87 + 34) = v96;
    _os_log_impl(&dword_1B7FB5000, v83, v84, "%{public}s\nNot forwarding %{public}s\nlocation for handle %{private,mask.hash}s", v87, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v88, -1, -1);
    MEMORY[0x1B8CB8970](v87, -1, -1);

    sub_1B7FB86D4(v124, &qword_1EBA65D60, &unk_1B80DC530);
    result = sub_1B803380C(v127, type metadata accessor for Location);
  }

  while (v22);
LABEL_8:
  v27 = ((1 << *(v0 + 1568)) + 63) >> 6;
  if (v27 <= (v21 + 1))
  {
    v28 = v21 + 1;
  }

  else
  {
    v28 = ((1 << *(v0 + 1568)) + 63) >> 6;
  }

  v29 = v28 - 1;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v91 = *(v0 + 1480);
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
      (*(*(v92 - 8) + 56))(v91, 1, 1, v92);
      v22 = 0;
      v21 = v29;
      goto LABEL_17;
    }

    v26 = *(v0 + 1360);
    v22 = *(v26 + 8 * v30 + 64);
    ++v21;
    if (v22)
    {
      v21 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8021E30(uint64_t a1, char a2, char a3)
{
  *(v4 + 1304) = v3;
  *(v4 + 1441) = a3;
  *(v4 + 1440) = a2;
  *(v4 + 1296) = a1;
  *(v4 + 1312) = *v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920) - 8) + 64) + 15;
  *(v4 + 1320) = swift_task_alloc();
  v6 = sub_1B80C8E2C();
  *(v4 + 1328) = v6;
  v7 = *(v6 - 8);
  *(v4 + 1336) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 1344) = swift_task_alloc();
  *(v4 + 1352) = swift_task_alloc();
  v9 = type metadata accessor for Friend();
  *(v4 + 1360) = v9;
  v10 = *(v9 - 8);
  *(v4 + 1368) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 1376) = swift_task_alloc();
  *(v4 + 1384) = swift_task_alloc();
  *(v4 + 1392) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8021FDC, v3, 0);
}

uint64_t sub_1B8021FDC()
{
  v18 = v0;
  v1 = v0[163];
  if (swift_weakLoadStrong() && (v2 = sub_1B7FF12A4(), v0[175] = v2, , v2))
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8022230, v2, 0);
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = sub_1B80C8FEC();
    v5 = sub_1B80C93FC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v17);
      _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s missing FriendshipConnection.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x1B8CB8970](v7, -1, -1);
      MEMORY[0x1B8CB8970](v6, -1, -1);
    }

    v8 = sub_1B80830D4(MEMORY[0x1E69E7CC0]);
    v9 = v0[174];
    v10 = v0[173];
    v11 = v0[172];
    v12 = v0[169];
    v13 = v0[168];
    v14 = v0[165];

    v15 = v0[1];

    return v15(v8);
  }
}

uint64_t sub_1B8022230()
{
  v1 = v0[175];
  v2 = v0[163];
  v3 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings;
  swift_beginAccess();
  v0[176] = *(v1 + v3);

  return MEMORY[0x1EEE6DFA0](sub_1B80222D0, v2, 0);
}

uint64_t sub_1B80222D0()
{
  v121 = v0;
  v1 = *(v0 + 1408);
  if (*(v0 + 1441) == 1)
  {
    v2 = *(v0 + 1296);
    v108 = MEMORY[0x1E69E7CC8];
    v106 = *(v2 + 16);
    if (v106)
    {
      v3 = 0;
      v4 = *(v0 + 1368);
      v5 = v2 + 32;
      v6 = *(v0 + 1336);
      v104 = (v6 + 48);
      v105 = v5;
      v102 = (v0 + 1072);
      v103 = *(v0 + 1360);
      v99 = (v6 + 16);
      v100 = (v6 + 32);
      v98 = (v6 + 8);
      v107 = *(v1 + 16);
      v101 = MEMORY[0x1E69E7CC8];
      do
      {
        v23 = (v105 + 176 * v3);
        v24 = *v23;
        v25 = v23[2];
        *(v0 + 32) = v23[1];
        *(v0 + 48) = v25;
        *(v0 + 16) = v24;
        v26 = v23[3];
        v27 = v23[4];
        v28 = v23[6];
        *(v0 + 96) = v23[5];
        *(v0 + 112) = v28;
        *(v0 + 64) = v26;
        *(v0 + 80) = v27;
        v29 = v23[7];
        v30 = v23[8];
        v31 = v23[10];
        *(v0 + 160) = v23[9];
        *(v0 + 176) = v31;
        *(v0 + 128) = v29;
        *(v0 + 144) = v30;
        v32 = *(v0 + 16);
        v33 = *(v0 + 24);
        sub_1B7FC8DA4(v0 + 16, v0 + 192);
        if (v107)
        {
          v34 = 0;
          while (1)
          {
            if (v34 >= *(v1 + 16))
            {
              __break(1u);
              goto LABEL_38;
            }

            v35 = *(v0 + 1376);
            sub_1B80337A4(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v34, v35, type metadata accessor for Friend);
            v37 = v35[1];
            v36 = v35[2];
            *(v0 + 368) = *v35;
            *(v0 + 384) = v37;
            *(v0 + 400) = v36;
            v38 = v35[6];
            v40 = v35[3];
            v39 = v35[4];
            *(v0 + 448) = v35[5];
            *(v0 + 464) = v38;
            *(v0 + 416) = v40;
            *(v0 + 432) = v39;
            v41 = v35[10];
            v43 = v35[7];
            v42 = v35[8];
            *(v0 + 512) = v35[9];
            *(v0 + 528) = v41;
            *(v0 + 480) = v43;
            *(v0 + 496) = v42;
            v44 = *(v0 + 368);
            v45 = *(v0 + 376);
            v46 = sub_1B80C90FC();
            v48 = v47;
            if (v46 == sub_1B80C90FC() && v48 == v49)
            {
              break;
            }

            v50 = sub_1B80C981C();
            sub_1B7FC8DA4(v0 + 368, v0 + 544);

            sub_1B7FCAD28(v0 + 368);
            if (v50)
            {
              goto LABEL_18;
            }

            ++v34;
            sub_1B803380C(*(v0 + 1376), type metadata accessor for Friend);
            if (v107 == v34)
            {
              goto LABEL_13;
            }
          }

          sub_1B7FC8DA4(v0 + 368, v0 + 720);

          sub_1B7FCAD28(v0 + 368);
LABEL_18:
          v54 = *(v0 + 1392);
          v55 = *(v0 + 1384);
          v56 = *(v0 + 1328);
          v57 = *(v0 + 1320);
          sub_1B80344D4(*(v0 + 1376), v55, type metadata accessor for Friend);
          sub_1B80344D4(v55, v54, type metadata accessor for Friend);
          sub_1B7FB8448(v54 + *(v103 + 48), v57, &unk_1EBA65FD0, &unk_1B80D1920);
          v58 = (*v104)(v57, 1, v56);
          v59 = *(v0 + 1392);
          if (v58 == 1)
          {
            v60 = *(v0 + 1320);
            sub_1B803380C(*(v0 + 1392), type metadata accessor for Friend);
            sub_1B7FCAD28(v0 + 16);
            sub_1B7FB86D4(v60, &unk_1EBA65FD0, &unk_1B80D1920);
          }

          else
          {
            v61 = *(v0 + 1352);
            v62 = *(v0 + 1344);
            v63 = *(v0 + 1328);
            (*v100)(v61, *(v0 + 1320), v63);
            (*v99)(v62, v61, v63);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v110 = v108;
            sub_1B802F254(v62, (v0 + 16), isUniquelyReferenced_nonNull_native);
            sub_1B7FCAD28(v0 + 16);
            (*v98)(v61, v63);
            sub_1B803380C(v59, type metadata accessor for Friend);
            v101 = v110;
            v108 = v110;
          }
        }

        else
        {
LABEL_13:
          if (qword_1ED8DD848 != -1)
          {
            swift_once();
          }

          v51 = sub_1B80C900C();
          __swift_project_value_buffer(v51, qword_1ED8DDF28);
          sub_1B7FC8DA4(v0 + 16, v0 + 896);
          v52 = sub_1B80C8FEC();
          v53 = sub_1B80C941C();
          sub_1B7FCAD28(v0 + 16);
          if (os_log_type_enabled(v52, v53))
          {
            v7 = swift_slowAlloc();
            v8 = swift_slowAlloc();
            v109 = v8;
            *v7 = 136446723;
            *(v7 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v109);
            *(v7 + 12) = 2160;
            *(v7 + 14) = 1752392040;
            *(v7 + 22) = 2081;
            v9 = *(v0 + 160);
            v118 = *(v0 + 144);
            v119 = v9;
            v120 = *(v0 + 176);
            v10 = *(v0 + 96);
            v114 = *(v0 + 80);
            v115 = v10;
            v11 = *(v0 + 128);
            v116 = *(v0 + 112);
            v117 = v11;
            v12 = *(v0 + 32);
            v110 = *(v0 + 16);
            v111 = v12;
            v13 = *(v0 + 64);
            v112 = *(v0 + 48);
            v113 = v13;
            v14 = Handle.description.getter();
            v16 = v15;
            v17 = v119;
            *(v0 + 1200) = v118;
            *(v0 + 1216) = v17;
            *(v0 + 1232) = v120;
            v18 = v115;
            *(v0 + 1136) = v114;
            *(v0 + 1152) = v18;
            v19 = v117;
            *(v0 + 1168) = v116;
            *(v0 + 1184) = v19;
            v20 = v111;
            *v102 = v110;
            *(v0 + 1088) = v20;
            v21 = v113;
            *(v0 + 1104) = v112;
            *(v0 + 1120) = v21;
            sub_1B7FCAD28(v102);
            v22 = sub_1B7FB84FC(v14, v16, &v109);

            *(v7 + 24) = v22;
            _os_log_impl(&dword_1B7FB5000, v52, v53, "%{public}s handle:%{private,mask.hash}s not sharing yet", v7, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1B8CB8970](v8, -1, -1);
            MEMORY[0x1B8CB8970](v7, -1, -1);
          }

          else
          {

            sub_1B7FCAD28(v0 + 16);
          }
        }

        ++v3;
      }

      while (v3 != v106);
    }

    else
    {
      v101 = MEMORY[0x1E69E7CC8];
    }

    if (*(v101 + 16))
    {
      if (qword_1ED8DD848 != -1)
      {
LABEL_38:
        swift_once();
      }

      v69 = sub_1B80C900C();
      __swift_project_value_buffer(v69, qword_1ED8DDF28);
      v70 = sub_1B80C8FEC();
      v71 = sub_1B80C941C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *&v110 = v73;
        *v72 = 136446210;
        *(v72 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v110);
        _os_log_impl(&dword_1B7FB5000, v70, v71, "%{public}s Checking if we have any valid cached location that needs rev-geo", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x1B8CB8970](v73, -1, -1);
        MEMORY[0x1B8CB8970](v72, -1, -1);
      }

      v74 = *(v0 + 1312);
      v75 = *(v0 + 1304);
      v76 = *(v0 + 1440);
      v77 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles;
      swift_beginAccess();
      v78 = *(v75 + v77);

      v80 = sub_1B802F778(v79, &v108, v76);

      v81 = sub_1B80C8FEC();
      v82 = sub_1B80C941C();

      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 1400);
      if (!v83)
      {

        goto LABEL_34;
      }

      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v110 = v86;
      *v85 = 136446723;
      *(v85 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v110);
      *(v85 + 12) = 2160;
      *(v85 + 14) = 1752392040;
      *(v85 + 22) = 2081;
      type metadata accessor for Location();
      sub_1B8032C04();
      v87 = sub_1B80C902C();
      v89 = sub_1B7FB84FC(v87, v88, &v110);

      *(v85 + 24) = v89;
      _os_log_impl(&dword_1B7FB5000, v81, v82, "%{public}s\ncachedLocations:%{private,mask.hash}s", v85, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v86, -1, -1);
      MEMORY[0x1B8CB8970](v85, -1, -1);
    }

    else
    {
      v90 = *(v0 + 1400);
      v80 = sub_1B80830D4(MEMORY[0x1E69E7CC0]);
    }

LABEL_34:
    v91 = *(v0 + 1392);
    v92 = *(v0 + 1384);
    v93 = *(v0 + 1376);
    v94 = *(v0 + 1352);
    v95 = *(v0 + 1344);
    v96 = *(v0 + 1320);

    v97 = *(v0 + 8);

    return v97(v80);
  }

  v65 = *(v0 + 1400);
  v66 = *(v0 + 1408);

  v67 = swift_task_alloc();
  *(v0 + 1416) = v67;
  *v67 = v0;
  v67[1] = sub_1B8022CEC;

  return sub_1B7FF8BCC(&unk_1F2FF96A0);
}

uint64_t sub_1B8022CEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1416);
  v6 = *v2;
  v4[178] = v1;

  v7 = v4[163];
  if (v1)
  {
    v8 = sub_1B80237B4;
  }

  else
  {
    v4[179] = a1;
    v8 = sub_1B8022E28;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1B8022E28()
{
  v119 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1296);
  v106 = MEMORY[0x1E69E7CC8];
  v104 = *(v3 + 16);
  if (v104)
  {
    v4 = 0;
    v5 = *(v0 + 1368);
    v6 = v3 + 32;
    v7 = *(v0 + 1336);
    v102 = (v7 + 48);
    v103 = v6;
    v100 = (v0 + 1072);
    v101 = *(v0 + 1360);
    v97 = (v7 + 16);
    v98 = (v7 + 32);
    v96 = (v7 + 8);
    v105 = *(v1 + 16);
    v99 = MEMORY[0x1E69E7CC8];
    do
    {
      v24 = (v103 + 176 * v4);
      v25 = *v24;
      v26 = v24[2];
      *(v0 + 32) = v24[1];
      *(v0 + 48) = v26;
      *(v0 + 16) = v25;
      v27 = v24[3];
      v28 = v24[4];
      v29 = v24[6];
      *(v0 + 96) = v24[5];
      *(v0 + 112) = v29;
      *(v0 + 64) = v27;
      *(v0 + 80) = v28;
      v30 = v24[7];
      v31 = v24[8];
      v32 = v24[10];
      *(v0 + 160) = v24[9];
      *(v0 + 176) = v32;
      *(v0 + 128) = v30;
      *(v0 + 144) = v31;
      v33 = *(v0 + 16);
      v34 = *(v0 + 24);
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      if (v105)
      {
        v35 = 0;
        while (1)
        {
          if (v35 >= *(v1 + 16))
          {
            __break(1u);
            goto LABEL_34;
          }

          v36 = *(v0 + 1376);
          sub_1B80337A4(v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v35, v36, type metadata accessor for Friend);
          v38 = v36[1];
          v37 = v36[2];
          *(v0 + 368) = *v36;
          *(v0 + 384) = v38;
          *(v0 + 400) = v37;
          v39 = v36[6];
          v41 = v36[3];
          v40 = v36[4];
          *(v0 + 448) = v36[5];
          *(v0 + 464) = v39;
          *(v0 + 416) = v41;
          *(v0 + 432) = v40;
          v42 = v36[10];
          v44 = v36[7];
          v43 = v36[8];
          *(v0 + 512) = v36[9];
          *(v0 + 528) = v42;
          *(v0 + 480) = v44;
          *(v0 + 496) = v43;
          v45 = *(v0 + 368);
          v46 = *(v0 + 376);
          v47 = sub_1B80C90FC();
          v49 = v48;
          if (v47 == sub_1B80C90FC() && v49 == v50)
          {
            break;
          }

          v51 = sub_1B80C981C();
          sub_1B7FC8DA4(v0 + 368, v0 + 544);

          sub_1B7FCAD28(v0 + 368);
          if (v51)
          {
            goto LABEL_17;
          }

          ++v35;
          sub_1B803380C(*(v0 + 1376), type metadata accessor for Friend);
          if (v105 == v35)
          {
            goto LABEL_12;
          }
        }

        sub_1B7FC8DA4(v0 + 368, v0 + 720);

        sub_1B7FCAD28(v0 + 368);
LABEL_17:
        v55 = *(v0 + 1392);
        v56 = *(v0 + 1384);
        v57 = *(v0 + 1328);
        v58 = *(v0 + 1320);
        sub_1B80344D4(*(v0 + 1376), v56, type metadata accessor for Friend);
        sub_1B80344D4(v56, v55, type metadata accessor for Friend);
        sub_1B7FB8448(v55 + *(v101 + 48), v58, &unk_1EBA65FD0, &unk_1B80D1920);
        v59 = (*v102)(v58, 1, v57);
        v60 = *(v0 + 1392);
        if (v59 == 1)
        {
          v61 = *(v0 + 1320);
          sub_1B803380C(*(v0 + 1392), type metadata accessor for Friend);
          sub_1B7FCAD28(v0 + 16);
          sub_1B7FB86D4(v61, &unk_1EBA65FD0, &unk_1B80D1920);
        }

        else
        {
          v62 = *(v0 + 1352);
          v63 = *(v0 + 1344);
          v64 = *(v0 + 1328);
          (*v98)(v62, *(v0 + 1320), v64);
          (*v97)(v63, v62, v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v108 = v106;
          sub_1B802F254(v63, (v0 + 16), isUniquelyReferenced_nonNull_native);
          sub_1B7FCAD28(v0 + 16);
          (*v96)(v62, v64);
          sub_1B803380C(v60, type metadata accessor for Friend);
          v99 = v108;
          v106 = v108;
        }
      }

      else
      {
LABEL_12:
        if (qword_1ED8DD848 != -1)
        {
          swift_once();
        }

        v52 = sub_1B80C900C();
        __swift_project_value_buffer(v52, qword_1ED8DDF28);
        sub_1B7FC8DA4(v0 + 16, v0 + 896);
        v53 = sub_1B80C8FEC();
        v54 = sub_1B80C941C();
        sub_1B7FCAD28(v0 + 16);
        if (os_log_type_enabled(v53, v54))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v107 = v9;
          *v8 = 136446723;
          *(v8 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v107);
          *(v8 + 12) = 2160;
          *(v8 + 14) = 1752392040;
          *(v8 + 22) = 2081;
          v10 = *(v0 + 160);
          v116 = *(v0 + 144);
          v117 = v10;
          v118 = *(v0 + 176);
          v11 = *(v0 + 96);
          v112 = *(v0 + 80);
          v113 = v11;
          v12 = *(v0 + 128);
          v114 = *(v0 + 112);
          v115 = v12;
          v13 = *(v0 + 32);
          v108 = *(v0 + 16);
          v109 = v13;
          v14 = *(v0 + 64);
          v110 = *(v0 + 48);
          v111 = v14;
          v15 = Handle.description.getter();
          v17 = v16;
          v18 = v117;
          *(v0 + 1200) = v116;
          *(v0 + 1216) = v18;
          *(v0 + 1232) = v118;
          v19 = v113;
          *(v0 + 1136) = v112;
          *(v0 + 1152) = v19;
          v20 = v115;
          *(v0 + 1168) = v114;
          *(v0 + 1184) = v20;
          v21 = v109;
          *v100 = v108;
          *(v0 + 1088) = v21;
          v22 = v111;
          *(v0 + 1104) = v110;
          *(v0 + 1120) = v22;
          sub_1B7FCAD28(v100);
          v23 = sub_1B7FB84FC(v15, v17, &v107);

          *(v8 + 24) = v23;
          _os_log_impl(&dword_1B7FB5000, v53, v54, "%{public}s handle:%{private,mask.hash}s not sharing yet", v8, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8CB8970](v9, -1, -1);
          MEMORY[0x1B8CB8970](v8, -1, -1);
        }

        else
        {

          sub_1B7FCAD28(v0 + 16);
        }
      }

      ++v4;
    }

    while (v4 != v104);
  }

  else
  {
    v99 = MEMORY[0x1E69E7CC8];
  }

  if (!*(v99 + 16))
  {
    v87 = *(v0 + 1400);
    v77 = sub_1B80830D4(MEMORY[0x1E69E7CC0]);

    goto LABEL_28;
  }

  if (qword_1ED8DD848 != -1)
  {
LABEL_34:
    swift_once();
  }

  v66 = sub_1B80C900C();
  __swift_project_value_buffer(v66, qword_1ED8DDF28);
  v67 = sub_1B80C8FEC();
  v68 = sub_1B80C941C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *&v108 = v70;
    *v69 = 136446210;
    *(v69 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v108);
    _os_log_impl(&dword_1B7FB5000, v67, v68, "%{public}s Checking if we have any valid cached location that needs rev-geo", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x1B8CB8970](v70, -1, -1);
    MEMORY[0x1B8CB8970](v69, -1, -1);
  }

  v71 = *(v0 + 1312);
  v72 = *(v0 + 1304);
  v73 = *(v0 + 1440);
  v74 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles;
  swift_beginAccess();
  v75 = *(v72 + v74);

  v77 = sub_1B802F778(v76, &v106, v73);

  v78 = sub_1B80C8FEC();
  v79 = sub_1B80C941C();

  v80 = os_log_type_enabled(v78, v79);
  v81 = *(v0 + 1400);
  if (v80)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&v108 = v83;
    *v82 = 136446723;
    *(v82 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v108);
    *(v82 + 12) = 2160;
    *(v82 + 14) = 1752392040;
    *(v82 + 22) = 2081;
    type metadata accessor for Location();
    sub_1B8032C04();
    v84 = sub_1B80C902C();
    v86 = sub_1B7FB84FC(v84, v85, &v108);

    *(v82 + 24) = v86;
    _os_log_impl(&dword_1B7FB5000, v78, v79, "%{public}s\ncachedLocations:%{private,mask.hash}s", v82, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v83, -1, -1);
    MEMORY[0x1B8CB8970](v82, -1, -1);

LABEL_28:

    goto LABEL_30;
  }

LABEL_30:
  v88 = *(v0 + 1392);
  v89 = *(v0 + 1384);
  v90 = *(v0 + 1376);
  v91 = *(v0 + 1352);
  v92 = *(v0 + 1344);
  v93 = *(v0 + 1320);

  v94 = *(v0 + 8);

  return v94(v77);
}

uint64_t sub_1B80237B4()
{
  v24 = v0;
  v1 = v0[175];

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = v0[178];
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C941C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[178];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000038, 0x80000001B80CCC10, &v23);
    *(v8 + 12) = 2114;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s failed with error: %{public}@", v8, 0x16u);
    sub_1B7FB86D4(v9, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  v13 = v0[178];
  v14 = sub_1B80830D4(MEMORY[0x1E69E7CC0]);

  v15 = v0[174];
  v16 = v0[173];
  v17 = v0[172];
  v18 = v0[169];
  v19 = v0[168];
  v20 = v0[165];

  v21 = v0[1];

  return v21(v14);
}

uint64_t Session.stopRefreshingLocation(for:priority:clientID:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 65) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8023A38, 0, 0);
}

uint64_t sub_1B8023A38()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B8023AD4;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B8023AD4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8023BD0, 0, 0);
}

uint64_t sub_1B8023BD0()
{
  v1 = *(*(v0 + 32) + 56);
  *(v0 + 64) = *(v0 + 65);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1B8023C7C;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1B8034F2C(v4, (v0 + 64), v3);
}

uint64_t sub_1B8023C7C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8023DB0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.startRefreshingLocation(_:clientID:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8023DEC, 0, 0);
}

uint64_t sub_1B8023DEC()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B8023E88;
  v2 = *(v0 + 88);

  return sub_1B7FC225C();
}

uint64_t sub_1B8023E88()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8023F84, 0, 0);
}

uint64_t sub_1B8023F84()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 88) + 56);
  v4 = v1[1];
  v3 = v1[2];
  v5 = *v1;
  *(v0 + 61) = *(v1 + 45);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1B8024040;
  v7 = *(v0 + 80);

  return sub_1B80351B0(v0 + 16, v7);
}

uint64_t sub_1B8024040(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  *(v5 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B802417C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t Session.stopRefreshingLocation(for:priority:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 65) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B8024230, 0, 0);
}

uint64_t sub_1B8024230()
{
  v12 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v0[4];
  v10 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v10, v6);
  v11 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v11);
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1B8024350;
  v8 = v0[3];

  return sub_1B7FC225C();
}

uint64_t sub_1B8024350()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B802444C, 0, 0);
}

uint64_t sub_1B802444C()
{
  v1 = *(*(v0 + 24) + 56);
  *(v0 + 64) = *(v0 + 65);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1B80244FC;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  return sub_1B8034F2C(v4, (v0 + 64), v3);
}

uint64_t sub_1B80244FC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B802465C, 0, 0);
  }

  else
  {
    sub_1B803380C(v3[4], type metadata accessor for ClientID);

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1B802465C()
{
  sub_1B803380C(v0[4], type metadata accessor for ClientID);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t Session.startRefreshingLocation(_:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8024770, 0, 0);
}

uint64_t sub_1B8024770()
{
  v12 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v0[11];
  v10 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v10, v6);
  v11 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v11);
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1B8024890;
  v8 = v0[10];

  return sub_1B7FC225C();
}

uint64_t sub_1B8024890()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B802498C, 0, 0);
}

uint64_t sub_1B802498C()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 80) + 56);
  v4 = v1[1];
  v3 = v1[2];
  v5 = *v1;
  *(v0 + 61) = *(v1 + 45);
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  *(v0 + 16) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1B8024A44;
  v7 = *(v0 + 88);

  return sub_1B80351B0(v0 + 16, v7);
}

uint64_t sub_1B8024A44(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  v5[14] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8024BB8, 0, 0);
  }

  else
  {
    sub_1B803380C(v5[11], type metadata accessor for ClientID);

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_1B8024BB8()
{
  sub_1B803380C(v0[11], type metadata accessor for ClientID);

  v1 = v0[1];
  v2 = v0[14];

  return v1();
}

uint64_t sub_1B8024C3C(_BYTE *a1)
{
  *(v2 + 40) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66120, &qword_1B80D2FF8);
  *(v2 + 48) = v4;
  v5 = *(v4 - 8);
  *(v2 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66090, &qword_1B80D2CF8) - 8) + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66080, &unk_1B80D2C48);
  *(v2 + 80) = v8;
  v9 = *(v8 - 8);
  *(v2 + 88) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 105) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B8024DB4, v1, 0);
}

uint64_t sub_1B8024DB4()
{
  v24 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v4 + v5, v3, &qword_1EBA66090, &qword_1B80D2CF8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B7FB86D4(*(v0 + 72), &qword_1EBA66090, &qword_1B80D2CF8);
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v6 = sub_1B80C900C();
    __swift_project_value_buffer(v6, qword_1ED8DDF28);
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93DC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CCED0, &v23);
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s missing stewie state update continuation", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }
  }

  else
  {
    v11 = *(v0 + 105);
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    v16 = *(v0 + 56);
    v15 = *(v0 + 64);
    v17 = *(v0 + 48);
    (*(v13 + 32))(v12, *(v0 + 72), v14);
    *(v0 + 104) = v11;
    sub_1B80C92EC();
    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
  }

  v18 = *(v0 + 96);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1B8025048(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58[0] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v58 - v9;
  v11 = type metadata accessor for Location();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B80D1EB0;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  v60 = inited;

  sub_1B808BE64(v20);
  v21 = sub_1B808DBA4(v60);

  if (*(a2 + v11[15]) <= 1u)
  {
    if (!*(a2 + v11[15]) && *(v4 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_origin))
    {
      v22 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
      swift_beginAccess();
      v23 = *(v4 + v22);
      if (*(v23 + 16) && (v24 = sub_1B7FDA504(2u), (v25 & 1) != 0))
      {
        v26 = *(*(v23 + 56) + 8 * v24);

        v28 = sub_1B801F398(v27);

        LOBYTE(v26) = sub_1B8031520(v28, v21);

        v29 = v26 ^ 1;
      }

      else
      {

        v29 = 0;
      }

      return v29 & 1;
    }

    goto LABEL_15;
  }

  if (*(a2 + v11[15]) != 2)
  {
LABEL_15:

LABEL_16:
    v29 = 1;
    return v29 & 1;
  }

  v30 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  v31 = *(v4 + v30);
  if (*(v31 + 16) && (v32 = sub_1B7FDA504(2u), (v33 & 1) != 0))
  {
    v34 = *(*(v31 + 56) + 8 * v32);

    v36 = sub_1B801F398(v35);

    LOBYTE(v34) = sub_1B8031520(v36, v21);

    if ((v34 & 1) == 0)
    {
      if (qword_1ED8DD848 != -1)
      {
        swift_once();
      }

      v37 = sub_1B80C900C();
      __swift_project_value_buffer(v37, qword_1ED8DDF28);
      v38 = sub_1B80C8FEC();
      v39 = sub_1B80C93EC();
      if (!os_log_type_enabled(v38, v39))
      {
        goto LABEL_25;
      }

      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v59 = v41;
      *v40 = 136446210;
      *(v40 + 4) = sub_1B7FB84FC(0xD000000000000054, 0x80000001B80CCF30, &v59);
      v42 = "%{public}s: Client has a live subscription for that handle";
LABEL_24:
      _os_log_impl(&dword_1B7FB5000, v38, v39, v42, v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1B8CB8970](v41, -1, -1);
      MEMORY[0x1B8CB8970](v40, -1, -1);
LABEL_25:

      goto LABEL_16;
    }
  }

  else
  {
  }

  sub_1B7FB8448(v58[0], v10, &qword_1EBA65D60, &unk_1B80DC530);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7FB86D4(v10, &qword_1EBA65D60, &unk_1B80DC530);
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v44 = sub_1B80C900C();
    __swift_project_value_buffer(v44, qword_1ED8DDF28);
    v38 = sub_1B80C8FEC();
    v39 = sub_1B80C93EC();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_25;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v59 = v41;
    *v40 = 136446210;
    *(v40 + 4) = sub_1B7FB84FC(0xD000000000000054, 0x80000001B80CCF30, &v59);
    v42 = "%{public}s: If there's no location in cache, always forward";
    goto LABEL_24;
  }

  sub_1B80344D4(v10, v15, type metadata accessor for Location);
  v45 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*&v15[v11[10]] longitude:*&v15[v11[11]]];
  v46 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(a2 + v11[10]) longitude:*(a2 + v11[11])];
  [v45 distanceFromLocation_];
  v48 = v47;
  v49 = v11[13];
  v50 = *&v15[v49];
  v51 = *(a2 + v49);
  v52 = v51 - v50 > 60.0 && v50 < v51;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v53 = sub_1B80C900C();
  __swift_project_value_buffer(v53, qword_1ED8DDF28);
  v54 = sub_1B80C8FEC();
  v55 = sub_1B80C93EC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v56 = 136446722;
    *(v56 + 4) = sub_1B7FB84FC(0xD000000000000054, 0x80000001B80CCF30, &v59);
    *(v56 + 12) = 1024;
    *(v56 + 14) = v48 > 300.0;
    *(v56 + 18) = 1024;
    *(v56 + 20) = v52;
    _os_log_impl(&dword_1B7FB5000, v54, v55, "%{public}s hasSignificantlyMoved: %{BOOL}d hasSignificantTimeUpdate: %{BOOL}d", v56, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x1B8CB8970](v57, -1, -1);
    MEMORY[0x1B8CB8970](v56, -1, -1);
  }

  sub_1B803380C(v15, type metadata accessor for Location);
  v29 = v48 > 300.0 || v52;
  return v29 & 1;
}

uint64_t sub_1B8025790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[76] = a6;
  v6[75] = a5;
  v6[74] = a4;
  v8 = type metadata accessor for LocationStreamChange();
  v6[77] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v6[78] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v6[79] = v10;
  v11 = *(v10 - 8);
  v6[80] = v11;
  v12 = *(v11 + 64) + 15;
  v6[81] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0) - 8) + 64) + 15;
  v6[82] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D0, &qword_1B80D2E90) - 8) + 64) + 15;
  v6[83] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530) - 8) + 64) + 15;
  v6[84] = swift_task_alloc();
  v16 = type metadata accessor for Location();
  v6[85] = v16;
  v17 = *(v16 - 8);
  v6[86] = v17;
  v18 = *(v17 + 64) + 15;
  v6[87] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802599C, a4, 0);
}

uint64_t sub_1B802599C()
{
  v58 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = v2[9];
  v57[8] = v2[8];
  v57[9] = v4;
  v57[10] = v2[10];
  v5 = v2[5];
  v57[4] = v2[4];
  v57[5] = v5;
  v6 = v2[7];
  v57[6] = v2[6];
  v57[7] = v6;
  v7 = v2[1];
  v57[0] = *v2;
  v57[1] = v7;
  v8 = v2[3];
  v57[2] = v2[2];
  v57[3] = v8;
  if (sub_1B8026260(v57, v1))
  {
    v9 = *(v0 + 600);
    v11 = v9[1];
    v10 = v9[2];
    *(v0 + 192) = *v9;
    *(v0 + 208) = v11;
    *(v0 + 224) = v10;
    v12 = v9[6];
    v14 = v9[3];
    v13 = v9[4];
    *(v0 + 272) = v9[5];
    *(v0 + 288) = v12;
    *(v0 + 240) = v14;
    *(v0 + 256) = v13;
    v15 = v9[10];
    v17 = v9[7];
    v16 = v9[8];
    *(v0 + 336) = v9[9];
    *(v0 + 352) = v15;
    *(v0 + 304) = v17;
    *(v0 + 320) = v16;
    v18 = swift_task_alloc();
    *(v0 + 704) = v18;
    *v18 = v0;
    v18[1] = sub_1B8025DBC;
    v19 = *(v0 + 696);
    v20 = *(v0 + 608);
    v21 = *(v0 + 592);

    return sub_1B8026644(v19, (v0 + 192), v20);
  }

  else
  {
    sub_1B80337A4(*(v0 + 608), *(v0 + 696), type metadata accessor for Location);
    v23 = *(v0 + 656);
    v24 = *(v0 + 640);
    v25 = *(v0 + 632);
    v26 = *(v0 + 592);
    v27 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    swift_beginAccess();
    sub_1B7FB8448(v26 + v27, v23, &qword_1EBA66088, &qword_1B80D2CF0);
    v28 = (*(v24 + 48))(v23, 1, v25);
    v29 = *(v0 + 696);
    if (v28)
    {
      v30 = *(v0 + 656);
      sub_1B803380C(*(v0 + 696), type metadata accessor for Location);
      sub_1B7FB86D4(v30, &qword_1EBA66088, &qword_1B80D2CF0);
      v31 = 1;
    }

    else
    {
      v32 = *(v0 + 664);
      v33 = *(v0 + 656);
      v34 = *(v0 + 648);
      v35 = *(v0 + 640);
      v36 = *(v0 + 632);
      v37 = *(v0 + 624);
      v38 = *(v0 + 616);
      v39 = *(v0 + 600);
      (*(v35 + 16))(v34, v33, v36);
      sub_1B7FB86D4(v33, &qword_1EBA66088, &qword_1B80D2CF0);
      v40 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
      sub_1B80337A4(v29, v37, type metadata accessor for Location);
      v42 = v39[1];
      v41 = v39[2];
      *v40 = *v39;
      v40[1] = v42;
      v40[2] = v41;
      v43 = v39[6];
      v45 = v39[3];
      v44 = v39[4];
      v40[5] = v39[5];
      v40[6] = v43;
      v40[3] = v45;
      v40[4] = v44;
      v46 = v39[10];
      v48 = v39[7];
      v47 = v39[8];
      v40[9] = v39[9];
      v40[10] = v46;
      v40[7] = v48;
      v40[8] = v47;
      swift_storeEnumTagMultiPayload();
      sub_1B7FC8DA4(v39, v0 + 16);
      sub_1B80C92EC();
      (*(v35 + 8))(v34, v36);
      sub_1B803380C(v29, type metadata accessor for Location);
      v31 = 0;
    }

    v49 = *(v0 + 696);
    v50 = *(v0 + 672);
    v51 = *(v0 + 664);
    v52 = *(v0 + 656);
    v53 = *(v0 + 648);
    v54 = *(v0 + 624);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
    (*(*(v55 - 8) + 56))(v51, v31, 1, v55);
    sub_1B7FB86D4(v51, &qword_1EBA660D0, &qword_1B80D2E90);

    v56 = *(v0 + 8);

    return v56();
  }
}

uint64_t sub_1B8025DBC()
{
  v1 = *(*v0 + 704);
  v2 = *(*v0 + 592);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8025ECC, v2, 0);
}

uint64_t sub_1B8025ECC()
{
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[75];
  v5 = v0[74];
  sub_1B80337A4(v0[87], v3, type metadata accessor for Location);
  (*(v1 + 56))(v3, 0, 1, v2);
  swift_beginAccess();
  sub_1B7FC8DA4(v4, (v0 + 46));
  sub_1B8014B0C(v3, v4);
  swift_endAccess();
  v6 = v0[82];
  v7 = v0[80];
  v8 = v0[79];
  v9 = v0[74];
  v10 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v9 + v10, v6, &qword_1EBA66088, &qword_1B80D2CF0);
  if ((*(v7 + 48))(v6, 1, v8))
  {
    v11 = v0[82];
    sub_1B803380C(v0[87], type metadata accessor for Location);
    sub_1B7FB86D4(v11, &qword_1EBA66088, &qword_1B80D2CF0);
    v12 = 1;
  }

  else
  {
    v13 = v0[87];
    v14 = v0[83];
    v15 = v0[82];
    v16 = v0[81];
    v17 = v0[80];
    v18 = v0[79];
    v19 = v0[78];
    v20 = v0[77];
    v21 = v0[75];
    (*(v17 + 16))(v16, v15, v18);
    sub_1B7FB86D4(v15, &qword_1EBA66088, &qword_1B80D2CF0);
    v22 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
    sub_1B80337A4(v13, v19, type metadata accessor for Location);
    v24 = v21[1];
    v23 = v21[2];
    *v22 = *v21;
    v22[1] = v24;
    v22[2] = v23;
    v25 = v21[6];
    v27 = v21[3];
    v26 = v21[4];
    v22[5] = v21[5];
    v22[6] = v25;
    v22[3] = v27;
    v22[4] = v26;
    v28 = v21[10];
    v30 = v21[7];
    v29 = v21[8];
    v22[9] = v21[9];
    v22[10] = v28;
    v22[7] = v30;
    v22[8] = v29;
    swift_storeEnumTagMultiPayload();
    sub_1B7FC8DA4(v21, (v0 + 2));
    sub_1B80C92EC();
    (*(v17 + 8))(v16, v18);
    sub_1B803380C(v13, type metadata accessor for Location);
    v12 = 0;
  }

  v31 = v0[87];
  v32 = v0[84];
  v33 = v0[83];
  v34 = v0[82];
  v35 = v0[81];
  v36 = v0[78];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
  (*(*(v37 - 8) + 56))(v33, v12, 1, v37);
  sub_1B7FB86D4(v33, &qword_1EBA660D0, &qword_1B80D2E90);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1B8026260(_OWORD *a1, uint64_t a2)
{
  v5 = type metadata accessor for Location();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[5];
  v43[4] = a1[4];
  v43[5] = v10;
  v11 = a1[3];
  v43[2] = a1[2];
  v43[3] = v11;
  v12 = a1[10];
  v43[9] = a1[9];
  v43[10] = v12;
  v13 = a1[8];
  v43[7] = a1[7];
  v43[8] = v13;
  v43[6] = a1[6];
  v14 = a1[1];
  v43[0] = *a1;
  v43[1] = v14;
  v15 = (a2 + *(v7 + 28));
  v16 = v15[9];
  v46 = v15[8];
  v47 = v16;
  v17 = v15[11];
  v48 = v15[10];
  v49 = v17;
  v18 = v15[5];
  v44[4] = v15[4];
  v44[5] = v18;
  v19 = v15[7];
  v44[6] = v15[6];
  v45 = v19;
  v20 = v15[1];
  v44[0] = *v15;
  v44[1] = v20;
  v21 = v15[3];
  v44[2] = v15[2];
  v44[3] = v21;
  if (sub_1B8032DBC(v44) == 1)
  {
    goto LABEL_2;
  }

  if (*(&v47 + 1))
  {
LABEL_4:

    v22 = 1;
    goto LABEL_5;
  }

  v22 = 1;
  if (!*(&v48 + 1) && !*(&v49 + 1) && !*(&v45 + 1))
  {
    if (!*(&v46 + 1))
    {
LABEL_2:
      v22 = 0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:
  v23 = *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_origin);
  v24 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesNeedingReverseGeocoding;
  swift_beginAccess();
  v25 = *(v2 + v24);

  v26 = sub_1B801F1CC(v43, v25);

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v27 = (v22 ^ 1) & ((v23 == 1) | v26);
  v28 = sub_1B80C900C();
  __swift_project_value_buffer(v28, qword_1ED8DDF28);
  sub_1B80337A4(a2, v9, type metadata accessor for Location);
  sub_1B7FC8DA4(v43, v42);
  v29 = sub_1B80C8FEC();
  v30 = sub_1B80C93EC();
  sub_1B7FCAD28(v43);
  if (os_log_type_enabled(v29, v30))
  {
    v41 = v23 == 1;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v22;
    v33 = v32;
    v42[0] = v32;
    *v31 = 141559811;
    *(v31 + 4) = 1752392040;
    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_1B7FB84FC(*&v43[0], *(&v43[0] + 1), v42);
    *(v31 + 22) = 2160;
    *(v31 + 24) = 1752392040;
    *(v31 + 32) = 2081;
    v34 = Location.description.getter();
    v36 = v35;
    sub_1B803380C(v9, type metadata accessor for Location);
    v37 = sub_1B7FB84FC(v34, v36, v42);

    *(v31 + 34) = v37;
    *(v31 + 42) = 1024;
    *(v31 + 44) = v27;
    *(v31 + 48) = 1024;
    v38 = v41;
    *(v31 + 50) = v40;
    *(v31 + 54) = 1024;
    *(v31 + 56) = v38;
    *(v31 + 60) = 1024;
    *(v31 + 62) = v26 & 1;
    _os_log_impl(&dword_1B7FB5000, v29, v30, "Handle: %{private,mask.hash}s Location: %{private,mask.hash}s isReverseGeocodingNeeded: %{BOOL}d, hasAddress: %{BOOL}d, originIsMessages: %{BOOL}d, handleNeedsRevGeo: %{BOOL}d", v31, 0x42u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v33, -1, -1);
    MEMORY[0x1B8CB8970](v31, -1, -1);
  }

  else
  {

    sub_1B803380C(v9, type metadata accessor for Location);
  }

  return v27;
}

uint64_t sub_1B8026644(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 1080) = v3;
  *(v4 + 1072) = a3;
  *(v4 + 1064) = a2;
  *(v4 + 1056) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530) - 8) + 64) + 15;
  *(v4 + 1088) = swift_task_alloc();
  v7 = type metadata accessor for Location();
  *(v4 + 1096) = v7;
  v8 = *(v7 - 8);
  *(v4 + 1104) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 1112) = swift_task_alloc();
  *(v4 + 1120) = swift_task_alloc();
  v10 = type metadata accessor for ReverseGeocodingRequest();
  *(v4 + 1128) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v4 + 1136) = swift_task_alloc();
  v12 = a2[9];
  *(v4 + 800) = a2[8];
  *(v4 + 816) = v12;
  *(v4 + 832) = a2[10];
  v13 = a2[5];
  *(v4 + 736) = a2[4];
  *(v4 + 752) = v13;
  v14 = a2[7];
  *(v4 + 768) = a2[6];
  *(v4 + 784) = v14;
  v15 = a2[1];
  *(v4 + 672) = *a2;
  *(v4 + 688) = v15;
  v16 = a2[3];
  *(v4 + 704) = a2[2];
  *(v4 + 720) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1B80267C0, v3, 0);
}

uint64_t sub_1B80267C0()
{
  v11 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 1064);
  v3 = v2[9];
  v10[8] = v2[8];
  v10[9] = v3;
  v10[10] = v2[10];
  v4 = v2[5];
  v10[4] = v2[4];
  v10[5] = v4;
  v5 = v2[7];
  v10[6] = v2[6];
  v10[7] = v5;
  v6 = v2[1];
  v10[0] = *v2;
  v10[1] = v6;
  v7 = v2[3];
  v10[2] = v2[2];
  v10[3] = v7;
  *(v0 + 1204) = sub_1B8027C80(v10) & 1;
  v8 = *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_reverseGeocoder);
  *(v0 + 1144) = v8;
  *(v0 + 1152) = *(v0 + 672);
  *(v0 + 1160) = *(v0 + 680);

  return MEMORY[0x1EEE6DFA0](sub_1B8026888, v8, 0);
}

uint64_t sub_1B8026888()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1072);
  v3 = *(v2 + v1[8]);
  *(v0 + 1168) = v3;
  v4 = v3 >= 200.0 || v3 < 0.0;
  v5 = v1[15];
  *(v0 + 1200) = v5;
  if (*(v2 + v5) != 2)
  {
    if ((*(v0 + 1204) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = *(v2 + v1[16]);
  if (v6 == 1)
  {
    if ((*(v0 + 1204) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_10;
  }

  v16 = *(v0 + 1204) ^ 1;
  if (v6 != 2)
  {
    v16 = 0;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);
  v9 = *(v0 + 1144);
  v10 = *(v0 + 1136);
  v11 = *(v0 + 1128);
  sub_1B80337A4(v2, v10 + v11[5], type metadata accessor for Location);
  sub_1B7FB8448(v9 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, v10 + v11[6], &qword_1EBA65E00, &qword_1B80D2160);
  *v10 = v8;
  v10[1] = v7;
  *(v10 + v11[7]) = v4;
  v12 = sub_1B7FCD170(&qword_1EBA65E10, type metadata accessor for ReverseGeocoder);

  v13 = swift_task_alloc();
  *(v0 + 1176) = v13;
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  *(v0 + 1184) = v15;
  *v15 = v0;
  v15[1] = sub_1B8026AAC;

  return MEMORY[0x1EEE6DE38](v0 + 16, v9, v12, 0xD000000000000011, 0x80000001B80CCB50, sub_1B8032DB4, v13, &type metadata for Address);
}

uint64_t sub_1B8026AAC()
{
  v2 = *v1;
  v3 = *(*v1 + 1184);
  v7 = *v1;
  *(*v1 + 1192) = v0;

  v4 = *(v2 + 1144);
  if (v0)
  {
    v5 = sub_1B80270AC;
  }

  else
  {
    v5 = sub_1B8026BC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B8026BC4()
{
  v1 = *(v0 + 1080);
  sub_1B803380C(*(v0 + 1136), type metadata accessor for ReverseGeocodingRequest);

  return MEMORY[0x1EEE6DFA0](sub_1B8026C44, v1, 0);
}

uint64_t sub_1B8026C44()
{
  v58 = v0;
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1168);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1056);
  memcpy(v57, (v0 + 16), sizeof(v57));
  PlaceMark.init(address:)(v57, (v0 + 480));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  (*(*(v6 - 8) + 16))(v5, v4, v6);
  v7 = *(v0 + 624);
  *(v0 + 416) = *(v0 + 608);
  *(v0 + 432) = v7;
  v8 = *(v0 + 656);
  *(v0 + 448) = *(v0 + 640);
  *(v0 + 464) = v8;
  v9 = *(v0 + 560);
  *(v0 + 352) = *(v0 + 544);
  *(v0 + 368) = v9;
  v10 = *(v0 + 592);
  *(v0 + 384) = *(v0 + 576);
  *(v0 + 400) = v10;
  v11 = *(v0 + 496);
  *(v0 + 288) = *(v0 + 480);
  *(v0 + 304) = v11;
  v12 = *(v0 + 528);
  *(v0 + 320) = *(v0 + 512);
  *(v0 + 336) = v12;
  nullsub_1(v0 + 288);
  v13 = *(v4 + v3[6]);
  v14 = *(v4 + v3[10]);
  v15 = *(v4 + v3[11]);
  v16 = *(v4 + v3[12]);
  v17 = *(v4 + v3[13]);
  v18 = *(v4 + v3[7]);
  v19 = *(v4 + v3[9]);
  v20 = *(v4 + v3[14]);
  v21 = *(v4 + v1);
  v22 = *(v4 + v3[16]);
  v23 = (v5 + v3[5]);
  v24 = *(v0 + 288);
  v25 = *(v0 + 304);
  v26 = *(v0 + 336);
  v23[2] = *(v0 + 320);
  v23[3] = v26;
  *v23 = v24;
  v23[1] = v25;
  v27 = *(v0 + 352);
  v28 = *(v0 + 368);
  v29 = *(v0 + 400);
  v23[6] = *(v0 + 384);
  v23[7] = v29;
  v23[4] = v27;
  v23[5] = v28;
  v30 = *(v0 + 416);
  v31 = *(v0 + 432);
  v32 = *(v0 + 464);
  v23[10] = *(v0 + 448);
  v23[11] = v32;
  v23[8] = v30;
  v23[9] = v31;
  *(v5 + v3[6]) = v13;
  *(v5 + v3[7]) = v18;
  *(v5 + v3[8]) = v2;
  *(v5 + v3[9]) = v19;
  *(v5 + v3[10]) = v14;
  *(v5 + v3[11]) = v15;
  *(v5 + v3[12]) = v16;
  *(v5 + v3[13]) = v17;
  *(v5 + v3[14]) = v20;
  *(v5 + v3[15]) = v21;
  *(v5 + v3[16]) = v22;
  v33 = qword_1ED8DD848;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 1120);
  v35 = *(v0 + 1056);
  v36 = sub_1B80C900C();
  __swift_project_value_buffer(v36, qword_1ED8DDF28);
  sub_1B80337A4(v35, v34, type metadata accessor for Location);
  v37 = sub_1B80C8FEC();
  v38 = sub_1B80C941C();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 1176);
  v41 = *(v0 + 1120);
  if (v39)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v57[0] = v43;
    *v42 = 141558275;
    *(v42 + 4) = 1752392040;
    *(v42 + 12) = 2081;
    v44 = Location.description.getter();
    v46 = v45;
    sub_1B803380C(v41, type metadata accessor for Location);
    v47 = sub_1B7FB84FC(v44, v46, v57);

    *(v42 + 14) = v47;
    _os_log_impl(&dword_1B7FB5000, v37, v38, "Rev-geo succeeded! Location: %{private,mask.hash}s", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1B8CB8970](v43, -1, -1);
    MEMORY[0x1B8CB8970](v42, -1, -1);
  }

  else
  {

    sub_1B803380C(v41, type metadata accessor for Location);
  }

  v48 = *(v0 + 1136);
  v49 = *(v0 + 1120);
  v50 = *(v0 + 1112);
  v51 = *(v0 + 1104);
  v52 = *(v0 + 1096);
  v53 = *(v0 + 1088);
  v54 = *(v0 + 1080);
  sub_1B80337A4(*(v0 + 1056), v53, type metadata accessor for Location);
  (*(v51 + 56))(v53, 0, 1, v52);
  swift_beginAccess();
  sub_1B7FC8DA4(v0 + 672, v0 + 848);
  sub_1B8014B0C(v53, (v0 + 672));
  swift_endAccess();

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1B80270AC()
{
  v1 = v0[147];
  v2 = v0[142];
  v3 = v0[135];

  sub_1B803380C(v2, type metadata accessor for ReverseGeocodingRequest);

  return MEMORY[0x1EEE6DFA0](sub_1B8027138, v3, 0);
}

uint64_t sub_1B8027138()
{
  v31 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[149];
  v2 = v0[139];
  v3 = v0[134];
  v4 = sub_1B80C900C();
  __swift_project_value_buffer(v4, qword_1ED8DDF28);
  sub_1B80337A4(v3, v2, type metadata accessor for Location);
  v5 = v1;
  v6 = sub_1B80C8FEC();
  v7 = sub_1B80C93FC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[149];
  v10 = v0[139];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v11 = 136446723;
    v0[131] = v9;
    v13 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v14 = sub_1B80C90EC();
    v16 = sub_1B7FB84FC(v14, v15, &v30);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    v17 = Location.description.getter();
    v19 = v18;
    sub_1B803380C(v10, type metadata accessor for Location);
    v20 = sub_1B7FB84FC(v17, v19, &v30);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_1B7FB5000, v6, v7, "Rev-geo failed %{public}s. Returning original location: %{private,mask.hash}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }

  else
  {

    sub_1B803380C(v10, type metadata accessor for Location);
  }

  sub_1B80337A4(v0[134], v0[132], type metadata accessor for Location);
  v21 = v0[142];
  v22 = v0[140];
  v23 = v0[139];
  v24 = v0[138];
  v25 = v0[137];
  v26 = v0[136];
  v27 = v0[135];
  sub_1B80337A4(v0[132], v26, type metadata accessor for Location);
  (*(v24 + 56))(v26, 0, 1, v25);
  swift_beginAccess();
  sub_1B7FC8DA4((v0 + 84), (v0 + 106));
  sub_1B8014B0C(v26, v0 + 84);
  swift_endAccess();

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B80274A8(uint64_t a1)
{
  v2[97] = v1;
  v2[96] = a1;
  v3 = type metadata accessor for LocationStreamChange();
  v2[98] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[99] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  v2[100] = v5;
  v6 = *(v5 - 8);
  v2[101] = v6;
  v7 = *(v6 + 64) + 15;
  v2[102] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66088, &qword_1B80D2CF0) - 8) + 64) + 15;
  v2[103] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D0, &qword_1B80D2E90) - 8) + 64) + 15;
  v2[104] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530) - 8) + 64) + 15;
  v2[105] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8027650, v1, 0);
}

uint64_t sub_1B8027650()
{
  v84 = v0;
  v1 = *(v0 + 768);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 808);
    v4 = *(v0 + 776);
    v5 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles;
    v6 = (v1 + 32);
    v82 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
    swift_beginAccess();
    v81 = (v3 + 48);
    v77 = (v3 + 8);
    v78 = (v3 + 16);
    v79 = v5;
    do
    {
      v25 = *v6;
      v26 = v6[2];
      *(v0 + 32) = v6[1];
      *(v0 + 48) = v26;
      *(v0 + 16) = v25;
      v27 = v6[3];
      v28 = v6[4];
      v29 = v6[6];
      *(v0 + 96) = v6[5];
      *(v0 + 112) = v29;
      *(v0 + 64) = v27;
      *(v0 + 80) = v28;
      v30 = v6[7];
      v31 = v6[8];
      v32 = v6[10];
      *(v0 + 160) = v6[9];
      *(v0 + 176) = v32;
      *(v0 + 128) = v30;
      *(v0 + 144) = v31;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      if (qword_1ED8DD848 != -1)
      {
        swift_once();
      }

      v33 = sub_1B80C900C();
      __swift_project_value_buffer(v33, qword_1ED8DDF28);
      sub_1B7FC8DA4(v0 + 16, v0 + 368);
      v34 = sub_1B80C8FEC();
      v35 = sub_1B80C941C();
      sub_1B7FCAD28(v0 + 16);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v0 + 16);
        v37 = *(v0 + 24);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v83 = v39;
        *v38 = 141558275;
        *(v38 + 4) = 1752392040;
        *(v38 + 12) = 2081;

        v40 = sub_1B7FB84FC(v36, v37, &v83);

        *(v38 + 14) = v40;
        _os_log_impl(&dword_1B7FB5000, v34, v35, "Removing cached location for handle: %{private,mask.hash}s.", v38, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v39);
        v41 = v39;
        v5 = v79;
        MEMORY[0x1B8CB8970](v41, -1, -1);
        MEMORY[0x1B8CB8970](v38, -1, -1);
      }

      swift_beginAccess();
      v42 = *(v4 + v5);
      v43 = sub_1B7FDA47C((v0 + 16));
      if (v44)
      {
        v45 = v43;
        v80 = v2;
        v46 = *(v4 + v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *(v4 + v5);
        v83 = v48;
        *(v4 + v5) = 0x8000000000000000;
        v49 = v4;
        v50 = v5;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1B8092058();
          v48 = v83;
        }

        v51 = *(v0 + 840);
        v52 = (*(v48 + 48) + 176 * v45);
        v54 = v52[1];
        v53 = v52[2];
        *(v0 + 544) = *v52;
        *(v0 + 560) = v54;
        *(v0 + 576) = v53;
        v55 = v52[6];
        v57 = v52[3];
        v56 = v52[4];
        *(v0 + 624) = v52[5];
        *(v0 + 640) = v55;
        *(v0 + 592) = v57;
        *(v0 + 608) = v56;
        v58 = v52[10];
        v60 = v52[7];
        v59 = v52[8];
        *(v0 + 688) = v52[9];
        *(v0 + 704) = v58;
        *(v0 + 656) = v60;
        *(v0 + 672) = v59;
        sub_1B7FCAD28(v0 + 544);
        v61 = *(v48 + 56);
        v62 = type metadata accessor for Location();
        v63 = *(v62 - 8);
        sub_1B80344D4(v61 + *(v63 + 72) * v45, v51, type metadata accessor for Location);
        sub_1B80140E8(v45, v48);
        v64 = *(v49 + v50);
        *(v49 + v50) = v48;

        (*(v63 + 56))(v51, 0, 1, v62);
        v5 = v50;
        v4 = v49;
        v2 = v80;
      }

      else
      {
        v65 = *(v0 + 840);
        v66 = type metadata accessor for Location();
        (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
      }

      v67 = *(v0 + 824);
      v68 = *(v0 + 800);
      sub_1B7FB86D4(*(v0 + 840), &qword_1EBA65D60, &unk_1B80DC530);
      swift_endAccess();
      sub_1B7FB8448(v4 + v82, v67, &qword_1EBA66088, &qword_1B80D2CF0);
      if ((*v81)(v67, 1, v68))
      {
        v69 = *(v0 + 824);
        sub_1B7FCAD28(v0 + 16);
        sub_1B7FB86D4(v69, &qword_1EBA66088, &qword_1B80D2CF0);
        v22 = 1;
      }

      else
      {
        v7 = *(v0 + 832);
        v8 = *(v0 + 824);
        v9 = *(v0 + 816);
        v10 = *(v0 + 800);
        v11 = *(v0 + 792);
        v12 = *(v0 + 784);
        (*v78)(v9, v8, v10);
        sub_1B7FB86D4(v8, &qword_1EBA66088, &qword_1B80D2CF0);
        v14 = *(v0 + 32);
        v13 = *(v0 + 48);
        *v11 = *(v0 + 16);
        v11[1] = v14;
        v11[2] = v13;
        v15 = *(v0 + 112);
        v17 = *(v0 + 64);
        v16 = *(v0 + 80);
        v11[5] = *(v0 + 96);
        v11[6] = v15;
        v11[3] = v17;
        v11[4] = v16;
        v18 = *(v0 + 176);
        v20 = *(v0 + 128);
        v19 = *(v0 + 144);
        v11[9] = *(v0 + 160);
        v11[10] = v18;
        v11[7] = v20;
        v11[8] = v19;
        swift_storeEnumTagMultiPayload();
        sub_1B80C92EC();
        v21 = v9;
        v5 = v79;
        (*v77)(v21, v10);
        v22 = 0;
      }

      v23 = *(v0 + 832);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E0, &qword_1B80D2EA8);
      (*(*(v24 - 8) + 56))(v23, v22, 1, v24);
      sub_1B7FB86D4(v23, &qword_1EBA660D0, &qword_1B80D2E90);
      v6 += 11;
      --v2;
    }

    while (v2);
  }

  v70 = *(v0 + 840);
  v71 = *(v0 + 832);
  v72 = *(v0 + 824);
  v73 = *(v0 + 816);
  v74 = *(v0 + 792);

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_1B8027C80(__int128 *a1)
{
  v2 = v1;
  v3 = a1[9];
  v113 = a1[8];
  v114 = v3;
  v115 = a1[10];
  v4 = a1[5];
  v109 = a1[4];
  v110 = v4;
  v5 = a1[7];
  v111 = a1[6];
  v112 = v5;
  v6 = a1[1];
  v105 = *a1;
  v106 = v6;
  v7 = a1[3];
  v107 = a1[2];
  v108 = v7;
  v8 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (*(v9 + 16))
  {
    v10 = sub_1B7FDA504(3u);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = sub_1B801F1CC(&v105, v12);

      v14 = *(v2 + v8);
      v17 = *(v14 + 64);
      v16 = v14 + 64;
      v15 = v17;
      v18 = 1 << *(*(v2 + v8) + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & v15;
      v21 = (v18 + 63) >> 6;

      v23 = 0;
      while (v20)
      {
LABEL_12:
        v25 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v26 = v25 | (v23 << 6);
        if (*(*(v22 + 48) + v26) != 3)
        {
          v27 = *(*(v22 + 56) + 8 * v26);
          if (*(v27 + 16))
          {
            v68 = *(*(v22 + 48) + v26);
            v69 = v22;
            v28 = *(v27 + 40);
            sub_1B80C993C();
            sub_1B80C90FC();

            sub_1B80C911C();

            v29 = sub_1B80C997C();
            v30 = -1 << *(v27 + 32);
            v31 = v29 & ~v30;
            if ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
            {
              v70 = ~v30;
              while (1)
              {
                v32 = (*(v27 + 48) + 176 * v31);
                v34 = v32[1];
                v33 = v32[2];
                v94 = *v32;
                v95 = v34;
                v96 = v33;
                v35 = v32[3];
                v36 = v32[4];
                v37 = v32[6];
                v99 = v32[5];
                v100 = v37;
                v97 = v35;
                v98 = v36;
                v38 = v32[7];
                v39 = v32[8];
                v40 = v32[10];
                v103 = v32[9];
                v104 = v40;
                v101 = v38;
                v102 = v39;
                v41 = sub_1B80C90FC();
                v43 = v42;
                if (v41 == sub_1B80C90FC() && v43 == v44)
                {
                  break;
                }

                v45 = sub_1B80C981C();
                sub_1B7FC8DA4(&v94, &v83);

                sub_1B7FCAD28(&v94);
                if (v45)
                {
                  goto LABEL_29;
                }

                v31 = (v31 + 1) & v70;
                if (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              sub_1B7FC8DA4(&v94, &v83);

              sub_1B7FCAD28(&v94);
LABEL_29:

              if (qword_1ED8DD848 != -1)
              {
                swift_once();
              }

              v56 = sub_1B80C900C();
              __swift_project_value_buffer(v56, qword_1ED8DDF28);
              sub_1B7FC8DA4(&v105, &v83);
              v57 = sub_1B80C8FEC();
              v58 = sub_1B80C93EC();
              sub_1B7FCAD28(&v105);
              if (os_log_type_enabled(v57, v58))
              {
                v59 = swift_slowAlloc();
                v60 = swift_slowAlloc();
                v82 = v60;
                *v59 = 141558531;
                *(v59 + 4) = 1752392040;
                *(v59 + 12) = 2081;
                v79 = v113;
                v80 = v114;
                v81 = v115;
                v75 = v109;
                v76 = v110;
                v77 = v111;
                v78 = v112;
                v71 = v105;
                v72 = v106;
                v73 = v107;
                v74 = v108;
                sub_1B7FC8DA4(&v105, &v83);
                v61 = Handle.description.getter();
                v63 = v62;
                v91 = v79;
                v92 = v80;
                v93 = v81;
                v87 = v75;
                v88 = v76;
                v89 = v77;
                v90 = v78;
                v83 = v71;
                v84 = v72;
                v85 = v73;
                v86 = v74;
                sub_1B7FCAD28(&v83);
                v64 = sub_1B7FB84FC(v61, v63, &v82);

                *(v59 + 14) = v64;
                *(v59 + 22) = 2080;
                if (v68 > 1)
                {
                  if (v68 == 2)
                  {
                    v65 = 0xE500000000000000;
                    v66 = 0x6576696C2ELL;
                  }

                  else
                  {
                    v66 = 0xD000000000000014;
                    v65 = 0x80000001B80CBF40;
                  }
                }

                else if (v68)
                {
                  v65 = 0xE800000000000000;
                  v66 = 0x776F6C6C6168732ELL;
                }

                else
                {
                  v65 = 0x80000001B80CBFD0;
                  v66 = 0xD000000000000015;
                }

                v67 = sub_1B7FB84FC(v66, v65, &v82);

                *(v59 + 24) = v67;
                _os_log_impl(&dword_1B7FB5000, v57, v58, "%{private,mask.hash}s also subscribed to %s", v59, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1B8CB8970](v60, -1, -1);
                MEMORY[0x1B8CB8970](v59, -1, -1);
              }

              goto LABEL_25;
            }

LABEL_20:

            v22 = v69;
          }
        }
      }

      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v21)
        {

          return v13 & 1;
        }

        v20 = *(v16 + 8 * v24);
        ++v23;
        if (v20)
        {
          v23 = v24;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_42;
    }
  }

  if (qword_1ED8DD848 != -1)
  {
LABEL_42:
    swift_once();
  }

  v46 = sub_1B80C900C();
  __swift_project_value_buffer(v46, qword_1ED8DDF28);
  sub_1B7FC8DA4(&v105, &v94);
  v47 = sub_1B80C8FEC();
  v48 = sub_1B80C93EC();
  sub_1B7FCAD28(&v105);
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *&v71 = v50;
    *v49 = 141558275;
    *(v49 + 4) = 1752392040;
    *(v49 + 12) = 2081;
    v91 = v113;
    v92 = v114;
    v93 = v115;
    v87 = v109;
    v88 = v110;
    v89 = v111;
    v90 = v112;
    v83 = v105;
    v84 = v106;
    v85 = v107;
    v86 = v108;
    sub_1B7FC8DA4(&v105, &v94);
    v51 = Handle.description.getter();
    v53 = v52;
    v102 = v91;
    v103 = v92;
    v104 = v93;
    v98 = v87;
    v99 = v88;
    v100 = v89;
    v101 = v90;
    v94 = v83;
    v95 = v84;
    v96 = v85;
    v97 = v86;
    sub_1B7FCAD28(&v94);
    v54 = sub_1B7FB84FC(v51, v53, &v71);

    *(v49 + 14) = v54;
    _os_log_impl(&dword_1B7FB5000, v47, v48, "%{private,mask.hash}s not subscribed to background proactive", v49, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x1B8CB8970](v50, -1, -1);
    MEMORY[0x1B8CB8970](v49, -1, -1);
  }

LABEL_25:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_1B80283B4(uint64_t a1)
{
  v2[92] = v1;
  v2[91] = a1;
  v3 = sub_1B80C8E9C();
  v2[93] = v3;
  v4 = *(v3 - 8);
  v2[94] = v4;
  v5 = *(v4 + 64) + 15;
  v2[95] = swift_task_alloc();
  v6 = *(type metadata accessor for Location() - 8);
  v2[96] = v6;
  v7 = *(v6 + 64) + 15;
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C8, &qword_1B80D2E88) - 8) + 64) + 15;
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8028538, v1, 0);
}

uint64_t sub_1B8028538()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 728);
  v3 = *(v2 + 32);
  *(v0 + 880) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 824) = MEMORY[0x1E69E7CC8];

  if (v6)
  {
    v8 = 0;
LABEL_8:
    v11 = *(v0 + 808);
    v12 = *(v0 + 800);
    v13 = __clz(__rbit64(v6));
    v14 = (v6 - 1) & v6;
    v15 = v13 | (v8 << 6);
    v16 = (*(v7 + 48) + 176 * v15);
    v18 = v16[1];
    v17 = v16[2];
    *(v0 + 192) = *v16;
    *(v0 + 208) = v18;
    *(v0 + 224) = v17;
    v19 = v16[6];
    v21 = v16[3];
    v20 = v16[4];
    *(v0 + 272) = v16[5];
    *(v0 + 288) = v19;
    *(v0 + 240) = v21;
    *(v0 + 256) = v20;
    v22 = v16[10];
    v24 = v16[7];
    v23 = v16[8];
    *(v0 + 336) = v16[9];
    *(v0 + 352) = v22;
    *(v0 + 304) = v24;
    *(v0 + 320) = v23;
    sub_1B80337A4(*(v7 + 56) + *(v1 + 72) * v15, v12, type metadata accessor for Location);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v26 = *(v25 + 48);
    v28 = *(v0 + 208);
    v27 = *(v0 + 224);
    *v11 = *(v0 + 192);
    v11[1] = v28;
    v11[2] = v27;
    v29 = *(v0 + 240);
    v30 = *(v0 + 256);
    v31 = *(v0 + 288);
    v11[5] = *(v0 + 272);
    v11[6] = v31;
    v11[3] = v29;
    v11[4] = v30;
    v32 = *(v0 + 304);
    v33 = *(v0 + 320);
    v34 = *(v0 + 352);
    v11[9] = *(v0 + 336);
    v11[10] = v34;
    v11[7] = v32;
    v11[8] = v33;
    sub_1B80344D4(v12, v11 + v26, type metadata accessor for Location);
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
    sub_1B7FC8DA4(v0 + 192, v0 + 368);
    v10 = v8;
  }

  else
  {
    v9 = 0;
    v10 = ((63 - v5) >> 6) - 1;
    while (v10 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 72 + 8 * v9++);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v72 = *(v0 + 808);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    (*(*(v73 - 8) + 56))(v72, 1, 1, v73);
    v14 = 0;
  }

  *(v0 + 840) = v10;
  *(v0 + 832) = v14;
  v35 = *(v0 + 816);
  sub_1B7FC8F2C(*(v0 + 808), v35, &qword_1EBA660C8, &qword_1B80D2E88);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
  v38 = *(v0 + 800);
  v39 = *(v0 + 792);
  if (v37 == 1)
  {
    v40 = *(v0 + 816);
    v41 = *(v0 + 808);
    v42 = *(v0 + 784);
    v43 = *(v0 + 776);
    v44 = *(v0 + 760);
    v45 = *(v0 + 728);

    v46 = *(v0 + 8);
    v47 = *(v0 + 824);

    return v46(v47);
  }

  else
  {
    v49 = *(v0 + 816);
    v50 = *(v0 + 760);
    v51 = *(v0 + 752);
    v52 = *(v0 + 744);
    v53 = *(v0 + 736);
    v55 = v49[1];
    v54 = v49[2];
    *(v0 + 16) = *v49;
    *(v0 + 32) = v55;
    *(v0 + 48) = v54;
    v56 = v49[6];
    v58 = v49[3];
    v57 = v49[4];
    *(v0 + 96) = v49[5];
    *(v0 + 112) = v56;
    *(v0 + 64) = v58;
    *(v0 + 80) = v57;
    v59 = v49[10];
    v61 = v49[7];
    v60 = v49[8];
    *(v0 + 160) = v49[9];
    *(v0 + 176) = v59;
    *(v0 + 128) = v61;
    *(v0 + 144) = v60;
    sub_1B80344D4(v49 + *(v36 + 48), v39, type metadata accessor for Location);
    *(v0 + 848) = sub_1B8012DD8();
    sub_1B80337A4(v39, v38, type metadata accessor for Location);
    v62 = type metadata accessor for LocationShiftingRequest();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    v65 = swift_allocObject();
    *(v0 + 856) = v65;
    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    v66 = sub_1B80C8E4C();
    v68 = v67;
    (*(v51 + 8))(v50, v52);
    v69 = (v65 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
    *v69 = v66;
    v69[1] = v68;
    sub_1B80344D4(v38, v65 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
    v70 = swift_task_alloc();
    *(v0 + 864) = v70;
    *v70 = v0;
    v70[1] = sub_1B8028A2C;
    v71 = *(v0 + 784);

    return sub_1B809EB08(v71, v65);
  }
}

uint64_t sub_1B8028A2C()
{
  v2 = *v1;
  v3 = *(*v1 + 864);
  v10 = *v1;
  *(*v1 + 872) = v0;

  if (v0)
  {
    v4 = v2[92];
    v5 = sub_1B802924C;
  }

  else
  {
    v6 = v2[107];
    v7 = v2[106];
    v8 = v2[92];

    v5 = sub_1B8028B60;
    v4 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

unint64_t sub_1B8028B60()
{
  v3 = *(v1 + 824);
  sub_1B80344D4(*(v1 + 784), *(v1 + 776), type metadata accessor for Location);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 720) = v3;
  result = sub_1B7FDA47C((v1 + 16));
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    goto LABEL_32;
  }

  LOBYTE(v0) = v6;
  v2 = v1 + 720;
  if (*(*(v1 + 824) + 24) >= v10)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_33;
    }

    while (1)
    {
LABEL_8:
      v13 = *(v1 + 792);
      v14 = *(v1 + 776);
      v15 = *(v1 + 768);
      if (v0)
      {
        v16 = result;
        sub_1B7FCAD28(v1 + 16);
        v0 = *v2;
        sub_1B803453C(v14, *(*v2 + 56) + *(v15 + 72) * v16, type metadata accessor for Location);
        result = sub_1B803380C(v13, type metadata accessor for Location);
      }

      else
      {
        v0 = *v2;
        *(*v2 + 8 * (result >> 6) + 64) |= 1 << result;
        v17 = (v0[6] + 176 * result);
        v19 = *(v1 + 96);
        v18 = *(v1 + 112);
        v20 = *(v1 + 80);
        v17[3] = *(v1 + 64);
        v17[4] = v20;
        v17[5] = v19;
        v17[6] = v18;
        v22 = *(v1 + 32);
        v21 = *(v1 + 48);
        *v17 = *(v1 + 16);
        v17[1] = v22;
        v17[2] = v21;
        v23 = *(v1 + 128);
        v24 = *(v1 + 144);
        v25 = *(v1 + 176);
        v17[9] = *(v1 + 160);
        v17[10] = v25;
        v17[7] = v23;
        v17[8] = v24;
        sub_1B80344D4(v14, v0[7] + *(v15 + 72) * result, type metadata accessor for Location);
        result = sub_1B803380C(v13, type metadata accessor for Location);
        v26 = v0[2];
        v9 = __OFADD__(v26, 1);
        v27 = v26 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        v0[2] = v27;
      }

      v2 = *(v1 + 840);
      v28 = *(v1 + 832);
      *(v1 + 824) = v0;
      if (v28)
      {
        break;
      }

      v30 = ((1 << *(v1 + 880)) + 63) >> 6;
      if (v30 <= (v2 + 1))
      {
        v31 = v2 + 1;
      }

      else
      {
        v31 = ((1 << *(v1 + 880)) + 63) >> 6;
      }

      v32 = v31 - 1;
      while (1)
      {
        v33 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v33 >= v30)
        {
          v95 = *(v1 + 808);
          v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
          (*(*(v96 - 8) + 56))(v95, 1, 1, v96);
          v37 = 0;
          goto LABEL_23;
        }

        v29 = *(v1 + 728);
        v28 = *(v29 + 8 * v33 + 64);
        ++v2;
        if (v28)
        {
          v2 = v33;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v97 = result;
      sub_1B8092058();
      result = v97;
    }

    v29 = *(v1 + 728);
LABEL_22:
    v34 = *(v1 + 808);
    v35 = *(v1 + 800);
    v36 = *(v1 + 768);
    v37 = (v28 - 1) & v28;
    v38 = __clz(__rbit64(v28)) | (v2 << 6);
    v39 = (*(v29 + 48) + 176 * v38);
    v41 = v39[1];
    v40 = v39[2];
    *(v1 + 192) = *v39;
    *(v1 + 208) = v41;
    *(v1 + 224) = v40;
    v42 = v39[6];
    v44 = v39[3];
    v43 = v39[4];
    *(v1 + 272) = v39[5];
    *(v1 + 288) = v42;
    *(v1 + 240) = v44;
    *(v1 + 256) = v43;
    v45 = v39[10];
    v47 = v39[7];
    v46 = v39[8];
    *(v1 + 336) = v39[9];
    *(v1 + 352) = v45;
    *(v1 + 304) = v47;
    *(v1 + 320) = v46;
    sub_1B80337A4(*(v29 + 56) + *(v36 + 72) * v38, v35, type metadata accessor for Location);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v49 = *(v48 + 48);
    v51 = *(v1 + 208);
    v50 = *(v1 + 224);
    *v34 = *(v1 + 192);
    v34[1] = v51;
    v34[2] = v50;
    v52 = *(v1 + 240);
    v53 = *(v1 + 256);
    v54 = *(v1 + 288);
    v34[5] = *(v1 + 272);
    v34[6] = v54;
    v34[3] = v52;
    v34[4] = v53;
    v55 = *(v1 + 304);
    v56 = *(v1 + 320);
    v57 = *(v1 + 352);
    v34[9] = *(v1 + 336);
    v34[10] = v57;
    v34[7] = v55;
    v34[8] = v56;
    sub_1B80344D4(v35, v34 + v49, type metadata accessor for Location);
    (*(*(v48 - 8) + 56))(v34, 0, 1, v48);
    sub_1B7FC8DA4(v1 + 192, v1 + 368);
    v32 = v2;
LABEL_23:
    *(v1 + 840) = v32;
    *(v1 + 832) = v37;
    v58 = *(v1 + 816);
    sub_1B7FC8F2C(*(v1 + 808), v58, &qword_1EBA660C8, &qword_1B80D2E88);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v60 = (*(*(v59 - 8) + 48))(v58, 1, v59);
    v61 = *(v1 + 816);
    if (v60 == 1)
    {
      v62 = *(v1 + 808);
      v63 = *(v1 + 800);
      v64 = *(v1 + 792);
      v65 = *(v1 + 784);
      v66 = *(v1 + 776);
      v67 = *(v1 + 760);
      v68 = *(v1 + 728);

      v69 = *(v1 + 8);
      v70 = *(v1 + 824);

      return v69(v70);
    }

    else
    {
      v71 = *(v1 + 800);
      v72 = *(v1 + 792);
      v73 = *(v1 + 760);
      v74 = *(v1 + 752);
      v75 = *(v1 + 744);
      v76 = *(v1 + 736);
      v78 = v61[1];
      v77 = v61[2];
      *(v1 + 16) = *v61;
      *(v1 + 32) = v78;
      *(v1 + 48) = v77;
      v79 = v61[6];
      v81 = v61[3];
      v80 = v61[4];
      *(v1 + 96) = v61[5];
      *(v1 + 112) = v79;
      *(v1 + 64) = v81;
      *(v1 + 80) = v80;
      v82 = v61[10];
      v84 = v61[7];
      v83 = v61[8];
      *(v1 + 160) = v61[9];
      *(v1 + 176) = v82;
      *(v1 + 128) = v84;
      *(v1 + 144) = v83;
      sub_1B80344D4(v61 + *(v59 + 48), v72, type metadata accessor for Location);
      *(v1 + 848) = sub_1B8012DD8();
      sub_1B80337A4(v72, v71, type metadata accessor for Location);
      v85 = type metadata accessor for LocationShiftingRequest();
      v86 = *(v85 + 48);
      v87 = *(v85 + 52);
      v88 = swift_allocObject();
      *(v1 + 856) = v88;
      _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
      v89 = sub_1B80C8E4C();
      v91 = v90;
      (*(v74 + 8))(v73, v75);
      v92 = (v88 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
      *v92 = v89;
      v92[1] = v91;
      sub_1B80344D4(v71, v88 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
      v93 = swift_task_alloc();
      *(v1 + 864) = v93;
      *v93 = v1;
      v93[1] = sub_1B8028A2C;
      v94 = *(v1 + 784);

      return sub_1B809EB08(v94, v88);
    }
  }

  else
  {
    sub_1B80909E0(v10, isUniquelyReferenced_nonNull_native);
    v11 = *v2;
    result = sub_1B7FDA47C((v1 + 16));
    if ((v0 & 1) == (v12 & 1))
    {
      goto LABEL_8;
    }

    return sub_1B80C986C();
  }
}

uint64_t sub_1B802924C()
{
  v90 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);

  if (qword_1ED8DD848 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v3 = *(v0 + 872);
    v4 = sub_1B80C900C();
    __swift_project_value_buffer(v4, qword_1ED8DDF28);
    sub_1B7FC8DA4(v0 + 16, v0 + 544);
    v5 = v3;
    v6 = sub_1B80C8FEC();
    v7 = sub_1B80C93FC();
    sub_1B7FCAD28(v0 + 16);

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 872);
    v10 = *(v0 + 792);
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v89 = v13;
      *v11 = 141558531;
      *(v11 + 4) = 1752392040;
      *(v11 + 12) = 2081;
      v14 = *(v0 + 16);
      v15 = *(v0 + 24);

      sub_1B7FCAD28(v0 + 16);
      v16 = sub_1B7FB84FC(v14, v15, &v89);

      *(v11 + 14) = v16;
      *(v11 + 22) = 2114;
      v17 = sub_1B80C8CFC();
      *(v11 + 24) = v17;
      *v12 = v17;
      _os_log_impl(&dword_1B7FB5000, v6, v7, "Shifting failed for handle: %{private,mask.hash}s with ERROR: %{public}@", v11, 0x20u);
      sub_1B7FB86D4(v12, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x1B8CB8970](v13, -1, -1);
      MEMORY[0x1B8CB8970](v11, -1, -1);
    }

    else
    {

      sub_1B7FCAD28(v0 + 16);
    }

    sub_1B803380C(v10, type metadata accessor for Location);
    v18 = *(v0 + 840);
    v19 = *(v0 + 832);
    if (v19)
    {
      break;
    }

    v21 = ((1 << *(v0 + 880)) + 63) >> 6;
    if (v21 <= (v18 + 1))
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = ((1 << *(v0 + 880)) + 63) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v24 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v24 >= v21)
      {
        v87 = *(v0 + 808);
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
        (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
        v28 = 0;
        goto LABEL_16;
      }

      v20 = *(v0 + 728);
      v19 = *(v20 + 8 * v24 + 64);
      ++v18;
      if (v19)
      {
        v18 = v24;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v20 = *(v0 + 728);
LABEL_15:
  v25 = *(v0 + 808);
  v26 = *(v0 + 800);
  v27 = *(v0 + 768);
  v28 = (v19 - 1) & v19;
  v29 = __clz(__rbit64(v19)) | (v18 << 6);
  v30 = (*(v20 + 48) + 176 * v29);
  v32 = v30[1];
  v31 = v30[2];
  *(v0 + 192) = *v30;
  *(v0 + 208) = v32;
  *(v0 + 224) = v31;
  v33 = v30[6];
  v35 = v30[3];
  v34 = v30[4];
  *(v0 + 272) = v30[5];
  *(v0 + 288) = v33;
  *(v0 + 240) = v35;
  *(v0 + 256) = v34;
  v36 = v30[10];
  v38 = v30[7];
  v37 = v30[8];
  *(v0 + 336) = v30[9];
  *(v0 + 352) = v36;
  *(v0 + 304) = v38;
  *(v0 + 320) = v37;
  sub_1B80337A4(*(v20 + 56) + *(v27 + 72) * v29, v26, type metadata accessor for Location);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v40 = *(v39 + 48);
  v42 = *(v0 + 208);
  v41 = *(v0 + 224);
  *v25 = *(v0 + 192);
  v25[1] = v42;
  v25[2] = v41;
  v43 = *(v0 + 240);
  v44 = *(v0 + 256);
  v45 = *(v0 + 288);
  v25[5] = *(v0 + 272);
  v25[6] = v45;
  v25[3] = v43;
  v25[4] = v44;
  v46 = *(v0 + 304);
  v47 = *(v0 + 320);
  v48 = *(v0 + 352);
  v25[9] = *(v0 + 336);
  v25[10] = v48;
  v25[7] = v46;
  v25[8] = v47;
  sub_1B80344D4(v26, v25 + v40, type metadata accessor for Location);
  (*(*(v39 - 8) + 56))(v25, 0, 1, v39);
  sub_1B7FC8DA4(v0 + 192, v0 + 368);
  v23 = v18;
LABEL_16:
  *(v0 + 840) = v23;
  *(v0 + 832) = v28;
  v49 = *(v0 + 816);
  sub_1B7FC8F2C(*(v0 + 808), v49, &qword_1EBA660C8, &qword_1B80D2E88);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  v51 = (*(*(v50 - 8) + 48))(v49, 1, v50);
  v52 = *(v0 + 816);
  if (v51 == 1)
  {
    v53 = *(v0 + 808);
    v54 = *(v0 + 800);
    v55 = *(v0 + 792);
    v56 = *(v0 + 784);
    v57 = *(v0 + 776);
    v58 = *(v0 + 760);
    v59 = *(v0 + 728);

    v60 = *(v0 + 8);
    v61 = *(v0 + 824);

    return v60(v61);
  }

  else
  {
    v63 = *(v0 + 800);
    v64 = *(v0 + 792);
    v65 = *(v0 + 760);
    v66 = *(v0 + 752);
    v67 = *(v0 + 744);
    v68 = *(v0 + 736);
    v70 = v52[1];
    v69 = v52[2];
    *(v0 + 16) = *v52;
    *(v0 + 32) = v70;
    *(v0 + 48) = v69;
    v71 = v52[6];
    v73 = v52[3];
    v72 = v52[4];
    *(v0 + 96) = v52[5];
    *(v0 + 112) = v71;
    *(v0 + 64) = v73;
    *(v0 + 80) = v72;
    v74 = v52[10];
    v76 = v52[7];
    v75 = v52[8];
    *(v0 + 160) = v52[9];
    *(v0 + 176) = v74;
    *(v0 + 128) = v76;
    *(v0 + 144) = v75;
    sub_1B80344D4(v52 + *(v50 + 48), v64, type metadata accessor for Location);
    *(v0 + 848) = sub_1B8012DD8();
    sub_1B80337A4(v64, v63, type metadata accessor for Location);
    v77 = type metadata accessor for LocationShiftingRequest();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    v80 = swift_allocObject();
    *(v0 + 856) = v80;
    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    v81 = sub_1B80C8E4C();
    v83 = v82;
    (*(v66 + 8))(v65, v67);
    v84 = (v80 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
    *v84 = v81;
    v84[1] = v83;
    sub_1B80344D4(v63, v80 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location, type metadata accessor for Location);
    v85 = swift_task_alloc();
    *(v0 + 864) = v85;
    *v85 = v0;
    v85[1] = sub_1B8028A2C;
    v86 = *(v0 + 784);

    return sub_1B809EB08(v86, v80);
  }
}

uint64_t sub_1B8029930(uint64_t a1, char a2)
{
  *(v3 + 736) = v2;
  *(v3 + 840) = a2;
  *(v3 + 728) = a1;
  v4 = type metadata accessor for Location();
  *(v3 + 744) = v4;
  v5 = *(v4 - 8);
  *(v3 + 752) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 760) = swift_task_alloc();
  *(v3 + 768) = swift_task_alloc();
  *(v3 + 776) = swift_task_alloc();
  *(v3 + 784) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660C8, &qword_1B80D2E88) - 8) + 64) + 15;
  *(v3 + 792) = swift_task_alloc();
  *(v3 + 800) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8029A60, v2, 0);
}

uint64_t sub_1B8029A60()
{
  v79 = v0;
  if (*(v0 + 840) != 1)
  {
    v9 = *(v0 + 728);

LABEL_7:
    v10 = *(v0 + 800);
    v11 = *(v0 + 792);
    v12 = *(v0 + 784);
    v13 = *(v0 + 776);
    v14 = *(v0 + 768);
    v15 = *(v0 + 760);

    v16 = *(v0 + 8);

    return v16(v9);
  }

  v1 = *(v0 + 752);
  v2 = *(v0 + 728);
  v3 = *(v2 + 32);
  *(v0 + 841) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  *(v0 + 808) = MEMORY[0x1E69E7CC8];

  if (v6)
  {
    v8 = 0;
LABEL_13:
    v20 = *(v0 + 792);
    v21 = *(v0 + 784);
    v22 = __clz(__rbit64(v6));
    v23 = (v6 - 1) & v6;
    v24 = v22 | (v8 << 6);
    v25 = (*(v7 + 48) + 176 * v24);
    v27 = v25[1];
    v26 = v25[2];
    *(v0 + 192) = *v25;
    *(v0 + 208) = v27;
    *(v0 + 224) = v26;
    v28 = v25[6];
    v30 = v25[3];
    v29 = v25[4];
    *(v0 + 272) = v25[5];
    *(v0 + 288) = v28;
    *(v0 + 240) = v30;
    *(v0 + 256) = v29;
    v31 = v25[10];
    v33 = v25[7];
    v32 = v25[8];
    *(v0 + 336) = v25[9];
    *(v0 + 352) = v31;
    *(v0 + 304) = v33;
    *(v0 + 320) = v32;
    sub_1B80337A4(*(v7 + 56) + *(v1 + 72) * v24, v21, type metadata accessor for Location);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v35 = *(v34 + 48);
    v37 = *(v0 + 208);
    v36 = *(v0 + 224);
    *v20 = *(v0 + 192);
    v20[1] = v37;
    v20[2] = v36;
    v38 = *(v0 + 240);
    v39 = *(v0 + 256);
    v40 = *(v0 + 288);
    v20[5] = *(v0 + 272);
    v20[6] = v40;
    v20[3] = v38;
    v20[4] = v39;
    v41 = *(v0 + 304);
    v42 = *(v0 + 320);
    v43 = *(v0 + 352);
    v20[9] = *(v0 + 336);
    v20[10] = v43;
    v20[7] = v41;
    v20[8] = v42;
    sub_1B80344D4(v21, v20 + v35, type metadata accessor for Location);
    (*(*(v34 - 8) + 56))(v20, 0, 1, v34);
    sub_1B7FC8DA4(v0 + 192, v0 + 368);
    v19 = v8;
  }

  else
  {
    v18 = 0;
    v19 = ((63 - v5) >> 6) - 1;
    while (v19 != v18)
    {
      v8 = v18 + 1;
      v6 = *(v7 + 72 + 8 * v18++);
      if (v6)
      {
        goto LABEL_13;
      }
    }

    v76 = *(v0 + 792);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
    v23 = 0;
  }

  *(v0 + 824) = v19;
  *(v0 + 816) = v23;
  v44 = *(v0 + 800);
  sub_1B7FC8F2C(*(v0 + 792), v44, &qword_1EBA660C8, &qword_1B80D2E88);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
  if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
  {
    v46 = *(v0 + 728);

    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v47 = sub_1B80C900C();
    __swift_project_value_buffer(v47, qword_1ED8DDF28);
    v48 = sub_1B80C8FEC();
    v49 = sub_1B80C941C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 744);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v78 = v52;
      *v51 = 136446723;
      *(v51 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, &v78);
      *(v51 + 12) = 2160;
      *(v51 + 14) = 1752392040;
      *(v51 + 22) = 2081;
      sub_1B8032C04();
      v9 = MEMORY[0x1E69E7CC8];

      v53 = sub_1B80C902C();
      v55 = v54;

      v56 = sub_1B7FB84FC(v53, v55, &v78);

      *(v51 + 24) = v56;
      _os_log_impl(&dword_1B7FB5000, v48, v49, "%{public}s locationWithAddress: %{private,mask.hash}s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v52, -1, -1);
      MEMORY[0x1B8CB8970](v51, -1, -1);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC8];
    }

    goto LABEL_7;
  }

  v57 = *(v0 + 800);
  v58 = *(v0 + 776);
  v60 = v57[1];
  v59 = v57[2];
  *(v0 + 16) = *v57;
  *(v0 + 32) = v60;
  *(v0 + 48) = v59;
  v61 = v57[6];
  v63 = v57[3];
  v62 = v57[4];
  *(v0 + 96) = v57[5];
  *(v0 + 112) = v61;
  *(v0 + 64) = v63;
  *(v0 + 80) = v62;
  v64 = v57[10];
  v66 = v57[7];
  v65 = v57[8];
  *(v0 + 160) = v57[9];
  *(v0 + 176) = v64;
  *(v0 + 128) = v66;
  *(v0 + 144) = v65;
  sub_1B80344D4(v57 + *(v45 + 48), v58, type metadata accessor for Location);
  v67 = *(v0 + 160);
  *(v0 + 672) = *(v0 + 144);
  *(v0 + 688) = v67;
  *(v0 + 704) = *(v0 + 176);
  v68 = *(v0 + 96);
  *(v0 + 608) = *(v0 + 80);
  *(v0 + 624) = v68;
  v69 = *(v0 + 128);
  *(v0 + 640) = *(v0 + 112);
  *(v0 + 656) = v69;
  v70 = *(v0 + 32);
  *(v0 + 544) = *(v0 + 16);
  *(v0 + 560) = v70;
  v71 = *(v0 + 64);
  *(v0 + 576) = *(v0 + 48);
  *(v0 + 592) = v71;
  v72 = swift_task_alloc();
  *(v0 + 832) = v72;
  *v72 = v0;
  v72[1] = sub_1B802A074;
  v73 = *(v0 + 776);
  v74 = *(v0 + 768);
  v75 = *(v0 + 736);

  return sub_1B8026644(v74, (v0 + 544), v73);
}

uint64_t sub_1B802A074()
{
  v1 = *(*v0 + 832);
  v2 = *(*v0 + 736);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B802A184, v2, 0);
}

uint64_t sub_1B802A184()
{
  v103 = v1;
  v3 = *(v1 + 808);
  sub_1B80344D4(*(v1 + 768), *(v1 + 760), type metadata accessor for Location);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 720) = v3;
  v5 = sub_1B7FDA47C((v1 + 16));
  v7 = *(v3 + 16);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    goto LABEL_35;
  }

  LOBYTE(v0) = v6;
  v2 = (v1 + 720);
  if (*(*(v1 + 808) + 24) >= v10)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_36;
    }

    while (1)
    {
LABEL_8:
      v14 = *(v1 + 776);
      v15 = *(v1 + 760);
      v16 = *(v1 + 752);
      if (v0)
      {
        v17 = v5;
        sub_1B7FCAD28(v1 + 16);
        v0 = *v2;
        sub_1B803453C(v15, *(*v2 + 56) + *(v16 + 72) * v17, type metadata accessor for Location);
        v5 = sub_1B803380C(v14, type metadata accessor for Location);
      }

      else
      {
        v0 = *v2;
        *(*v2 + 8 * (v5 >> 6) + 64) |= 1 << v5;
        v18 = (v0[6] + 176 * v5);
        v20 = *(v1 + 96);
        v19 = *(v1 + 112);
        v21 = *(v1 + 80);
        v18[3] = *(v1 + 64);
        v18[4] = v21;
        v18[5] = v20;
        v18[6] = v19;
        v23 = *(v1 + 32);
        v22 = *(v1 + 48);
        *v18 = *(v1 + 16);
        v18[1] = v23;
        v18[2] = v22;
        v24 = *(v1 + 128);
        v25 = *(v1 + 144);
        v26 = *(v1 + 176);
        v18[9] = *(v1 + 160);
        v18[10] = v26;
        v18[7] = v24;
        v18[8] = v25;
        sub_1B80344D4(v15, v0[7] + *(v16 + 72) * v5, type metadata accessor for Location);
        v5 = sub_1B803380C(v14, type metadata accessor for Location);
        v27 = v0[2];
        v9 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v9)
        {
          __break(1u);
          goto LABEL_38;
        }

        v0[2] = v28;
      }

      v29 = *(v1 + 824);
      v30 = *(v1 + 816);
      *(v1 + 808) = v0;
      if (v30)
      {
        break;
      }

      v32 = ((1 << *(v1 + 841)) + 63) >> 6;
      if (v32 <= (v29 + 1))
      {
        v33 = v29 + 1;
      }

      else
      {
        v33 = ((1 << *(v1 + 841)) + 63) >> 6;
      }

      v34 = v33 - 1;
      while (1)
      {
        v35 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v35 >= v32)
        {
          v99 = *(v1 + 792);
          v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
          (*(*(v100 - 8) + 56))(v99, 1, 1, v100);
          v39 = 0;
          goto LABEL_23;
        }

        v31 = *(v1 + 728);
        v30 = *(v31 + 8 * v35 + 64);
        ++v29;
        if (v30)
        {
          v29 = v35;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v101 = v5;
      sub_1B8092058();
      v5 = v101;
    }

    v31 = *(v1 + 728);
LABEL_22:
    v36 = *(v1 + 792);
    v37 = *(v1 + 784);
    v38 = *(v1 + 752);
    v39 = (v30 - 1) & v30;
    v40 = __clz(__rbit64(v30)) | (v29 << 6);
    v41 = (*(v31 + 48) + 176 * v40);
    v43 = v41[1];
    v42 = v41[2];
    *(v1 + 192) = *v41;
    *(v1 + 208) = v43;
    *(v1 + 224) = v42;
    v44 = v41[6];
    v46 = v41[3];
    v45 = v41[4];
    *(v1 + 272) = v41[5];
    *(v1 + 288) = v44;
    *(v1 + 240) = v46;
    *(v1 + 256) = v45;
    v47 = v41[10];
    v49 = v41[7];
    v48 = v41[8];
    *(v1 + 336) = v41[9];
    *(v1 + 352) = v47;
    *(v1 + 304) = v49;
    *(v1 + 320) = v48;
    sub_1B80337A4(*(v31 + 56) + *(v38 + 72) * v40, v37, type metadata accessor for Location);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    v51 = *(v50 + 48);
    v53 = *(v1 + 208);
    v52 = *(v1 + 224);
    *v36 = *(v1 + 192);
    v36[1] = v53;
    v36[2] = v52;
    v54 = *(v1 + 240);
    v55 = *(v1 + 256);
    v56 = *(v1 + 288);
    v36[5] = *(v1 + 272);
    v36[6] = v56;
    v36[3] = v54;
    v36[4] = v55;
    v57 = *(v1 + 304);
    v58 = *(v1 + 320);
    v59 = *(v1 + 352);
    v36[9] = *(v1 + 336);
    v36[10] = v59;
    v36[7] = v57;
    v36[8] = v58;
    sub_1B80344D4(v37, v36 + v51, type metadata accessor for Location);
    (*(*(v50 - 8) + 56))(v36, 0, 1, v50);
    sub_1B7FC8DA4(v1 + 192, v1 + 368);
    v34 = v29;
LABEL_23:
    *(v1 + 824) = v34;
    *(v1 + 816) = v39;
    v60 = *(v1 + 800);
    sub_1B7FC8F2C(*(v1 + 792), v60, &qword_1EBA660C8, &qword_1B80D2E88);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660D8, &qword_1B80D2E98);
    if ((*(*(v61 - 8) + 48))(v60, 1, v61) == 1)
    {
      v62 = *(v1 + 728);

      if (qword_1ED8DD848 == -1)
      {
LABEL_25:
        v63 = sub_1B80C900C();
        __swift_project_value_buffer(v63, qword_1ED8DDF28);
        v64 = sub_1B80C8FEC();
        v65 = sub_1B80C941C();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = *(v1 + 744);
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v102 = v68;
          *v67 = 136446723;
          *(v67 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, &v102);
          *(v67 + 12) = 2160;
          *(v67 + 14) = 1752392040;
          *(v67 + 22) = 2081;
          sub_1B8032C04();

          v69 = sub_1B80C902C();
          v71 = v70;

          v72 = sub_1B7FB84FC(v69, v71, &v102);

          *(v67 + 24) = v72;
          _os_log_impl(&dword_1B7FB5000, v64, v65, "%{public}s locationWithAddress: %{private,mask.hash}s", v67, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8CB8970](v68, -1, -1);
          MEMORY[0x1B8CB8970](v67, -1, -1);
        }

        v73 = *(v1 + 800);
        v74 = *(v1 + 792);
        v75 = *(v1 + 784);
        v76 = *(v1 + 776);
        v77 = *(v1 + 768);
        v78 = *(v1 + 760);

        v79 = *(v1 + 8);

        return v79(v0);
      }

LABEL_38:
      swift_once();
      goto LABEL_25;
    }

    v80 = *(v1 + 800);
    v81 = *(v1 + 776);
    v83 = v80[1];
    v82 = v80[2];
    *(v1 + 16) = *v80;
    *(v1 + 32) = v83;
    *(v1 + 48) = v82;
    v84 = v80[6];
    v86 = v80[3];
    v85 = v80[4];
    *(v1 + 96) = v80[5];
    *(v1 + 112) = v84;
    *(v1 + 64) = v86;
    *(v1 + 80) = v85;
    v87 = v80[10];
    v89 = v80[7];
    v88 = v80[8];
    *(v1 + 160) = v80[9];
    *(v1 + 176) = v87;
    *(v1 + 128) = v89;
    *(v1 + 144) = v88;
    sub_1B80344D4(v80 + *(v61 + 48), v81, type metadata accessor for Location);
    v90 = *(v1 + 160);
    *(v1 + 672) = *(v1 + 144);
    *(v1 + 688) = v90;
    *(v1 + 704) = *(v1 + 176);
    v91 = *(v1 + 96);
    *(v1 + 608) = *(v1 + 80);
    *(v1 + 624) = v91;
    v92 = *(v1 + 128);
    *(v1 + 640) = *(v1 + 112);
    *(v1 + 656) = v92;
    v93 = *(v1 + 32);
    *(v1 + 544) = *(v1 + 16);
    *(v1 + 560) = v93;
    v94 = *(v1 + 64);
    *(v1 + 576) = *(v1 + 48);
    *(v1 + 592) = v94;
    v95 = swift_task_alloc();
    *(v1 + 832) = v95;
    *v95 = v1;
    v95[1] = sub_1B802A074;
    v96 = *(v1 + 776);
    v97 = *(v1 + 768);
    v98 = *(v1 + 736);

    return sub_1B8026644(v97, (v1 + 544), v96);
  }

  else
  {
    sub_1B80909E0(v10, isUniquelyReferenced_nonNull_native);
    v11 = *v2;
    v5 = sub_1B7FDA47C((v1 + 16));
    if ((v0 & 1) == (v12 & 1))
    {
      goto LABEL_8;
    }

    return sub_1B80C986C();
  }
}

uint64_t sub_1B802A954(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FBA3EC;

  return sub_1B801F5C4(a1);
}

uint64_t sub_1B802A9E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FC253C;

  return sub_1B80274A8(a1);
}

uint64_t sub_1B802AA7C(_BYTE *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FBA4E0;

  return sub_1B8024C3C(a1);
}

uint64_t sub_1B802AB10()
{
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing;
  result = swift_beginAccess();
  v3 = 0;
  v4 = *(v0 + v1);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (*(*(*(v4 + 56) + ((v9 << 9) | (8 * v10))) + 16))
    {
      return 1;
    }
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 0;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B802ABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B802AC14, 0, 0);
}

uint64_t sub_1B802AC14()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 112);
    v5 = v3[1];
    v4 = v3[2];
    v6 = *v3;
    *(v0 + 61) = *(v3 + 45);
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    *(v0 + 16) = v6;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_1B802AD24;
    v8 = *(v0 + 120);

    return sub_1B80351B0(v0 + 16, v8);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B802AD24(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v5 = sub_1B802B154;
  }

  else
  {
    v5 = sub_1B802AE38;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B802AE38()
{
  v16 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    type metadata accessor for Location();
    sub_1B8032C04();
    v8 = sub_1B80C902C();
    v10 = sub_1B7FB84FC(v8, v9, &v15);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "startRefreshingLocation result: %{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_1B802B040;
  v12 = v0[18];
  v13 = v0[16];

  return sub_1B801F5C4(v12);
}

uint64_t sub_1B802B040()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1B802B340;
  }

  else
  {
    v3 = sub_1B80348FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B802B154()
{
  v18 = v0;
  v1 = v0[19];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v0[12] = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "StartRefreshingLocation error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
    v14 = v0[16];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B802B340()
{
  v19 = v0;
  v1 = v0[18];

  v2 = v0[21];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v0[12] = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v12 = sub_1B80C90EC();
    v14 = sub_1B7FB84FC(v12, v13, &v18);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "StartRefreshingLocation error: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v9, -1, -1);
  }

  else
  {
    v15 = v0[16];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1B802B534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B802B558, 0, 0);
}

uint64_t sub_1B802B558()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 128) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 112);
    v5 = v3[1];
    v4 = v3[2];
    v6 = *v3;
    *(v0 + 61) = *(v3 + 45);
    *(v0 + 32) = v5;
    *(v0 + 48) = v4;
    *(v0 + 16) = v6;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_1B802B668;
    v8 = *(v0 + 120);

    return sub_1B80351B0(v0 + 16, v8);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1B802B668(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B802B970, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[20] = v7;
    *v7 = v6;
    v7[1] = sub_1B802B7EC;
    v8 = v4[16];

    return sub_1B801F5C4(a1);
  }
}

uint64_t sub_1B802B7EC()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1B802BB98;
  }

  else
  {
    v3 = sub_1B802B900;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B802B900()
{
  v1 = v0[18];
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B802B970()
{
  v18 = v0;
  v1 = v0[19];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD00000000000004DLL, 0x80000001B80CCD80, &v17);
    *(v8 + 12) = 2082;
    v0[12] = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with %{public}s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
    v14 = v0[16];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B802BB98()
{
  v19 = v0;
  v1 = v0[18];

  v2 = v0[21];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDF28);
  v4 = v2;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_1B7FB84FC(0xD00000000000004DLL, 0x80000001B80CCD80, &v18);
    *(v9 + 12) = 2082;
    v0[12] = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v12 = sub_1B80C90EC();
    v14 = sub_1B7FB84FC(v12, v13, &v18);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s failed with %{public}s.", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v9, -1, -1);
  }

  else
  {
    v15 = v0[16];
  }

  v16 = v0[1];

  return v16();
}

void (*sub_1B802BDC8(uint64_t **a1, unsigned __int8 a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B80311F4(v4, a2);
  return sub_1B802BE40;
}

void sub_1B802BE40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1B802BE8C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = a4;
  *(v4 + 89) = a3;
  *(v4 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B802BEB4, 0, 0);
}

uint64_t sub_1B802BEB4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    *(v0 + 88) = *(v0 + 89);
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_1B802BFB4;
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);

    return sub_1B8034F2C(v5, (v0 + 88), v4);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B802BFB4()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1B802C12C;
  }

  else
  {
    v3 = sub_1B802C0C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B802C0C8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B802C12C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1B802C190(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B802C1B0, 0, 0);
}

uint64_t sub_1B802C1B0()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_1B802C2A0;
    v4 = v0[6];

    return sub_1B8035504(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1B802C2A0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1B802C4D4;
  }

  else
  {
    v3 = sub_1B802C3B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B802C3B4()
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Clear locationContinuation and empty cached locations for all handles", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B802C4D4()
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Stop refreshing all locations failed with error: %{public}@", v7, 0xCu);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v11 = v0[9];
  v12 = v0[7];

  swift_willThrow();

  v13 = v0[1];
  v14 = v0[9];

  return v13();
}

uint64_t sub_1B802C678(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_1B80C8E9C();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for ClientID();
  v2[17] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802C768, 0, 0);
}

uint64_t sub_1B802C768()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B802C838, Strong, 0);
  }

  else
  {
    v3 = v0[18];
    v4 = v0[16];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1B802C838()
{
  *(v0 + 160) = *(*(v0 + 152) + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session);

  return MEMORY[0x1EEE6DFA0](sub_1B802C8B8, 0, 0);
}

void sub_1B802C8B8()
{
  if (v0[20])
  {
    v1 = *(MEMORY[0x1E699C820] + 4);
    v4 = (*MEMORY[0x1E699C820] + MEMORY[0x1E699C820]);
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1B802C96C;
    v3 = v0[16];

    v4(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B802C96C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B802CA84, 0, 0);
}

uint64_t sub_1B802CA84()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  (*(v4 + 16))(v1, v3, v5);
  v7 = (v1 + v2[6]);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + v2[5]) = 0;
  v8 = v2[7];
  (*(v4 + 32))(v1 + v8, v3, v5);
  (*(v4 + 56))(v1 + v8, 0, 1, v5);
  v9 = *v6;
  v10 = v6[1];
  v11 = v6[2];
  *(v0 + 61) = *(v6 + 45);
  *(v0 + 32) = v10;
  *(v0 + 48) = v11;
  *(v0 + 16) = v9;
  v12 = swift_task_alloc();
  *(v0 + 176) = v12;
  *v12 = v0;
  v12[1] = sub_1B802CBC8;
  v13 = *(v0 + 144);
  v14 = *(v0 + 152);

  return sub_1B80351B0(v0 + 16, v13);
}

uint64_t sub_1B802CBC8()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_1B802CD7C;
  }

  else
  {

    v3 = sub_1B802CCE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B802CCE8()
{
  v2 = v0[18];
  v1 = v0[19];

  sub_1B803380C(v2, type metadata accessor for ClientID);
  v3 = v0[18];
  v4 = v0[16];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B802CD7C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];

  sub_1B803380C(v2, type metadata accessor for ClientID);

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_1B802CE10(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802CE5C, v2, 0);
}

uint64_t sub_1B802CE5C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD00000000000001ALL, 0x80000001B80CCA10, sub_1B80348F0, v4, v7);
}

uint64_t sub_1B802CFA4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B8011C50;
  }

  else
  {
    v6 = *(v2 + 48);
    v7 = *(v2 + 32);

    v5 = sub_1B8011C90;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B802D0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802D1B4, 0, 0);
}

uint64_t sub_1B802D1B4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v3 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v8 = *(v3 + 80);
  *(v0 + 216) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  v11 = *(v3 + 32);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v12 = *(MEMORY[0x1E699C838] + 4);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  v14 = _s18LocationConnectionCMa();
  v15 = sub_1B7FCD170(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v13 = v0;
  v13[1] = sub_1B802D368;
  v16 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8031B8C, v10, v14, v15);
}

uint64_t sub_1B802D368()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1B80348F4;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1B802D484;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B802D484()
{
  v17 = v0[23];
  v18 = v0[24];
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  v9 = (*(v0 + 216) + 16) & ~*(v0 + 216);
  v20 = v0[8];
  v19 = sub_1B80C8D1C();
  v2(v3, v8, v5);
  v10 = swift_allocObject();
  v17(v10 + v9, v3, v5);
  v0[6] = sub_1B7FCE2F8;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_59;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v20 processLocationPayload:v19 completion:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();
  v14 = v0[18];
  v13 = v0[19];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B802D620(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CCA10, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v12 = a1;
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  return sub_1B80C927C();
}

uint64_t sub_1B802D800(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B802D84C, v2, 0);
}

uint64_t sub_1B802D84C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v9 = *(v0 + 16);
  v3 = sub_1B7FCD170(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v9;
  *(v4 + 40) = v2;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000021, 0x80000001B80CC9E0, sub_1B80348EC, v4, v7);
}

uint64_t sub_1B802D994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v5[17] = *(v7 + 64);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B802DA7C, 0, 0);
}

uint64_t sub_1B802DA7C()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v3 + 16);
  *(v0 + 160) = v7;
  *(v0 + 168) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v6, v4);
  v8 = *(v3 + 80);
  *(v0 + 216) = v8;
  v9 = (v8 + 16) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 176) = v10;
  v11 = *(v3 + 32);
  *(v0 + 184) = v11;
  *(v0 + 192) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v1, v4);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  v12 = *(MEMORY[0x1E699C838] + 4);
  v13 = swift_task_alloc();
  *(v0 + 200) = v13;
  v14 = _s18LocationConnectionCMa();
  v15 = sub_1B7FCD170(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v13 = v0;
  v13[1] = sub_1B802DC30;
  v16 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8031964, v10, v14, v15);
}

uint64_t sub_1B802DC30()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = sub_1B802DEE8;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_1B802DD4C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B802DD4C()
{
  v17 = v0[23];
  v18 = v0[24];
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[13];
  v8 = v0[11];
  v9 = (*(v0 + 216) + 16) & ~*(v0 + 216);
  v20 = v0[8];
  v19 = sub_1B80C8D1C();
  v2(v3, v8, v5);
  v10 = swift_allocObject();
  v17(v10 + v9, v3, v5);
  v0[6] = sub_1B7FCE2F4;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_43;
  v11 = _Block_copy(v0 + 2);
  v12 = v0[7];

  [v20 processLocationCommandPayload:v19 completion:v11];
  _Block_release(v11);

  swift_unknownObjectRelease();
  v14 = v0[18];
  v13 = v0[19];

  v15 = v0[1];

  return v15();
}