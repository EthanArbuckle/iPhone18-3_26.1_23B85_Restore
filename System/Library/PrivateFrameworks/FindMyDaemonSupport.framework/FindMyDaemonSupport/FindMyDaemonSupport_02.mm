uint64_t sub_24AE765D0()
{
  *(v1 + 248) = v0;
  *(v1 + 256) = *v0;
  return MEMORY[0x2822009F8](sub_24AE76618, v0, 0);
}

unint64_t sub_24AE76618()
{
  v1 = *(v0 + 248);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v0 + 264) = v2;
  v33 = *(v2 + 16);
  if (v33)
  {
    v34 = *(v0 + 248);

    v4 = 0;
    v5 = (result + 40);
    v32 = result;
    while (1)
    {
      if (v4 >= *(result + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v9 = *(v5 - 1);
      v10 = *v5;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v13 = v12(ObjectType, v10);
      v15 = v14;
      swift_beginAccess();
      v16 = *(v34 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *(v34 + 128);
      *(v34 + 128) = 0x8000000000000000;
      result = sub_24AE475AC(v13, v15);
      v20 = v18[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_24;
      }

      v24 = v19;
      if (v18[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v29 = result;
      sub_24AE80C48(&qword_27EFBE9F8, &unk_24AE870F0);
      result = v29;
      if (v24)
      {
LABEL_3:
        v6 = result;

        v7 = v18[7];
        v8 = *(v7 + 8 * v6);
        *(v7 + 8 * v6) = MEMORY[0x277D84F90];

        goto LABEL_4;
      }

LABEL_12:
      v18[(result >> 6) + 8] |= 1 << result;
      v26 = (v18[6] + 16 * result);
      *v26 = v13;
      v26[1] = v15;
      *(v18[7] + 8 * result) = MEMORY[0x277D84F90];
      v27 = v18[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_25;
      }

      v18[2] = v28;
LABEL_4:
      ++v4;
      *(v34 + 128) = v18;
      swift_endAccess();
      swift_unknownObjectRelease();
      v5 += 2;
      result = v32;
      if (v33 == v4)
      {
        goto LABEL_17;
      }
    }

    sub_24AE7F474(v23, isUniquelyReferenced_nonNull_native, &qword_27EFBE9F8, &unk_24AE870F0);
    result = sub_24AE475AC(v13, v15);
    if ((v24 & 1) != (v25 & 1))
    {

      return sub_24AE84570();
    }

LABEL_11:
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 96) = 0u;
  v30 = swift_task_alloc();
  *(v0 + 272) = v30;
  *v30 = v0;
  v30[1] = sub_24AE76954;
  v31 = *(v0 + 248);

  return sub_24AE79B40((v0 + 16), (v0 + 96));
}

uint64_t sub_24AE76954()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 248);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE76A64, v2, 0);
}

uint64_t sub_24AE76A64(uint64_t a1, uint64_t a2)
{
  v4 = v2[32];
  v3 = v2[33];
  v5 = v2[31];
  sub_24AE83BE4(&qword_280D7A510, a2, type metadata accessor for ActorServiceCollection);
  v6 = swift_task_alloc();
  v2[35] = v6;
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  v2[36] = v8;
  *v8 = v2;
  v8[1] = sub_24AE76B98;

  return MEMORY[0x282200740]();
}

void sub_24AE76B98()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[35];
    v6 = v2[33];
    v7 = v2[31];

    MEMORY[0x2822009F8](sub_24AE76CE4, v7, 0);
  }
}

uint64_t sub_24AE76CE4()
{
  v36 = v0;
  if (qword_280D7A590 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v1 = *(v0 + 248);
  v2 = sub_24AE83ED0();
  __swift_project_value_buffer(v2, qword_280D7A598);

  v3 = sub_24AE83EB0();
  v4 = sub_24AE84250();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(*(v6 + 112) + 16);

    _os_log_impl(&dword_24AE43000, v3, v4, "%ld services started.", v7, 0xCu);
    MEMORY[0x24C233A80](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 248);
  }

  v9 = *(v0 + 248);
  *(v9 + 120) = 1;
  swift_beginAccess();
  v10 = *(v9 + 136);
  if (!*(v10 + 16))
  {
    goto LABEL_19;
  }

  v30 = v0;
  v0 = v10 + 56;
  v11 = -1;
  v12 = -1 << *(v10 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v10 + 56);
  v14 = (63 - v12) >> 6;

  v15 = 0;
  v31 = v10;
  if (v13)
  {
    while (2)
    {
      v16 = v15;
LABEL_15:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v18 = (*(v10 + 48) + ((v16 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[3];
      v33 = *v18;
      v34 = v18[2];
      swift_bridgeObjectRetain_n();

      v21 = sub_24AE83EB0();
      v22 = sub_24AE84250();

      v32 = v22;
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v35 = v24;
        *v23 = 136446466;

        v25 = sub_24AE53C28(v33, v19, &v35);

        *(v23 + 4) = v25;
        *(v23 + 12) = 2082;

        v26 = sub_24AE53C28(v34, v20, &v35);

        *(v23 + 14) = v26;
        _os_log_impl(&dword_24AE43000, v21, v32, "Startup dependency: %{public}s -> %{public}s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C233A80](v24, -1, -1);
        v27 = v23;
        v10 = v31;
        MEMORY[0x24C233A80](v27, -1, -1);

        v15 = v16;
        if (v13)
        {
          continue;
        }
      }

      else
      {

        v15 = v16;
        if (v13)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v0 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  v0 = v30;
LABEL_19:
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_24AE7708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7713C, a4, 0);
}

uint64_t sub_24AE7713C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v26 = **(v0 + 72);
    v3 = (v1 + 32);
    v4 = sub_24AE84120();
    v5 = *(v4 - 8);
    v25 = *(v5 + 56);
    v23 = v4;
    v24 = (v5 + 48);
    v22 = (v5 + 8);
    do
    {
      v9 = *(v0 + 104);
      v8 = *(v0 + 112);
      v10 = *v3;
      v27 = *v3;
      v28 = *(v0 + 88);
      v25(v8, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v27;
      *(v11 + 48) = v28;
      sub_24AE5681C(v8, v9, &qword_27EFBE620, &qword_24AE860B0);
      LODWORD(v9) = (*v24)(v9, 1, v4);
      swift_unknownObjectRetain_n();

      v13 = *(v0 + 104);
      if (v9 == 1)
      {
        sub_24AE567BC(*(v0 + 104), &qword_27EFBE620, &qword_24AE860B0);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24AE84110();
        (*v22)(v13, v4);
        if (*v12)
        {
LABEL_9:
          v16 = *(v11 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_24AE840E0();
          v15 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:

      if (v15 | v14)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v26;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_24AE567BC(v7, &qword_27EFBE620, &qword_24AE860B0);
      ++v3;
      --v2;
      v4 = v23;
    }

    while (v2);
  }

  v19 = *(v0 + 104);
  v18 = *(v0 + 112);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24AE7743C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_24AE77460, 0, 0);
}

uint64_t sub_24AE77460()
{
  if (qword_280D7A5E0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[2] = v3;
  v0[3] = v2;
  v4 = swift_task_alloc();
  v0[8] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A70] + 4);
  swift_unknownObjectRetain();
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_24AE775CC;
  v7 = v0[4];

  return MEMORY[0x282200908](v7, v0 + 2, &unk_24AE87118, v4, 0, 0, 0xD000000000000030, 0x800000024AE88A90);
}

uint64_t sub_24AE775CC()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 80) = v0;

  swift_unknownObjectRelease();

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AE77744, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24AE7775C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_24AE4A7E0;

  return sub_24AE77808(a3, a4);
}

uint64_t sub_24AE77808(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *v2;
  v4 = sub_24AE84660();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v7 = sub_24AE843F0();
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = sub_24AE84410();
  v3[27] = v10;
  v11 = *(v10 - 8);
  v3[28] = v11;
  v12 = *(v11 + 64) + 15;
  v3[29] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE77A50, v2, 0);
}

uint64_t sub_24AE77A50()
{
  v29 = v0;
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[8];
  v3 = sub_24AE83ED0();
  v0[31] = __swift_project_value_buffer(v3, qword_280D7A598);
  swift_unknownObjectRetain();

  v4 = sub_24AE83EB0();
  v5 = sub_24AE84250();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136446210;
    v10 = sub_24AE82DF4(v7, v6);
    v12 = sub_24AE53C28(v10, v11, &v28);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_24AE43000, v4, v5, "Starting service: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C233A80](v9, -1, -1);
    MEMORY[0x24C233A80](v8, -1, -1);
  }

  v13 = v0[29];
  v14 = v0[30];
  v15 = v0[26];
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[8];
  v19 = v0[9];
  v20 = sub_24AE84120();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  v22 = sub_24AE83BE4(&qword_280D7A510, v21, type metadata accessor for ActorServiceCollection);
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = v22;
  *(v23 + 32) = xmmword_24AE86F60;
  *(v23 + 48) = v18;
  *(v23 + 56) = v19;
  *(v23 + 64) = v16;
  *(v23 + 72) = v17;
  swift_retain_n();
  swift_unknownObjectRetain();
  v0[32] = sub_24AE56898(0, 0, v14, &unk_24AE87130, v23);
  sub_24AE84400();
  sub_24AE843E0();
  v24 = swift_allocObject();
  v0[33] = v24;
  *(v24 + 16) = v18;
  *(v24 + 24) = v19;
  v25 = *(MEMORY[0x277D08920] + 4);
  swift_unknownObjectRetain();
  v26 = swift_task_alloc();
  v0[34] = v26;
  *v26 = v0;
  v26[1] = sub_24AE77DA8;

  return MEMORY[0x28215EB08]();
}

uint64_t sub_24AE77DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v9 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_24AE78834;
  }

  else
  {
    v6 = *(v2 + 264);
    v7 = *(v2 + 80);

    v5 = sub_24AE77ED0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24AE77ED0()
{
  v134 = v0;
  v1 = v0[32];
  v2 = v0[9];
  v3 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA00, &qword_24AE87148);
  sub_24AE84180();
  swift_beginAccess();
  v4 = *(*(v3 + 112) + 16);
  v118 = (v2 + 24);

  v121 = result;
  v126 = v0;
  v6 = (result + 40);
  v7 = -1;
  while (v7 - v4 != -1)
  {
    if (++v7 >= *(v121 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = v0[8];
    v128 = v0[9];
    v10 = *(v6 - 1);
    v9 = *v6;
    ObjectType = swift_getObjectType();
    v12 = *(v9 + 24);
    swift_unknownObjectRetain();
    v13 = v12(ObjectType, v9);
    v15 = v14;
    v16 = swift_getObjectType();
    v17 = *v118;
    if (v13 == (*v118)(v16, v128) && v15 == v18)
    {

      swift_unknownObjectRelease();
      v0 = v126;
LABEL_13:

      v130 = v0[31];
      v57 = v0[29];
      v116 = v0[26];
      v58 = v126[25];
      v59 = v126[24];
      v123 = v126[23];
      v60 = v126[16];
      v61 = v126[15];
      v62 = v126[10];
      v63 = v126[8];
      v64 = v17(v16, v126[9]);
      sub_24AE7E0C4(v64, v65);

      sub_24AE843E0();
      v66 = *(v60 + 16);
      v66(v59, v116, v61);
      v67 = v58;
      v33 = v126;
      v66(v123, v67, v61);
      swift_unknownObjectRetain();

      v68 = sub_24AE83EB0();
      LOBYTE(v66) = sub_24AE84250();

      swift_unknownObjectRelease();
      v124 = v66;
      v69 = os_log_type_enabled(v68, v66);
      v70 = v126[28];
      v71 = v126[29];
      v73 = v126[26];
      v72 = v126[27];
      v74 = v126[24];
      v131 = v126[25];
      v75 = v126[23];
      v77 = v126[15];
      v76 = v126[16];
      if (v69)
      {
        v117 = v126[27];
        v120 = v126[29];
        loga = v68;
        v112 = v126[32];
        v78 = v126[13];
        v79 = v126[14];
        v106 = v126[12];
        v80 = v126[9];
        v81 = v126[8];
        v114 = v126[26];
        v82 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v133 = v108;
        *v82 = 136446466;
        v83 = sub_24AE82DF4(v81, v80);
        v85 = sub_24AE53C28(v83, v84, &v133);

        *(v82 + 4) = v85;
        *(v82 + 12) = 2082;
        sub_24AE84650();
        sub_24AE83BE4(&unk_280D7A050, 255, MEMORY[0x277D858F8]);
        v86 = sub_24AE84640();
        v88 = v87;
        (*(v78 + 8))(v79, v106);
        v89 = *(v76 + 8);
        v89(v75, v77);
        v89(v74, v77);
        v90 = sub_24AE53C28(v86, v88, &v133);
        v33 = v126;

        *(v82 + 14) = v90;
        _os_log_impl(&dword_24AE43000, loga, v124, "Service startup complete: %{public}s duration: %{public}s", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C233A80](v108, -1, -1);
        MEMORY[0x24C233A80](v82, -1, -1);

        v89(v131, v77);
        v89(v114, v77);
        (*(v70 + 8))(v120, v117);
      }

      else
      {

        v91 = *(v76 + 8);
        v91(v75, v77);
        v91(v74, v77);
        v91(v131, v77);
        v91(v73, v77);
        (*(v70 + 8))(v71, v72);
      }

      goto LABEL_17;
    }

    v6 += 2;
    v20 = sub_24AE84540();

    result = swift_unknownObjectRelease();
    v0 = v126;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  v21 = v0[31];
  v22 = v0[29];
  v23 = v0[26];
  v25 = v0[21];
  v24 = v0[22];
  v26 = v0[20];
  v27 = v0[16];
  v28 = v126[15];
  v29 = v126[10];
  v30 = v126[8];

  sub_24AE843E0();
  v31 = *(v27 + 16);
  v31(v25, v23, v28);
  v32 = v28;
  v33 = v126;
  v31(v26, v24, v32);
  swift_unknownObjectRetain();

  v34 = sub_24AE83EB0();
  LOBYTE(v31) = sub_24AE84230();

  swift_unknownObjectRelease();
  v122 = v31;
  v35 = os_log_type_enabled(v34, v31);
  v36 = v126[28];
  v37 = v126[29];
  v39 = v126[26];
  v38 = v126[27];
  v40 = v126[21];
  v129 = v126[22];
  v41 = v126[20];
  v42 = v126[15];
  v43 = v126[16];
  if (v35)
  {
    v115 = v126[29];
    v119 = v126[27];
    log = v34;
    v111 = v126[32];
    v44 = v126[13];
    v45 = v126[14];
    v105 = v126[12];
    v46 = v126[9];
    v47 = v126[8];
    v113 = v126[26];
    v48 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v133 = v107;
    *v48 = 136446466;
    v49 = sub_24AE82DF4(v47, v46);
    v51 = sub_24AE53C28(v49, v50, &v133);

    *(v48 + 4) = v51;
    *(v48 + 12) = 2082;
    sub_24AE84650();
    sub_24AE83BE4(&unk_280D7A050, 255, MEMORY[0x277D858F8]);
    v52 = sub_24AE84640();
    v54 = v53;
    (*(v44 + 8))(v45, v105);
    v55 = *(v43 + 8);
    v55(v41, v42);
    v55(v40, v42);
    v56 = sub_24AE53C28(v52, v54, &v133);
    v33 = v126;

    *(v48 + 14) = v56;
    _os_log_impl(&dword_24AE43000, log, v122, "Service startup FAILED: %{public}s duration: %{public}s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C233A80](v107, -1, -1);
    MEMORY[0x24C233A80](v48, -1, -1);

    v55(v129, v42);
    v55(v113, v42);
    (*(v36 + 8))(v115, v119);
  }

  else
  {

    v92 = *(v43 + 8);
    v92(v41, v42);
    v92(v40, v42);
    v92(v129, v42);
    v92(v39, v42);
    (*(v36 + 8))(v37, v38);
  }

LABEL_17:
  v94 = v33[29];
  v93 = v33[30];
  v96 = v33[25];
  v95 = v33[26];
  v98 = v33[23];
  v97 = v33[24];
  v100 = v33[21];
  v99 = v33[22];
  v101 = v33;
  v102 = v33[20];
  v103 = v101[19];
  v125 = v101[18];
  v127 = v101[17];
  v132 = v101[14];

  v104 = v101[1];

  return v104();
}

uint64_t sub_24AE78834()
{
  v79 = v0;
  v1 = v0[33];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  swift_beginAccess();
  swift_unknownObjectRetain();
  v5 = sub_24AE830B4((v3 + 112), v4, v2);
  result = swift_unknownObjectRelease();
  v7 = *(*(v3 + 112) + 16);
  if (v7 < v5)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[32];
    v69 = v0[26];
    v57 = v0[35];
    v60 = v0[19];
    v63 = v0[29];
    log = v0[18];
    v72 = v0[17];
    v75 = v0[31];
    v10 = v0[15];
    v9 = v0[16];
    v12 = v0[9];
    v11 = v0[10];
    v13 = v0[8];
    sub_24AE833EC(v5, v7);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA00, &qword_24AE87148);
    sub_24AE84180();
    ObjectType = swift_getObjectType();
    v15 = (*(v12 + 24))(ObjectType, v12);
    sub_24AE7DD94(v15, v16, v57);

    sub_24AE843E0();
    v17 = *(v9 + 16);
    v17(log, v69, v10);
    v17(v72, v60, v10);
    swift_unknownObjectRetain();

    v18 = v57;
    v19 = sub_24AE83EB0();
    v20 = sub_24AE84230();

    swift_unknownObjectRelease();

    if (os_log_type_enabled(v19, v20))
    {
      v58 = v0[35];
      v21 = v0[17];
      v64 = v0[18];
      loga = v19;
      v23 = v0[15];
      v22 = v0[16];
      v70 = v20;
      v24 = v0[13];
      v25 = v0[14];
      v76 = v0[12];
      v26 = v0[8];
      v27 = v0[9];
      v28 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v78[0] = v73;
      *v28 = 136446722;
      v29 = sub_24AE82DF4(v26, v27);
      v31 = sub_24AE53C28(v29, v30, v78);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2114;
      v32 = sub_24AE83DE0();
      *(v28 + 14) = v32;
      *v61 = v32;
      *(v28 + 22) = 2082;
      sub_24AE84650();
      sub_24AE83BE4(&unk_280D7A050, 255, MEMORY[0x277D858F8]);
      v33 = sub_24AE84640();
      v35 = v34;
      (*(v24 + 8))(v25, v76);
      v36 = *(v22 + 8);
      v36(v21, v23);
      v77 = v36;
      v36(v64, v23);
      v37 = sub_24AE53C28(v33, v35, v78);

      *(v28 + 24) = v37;
      _os_log_impl(&dword_24AE43000, loga, v70, "Error starting service: %{public}s, error: %{public}@ duration: %{public}s", v28, 0x20u);
      sub_24AE567BC(v61, &qword_27EFBE850, &qword_24AE863D0);
      MEMORY[0x24C233A80](v61, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x24C233A80](v73, -1, -1);
      MEMORY[0x24C233A80](v28, -1, -1);
    }

    else
    {
      v39 = v0[17];
      v38 = v0[18];
      v40 = v0[15];
      v41 = v0[16];

      v42 = *(v41 + 8);
      v42(v39, v40);
      v77 = v42;
      v42(v38, v40);
    }

    v43 = v0[35];
    v44 = v0[32];
    v45 = v0[29];
    v46 = v0[27];
    v47 = v0[28];
    v48 = v0[26];
    v53 = v0[30];
    v54 = v0[25];
    v55 = v0[24];
    v56 = v0[23];
    v59 = v0[22];
    v62 = v0[21];
    v49 = v0[19];
    v65 = v0[20];
    logb = v0[18];
    v50 = v0[15];
    v71 = v0[17];
    v74 = v0[14];
    swift_willThrow();

    v77(v49, v50);
    v77(v48, v50);
    (*(v47 + 8))(v45, v46);

    v51 = v0[1];
    v52 = v0[35];

    return v51();
  }

  return result;
}

uint64_t sub_24AE78DA8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_24AE78DF0, v0, 0);
}

uint64_t sub_24AE78DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  sub_24AE83BE4(&qword_280D7A510, a2, type metadata accessor for ActorServiceCollection);
  v5 = swift_task_alloc();
  v2[4] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(MEMORY[0x277D858E8] + 4);
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_24AE78F14;

  return MEMORY[0x282200600]();
}

uint64_t sub_24AE78F14()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24AE612EC, v3, 0);
}

uint64_t sub_24AE79040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE790F0, a3, 0);
}

uint64_t sub_24AE790F0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v27 = **(v0 + 96);
    v26 = sub_24AE84120();
    v4 = *(v26 - 8);
    v25 = *(v4 + 56);
    v24 = (v4 + 48);
    v23 = (v4 + 8);

    v5 = 32;
    v28 = v2;
    while (1)
    {
      v29 = v3;
      v8 = *(v0 + 120);
      v9 = *(v0 + 128);
      v10 = *(v0 + 112);
      v30 = *(v2 + v5);
      v25(v9, 1, 1, v26);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v30;
      *(v11 + 48) = v10;
      sub_24AE5681C(v9, v8, &qword_27EFBE620, &qword_24AE860B0);
      LODWORD(v8) = (*v24)(v8, 1, v26);
      swift_unknownObjectRetain_n();
      v13 = *(v0 + 120);
      if (v8 == 1)
      {
        sub_24AE567BC(*(v0 + 120), &qword_27EFBE620, &qword_24AE860B0);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24AE84110();
        (*v23)(v13, v26);
        if (*v12)
        {
LABEL_9:
          v16 = *(v11 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_24AE840E0();
          v15 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_24AE871B0;
      *(v18 + 24) = v11;

      if (v15 | v14)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 128);
      *(v0 + 72) = 1;
      *(v0 + 80) = v6;
      *(v0 + 88) = v27;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_24AE567BC(v7, &qword_27EFBE620, &qword_24AE860B0);
      v5 += 16;
      v2 = v28;
      v3 = v29 - 1;
      if (v29 == 1)
      {

        break;
      }
    }
  }

  v20 = *(v0 + 120);
  v19 = *(v0 + 128);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24AE79448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_24AE79468, 0, 0);
}

uint64_t sub_24AE79468()
{
  v24 = v0;
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_24AE83ED0();
  v0[6] = __swift_project_value_buffer(v2, qword_280D7A598);
  swift_unknownObjectRetain();
  v3 = sub_24AE83EB0();
  v4 = sub_24AE84250();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = v0[5];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446210;
    swift_getObjectType();
    v0[3] = v5;
    v9 = *(v6 + 8);
    v10 = sub_24AE84510();
    v12 = sub_24AE53C28(v10, v11, &v23);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_24AE43000, v3, v4, "Running service: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C233A80](v8, -1, -1);
    MEMORY[0x24C233A80](v7, -1, -1);
  }

  v13 = v0[4];
  v22 = v0[5];
  ObjectType = swift_getObjectType();
  v0[7] = ObjectType;
  v15 = *(v22 + 64);
  v21 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_24AE796D4;
  v19 = v0[4];
  v18 = v0[5];

  return v21(ObjectType, v18);
}

uint64_t sub_24AE796D4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_24AE79950;
  }

  else
  {
    v3 = sub_24AE797E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AE797E8()
{
  v17 = v0;
  v1 = v0[6];
  v2 = v0[4];
  swift_unknownObjectRetain();
  v3 = sub_24AE83EB0();
  v4 = sub_24AE84250();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = *(v6 + 8);
    v11 = sub_24AE84510();
    v13 = sub_24AE53C28(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24AE43000, v3, v4, "Done running service: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x24C233A80](v9, -1, -1);
    MEMORY[0x24C233A80](v8, -1, -1);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24AE79950()
{
  v22 = v0;
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[4];
  swift_unknownObjectRetain();
  v4 = v1;
  v5 = sub_24AE83EB0();
  v6 = sub_24AE84230();
  swift_unknownObjectRelease();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[9];
  if (v7)
  {
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v12 = 136446466;
    v15 = (*(v11 + 24))(v9, v11);
    v17 = sub_24AE53C28(v15, v16, &v21);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2114;
    v18 = sub_24AE83DE0();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&dword_24AE43000, v5, v6, "Uncaught error running service: %{public}s, error: %{public}@", v12, 0x16u);
    sub_24AE567BC(v13, &qword_27EFBE850, &qword_24AE863D0);
    MEMORY[0x24C233A80](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C233A80](v14, -1, -1);
    MEMORY[0x24C233A80](v12, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_24AE79B40(__int128 *a1, _OWORD *a2)
{
  *(v3 + 1320) = v2;
  v6 = sub_24AE83EA0();
  *(v3 + 1328) = v6;
  v7 = *(v6 - 8);
  *(v3 + 1336) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 1344) = swift_task_alloc();
  *(v3 + 1352) = swift_task_alloc();
  *(v3 + 1360) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA18, &qword_24AE87170) - 8) + 64) + 15;
  *(v3 + 1368) = swift_task_alloc();
  *(v3 + 1376) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA20, &qword_24AE87178);
  *(v3 + 1384) = v10;
  v11 = *(v10 - 8);
  *(v3 + 1392) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 1400) = swift_task_alloc();
  v13 = a1[2];
  v14 = a1[3];
  v15 = *a1;
  *(v3 + 112) = a1[1];
  *(v3 + 128) = v13;
  v16 = a1[4];
  *(v3 + 144) = v14;
  *(v3 + 160) = v16;
  v17 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v17;
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v15;
  v18 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v18;

  return MEMORY[0x2822009F8](sub_24AE79D00, v2, 0);
}

uint64_t sub_24AE7A7F8()
{
  v1 = *v0;
  v2 = *(*v0 + 1480);
  v3 = *(*v0 + 1320);
  v7 = *v0;

  v4 = v1[44];
  v1[28] = v1[43];
  v1[29] = v4;
  v1[30] = v1[45];
  v5 = v1[42];
  v1[26] = v1[41];
  v1[27] = v5;
  sub_24AE4C4CC((v1 + 26));
  sub_24AE567BC((v1 + 11), &qword_27EFBEA28, &qword_24AE87188);

  return MEMORY[0x2822009F8](sub_24AE7A940, v3, 0);
}

uint64_t sub_24AE7A940()
{
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1617);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1416);
  v6 = *(v0 + 1616);
  *(v0 + 256) = *(v0 + 1408);
  *(v0 + 264) = v5;
  *(v0 + 272) = *(v0 + 1424);
  *(v0 + 288) = v4;
  *(v0 + 296) = v3;
  *(v0 + 304) = v2;
  *(v0 + 312) = *(v0 + 1456);
  *(v0 + 328) = v1;
  if (v6)
  {
    sub_24AE4C4CC(v0 + 256);
  }

  else
  {
    v52 = *(v0 + 288);
    v53 = *(v0 + 304);
    v54 = *(v0 + 320);
    v50 = *(v0 + 256);
    v51 = *(v0 + 272);
    v7 = SystemVersionNumber.description.getter();
    v9 = v8;
    sub_24AE4C4CC(v0 + 256);
    if (qword_280D7A568 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1384), qword_280D7A570);
    *(v0 + 1288) = v7;
    *(v0 + 1296) = v9;
    swift_beginAccess();
    sub_24AE83CE0();
    swift_endAccess();
  }

  v10 = *(v0 + 1360);
  sub_24AE83C40();
  if (qword_280D7A540 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1400);
  v12 = *(v0 + 1392);
  v13 = *(v0 + 1384);
  v14 = __swift_project_value_buffer(v13, qword_280D7A548);
  swift_beginAccess();
  (*(v12 + 16))(v11, v14, v13);
  sub_24AE83CD0();
  (*(v12 + 8))(v11, v13);
  v15 = *(v0 + 1376);
  if (*(v0 + 1312))
  {
    v16 = *(v0 + 1304);
    v17 = *(v0 + 1312);
    sub_24AE83E70();
  }

  else
  {
    (*(*(v0 + 1336) + 56))(*(v0 + 1376), 1, 1, *(v0 + 1328));
  }

  v18 = *(v0 + 1376);
  v19 = *(v0 + 1368);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1328);
  (*(v20 + 16))(*(v0 + 1352), *(v0 + 1360), v21);
  sub_24AE5681C(v18, v19, &qword_27EFBEA18, &qword_24AE87170);
  v22 = (*(v20 + 48))(v19, 1, v21);
  v23 = *(v0 + 1368);
  if (v22 == 1)
  {
    sub_24AE567BC(*(v0 + 1368), &qword_27EFBEA18, &qword_24AE87170);
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v24 = sub_24AE83ED0();
    __swift_project_value_buffer(v24, qword_280D7A598);
    v25 = sub_24AE83EB0();
    v26 = sub_24AE84250();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24AE43000, v25, v26, "No lastLaunchBootSessionUUID on record", v27, 2u);
      MEMORY[0x24C233A80](v27, -1, -1);
    }

    v28 = swift_task_alloc();
    *(v0 + 1592) = v28;
    *v28 = v0;
    v29 = sub_24AE7B934;
    goto LABEL_26;
  }

  v30 = *(v0 + 1360);
  (*(*(v0 + 1336) + 32))(*(v0 + 1344), *(v0 + 1368), *(v0 + 1328));
  sub_24AE83BE4(&qword_280D7A940, 255, MEMORY[0x277CC95F0]);
  if ((sub_24AE83F90() & 1) == 0)
  {
    v28 = swift_task_alloc();
    *(v0 + 1568) = v28;
    *v28 = v0;
    v29 = sub_24AE7B6C0;
LABEL_26:
    v28[1] = v29;
    v48 = *(v0 + 1352);
    v49 = *(v0 + 1320);

    return sub_24AE82AF4(v48, v49);
  }

  v31 = *(*(v0 + 1336) + 8);
  v31(*(v0 + 1352), *(v0 + 1328));
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v32 = sub_24AE83ED0();
  __swift_project_value_buffer(v32, qword_280D7A598);
  v33 = sub_24AE83EB0();
  v34 = sub_24AE84250();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 1344);
  v37 = *(v0 + 1328);
  if (v35)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_24AE43000, v33, v34, "This is *NOT* the first run since reboot", v38, 2u);
    MEMORY[0x24C233A80](v38, -1, -1);
  }

  v31(v36, v37);
  v39 = *(v0 + 1376);
  v31(*(v0 + 1360), *(v0 + 1328));
  sub_24AE567BC(v39, &qword_27EFBEA18, &qword_24AE87170);
  v40 = *(v0 + 1400);
  v41 = *(v0 + 1376);
  v42 = *(v0 + 1368);
  v43 = *(v0 + 1360);
  v44 = *(v0 + 1352);
  v45 = *(v0 + 1344);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_24AE7AF78()
{
  v1 = *(*v0 + 1560);
  v2 = *(*v0 + 1320);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE7B088, v2, 0);
}

uint64_t sub_24AE7B088()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1619);
  v3 = *(v0 + 1528);
  v4 = *(v0 + 1520);
  v5 = *(v0 + 1496);
  v6 = *(v0 + 1618);
  *(v0 + 256) = *(v0 + 1488);
  *(v0 + 264) = v5;
  *(v0 + 272) = *(v0 + 1504);
  *(v0 + 288) = v4;
  *(v0 + 296) = v3;
  *(v0 + 304) = v2;
  *(v0 + 312) = *(v0 + 1536);
  *(v0 + 328) = v1;
  if (v6)
  {
    sub_24AE4C4CC(v0 + 256);
  }

  else
  {
    v52 = *(v0 + 288);
    v53 = *(v0 + 304);
    v54 = *(v0 + 320);
    v50 = *(v0 + 256);
    v51 = *(v0 + 272);
    v7 = SystemVersionNumber.description.getter();
    v9 = v8;
    sub_24AE4C4CC(v0 + 256);
    if (qword_280D7A568 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 1384), qword_280D7A570);
    *(v0 + 1288) = v7;
    *(v0 + 1296) = v9;
    swift_beginAccess();
    sub_24AE83CE0();
    swift_endAccess();
  }

  v10 = *(v0 + 1360);
  sub_24AE83C40();
  if (qword_280D7A540 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1400);
  v12 = *(v0 + 1392);
  v13 = *(v0 + 1384);
  v14 = __swift_project_value_buffer(v13, qword_280D7A548);
  swift_beginAccess();
  (*(v12 + 16))(v11, v14, v13);
  sub_24AE83CD0();
  (*(v12 + 8))(v11, v13);
  v15 = *(v0 + 1376);
  if (*(v0 + 1312))
  {
    v16 = *(v0 + 1304);
    v17 = *(v0 + 1312);
    sub_24AE83E70();
  }

  else
  {
    (*(*(v0 + 1336) + 56))(*(v0 + 1376), 1, 1, *(v0 + 1328));
  }

  v18 = *(v0 + 1376);
  v19 = *(v0 + 1368);
  v20 = *(v0 + 1336);
  v21 = *(v0 + 1328);
  (*(v20 + 16))(*(v0 + 1352), *(v0 + 1360), v21);
  sub_24AE5681C(v18, v19, &qword_27EFBEA18, &qword_24AE87170);
  v22 = (*(v20 + 48))(v19, 1, v21);
  v23 = *(v0 + 1368);
  if (v22 == 1)
  {
    sub_24AE567BC(*(v0 + 1368), &qword_27EFBEA18, &qword_24AE87170);
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v24 = sub_24AE83ED0();
    __swift_project_value_buffer(v24, qword_280D7A598);
    v25 = sub_24AE83EB0();
    v26 = sub_24AE84250();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_24AE43000, v25, v26, "No lastLaunchBootSessionUUID on record", v27, 2u);
      MEMORY[0x24C233A80](v27, -1, -1);
    }

    v28 = swift_task_alloc();
    *(v0 + 1592) = v28;
    *v28 = v0;
    v29 = sub_24AE7B934;
    goto LABEL_26;
  }

  v30 = *(v0 + 1360);
  (*(*(v0 + 1336) + 32))(*(v0 + 1344), *(v0 + 1368), *(v0 + 1328));
  sub_24AE83BE4(&qword_280D7A940, 255, MEMORY[0x277CC95F0]);
  if ((sub_24AE83F90() & 1) == 0)
  {
    v28 = swift_task_alloc();
    *(v0 + 1568) = v28;
    *v28 = v0;
    v29 = sub_24AE7B6C0;
LABEL_26:
    v28[1] = v29;
    v48 = *(v0 + 1352);
    v49 = *(v0 + 1320);

    return sub_24AE82AF4(v48, v49);
  }

  v31 = *(*(v0 + 1336) + 8);
  v31(*(v0 + 1352), *(v0 + 1328));
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v32 = sub_24AE83ED0();
  __swift_project_value_buffer(v32, qword_280D7A598);
  v33 = sub_24AE83EB0();
  v34 = sub_24AE84250();
  v35 = os_log_type_enabled(v33, v34);
  v36 = *(v0 + 1344);
  v37 = *(v0 + 1328);
  if (v35)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_24AE43000, v33, v34, "This is *NOT* the first run since reboot", v38, 2u);
    MEMORY[0x24C233A80](v38, -1, -1);
  }

  v31(v36, v37);
  v39 = *(v0 + 1376);
  v31(*(v0 + 1360), *(v0 + 1328));
  sub_24AE567BC(v39, &qword_27EFBEA18, &qword_24AE87170);
  v40 = *(v0 + 1400);
  v41 = *(v0 + 1376);
  v42 = *(v0 + 1368);
  v43 = *(v0 + 1360);
  v44 = *(v0 + 1352);
  v45 = *(v0 + 1344);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_24AE7B6C0()
{
  v1 = *v0;
  v2 = *(*v0 + 1568);
  v3 = *(*v0 + 1352);
  v4 = *(*v0 + 1336);
  v5 = *(*v0 + 1328);
  v6 = *(*v0 + 1320);
  v9 = *v0;

  v7 = *(v4 + 8);
  *(v1 + 1576) = v7;
  *(v1 + 1584) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2822009F8](sub_24AE7B844, v6, 0);
}

uint64_t sub_24AE7B844()
{
  v1 = *(v0 + 1584);
  (*(v0 + 1576))(*(v0 + 1344), *(v0 + 1328));
  v2 = *(v0 + 1584);
  v3 = *(v0 + 1376);
  (*(v0 + 1576))(*(v0 + 1360), *(v0 + 1328));
  sub_24AE567BC(v3, &qword_27EFBEA18, &qword_24AE87170);
  v4 = *(v0 + 1400);
  v5 = *(v0 + 1376);
  v6 = *(v0 + 1368);
  v7 = *(v0 + 1360);
  v8 = *(v0 + 1352);
  v9 = *(v0 + 1344);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24AE7B934()
{
  v1 = *v0;
  v2 = *(*v0 + 1592);
  v3 = *(*v0 + 1352);
  v4 = *(*v0 + 1336);
  v5 = *(*v0 + 1328);
  v6 = *(*v0 + 1320);
  v9 = *v0;

  v7 = *(v4 + 8);
  *(v1 + 1600) = v7;
  *(v1 + 1608) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x2822009F8](sub_24AE7BAB8, v6, 0);
}

uint64_t sub_24AE7BAB8()
{
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1376);
  (*(v0 + 1600))(*(v0 + 1360), *(v0 + 1328));
  sub_24AE567BC(v2, &qword_27EFBEA18, &qword_24AE87170);
  v3 = *(v0 + 1400);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1368);
  v6 = *(v0 + 1360);
  v7 = *(v0 + 1352);
  v8 = *(v0 + 1344);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24AE7BBB4()
{
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v1 = sub_24AE83ED0();
  __swift_project_value_buffer(v1, qword_280D7A598);
  v2 = sub_24AE83EB0();
  v3 = sub_24AE84250();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, v2, v3, "Initial launch processing...", v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  sub_24AE83BE4(&qword_280D7A510, v6, type metadata accessor for ActorServiceCollection);
  v7 = *(MEMORY[0x277D858E8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_24AE7BD78;
  v9 = *(v0 + 16);

  return MEMORY[0x282200600]();
}

uint64_t sub_24AE7BD78()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24AE4A7DC, v2, 0);
}

uint64_t sub_24AE7BE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7BF34, a3, 0);
}

uint64_t sub_24AE7BF34()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v27 = **(v0 + 96);
    v4 = sub_24AE84120();
    v5 = *(v4 - 8);
    v25 = *(v5 + 56);
    v24 = (v5 + 48);
    v23 = (v5 + 8);

    v6 = 32;
    v26 = v4;
    v28 = v2;
    while (1)
    {
      v29 = v3;
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      v30 = *(v2 + v6);
      v25(v10, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v30;
      sub_24AE5681C(v10, v9, &qword_27EFBE620, &qword_24AE860B0);
      LODWORD(v9) = (*v24)(v9, 1, v4);
      swift_unknownObjectRetain_n();
      v13 = *(v0 + 112);
      if (v9 == 1)
      {
        sub_24AE567BC(*(v0 + 112), &qword_27EFBE620, &qword_24AE860B0);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24AE84110();
        (*v23)(v13, v4);
        if (*v12)
        {
LABEL_9:
          v16 = *(v11 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_24AE840E0();
          v15 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_24AE87228;
      *(v18 + 24) = v11;

      if (v15 | v14)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v7;
      *(v0 + 88) = v27;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_24AE567BC(v8, &qword_27EFBE620, &qword_24AE860B0);
      v6 += 16;
      v2 = v28;
      v3 = v29 - 1;
      v4 = v26;
      if (v29 == 1)
      {

        break;
      }
    }
  }

  v20 = *(v0 + 112);
  v19 = *(v0 + 120);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24AE7C288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = *(a5 + 32);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AE4A7E0;

  return v12(ObjectType, a5);
}

uint64_t sub_24AE7C3AC(__int128 *a1, _OWORD *a2)
{
  *(v3 + 504) = a2;
  *(v3 + 512) = v2;
  *(v3 + 496) = a1;
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a1;
  *(v3 + 112) = a1[1];
  *(v3 + 128) = v4;
  v7 = a1[4];
  *(v3 + 144) = v5;
  *(v3 + 160) = v7;
  v8 = a2[3];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v6;
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v8;
  v9 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  return MEMORY[0x2822009F8](sub_24AE7C3FC, v2, 0);
}

uint64_t sub_24AE7C3FC()
{
  v23 = v0;
  v2 = v0[62];
  v1 = v0[63];
  v3 = v2[3];
  v21[2] = v2[2];
  v21[3] = v3;
  v4 = v2[4];
  v5 = v2[1];
  v21[0] = *v2;
  v21[1] = v5;
  v6 = v1[3];
  v22[2] = v1[2];
  v22[3] = v6;
  v22[4] = v1[4];
  v7 = *v1;
  v22[1] = v1[1];
  v21[4] = v4;
  v22[0] = v7;
  if (_s19FindMyDaemonSupport19SystemVersionNumberV1loiySbAC_ACtFZ_0(v21, v22))
  {
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v8 = sub_24AE83ED0();
    __swift_project_value_buffer(v8, qword_280D7A598);
    sub_24AE4C3C8((v0 + 12), (v0 + 42));
    sub_24AE4C3C8((v0 + 2), (v0 + 52));
    v9 = sub_24AE83EB0();
    v10 = sub_24AE84250();
    sub_24AE4C4CC((v0 + 12));
    sub_24AE4C4CC((v0 + 2));
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v22[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_24AE53C28(v0[12], v0[13], v22);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24AE53C28(v0[2], v0[3], v22);
      v13 = "Migrating from %s to %s";
LABEL_10:
      _os_log_impl(&dword_24AE43000, v9, v10, v13, v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C233A80](v12, -1, -1);
      MEMORY[0x24C233A80](v11, -1, -1);
    }
  }

  else
  {
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v14 = sub_24AE83ED0();
    __swift_project_value_buffer(v14, qword_280D7A598);
    sub_24AE4C3C8((v0 + 12), (v0 + 22));
    sub_24AE4C3C8((v0 + 2), (v0 + 32));
    v9 = sub_24AE83EB0();
    v10 = sub_24AE84250();
    sub_24AE4C4CC((v0 + 12));
    sub_24AE4C4CC((v0 + 2));
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *&v22[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_24AE53C28(v0[12], v0[13], v22);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24AE53C28(v0[2], v0[3], v22);
      v13 = "Back-migration from %s to %s";
      goto LABEL_10;
    }
  }

  v15 = v0[64];
  sub_24AE83BE4(&qword_280D7A510, v16, type metadata accessor for ActorServiceCollection);
  v17 = swift_task_alloc();
  v0[65] = v17;
  v17[2] = v15;
  v17[3] = v0 + 12;
  v17[4] = v0 + 2;
  v18 = *(MEMORY[0x277D858E8] + 4);
  v19 = swift_task_alloc();
  v0[66] = v19;
  *v19 = v0;
  v19[1] = sub_24AE7C7B8;
  v25 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600]();
}

uint64_t sub_24AE7C7B8()
{
  v1 = *(*v0 + 528);
  v2 = *(*v0 + 520);
  v3 = *(*v0 + 512);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24AE48510, v3, 0);
}

uint64_t sub_24AE7C8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a4;
  v5[55] = a5;
  v5[52] = a2;
  v5[53] = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15;
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7C994, a3, 0);
}

uint64_t sub_24AE7C994()
{
  v1 = *(v0 + 424);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v36 = **(v0 + 416);
    v35 = sub_24AE84120();
    v4 = *(v35 - 8);
    v34 = *(v4 + 56);
    v33 = (v4 + 48);
    v32 = (v4 + 8);

    v5 = 32;
    v37 = v2;
    while (1)
    {
      v38 = v5;
      v39 = v3;
      v9 = *(v0 + 448);
      v8 = *(v0 + 456);
      v11 = *(v0 + 432);
      v10 = *(v0 + 440);
      v40 = *(v2 + v5);
      v34(v8, 1, 1, v35);
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = (v12 + 16);
      *(v12 + 24) = 0;
      *(v12 + 32) = v40;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v11[4];
      *(v12 + 96) = v11[3];
      *(v12 + 112) = v16;
      *(v12 + 64) = v14;
      *(v12 + 80) = v15;
      *(v12 + 48) = *v11;
      v18 = v10[1];
      v17 = v10[2];
      v19 = v10[4];
      *(v12 + 176) = v10[3];
      *(v12 + 192) = v19;
      *(v12 + 144) = v18;
      *(v12 + 160) = v17;
      *(v12 + 128) = *v10;
      sub_24AE5681C(v8, v9, &qword_27EFBE620, &qword_24AE860B0);
      LODWORD(v10) = (*v33)(v9, 1, v35);
      swift_unknownObjectRetain_n();
      v20 = *(v0 + 440);
      v21 = *(v0 + 448);
      v22 = *(v0 + 432);
      if (v10 == 1)
      {
        sub_24AE4C3C8(v22, v0 + 16);
        sub_24AE4C3C8(v20, v0 + 96);
        sub_24AE567BC(v21, &qword_27EFBE620, &qword_24AE860B0);
        if (*v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24AE4C3C8(v22, v0 + 176);
        sub_24AE4C3C8(v20, v0 + 256);
        sub_24AE84110();
        (*v32)(v21, v35);
        if (*v13)
        {
LABEL_9:
          v25 = *(v12 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v23 = sub_24AE840E0();
          v24 = v26;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v23 = 0;
      v24 = 0;
LABEL_10:
      v27 = swift_allocObject();
      *(v27 + 16) = &unk_24AE87200;
      *(v27 + 24) = v12;

      if (v24 | v23)
      {
        v6 = v0 + 336;
        *(v0 + 336) = 0;
        *(v0 + 344) = 0;
        *(v0 + 352) = v23;
        *(v0 + 360) = v24;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 456);
      *(v0 + 392) = 1;
      *(v0 + 400) = v6;
      *(v0 + 408) = v36;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_24AE567BC(v7, &qword_27EFBE620, &qword_24AE860B0);
      v5 = v38 + 16;
      v3 = v39 - 1;
      v2 = v37;
      if (v39 == 1)
      {

        break;
      }
    }
  }

  v29 = *(v0 + 448);
  v28 = *(v0 + 456);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_24AE7CD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, __int128 *a7)
{
  ObjectType = swift_getObjectType();
  v12 = a6[3];
  *(v7 + 48) = a6[2];
  *(v7 + 64) = v12;
  v13 = a6[1];
  *(v7 + 16) = *a6;
  *(v7 + 32) = v13;
  v14 = a7[4];
  *(v7 + 144) = a7[3];
  *(v7 + 160) = v14;
  v15 = a7[2];
  v16 = *a7;
  *(v7 + 112) = a7[1];
  *(v7 + 128) = v15;
  *(v7 + 80) = a6[4];
  *(v7 + 96) = v16;
  v17 = *(a5 + 40);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v7 + 176) = v19;
  *v19 = v7;
  v19[1] = sub_24AE7CEB8;

  return v21(v7 + 16, v7 + 96, ObjectType, a5);
}

uint64_t sub_24AE7CEB8()
{
  v1 = *(*v0 + 176);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AE7CFCC()
{
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v1 = sub_24AE83ED0();
  __swift_project_value_buffer(v1, qword_280D7A598);
  v2 = sub_24AE83EB0();
  v3 = sub_24AE84250();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, v2, v3, "First launch since reboot...", v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  sub_24AE83BE4(&qword_280D7A510, v6, type metadata accessor for ActorServiceCollection);
  v7 = *(MEMORY[0x277D858E8] + 4);
  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_24AE498C4;
  v9 = *(v0 + 16);

  return MEMORY[0x282200600]();
}

uint64_t sub_24AE7D190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE620, &qword_24AE860B0) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7D23C, a3, 0);
}

uint64_t sub_24AE7D23C()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v27 = **(v0 + 96);
    v4 = sub_24AE84120();
    v5 = *(v4 - 8);
    v25 = *(v5 + 56);
    v24 = (v5 + 48);
    v23 = (v5 + 8);

    v6 = 32;
    v26 = v4;
    v28 = v2;
    while (1)
    {
      v29 = v3;
      v9 = *(v0 + 112);
      v10 = *(v0 + 120);
      v30 = *(v2 + v6);
      v25(v10, 1, 1, v4);
      v11 = swift_allocObject();
      *(v11 + 16) = 0;
      v12 = (v11 + 16);
      *(v11 + 24) = 0;
      *(v11 + 32) = v30;
      sub_24AE5681C(v10, v9, &qword_27EFBE620, &qword_24AE860B0);
      LODWORD(v9) = (*v24)(v9, 1, v4);
      swift_unknownObjectRetain_n();
      v13 = *(v0 + 112);
      if (v9 == 1)
      {
        sub_24AE567BC(*(v0 + 112), &qword_27EFBE620, &qword_24AE860B0);
        if (*v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_24AE84110();
        (*v23)(v13, v4);
        if (*v12)
        {
LABEL_9:
          v16 = *(v11 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_24AE840E0();
          v15 = v17;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v18 = swift_allocObject();
      *(v18 + 16) = &unk_24AE871D8;
      *(v18 + 24) = v11;

      if (v15 | v14)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 120);
      *(v0 + 72) = 1;
      *(v0 + 80) = v7;
      *(v0 + 88) = v27;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_24AE567BC(v8, &qword_27EFBE620, &qword_24AE860B0);
      v6 += 16;
      v2 = v28;
      v3 = v29 - 1;
      v4 = v26;
      if (v29 == 1)
      {

        break;
      }
    }
  }

  v20 = *(v0 + 112);
  v19 = *(v0 + 120);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24AE7D590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = *(a5 + 48);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_24AE4A504;

  return v12(ObjectType, a5);
}

void *ActorServiceCollection.deinit()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorServiceCollection.__deallocating_deinit()
{
  v1 = v0[14];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24AE7D740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v10 = sub_24AE84410();
  v8[10] = v10;
  v11 = *(v10 - 8);
  v8[11] = v11;
  v12 = *(v11 + 64) + 15;
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AE7D810, a8, 0);
}

uint64_t sub_24AE7D810()
{
  v1 = v0[12];
  sub_24AE845A0();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_24AE7D8D0;
  v3 = v0[12];
  v5 = v0[5];
  v4 = v0[6];

  return sub_24AE7EA44(v5, v4, 0, 0, 1);
}

uint64_t sub_24AE7D8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 112) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 72);
  if (v0)
  {
    v9 = sub_24AE7DD30;
  }

  else
  {
    v9 = sub_24AE7DA58;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_24AE7DA58()
{
  v36 = v0;
  if ((sub_24AE84190() & 1) == 0)
  {
    if (qword_280D7A590 != -1)
    {
      swift_once();
    }

    v1 = v0[7];
    v2 = sub_24AE83ED0();
    __swift_project_value_buffer(v2, qword_280D7A598);
    swift_unknownObjectRetain();
    v3 = sub_24AE83EB0();
    v4 = sub_24AE84240();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[7];
      v6 = v0[8];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35 = v8;
      *v7 = 136446210;
      ObjectType = swift_getObjectType();
      v10 = (*(v6 + 24))(ObjectType, v6);
      v12 = sub_24AE53C28(v10, v11, &v35);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_24AE43000, v3, v4, "*** DEADLOCK *** in startup() for service: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C233A80](v8, -1, -1);
      MEMORY[0x24C233A80](v7, -1, -1);
    }

    v13 = v0[14];
    v14 = v0[8];
    v15 = v0[9];
    v16 = v0[7];
    swift_beginAccess();
    swift_unknownObjectRetain();
    v17 = sub_24AE830B4((v15 + 112), v16, v14);
    result = swift_unknownObjectRelease();
    v19 = *(*(v15 + 112) + 16);
    if (v19 < v17)
    {
      __break(1u);
      return result;
    }

    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[7];
    sub_24AE833EC(v17, v19);
    swift_endAccess();
    v23 = swift_getObjectType();
    v24 = *(v21 + 24);
    v25 = v24(v23, v21);
    v27 = v26;
    v28 = v24(v23, v21);
    v30 = v29;
    sub_24AE834AC();
    v31 = swift_allocError();
    *v32 = v28;
    *(v32 + 8) = v30;
    *(v32 + 16) = 1;
    sub_24AE7DD94(v25, v27, v31);
  }

  v33 = v0[12];

  v34 = v0[1];

  return v34();
}

uint64_t sub_24AE7DD30()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_24AE7DD94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8D0, &qword_24AE86540);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  result = swift_beginAccess();
  v14 = *(v3 + 128);
  if (*(v14 + 16))
  {

    v15 = sub_24AE475AC(a1, a2);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 8 * v15);

      v18 = *(v17 + 16);
      if (v18)
      {
        v27 = a1;
        v28 = v4;
        v29 = a2;
        v21 = *(v9 + 16);
        v20 = v9 + 16;
        v19 = v21;
        v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
        v26 = v17;
        v23 = v17 + v22;
        v24 = *(v20 + 56);
        do
        {
          v19(v12, v23, v8);
          v30 = a3;
          v25 = a3;
          sub_24AE840F0();
          (*(v20 - 8))(v12, v8);
          v23 += v24;
          --v18;
        }

        while (v18);

        a2 = v29;
        a1 = v27;
      }

      else
      {
      }

      swift_beginAccess();

      sub_24AE502A4(0, a1, a2);
      return swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24AE7DFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a3 + 56);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AE4A504;

  return v10(ObjectType, a3);
}

uint64_t sub_24AE7E0C4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8D0, &qword_24AE86540);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - v8;
  result = swift_beginAccess();
  v11 = *(v2 + 128);
  if (*(v11 + 16))
  {

    v12 = sub_24AE475AC(a1, a2);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      v15 = *(v14 + 16);
      if (v15)
      {
        v23 = a1;
        v24 = a2;
        v18 = *(v6 + 16);
        v17 = v6 + 16;
        v16 = v18;
        v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
        v22[1] = v14;
        v20 = v14 + v19;
        v21 = *(v17 + 56);
        do
        {
          v16(v9, v20, v5);
          sub_24AE84100();
          (*(v17 - 8))(v9, v5);
          v20 += v21;
          --v15;
        }

        while (v15);

        a1 = v23;
        a2 = v24;
      }

      else
      {
      }

      swift_beginAccess();

      sub_24AE502A4(0, a1, a2);
      return swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24AE7E2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8D0, &qword_24AE86540);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  v12 = sub_24AE75B0C();
  v14 = sub_24AE62DC4(v21, a3, a4);
  if (*v13)
  {
    v15 = v13;
    (*(v8 + 16))(v11, a1, v7);
    v16 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_24AE61910(0, v16[2] + 1, 1, v16);
      *v15 = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_24AE61910(v18 > 1, v19 + 1, 1, v16);
      *v15 = v16;
    }

    v16[2] = v19 + 1;
    (*(v8 + 32))(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v11, v7);
    (v14)(v21, 0);
    return (v12)(v22, 0);
  }

  else
  {
    (v14)(v21, 0);
    return (v12)(v22, 0);
  }
}

uint64_t sub_24AE7E4DC()
{
  v0 = sub_24AE83D10();
  __swift_allocate_value_buffer(v0, qword_280D7A520);
  v1 = __swift_project_value_buffer(v0, qword_280D7A520);
  if (qword_280D7A5B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D7A5C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24AE7E5A4()
{
  v0 = sub_24AE83D10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA20, &qword_24AE87178);
  __swift_allocate_value_buffer(v5, qword_280D7A548);
  __swift_project_value_buffer(v5, qword_280D7A548);
  if (qword_280D7A518 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280D7A520);
  (*(v1 + 16))(v4, v6, v0);
  return sub_24AE83CF0();
}

uint64_t sub_24AE7E714()
{
  v0 = sub_24AE83D10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA20, &qword_24AE87178);
  __swift_allocate_value_buffer(v5, qword_280D7A570);
  __swift_project_value_buffer(v5, qword_280D7A570);
  if (qword_280D7A518 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280D7A520);
  (*(v1 + 16))(v4, v6, v0);
  return sub_24AE83CF0();
}

uint64_t sub_24AE7E884()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24AE845F0();
  sub_24AE83FE0();
  sub_24AE83FE0();
  return sub_24AE84610();
}

uint64_t sub_24AE7E8EC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24AE83FE0();

  return sub_24AE83FE0();
}

uint64_t sub_24AE7E93C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_24AE845F0();
  sub_24AE83FE0();
  sub_24AE83FE0();
  return sub_24AE84610();
}

uint64_t sub_24AE7E9A0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24AE84540(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_24AE84540();
    }
  }

  return result;
}

uint64_t sub_24AE7EA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24AE843F0();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24AE7EB44, 0, 0);
}

uint64_t sub_24AE7EB44()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_24AE84410();
  v7 = sub_24AE83BE4(&qword_280D7A048, 255, MEMORY[0x277D85928]);
  sub_24AE84580();
  sub_24AE83BE4(&unk_280D7A050, 255, MEMORY[0x277D858F8]);
  sub_24AE84420();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_24AE7ECDC;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_24AE7ECDC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24AE7EE98, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24AE7EE98()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_24AE7EF98(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v8;
  v9 = sub_24AE83EA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBEA40, &qword_24AE87288);
  v52 = a2;
  result = sub_24AE84460();
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
      sub_24AE83BE4(&qword_280D7A038, 255, MEMORY[0x277CC95F0]);
      result = sub_24AE83F70();
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

uint64_t sub_24AE7F474(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_24AE84460();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_24AE845F0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_24AE7F714(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *(v55 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v54 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v52 = a2;
  result = sub_24AE84460();
  v18 = result;
  if (*(v15 + 16))
  {
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v48 = v9;
    v49 = (v12 + 16);
    v50 = v15;
    v51 = v12;
    v53 = (v12 + 32);
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v51 + 72);
      v37 = v32 + v36 * v31;
      if (v52)
      {
        (*v53)(v54, v37, v55);
      }

      else
      {
        (*v49)(v54, v37, v55);
      }

      v38 = *(v18 + 40);
      sub_24AE845F0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = (*v53)(*(v18 + 56) + v36 * v26, v54, v55);
      ++*(v18 + 16);
      v15 = v50;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_24AE7FA98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA38, &qword_24AE87248);
  v40 = a2;
  result = sub_24AE84460();
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
      sub_24AE845F0();
      sub_24AE83FE0();
      result = sub_24AE84610();
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

uint64_t sub_24AE7FDA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_24AE475AC(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_24AE81430(a5, a6, a7, a8);
      goto LABEL_9;
    }

    sub_24AE7F714(v21, a4 & 1, a5, a6, a7, a8);
    v24 = *v11;
    v25 = sub_24AE475AC(a2, a3);
    if ((v22 & 1) == (v26 & 1))
    {
      v18 = v25;
      goto LABEL_9;
    }

LABEL_17:
    result = sub_24AE84570();
    __break(1u);
    return result;
  }

LABEL_9:
  v27 = a1;
  v28 = *v11;
  if (v22)
  {
    v29 = v28[7];
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v31 = *(v30 - 8);
    v32 = *(v31 + 40);
    v33 = v30;
    v34 = v29 + *(v31 + 72) * v18;

    return v32(v34, v27, v33);
  }

  else
  {
    sub_24AE806EC(v18, a2, a3, a1, v28, a5, a6);
  }
}

uint64_t sub_24AE7FFD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_24AE475AC(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_24AE7F474(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_24AE475AC(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_24AE84570();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_24AE80C48(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_24AE80178(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24AE83EA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_24AE541D0(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_24AE8087C();
      goto LABEL_7;
    }

    sub_24AE7EF98(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_24AE541D0(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_24AE805A4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_24AE84570();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_24AE8041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24AE475AC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_24AE7FA98(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_24AE475AC(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_24AE84570();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_24AE816AC();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_24AE805A4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24AE83EA0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
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

unint64_t sub_24AE806A4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_24AE806EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  v11 = a5[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a4, v12);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

char *sub_24AE8087C()
{
  v1 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBE6D0, &unk_24AE85EC0);
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v3;
  v41 = sub_24AE83EA0();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EFBEA40, &qword_24AE87288);
  v6 = *v0;
  v7 = sub_24AE84450();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_24AE80C48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_24AE84450();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
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
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
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

uint64_t sub_24AE80DCC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AE4A7E0;

  return sub_24AE7708C(a1, a2, v6, v7, v8);
}

uint64_t dispatch thunk of ActorServiceCollection.startup()()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24AE4A7E0;

  return v6();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AE80FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24AE81044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AE81098()
{
  result = qword_280D7A738;
  if (!qword_280D7A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7A738);
  }

  return result;
}

uint64_t sub_24AE810EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24AE4A7E0;

  return sub_24AE7743C(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_24AE811C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AE4A7E0;

  return sub_24AE7775C(a1, v4, v5, v6);
}

uint64_t sub_24AE81274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_24AE4A504;

  return sub_24AE7D740(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_24AE81360(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A7E0;

  return sub_24AE7DFA0(a1, v5, v4);
}

void *sub_24AE81430(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v47 = *(v45 - 8);
  v8 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_24AE84450();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v10;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v47;
        v33 = *(v47 + 72) * v26;
        v34 = v44;
        v35 = v45;
        (*(v47 + 16))(v44, v28 + v33, v45);
        v36 = v46;
        v37 = (*(v46 + 48) + v27);
        *v37 = v30;
        v37[1] = v31;
        v38 = *(v36 + 56) + v33;
        v10 = v43;
        (*(v32 + 32))(v38, v34, v35);

        v21 = v48;
      }

      while (v48);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v40;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

void *sub_24AE816AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA38, &qword_24AE87248);
  v2 = *v0;
  v3 = sub_24AE84450();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_24AE81824(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AE845F0();
  sub_24AE83FE0();
  v9 = sub_24AE84610();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AE84540() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24AE82030(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AE81974(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_24AE845F0();
  sub_24AE83FE0();
  sub_24AE83FE0();
  v12 = sub_24AE84610();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v30 = v10;
    v17 = *(v10 + 48);
    while (1)
    {
      v18 = (v17 + 32 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v21 = *v18 == a2 && v18[1] == a3;
      if (v21 || (sub_24AE84540() & 1) != 0)
      {
        v22 = v19 == a4 && v20 == a5;
        if (v22 || (sub_24AE84540() & 1) != 0)
        {
          break;
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v23 = (*(v30 + 48) + 32 * v15);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    *a1 = *v23;
    a1[1] = v24;
    a1[2] = v25;
    a1[3] = v26;

    return 0;
  }

  else
  {
LABEL_15:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v31;

    sub_24AE821B0(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v31 = v33;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_24AE81B4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8F8, &unk_24AE87260);
  result = sub_24AE84360();
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
      sub_24AE845F0();
      sub_24AE83FE0();
      result = sub_24AE84610();
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

uint64_t sub_24AE81DAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA30, &qword_24AE87240);
  result = sub_24AE84360();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_24AE845F0();
      sub_24AE83FE0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
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

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AE82030(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AE81B4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AE8237C();
      goto LABEL_16;
    }

    sub_24AE82644(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AE845F0();
  sub_24AE83FE0();
  result = sub_24AE84610();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AE84540();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AE84560();
  __break(1u);
  return result;
}

uint64_t sub_24AE821B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_24AE81DAC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_24AE824D8();
      goto LABEL_22;
    }

    sub_24AE8287C(v12 + 1);
  }

  v14 = *v6;
  v15 = *(*v6 + 40);
  sub_24AE845F0();
  sub_24AE83FE0();
  sub_24AE83FE0();
  result = sub_24AE84610();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = result & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    while (1)
    {
      v20 = (v19 + 32 * a5);
      v21 = v20[2];
      v22 = v20[3];
      v23 = *v20 == v11 && v20[1] == a2;
      if (v23 || (result = sub_24AE84540(), (result & 1) != 0))
      {
        if (v21 == a3 && v22 == a4)
        {
          break;
        }

        result = sub_24AE84540();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v18;
      if (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_24AE84560();
    __break(1u);
  }

LABEL_22:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = v11;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

void *sub_24AE8237C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8F8, &unk_24AE87260);
  v2 = *v0;
  v3 = sub_24AE84350();
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

void *sub_24AE824D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA30, &qword_24AE87240);
  v2 = *v0;
  v3 = sub_24AE84350();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
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

uint64_t sub_24AE82644(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8F8, &unk_24AE87260);
  result = sub_24AE84360();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24AE845F0();

      sub_24AE83FE0();
      result = sub_24AE84610();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AE8287C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA30, &qword_24AE87240);
  result = sub_24AE84360();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      sub_24AE845F0();

      sub_24AE83FE0();
      sub_24AE83FE0();
      result = sub_24AE84610();
      v25 = -1 << *(v6 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v13 + 8 * v27);
          if (v31 != -1)
          {
            v14 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v33;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AE82AF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_24AE82B10, a2, 0);
}

uint64_t sub_24AE82B10()
{
  if (qword_280D7A590 != -1)
  {
    swift_once();
  }

  v1 = sub_24AE83ED0();
  __swift_project_value_buffer(v1, qword_280D7A598);
  v2 = sub_24AE83EB0();
  v3 = sub_24AE84250();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AE43000, v2, v3, "This is the first run since reboot", v4, 2u);
    MEMORY[0x24C233A80](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = sub_24AE83E80();
  v8 = v7;
  if (qword_280D7A540 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA20, &qword_24AE87178);
  __swift_project_value_buffer(v9, qword_280D7A548);
  v0[5] = v6;
  v0[6] = v8;
  swift_beginAccess();
  sub_24AE83CE0();
  swift_endAccess();
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_24AE82D00;
  v11 = v0[8];

  return sub_24AE7CFAC();
}

uint64_t sub_24AE82D00()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24AE82DF4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBEA08, &unk_24AE87150);
  v3 = sub_24AE83FC0();
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 24);
  if (v7(ObjectType, a2) == v3 && v8 == v5)
  {

LABEL_8:

    return v7(ObjectType, a2);
  }

  v10 = sub_24AE84540();

  if (v10)
  {
    goto LABEL_8;
  }

  v12 = v7(ObjectType, a2);
  MEMORY[0x24C232D80](23328, 0xE200000000000000);
  MEMORY[0x24C232D80](v3, v5);

  MEMORY[0x24C232D80](93, 0xE100000000000000);
  return v12;
}

uint64_t sub_24AE82F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *(a1 + 16);
  if (!v18)
  {
    return 0;
  }

  v4 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v6 = *(i - 1);
    v7 = *i;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 24);
    swift_unknownObjectRetain();
    v10 = v9(ObjectType, v7);
    v12 = v11;
    v13 = swift_getObjectType();
    if (v10 == (*(a3 + 24))(v13, a3) && v12 == v14)
    {
      break;
    }

    v16 = sub_24AE84540();
    swift_unknownObjectRelease();

    if (v16)
    {
      return v4;
    }

    if (v18 == ++v4)
    {
      return 0;
    }
  }

  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_24AE830B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_24AE82F4C(*a1, a2, a3);
  v30 = result;
  if (v3)
  {
    return v30;
  }

  if (v6)
  {
    return v4[2];
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = v4 + 2;
    v8 = v4[2];
    if (v7 == v8)
    {
      return v30;
    }

    v10 = 2 * result;
    while (v7 < v8)
    {
      v12 = v4[v10 + 6];
      v11 = v4[v10 + 7];
      ObjectType = swift_getObjectType();
      v14 = *(v11 + 24);
      swift_unknownObjectRetain();
      v15 = v14(ObjectType, v11);
      v17 = v16;
      v18 = swift_getObjectType();
      if (v15 == (*(a3 + 24))(v18) && v17 == v19)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v21 = sub_24AE84540();
        swift_unknownObjectRelease();

        if ((v21 & 1) == 0)
        {
          v22 = v30;
          if (v7 != v30)
          {
            if ((v30 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            if (v30 >= *v9)
            {
              goto LABEL_27;
            }

            if (v7 >= *v9)
            {
              goto LABEL_28;
            }

            v26 = *&v4[2 * v30 + 4];
            v27 = *&v4[v10 + 6];
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_24AE82AE0(v4);
            }

            v23 = &v4[2 * v30];
            v24 = v23[4];
            *(v23 + 2) = v27;
            result = swift_unknownObjectRelease();
            if (v7 >= v4[2])
            {
              goto LABEL_29;
            }

            v25 = v4[v10 + 6];
            *&v4[v10 + 6] = v26;
            result = swift_unknownObjectRelease();
            *a1 = v4;
            v22 = v30;
          }

          v30 = v22 + 1;
        }
      }

      ++v7;
      v9 = v4 + 2;
      v8 = v4[2];
      v10 += 2;
      if (v7 == v8)
      {
        return v30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24AE8331C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFBE8A0, &unk_24AE866A0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_24AE833EC(unint64_t result, uint64_t a2)
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

    v4 = sub_24AE617DC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_24AE8331C(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_24AE834AC()
{
  result = qword_280D7A930;
  if (!qword_280D7A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D7A930);
  }

  return result;
}

uint64_t sub_24AE83500(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE79040(a1, a2, v7, v6);
}

uint64_t sub_24AE835B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AE4A7E0;

  return sub_24AE79448(a1, v4, v5, v6, v7);
}

uint64_t sub_24AE8367C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AE4A7E0;

  return sub_24AE6FAD4(a1, v5);
}

uint64_t sub_24AE83734(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AE4A504;

  return sub_24AE7D190(a1, a2, v2);
}

uint64_t sub_24AE837E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE7D590(a1, v4, v5, v7, v6);
}

uint64_t sub_24AE838A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24AE4A7E0;

  return sub_24AE7C8E4(a1, a2, v6, v7, v8);
}

uint64_t sub_24AE83964(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE7CD4C(a1, v4, v5, v6, v7, (v1 + 48), (v1 + 128));
}

uint64_t sub_24AE83A2C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AE4A7E0;

  return sub_24AE7BE88(a1, a2, v2);
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_24AE83B24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AE4A7E0;

  return sub_24AE7C288(a1, v4, v5, v7, v6);
}

uint64_t sub_24AE83BE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}