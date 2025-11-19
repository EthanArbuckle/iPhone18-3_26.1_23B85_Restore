uint64_t sub_24B1F5450()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 152);
  if (v0)
  {
    v4 = sub_24B17DAFC;
  }

  else
  {
    v4 = sub_24B1F557C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24B1F557C()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = sub_24B2D56D4();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_24B0C43AC(v0 + 16, v0 + 56);
  v5 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider);
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  sub_24B07F7D0((v0 + 56), (v6 + 4));
  v6[9] = v3;
  swift_retain_n();
  v7 = sub_24B00A9A4(0, 0, v2, &unk_24B2F0E50, v6);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  *(v3 + v1) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24B1F56FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v7 = sub_24B2D3184();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v5[19] = swift_task_alloc();
  v8 = sub_24B2D1944();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE480);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE488);
  v5[26] = swift_task_alloc();
  v9 = sub_24B2D1574();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v10 = sub_24B2D24A4();
  v5[33] = v10;
  v5[34] = *(v10 - 8);
  v5[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F59B8, a5, 0);
}

uint64_t sub_24B1F59B8()
{
  v1 = v0[14];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_24B2D57B4();

  v6 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider);
  v7 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v0[36] = v6;
  v0[37] = v7;
  swift_beginAccess();
  v8 = v0[36];
  v9 = v0[15];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v10 = swift_task_alloc();
  v0[38] = v10;
  *v10 = v0;
  v10[1] = sub_24B1F5BD0;

  return MEMORY[0x282200310](v0 + 10, v9, v8);
}

uint64_t sub_24B1F5BD0()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 120);

    return MEMORY[0x2822009F8](sub_24B1F5CE0, v4, 0);
  }

  return result;
}

uint64_t sub_24B1F5CE0()
{
  v136 = v0;
  v2 = v0 + 10;
  v1 = v0[10];
  if (v1)
  {
    v117 = (v0 + 2);
    sub_24B2D2494();
    v3 = MEMORY[0x277D84FA0];
    v0[11] = MEMORY[0x277D84FA0];
    v0[12] = v3;
    v4 = sub_24B195218(MEMORY[0x277D84F90]);
    v7 = v4;
    v134 = v0;
    v123 = v0 + 10;
    v119 = *(v1 + 16);
    if (!v119)
    {

      v86 = MEMORY[0x277D84FA0];
      if (!*(MEMORY[0x277D84FA0] + 16))
      {
        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v8 = 0;
    v120 = v1 + 32;
    v118 = v1;
    while (1)
    {
      if (v8 >= *(v1 + 16))
      {
LABEL_68:
        __break(1u);
        return MEMORY[0x282200310](v4, v5, v6);
      }

      v9 = v120 + 16 * v8;
      v124 = *v9;
      v10 = *(v9 + 8);
      if (v10)
      {
        break;
      }

      v133 = v7;
      v4 = v124;
      v67 = *(v124 + 16);
      if (v67)
      {
        v121 = v8;
        v68 = v0[28];
        v69 = v124 + ((*(v68 + 80) + 32) & ~*(v68 + 80));

        v131 = *(v68 + 72);
        v70 = *(v68 + 16);
        v71 = v123;
        do
        {
          v73 = v0[31];
          v72 = v0[32];
          v75 = v0[27];
          v74 = v0[28];
          v70(v72, v69, v75);
          sub_24B1AF4EC(v73, v72);
          (*(v74 + 8))(v73, v75);
          v69 += v131;
          --v67;
        }

        while (v67);
LABEL_4:

        v2 = v71;
LABEL_5:
        v7 = v133;
        v1 = v118;
        v8 = v121;
        goto LABEL_6;
      }

      v2 = v123;
      v7 = v133;
LABEL_6:
      if (++v8 == v119)
      {

        v86 = v2[1];
        if (!*(v86 + 16))
        {
LABEL_58:

          goto LABEL_59;
        }

LABEL_56:
        v87 = v0[36];
        v88 = v0[19];
        v89 = v0[15];
        v90 = sub_24B2D56D4();
        (*(*(v90 - 8) + 56))(v88, 1, 1, v90);
        v91 = swift_allocObject();
        *(v91 + 16) = v89;
        *(v91 + 24) = v87;
        *(v91 + 32) = v89;
        *(v91 + 40) = v86;
        *(v91 + 48) = 0;
        swift_retain_n();
        sub_24B00A9A4(0, 0, v88, &unk_24B2F0E68, v91);

LABEL_59:
        v92 = v0[37];
        v93 = v0[17];
        v94 = v0[18];
        v95 = v0[15];
        v96 = v0[16];
        swift_bridgeObjectRetain_n();
        v97 = sub_24B1D27E8(v7);
        sub_24B25A824(v0[12], v97);
        v99 = v98;
        (*(v93 + 16))(v94, v95 + v92, v96);
        v100 = sub_24B2D3164();
        v101 = v0;
        v102 = v7;
        v103 = sub_24B2D5904();
        v104 = os_log_type_enabled(v100, v103);
        v107 = v0 + 17;
        v105 = v0[17];
        v106 = v107[1];
        v108 = v101[16];
        if (v104)
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v135 = v110;
          *v109 = 136315138;
          *(v109 + 4) = sub_24AFF321C(0xD000000000000018, 0x800000024B2DC550, &v135);

          _os_log_impl(&dword_24AFD2000, v100, v103, "PeopleLocationsProvider: %s - Will call ingest", v109, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v110);
          MEMORY[0x24C23D530](v110, -1, -1);
          MEMORY[0x24C23D530](v109, -1, -1);

          (*(v105 + 8))(v106, v108);
        }

        else
        {

          (*(v105 + 8))(v106, v108);
        }

        v111 = v134[34];
        v112 = v134[35];
        v113 = v134[33];
        sub_24B1F8654(v99, v102, v112, 0);

        (*(v111 + 8))(v112, v113);
        v114 = v134[36];
        v115 = v134[15];
        __swift_mutable_project_boxed_opaque_existential_1(v117, v134[5]);
        v116 = swift_task_alloc();
        v134[38] = v116;
        *v116 = v134;
        v116[1] = sub_24B1F5BD0;
        v4 = v123;
        v5 = v115;
        v6 = v114;

        return MEMORY[0x282200310](v4, v5, v6);
      }
    }

    if (v10 == 1)
    {
      v121 = v8;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v7;
      v12 = -1 << *(v124 + 32);
      if (-v12 < 64)
      {
        v13 = ~(-1 << -v12);
      }

      else
      {
        v13 = -1;
      }

      v14 = v13 & *(v124 + 64);
      v122 = (63 - v12) >> 6;

      for (i = 0; ; i = v129)
      {
        v133 = v7;
        v130 = isUniquelyReferenced_nonNull_native;
        if (!v14)
        {
          if (v122 <= i + 1)
          {
            v17 = i + 1;
          }

          else
          {
            v17 = v122;
          }

          while (1)
          {
            v16 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v16 >= v122)
            {
              v129 = v17 - 1;
              v65 = v0[25];
              v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE490);
              (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
              v14 = 0;
              goto LABEL_25;
            }

            v14 = *(v124 + 64 + 8 * v16);
            ++i;
            if (v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v16 = i;
LABEL_24:
        v19 = v0[27];
        v18 = v0[28];
        v20 = v0[25];
        v126 = v0[23];
        v128 = v0[31];
        v21 = v0[21];
        v22 = v134[20];
        v23 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v24 = v23 | (v16 << 6);
        (*(v18 + 16))();
        (*(v21 + 16))(v126, *(v124 + 56) + *(v21 + 72) * v24, v22);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE490);
        v26 = *(v25 + 48);
        (*(v18 + 32))(v20, v128, v19);
        v0 = v134;
        (*(v21 + 32))(v20 + v26, v126, v22);
        (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
        v129 = v16;
LABEL_25:
        v27 = v0[24];
        sub_24B1FC778(v0[25], v27);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE490);
        if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
        {
          v29 = v0[26];
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98);
          (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
        }

        else
        {
          v31 = v0[27];
          v32 = v0[28];
          v33 = v0[26];
          v34 = v134[24];
          v35 = v134[21];
          v36 = v134[20];
          v37 = *(v28 + 48);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98);
          v39 = *(v38 + 48);
          (*(v32 + 16))(v33, v34, v31);
          (*(v35 + 16))(v33 + v39, v34 + v37, v36);
          v0 = v134;
          sub_24AFF8258(v34, &qword_27EFCE490);
          (*(*(v38 - 8) + 56))(v33, 0, 1, v38);
        }

        v40 = v0[26];
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98);
        if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
        {
          swift_bridgeObjectRelease_n();

          v2 = v123;
          goto LABEL_5;
        }

        v42 = v0[30];
        v43 = v0[21];
        v44 = v0[22];
        v45 = v0[20];
        v46 = *(v41 + 48);
        v127 = *(v0[28] + 32);
        v127(v42, v40, v0[27]);
        v47 = *(v43 + 32);
        v47(v44, v40 + v46, v45);
        v48 = sub_24B18146C(v42);
        v49 = v133[2];
        v50 = (v5 & 1) == 0;
        v4 = v49 + v50;
        if (__OFADD__(v49, v50))
        {
          goto LABEL_66;
        }

        v51 = v5;
        v125 = v47;
        if (v133[3] >= v4)
        {
          v0 = v134;
          v53 = v123;
          if ((v130 & 1) == 0)
          {
            sub_24B1CF020();
          }
        }

        else
        {
          v0 = v134;
          v52 = v134[30];
          v53 = v123;
          sub_24B1C75F4(v4, v130 & 1);
          v54 = sub_24B18146C(v52);
          if ((v51 & 1) != (v55 & 1))
          {

            return sub_24B2D6054();
          }

          v48 = v54;
        }

        v56 = v0[30];
        v57 = v0[27];
        v58 = v0[28];
        v60 = v0[21];
        v59 = v0[22];
        v61 = v0[20];
        if (v51)
        {
          (*(v58 + 8))(v0[30], v0[27]);
          v7 = v53[3];
          v4 = (*(v60 + 40))(v7[7] + *(v60 + 72) * v48, v59, v61);
        }

        else
        {
          v7 = v53[3];
          v7[(v48 >> 6) + 8] |= 1 << v48;
          v127(v7[6] + *(v58 + 72) * v48, v56, v57);
          v4 = v125(v7[7] + *(v60 + 72) * v48, v59, v61);
          v62 = v7[2];
          v63 = __OFADD__(v62, 1);
          v64 = v62 + 1;
          if (v63)
          {
            goto LABEL_67;
          }

          v7[2] = v64;
        }

        isUniquelyReferenced_nonNull_native = 1;
      }
    }

    v4 = v124;
    v76 = *(v124 + 16);
    if (!v76)
    {
      goto LABEL_6;
    }

    v121 = v8;
    v133 = v7;
    v77 = v0[28];
    v78 = v124 + ((*(v77 + 80) + 32) & ~*(v77 + 80));

    v132 = *(v77 + 72);
    v79 = *(v77 + 16);
    v71 = v2;
    do
    {
      v80 = v0[31];
      v82 = v0[28];
      v81 = v0[29];
      v83 = v134[27];
      v79(v81, v78, v83);
      sub_24B1AF4EC(v80, v81);
      v0 = v134;
      (*(v82 + 8))(v80, v83);
      v78 += v132;
      --v76;
    }

    while (v76);
    goto LABEL_4;
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v84 = v0[1];

  return v84();
}

uint64_t sub_24B1F6958()
{
  v1 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v1) = 0;

  v2 = v0 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  sub_24B1F42A4(v3, &unk_285E54538, &unk_285E54560, &unk_24B2EF960, &unk_24B2F0DC0);
  return swift_endAccess();
}

uint64_t sub_24B1F6A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 192) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  v8 = sub_24B2D3184();
  *(v6 + 112) = v8;
  *(v6 + 120) = *(v8 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  v9 = sub_24B2D24A4();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F6B74, a4, 0);
}

uint64_t sub_24B1F6B74()
{
  v1 = v0[12];
  sub_24B2D2494();
  v5 = (*(v1 + 112) + **(v1 + 112));
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_24B1F6C70;
  v3 = v0[13];

  return v5(v3);
}

uint64_t sub_24B1F6C70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 96);
  if (v1)
  {
    v6 = sub_24B1F6F98;
  }

  else
  {
    v6 = sub_24B1F6DA4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24B1F6DA4()
{
  v20 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  v6 = sub_24B2D3164();
  v7 = sub_24B2D5904();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_24AFF321C(0xD000000000000027, 0x800000024B2DC980, &v19);
    _os_log_impl(&dword_24AFD2000, v6, v7, "PeopleLocationsProvider: %s - Will call ingest", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C23D530](v13, -1, -1);
    MEMORY[0x24C23D530](v12, -1, -1);
  }

  (*(v11 + 8))(v9, v10);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v16 = *(v0 + 144);
  sub_24B1F8654(*(v0 + 104), *(v0 + 176), v14, *(v0 + 192));

  (*(v15 + 8))(v14, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24B1F6F98()
{
  v27 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  v6 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 120);
    v25 = *(v0 + 128);
    v23 = *(v0 + 184);
    v24 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_24AFF321C(0xD000000000000027, 0x800000024B2DC980, &v26);
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleLocationsProvider: %s - fetchError - %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 120);
    v18 = *(v0 + 128);
    v20 = *(v0 + 112);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1F7294(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v127 = a4;
  v134 = a3;
  v129 = a1;
  v132 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v6 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v124 = &v105[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v123 = &v105[-v9];
  v116 = sub_24B2D13C4();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v105[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = sub_24B2D1944();
  v121 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v105[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v112);
  v119 = &v105[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v111 = &v105[-v14];
  MEMORY[0x28223BE20](v15);
  v17 = &v105[-v16];
  v130 = sub_24B2D3184();
  v125 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v105[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v105[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v105[-v23];
  v135 = sub_24B2D24A4();
  v131 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v113 = &v105[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v105[-v27];
  MEMORY[0x28223BE20](v29);
  v31 = &v105[-v30];
  MEMORY[0x28223BE20](v32);
  v34 = &v105[-v33];
  v133 = v4;
  v35 = v4 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  v120 = v35;
  v36 = *(v35 + 24);
  if (*(v36 + 16))
  {

    v37 = a2;
    v38 = sub_24B18146C(a2);
    if (v39)
    {
      sub_24B1FBCE0(*(v36 + 56) + *(v6 + 72) * v38, v24, type metadata accessor for PeopleLocationsProvider.LocationState);
      v40 = 0;
    }

    else
    {
      v40 = 1;
    }
  }

  else
  {
    v37 = a2;
    v40 = 1;
  }

  v41 = v132;
  (*(v6 + 56))(v24, v40, 1, v132);
  if ((*(v6 + 48))(v24, 1, v41))
  {
    v42 = v28;
    v43 = v17;
    sub_24AFF8258(v24, &qword_27EFCCCA8);
    v44 = v37;
    v45 = v135;
    v46 = v131;
LABEL_13:
    v59 = v130;
    v60 = v133;
    sub_24B1F8D00(v44);
    v61 = v60 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
    swift_beginAccess();
    v62 = v125;
    v63 = *(v125 + 16);
    v110 = v61;
    v63(v128, v61, v59);
    v64 = *(v46 + 16);
    v118 = v46 + 16;
    v117 = v64;
    v64(v42, v134, v45);
    v65 = v129;
    sub_24B008890(v129, v43, &qword_27EFCB288);
    v66 = sub_24B2D3164();
    v67 = sub_24B2D5904();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v108 = v44;
      v107 = v69;
      v137 = v69;
      *v68 = 136315906;
      *(v68 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2DC950, &v137);
      *(v68 + 12) = 1024;
      *(v68 + 14) = v127 & 1;
      *(v68 + 18) = 2080;
      sub_24B1FC530(&qword_27EFC8688, MEMORY[0x277CC9578]);
      v106 = v67;
      v70 = sub_24B2D5FA4();
      v72 = v71;
      v109 = *(v131 + 8);
      v109(v42, v135);
      v73 = sub_24AFF321C(v70, v72, &v137);

      *(v68 + 20) = v73;
      *(v68 + 28) = 2080;
      sub_24B008890(v43, v111, &qword_27EFCB288);
      v74 = sub_24B2D53C4();
      v76 = v75;
      sub_24AFF8258(v43, &qword_27EFCB288);
      v77 = sub_24AFF321C(v74, v76, &v137);

      *(v68 + 30) = v77;
      _os_log_impl(&dword_24AFD2000, v66, v106, "PeopleLocationsProvider: %s - Will set - isLoading: %{BOOL}d, request: %s, location: %s", v68, 0x26u);
      v78 = v107;
      swift_arrayDestroy();
      v44 = v108;
      MEMORY[0x24C23D530](v78, -1, -1);
      v65 = v129;
      MEMORY[0x24C23D530](v68, -1, -1);
    }

    else
    {

      sub_24AFF8258(v43, &qword_27EFCB288);
      v109 = *(v46 + 8);
      v109(v42, v45);
    }

    (*(v62 + 8))(v128, v130);
    v79 = v122;
    v80 = v121;
    v81 = v119;
    sub_24B008890(v65, v119, &qword_27EFCB288);
    v82 = v126;
    if ((*(v80 + 48))(v81, 1, v126) == 1)
    {
      sub_24AFF8258(v81, &qword_27EFCB288);
      v83 = v127;
      v84 = v44;
      v85 = v135;
    }

    else
    {
      (*(v80 + 32))(v79, v81, v82);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC7D0);
      v87 = *(v110 + *(v86 + 40));
      MEMORY[0x28223BE20](v86);
      v88 = v80 + 32;
      v84 = v44;
      *&v105[-16] = v44;

      v89 = sub_24B1F4070(sub_24B1FC510, &v105[-32], v87);

      v90 = v115;
      sub_24B2D1934();
      v91 = v113;
      sub_24B2D2494();
      v92 = (v114 + 8);
      if (v89)
      {
        v93 = v91;
        v94 = v90;
        v95 = sub_24B2D13B4();
      }

      else
      {
        v93 = v91;
        v94 = v90;
        v95 = sub_24B2D1394();
      }

      v96 = v95;
      v85 = v135;
      v109(v93, v135);
      (*v92)(v94, v116);
      (*(v88 - 24))(v79, v126);
      v83 = v127 | v96 ^ 1;
      v65 = v129;
    }

    v97 = v123;
    v117(v123, v134, v85);
    v98 = (v97 + *(v132 + 20));
    v99 = type metadata accessor for PeopleLocationsProvider.LocationState.Result(0);
    sub_24B008890(v65, &v98[*(v99 + 20)], &qword_27EFCB288);
    *v98 = v83 & 1;
    v100 = v120;
    swift_beginAccess();
    v101 = *(v100 + 24);
    v102 = v124;
    sub_24B1FC4AC(v97, v124);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136 = v101;
    sub_24B1CAE38(v102, v84, isUniquelyReferenced_nonNull_native);
    *(v100 + 24) = v136;
    sub_24B1D5E44(v101);
    swift_endAccess();

    if (v83)
    {
      return sub_24B1F9AB8(v84);
    }

    else
    {
      return sub_24B1F8F68(v84, v65);
    }
  }

  v47 = v131;
  v48 = v135;
  (*(v131 + 16))(v31, v24, v135);
  v49 = v24;
  v46 = v47;
  sub_24AFF8258(v49, &qword_27EFCCCA8);
  (*(v47 + 32))(v34, v31, v48);
  if ((sub_24B2D23C4() & 1) == 0)
  {
    v44 = v37;
    v42 = v28;
    v43 = v17;
    (*(v46 + 8))(v34, v48);
    v45 = v48;
    goto LABEL_13;
  }

  v50 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  v51 = v133;
  swift_beginAccess();
  v52 = v125;
  v53 = v130;
  (*(v125 + 16))(v21, v51 + v50, v130);
  v54 = sub_24B2D3164();
  v55 = sub_24B2D5934();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = v21;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v137 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_24AFF321C(0xD000000000000025, 0x800000024B2DC950, &v137);
    _os_log_impl(&dword_24AFD2000, v54, v55, "PeopleLocationsProvider: %s - Skipping due to older timestamp", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x24C23D530](v58, -1, -1);
    MEMORY[0x24C23D530](v57, -1, -1);

    (*(v52 + 8))(v56, v53);
  }

  else
  {

    (*(v52 + 8))(v21, v53);
  }

  return (*(v47 + 8))(v34, v135);
}

uint64_t sub_24B1F8060(uint64_t a1)
{
  sub_24B2D1574();
  sub_24B1FC530(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
  sub_24B2D54E4();
  sub_24B2D54E4();
  if (v8 == v6 && v9 == v7)
  {
  }

  else
  {
    v3 = sub_24B2D6004();

    v4 = 0;
    if ((v3 & 1) == 0)
    {
      return v4 & 1;
    }
  }

  if (*(a1 + *(type metadata accessor for PeopleLocationsProvider.Subscription(0) + 20)) == 1)
  {
    v4 = sub_24B2D6004();
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_24B1F81C4(int a1, uint64_t a2)
{
  v43 = a1;
  v4 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v11 = sub_24B2D1574();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  sub_24B1F8D00(a2);
  v17 = v2 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  swift_beginAccess();
  v18 = *(v17 + 24);
  v19 = *(v18 + 16);
  v42 = a2;
  if (v19)
  {

    v20 = sub_24B18146C(a2);
    if (v21)
    {
      sub_24B1FBCE0(*(v18 + 56) + *(v5 + 72) * v20, v16, type metadata accessor for PeopleLocationsProvider.LocationState);
      v22 = 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  (*(v5 + 56))(v16, v22, 1, v4);
  v23 = *(v5 + 48);
  if (v23(v16, 1, v4))
  {
    result = sub_24AFF8258(v16, &qword_27EFCCCA8);
    if (v43)
    {
      sub_24B2D2324();
      v25 = &v10[*(v4 + 20)];
      v26 = *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);
      v27 = sub_24B2D1944();
      (*(*(v27 - 8) + 56))(&v25[v26], 1, 1, v27);
      *v25 = 1;
      swift_beginAccess();
      v28 = *(v17 + 24);
      sub_24B1FC4AC(v10, v7);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44[0] = v28;
      sub_24B1CAE38(v7, v42, isUniquelyReferenced_nonNull_native);
      *(v17 + 24) = v44[0];
      sub_24B1D5E44(v28);
      swift_endAccess();
    }
  }

  else
  {
    v30 = v16[*(v4 + 20)];
    result = sub_24AFF8258(v16, &qword_27EFCCCA8);
    if (v30 != (v43 & 1))
    {
      v32 = v40;
      v31 = v41;
      (*(v40 + 16))(v13, v42, v41);
      v33 = sub_24B1F4C84();
      v35 = v34;
      v45 = *(v34 + 24);

      v36 = sub_24B1D6E88(v44);
      v38 = v37;
      if (!v23(v37, 1, v4))
      {
        *(v38 + *(v4 + 20)) = v43 & 1;
      }

      (v36)(v44, 0);
      (*(v32 + 8))(v13, v31);
      v39 = *(v35 + 24);
      *(v35 + 24) = v45;
      sub_24B1D5E44(v39);

      return (v33)(v46, 0);
    }
  }

  return result;
}

uint64_t sub_24B1F8654(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v60 = a4;
  v59 = a3;
  v65 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = &v54 - v7;
  v8 = sub_24B2D1574();
  v64 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v58 = &v54 - v12;
  v13 = sub_24B2D3184();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  v18 = *(v14 + 16);
  v63 = v4;
  v18(v16, v4 + v17, v13);

  v19 = sub_24B2D3164();
  v20 = sub_24B2D5934();

  v21 = os_log_type_enabled(v19, v20);
  v61 = v8;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v57 = v10;
    v23 = v22;
    v24 = swift_slowAlloc();
    v66[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_24AFF321C(0xD000000000000049, 0x800000024B2DC900, v66);
    *(v23 + 12) = 2080;
    sub_24B2D1944();
    sub_24B1FC530(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
    v25 = a2;
    v26 = sub_24B2D51F4();
    v28 = sub_24AFF321C(v26, v27, v66);
    v8 = v61;

    *(v23 + 14) = v28;
    _os_log_impl(&dword_24AFD2000, v19, v20, "PeopleLocationsProvider: %s - updated: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v24, -1, -1);
    v29 = v23;
    v10 = v57;
    MEMORY[0x24C23D530](v29, -1, -1);
  }

  else
  {
    v25 = a2;
  }

  result = (*(v14 + 8))(v16, v13);
  if (*(v65 + 16))
  {
    v31 = v10;
    v32 = v65 + 56;
    v33 = 1 << *(v65 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v65 + 56);
    v36 = (v33 + 63) >> 6;
    v56 = v64 + 32;
    v57 = (v64 + 16);
    v55 = (v64 + 8);

    v37 = 0;
    v38 = v25;
    v39 = v62;
    while (v35)
    {
LABEL_15:
      v42 = v64;
      v43 = v58;
      (*(v64 + 16))(v58, *(v65 + 48) + *(v64 + 72) * (__clz(__rbit64(v35)) | (v37 << 6)), v8);
      (*(v42 + 32))(v31, v43, v8);
      if (*(v38 + 16))
      {
        v44 = sub_24B18146C(v31);
        v45 = v38;
        if (v46)
        {
          v47 = v44;
          v48 = *(v45 + 56);
          v49 = sub_24B2D1944();
          v50 = *(v49 - 8);
          (*(v50 + 16))(v62, v48 + *(v50 + 72) * v47, v49);
          (*(v50 + 56))(v62, 0, 1, v49);
          v39 = v62;
        }

        else
        {
          v51 = sub_24B2D1944();
          (*(*(v51 - 8) + 56))(v39, 1, 1, v51);
        }

        v38 = v45;
        v8 = v61;
      }

      else
      {
        v40 = sub_24B2D1944();
        (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
      }

      v35 &= v35 - 1;
      sub_24B1F7294(v39, v31, v59, v60 & 1);
      sub_24AFF8258(v39, &qword_27EFCB288);
      result = (*v55)(v31, v8);
    }

    while (1)
    {
      v41 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v41 >= v36)
      {

        v52 = v63 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
        swift_beginAccess();
        v53 = *(v52 + 16);
        *(v52 + 16) = 1;
        sub_24B1F42A4(v53, &unk_285E54538, &unk_285E54560, &unk_24B2EF960, &unk_24B2F0DC0);
        return swift_endAccess();
      }

      v35 = *(v32 + 8 * v41);
      ++v37;
      if (v35)
      {
        v37 = v41;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B1F8D00(uint64_t a1)
{
  v3 = sub_24B2D1574();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v7) + 16))
  {

    sub_24B18146C(a1);
    if (v8)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  v9 = *(v4 + 16);
  v9(v6, a1, v3);
  swift_beginAccess();
  sub_24B18CA24(0, v6);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateFallbackTaskBySubscription;
  swift_beginAccess();
  if (*(*(v1 + v10) + 16))
  {

    sub_24B18146C(a1);
    if (v11)
    {

      sub_24B2D5764();
    }

    else
    {
    }
  }

  v9(v6, a1, v3);
  swift_beginAccess();
  sub_24B18CA24(0, v6);
  return swift_endAccess();
}

uint64_t sub_24B1F8F68(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v4 = sub_24B2D1574();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = v5;
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v6 - 8);
  v40 = &v37 - v7;
  v8 = sub_24B2D18D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_24B2D1944();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v46 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v18 = a1;
  v19 = v2;
  sub_24B1F8D00(v18);
  sub_24B008890(v45, v14, &qword_27EFCB288);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_24AFF8258(v14, &qword_27EFCB288);
  }

  (*(v16 + 32))(v46, v14, v15);
  v21 = *(v2 + 192);
  sub_24B2D18E4();
  v45 = v21(v11);
  v38 = v22;
  v24 = v23;
  (*(v9 + 8))(v11, v8);
  if ((v24 & 1) == 0)
  {
    v25 = sub_24B2D56D4();
    v26 = v40;
    (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
    v27 = v41;
    v28 = v42;
    v29 = v43;
    (*(v42 + 16))(v41, v44, v43);
    v30 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider);
    v31 = (*(v28 + 80) + 56) & ~*(v28 + 80);
    v32 = swift_allocObject();
    *(v32 + 2) = v19;
    *(v32 + 3) = v30;
    v33 = v38;
    *(v32 + 4) = v45;
    *(v32 + 5) = v33;
    *(v32 + 6) = v19;
    (*(v28 + 32))(&v32[v31], v27, v29);
    swift_retain_n();
    v34 = sub_24B00A9A4(0, 0, v26, &unk_24B2F0DB8, v32);
    v35 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateFallbackTaskBySubscription;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v19 + v35);
    *(v19 + v35) = 0x8000000000000000;
    sub_24B1CA814(v34, v44, isUniquelyReferenced_nonNull_native);
    *(v19 + v35) = v47;
    swift_endAccess();
  }

  return (*(v16 + 8))(v46, v15);
}

uint64_t sub_24B1F9438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F955C, a6, 0);
}

uint64_t sub_24B1F955C()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B1F961C;
  v3 = v0[9];
  v2 = v0[10];

  return sub_24B09A030(v3, v2, 0, 0, 1);
}

uint64_t sub_24B1F961C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1F9818;
  }

  else
  {
    v7 = sub_24B1F97A4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1F97A4()
{
  sub_24B1F9AB8(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1F9818()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleLocationsProvider: loadingStateTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1F9AB8(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v4 = sub_24B2D1574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = (*(v1 + 176))(v9);
  v14 = v13;
  sub_24B1F81C4(1, a1);
  v15 = sub_24B2D56D4();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  (*(v5 + 16))(v7, a1, v4);
  v16 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider);
  v17 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v2;
  *(v18 + 3) = v16;
  *(v18 + 4) = v12;
  *(v18 + 5) = v14;
  *(v18 + 6) = v2;
  (*(v5 + 32))(&v18[v17], v7, v4);
  swift_retain_n();
  v19 = sub_24B00A9A4(0, 0, v11, &unk_24B2F0E80, v18);
  v20 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateResetTaskBySubscription;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v2 + v20);
  *(v2 + v20) = 0x8000000000000000;
  sub_24B1CA814(v19, v24, isUniquelyReferenced_nonNull_native);
  *(v2 + v20) = v25;
  return swift_endAccess();
}

uint64_t sub_24B1F9D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v9 = sub_24B2D3184();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = sub_24B2D5D64();
  v7[16] = v10;
  v7[17] = *(v10 - 8);
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1F9E88, a6, 0);
}

uint64_t sub_24B1F9E88()
{
  sub_24B2D6084();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_24B1F9F48;
  v3 = v0[9];
  v2 = v0[10];

  return sub_24B09A030(v3, v2, 0, 0, 1);
}

uint64_t sub_24B1F9F48()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 128);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 88);
  if (v0)
  {
    v7 = sub_24B1FA148;
  }

  else
  {
    v7 = sub_24B1FA0D0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24B1FA0D0()
{
  sub_24B1F81C4(0, *(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FA148()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage;
  swift_beginAccess();
  (*(v3 + 16))(v2, v5 + v6, v4);
  v7 = v1;
  v8 = sub_24B2D3164();
  v9 = sub_24B2D5904();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 112);
    v25 = *(v0 + 120);
    v23 = *(v0 + 160);
    v24 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = *(*(v0 + 48) - 8);
    swift_task_alloc();
    (*(v13 + 16))();
    v14 = sub_24B2D53C4();
    v16 = v15;

    v17 = sub_24AFF321C(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_24AFD2000, v8, v9, "PeopleLocationsProvider: loadingStateResetTaskBySubscription was cancelled - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C23D530](v12, -1, -1);
    MEMORY[0x24C23D530](v11, -1, -1);

    (*(v10 + 8))(v25, v24);
  }

  else
  {
    v19 = *(v0 + 112);
    v18 = *(v0 + 120);
    v20 = *(v0 + 104);

    (*(v19 + 8))(v18, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24B1FA3E8(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v4 = sub_24B2D1574();
  *(v3 + 112) = v4;
  v5 = *(v4 - 8);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 + 64);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = *(type metadata accessor for PeopleLocationsProvider.Subscription(0) - 8);
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FA574, v2, 0);
}

unint64_t sub_24B1FA574()
{
  v63 = v0 + 2;
  v69 = v0[20];
  v1 = v0[9];
  v79 = v0[10];
  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v6 = OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_loadingStateResetTaskBySubscription;
  v7 = (63 - v4) >> 6;
  v77 = v0[15];
  v64 = (v77 + 8);
  v68 = v0[9];

  v9 = 0;
  v65 = v7;
  v66 = v2;
  v76 = v0;
  v67 = v6;
  while (v5)
  {
LABEL_11:
    v14 = v0[21];
    v15 = v0[18];
    v16 = v0[19];
    v74 = v0[17];
    v17 = v0[14];
    v78 = v0[13];
    v75 = v0[12];
    v71 = v76[10];
    sub_24B1FBCE0(*(v68 + 48) + *(v69 + 72) * (__clz(__rbit64(v5)) | (v9 << 6)), v14, type metadata accessor for PeopleLocationsProvider.Subscription);
    v18 = *(v77 + 16);
    v18(v16, v14, v17);
    v19 = sub_24B1FBA64(v14);
    v20 = (*(v79 + 176))(v19);
    v72 = v21;
    v73 = v20;
    sub_24B1F81C4(1, v16);
    v18(v15, v16, v17);
    v22 = sub_24B2D56D4();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v78, 1, 1, v22);
    v70 = v18;
    v18(v74, v16, v17);
    v24 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider);
    v25 = (*(v77 + 80) + 56) & ~*(v77 + 80);
    v26 = swift_allocObject();
    *(v26 + 2) = v71;
    *(v26 + 3) = v24;
    *(v26 + 4) = v73;
    *(v26 + 5) = v72;
    *(v26 + 6) = v71;
    (*(v77 + 32))(&v26[v25], v74, v17);
    sub_24B008890(v78, v75, &qword_27EFC8580);
    LODWORD(v25) = (*(v23 + 48))(v75, 1, v22);
    v0 = v76;
    swift_retain_n();

    v27 = v76[12];
    if (v25 == 1)
    {
      sub_24AFF8258(v76[12], &qword_27EFC8580);
    }

    else
    {
      sub_24B2D56C4();
      (*(v23 + 8))(v27, v22);
    }

    v28 = *(v26 + 2);
    swift_unknownObjectRetain();

    if (v28)
    {
      swift_getObjectType();
      v29 = sub_24B2D5604();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    sub_24AFF8258(v76[13], &qword_27EFC8580);
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_24B2F0C28;
    *(v32 + 24) = v26;
    if (v31 | v29)
    {
      *v63 = 0;
      v63[1] = 0;
      v76[4] = v29;
      v76[5] = v31;
    }

    v33 = v76[18];
    v34 = swift_task_create();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v79 + v67);
    *(v79 + v67) = 0x8000000000000000;
    result = sub_24B18146C(v33);
    v38 = v36[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v42 = v37;
    if (v36[3] < v41)
    {
      v43 = v76[18];
      sub_24B1C5F44(v41, isUniquelyReferenced_nonNull_native);
      result = sub_24B18146C(v43);
      if ((v42 & 1) != (v44 & 1))
      {

        return sub_24B2D6054();
      }

LABEL_24:
      if (v42)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v50 = result;
    sub_24B1CE380();
    result = v50;
    if (v42)
    {
LABEL_4:
      *(v36[7] + 8 * result) = v34;

      goto LABEL_5;
    }

LABEL_25:
    v45 = v76[18];
    v46 = v76[14];
    v36[(result >> 6) + 8] |= 1 << result;
    v47 = result;
    result = v70(v36[6] + *(v77 + 72) * result, v45, v46);
    *(v36[7] + 8 * v47) = v34;
    v48 = v36[2];
    v40 = __OFADD__(v48, 1);
    v49 = v48 + 1;
    if (v40)
    {
      goto LABEL_41;
    }

    v36[2] = v49;
LABEL_5:
    v5 &= v5 - 1;
    v10 = v76[19];
    v11 = v76[14];
    v12 = *v64;
    (*v64)(v76[18], v11);
    *(v79 + v67) = v36;
    swift_endAccess();
    result = v12(v10, v11);
    v7 = v65;
    v2 = v66;
  }

  while (1)
  {
    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v13 >= v7)
    {
      break;
    }

    v5 = *(v2 + 8 * v13);
    ++v9;
    if (v5)
    {
      v9 = v13;
      goto LABEL_11;
    }
  }

  v51 = v0[10];
  v52 = v0[11];
  v53 = *(v0 + 192);
  v54 = v0[9];

  v55 = sub_24B1F3B68(v54);
  v56 = sub_24B1D0FC4(v55);

  v57 = sub_24B2D56D4();
  (*(*(v57 - 8) + 56))(v52, 1, 1, v57);
  v58 = sub_24B1FC530(&qword_27EFCE438, type metadata accessor for PeopleLocationsProvider);
  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  *(v59 + 24) = v58;
  *(v59 + 32) = v51;
  *(v59 + 40) = v56;
  *(v59 + 48) = 1;
  swift_retain_n();
  sub_24B00A9A4(0, 0, v52, &unk_24B2F0C40, v59);

  if (v53 == 1)
  {
    v60 = swift_task_alloc();
    v0[22] = v60;
    *v60 = v0;
    v60[1] = sub_24B1DD3B4;

    return sub_24B1F4FCC();
  }

  else
  {
    v80 = (*(v0[10] + 144) + **(v0[10] + 144));
    v61 = swift_task_alloc();
    v0[23] = v61;
    *v61 = v0;
    v61[1] = sub_24B1DD644;
    v62 = v0[9];

    return v80(v62);
  }
}

uint64_t sub_24B1FADF4(uint64_t a1, char a2)
{
  *(v3 + 184) = a2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCCCA8);
  *(v3 + 120) = swift_task_alloc();
  v4 = sub_24B2D1574();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = *(type metadata accessor for PeopleLocationsProvider.Subscription(0) - 8);
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FAF54, v2, 0);
}

uint64_t sub_24B1FAF54()
{
  v4 = (*(v0[14] + 160) + **(v0[14] + 160));
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_24B1FB048;
  v2 = v0[13];

  return v4(v2);
}

uint64_t sub_24B1FB048()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 112);

    return MEMORY[0x2822009F8](sub_24B1FB1AC, v6, 0);
  }
}

uint64_t sub_24B1FB1AC()
{
  if (*(v0 + 184) == 1)
  {
    sub_24B1F6958();
  }

  v56 = *(v0 + 160);
  v1 = *(v0 + 104);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = *(v0 + 136);
  v6 = -1 << *(*(v0 + 104) + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v2;
  v9 = *(v0 + 112) + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_dataStorage;
  v55 = *(v0 + 104);

  v54 = v9;
  result = swift_beginAccess();
  v11 = 0;
  v12 = (63 - v6) >> 6;
  v57 = (v5 + 16);
  v53 = (v5 + 8);
  v47 = (v0 + 48);
  v48 = v0 + 16;
  v46 = v3;
  while (v8)
  {
    v15 = v11;
LABEL_13:
    v16 = *(v0 + 168);
    v17 = *(v0 + 152);
    v18 = *(v0 + 128);
    sub_24B1FBCE0(*(v55 + 48) + *(v56 + 72) * (__clz(__rbit64(v8)) | (v15 << 6)), v16, type metadata accessor for PeopleLocationsProvider.Subscription);
    v51 = *v57;
    (*v57)(v17, v16, v18);
    sub_24B1FBA64(v16);
    sub_24B1F8D00(v17);
    v19 = *(v54 + 24);
    if (!*(v19 + 16))
    {
      v22 = *(v0 + 120);
LABEL_18:
      v25 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
      (*(*(v25 - 8) + 56))(v22, 1, 1, v25);
      goto LABEL_19;
    }

    v20 = *(v0 + 152);

    v21 = sub_24B18146C(v20);
    v22 = *(v0 + 120);
    if ((v23 & 1) == 0)
    {

      goto LABEL_18;
    }

    v24 = v21;
    v49 = *(v19 + 56);
    v25 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
    v26 = v22;
    v27 = *(v25 - 8);
    sub_24B1FBCE0(v49 + *(v27 + 72) * v24, v26, type metadata accessor for PeopleLocationsProvider.LocationState);

    v28 = v26;
    v3 = v46;
    (*(v27 + 56))(v28, 0, 1, v25);
LABEL_19:
    v8 &= v8 - 1;
    v29 = *(v0 + 120);
    type metadata accessor for PeopleLocationsProvider.LocationState(0);
    v30 = *(*(v25 - 8) + 48);
    if (v30(v29, 1, v25))
    {
      v13 = *(v0 + 152);
      v14 = *(v0 + 128);
      sub_24AFF8258(v29, &qword_27EFCCCA8);
      result = (*v53)(v13, v14);
      v11 = v15;
    }

    else
    {
      v31 = *(v29 + *(v25 + 20));
      sub_24AFF8258(v29, &qword_27EFCCCA8);
      if (v31)
      {
        v51(*(v0 + 144), *(v0 + 152), *(v0 + 128));
        v32 = sub_24B1F4C84();
        v50 = v33;
        v52 = v32;
        v58 = *(v33 + 24);

        v43 = sub_24B1D6E88(v47);
        v35 = v34;
        v36 = v30(v34, 1, v25);
        v37 = *(v0 + 144);
        v45 = *(v0 + 152);
        v38 = *(v0 + 128);
        if (v36)
        {
          (v43)(v47, 0);
          v44 = *v53;
          (*v53)(v37, v38);
          v39 = *(v50 + 24);
          *(v50 + 24) = v58;
          sub_24B1D5E44(v39);

          (v52)(v48, 0);
          result = v44(v45, v38);
        }

        else
        {
          *(v35 + *(v25 + 20)) = 0;
          (v43)(v47, 0);
          v40 = *v53;
          (*v53)(v37, v38);
          v41 = *(v50 + 24);
          *(v50 + 24) = v58;
          sub_24B1D5E44(v41);

          (v52)(v48, 0);
          result = v40(v45, v38);
        }

        v11 = v15;
      }

      else
      {
        result = (*v53)(*(v0 + 152), *(v0 + 128));
        v11 = v15;
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v12)
    {
      break;
    }

    v8 = *(v3 + 8 * v15);
    ++v11;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t PeopleLocationsProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore23PeopleLocationsProvider_subscriptionsStorage, &qword_27EFCC7D0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PeopleLocationsProvider.__deallocating_deinit()
{
  PeopleLocationsProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B1FB8BC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFD370;

  return sub_24B1FA3E8(a1, a2);
}

uint64_t sub_24B1FB960(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1FADF4(a1, a2);
}

uint64_t sub_24B1FBA64(uint64_t a1)
{
  v2 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PeopleLocationsProvider()
{
  result = qword_27EFCE468;
  if (!qword_27EFCE468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B1FBB0C(uint64_t a1)
{
  v4 = *(sub_24B2D1574() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B1F9D64(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B1FBC18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AFFDE44;

  return sub_24B1F6A44(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24B1FBCE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B1FBD48(uint64_t a1)
{
  *(a1 + 8) = sub_24B1FC530(&qword_27EFCE440, type metadata accessor for PeopleLocationsProvider);
  result = sub_24B1FC530(&qword_27EFCE448, type metadata accessor for PeopleLocationsProvider);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24B1FBE18()
{
  result = qword_27EFCE450;
  if (!qword_27EFCE450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE458);
    sub_24B1FC530(&qword_27EFCE460, type metadata accessor for PeopleLocationsProvider.LocationState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE450);
  }

  return result;
}

void sub_24B1FBED4()
{
  sub_24B1FC30C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PeopleLocationsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 344) + **(*v2 + 344));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFD370;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PeopleLocationsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 352) + **(*v2 + 352));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24AFFDE44;

  return v8(a1, a2);
}

void sub_24B1FC30C()
{
  if (!qword_27EFCE478)
  {
    type metadata accessor for PeopleLocationsProvider.Subscription(255);
    sub_24B1FC530(&qword_27EFCC7D8, type metadata accessor for PeopleLocationsProvider.Subscription);
    v0 = type metadata accessor for SubscriptionManagerStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCE478);
    }
  }
}

uint64_t sub_24B1FC3A0(uint64_t a1)
{
  v4 = *(sub_24B2D1574() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B1F9438(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24B1FC4AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocationsProvider.LocationState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B1FC530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B1FC578(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDD00) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24AFFD370;

  return sub_24B18D88C(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_24B1FC6B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFDE44;

  return sub_24B1F56FC(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_24B1FC778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE480);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_27()
{
  v1 = sub_24B2D1574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

__n128 PeopleLocationsProvider.Dependencies.init<A>(fetchLocations:observeLocationsChanges:addSubscriptions:removeSubscriptions:loadingStateResetDuration:loadingStateFallbackDuration:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14)
{
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  v20 = swift_allocObject();
  v20[2] = a13;
  v20[3] = a14;
  v20[4] = a3;
  v20[5] = a4;
  a9[1].n128_u64[0] = &unk_24B2F0E90;
  a9[1].n128_u64[1] = v20;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t sub_24B1FC974(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24AFFD370;

  return sub_24B183450(a1, v7, v6, v4, v5);
}

uint64_t sub_24B1FCA50(uint64_t a1)
{
  v57 = sub_24B2D1A14();
  v3 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = v38 - v6;
  v54 = sub_24B2D1574();
  v7 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_24B2D1A24();
  MEMORY[0x28223BE20](v49);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v38[1] = v1;
  v62 = MEMORY[0x277D84F90];
  v58 = v11;
  sub_24B007B04(0, v14, 0);
  v15 = v62;
  v16 = a1 + 56;
  result = sub_24B2D5B54();
  v18 = result;
  v19 = 0;
  v47 = (v7 + 16);
  v46 = *MEMORY[0x277D08D18];
  v45 = (v3 + 104);
  v44 = (v3 + 32);
  v43 = *MEMORY[0x277D08D20];
  v42 = v58 + 32;
  v39 = a1 + 64;
  v40 = v14;
  v48 = a1 + 56;
  v41 = a1;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    v21 = v18 >> 6;
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_24;
    }

    v22 = *(a1 + 36);
    v59 = v19;
    v60 = v22;
    v23 = v50;
    sub_24B1FF128(*(a1 + 48) + *(v51 + 72) * v18, v50);
    v24 = *v47;
    v61 = v15;
    v24(v53, v23, v54);
    if (*(v23 + *(v52 + 20)))
    {
      v25 = v43;
    }

    else
    {
      v25 = v46;
    }

    v26 = v56;
    v27 = v13;
    v28 = v57;
    (*v45)(v56, v25, v57);
    (*v44)(v55, v26, v28);
    v15 = v61;
    sub_24B2D1A04();
    sub_24B1FBA64(v23);
    v62 = v15;
    v30 = *(v15 + 16);
    v29 = *(v15 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_24B007B04(v29 > 1, v30 + 1, 1);
      v15 = v62;
    }

    *(v15 + 16) = v30 + 1;
    result = (*(v58 + 32))(v15 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v30, v27, v49);
    a1 = v41;
    v20 = 1 << *(v41 + 32);
    v16 = v48;
    if (v18 >= v20)
    {
      goto LABEL_25;
    }

    v31 = *(v48 + 8 * v21);
    if ((v31 & (1 << v18)) == 0)
    {
      goto LABEL_26;
    }

    if (v60 != *(v41 + 36))
    {
      goto LABEL_27;
    }

    v13 = v27;
    v32 = v31 & (-2 << (v18 & 0x3F));
    if (v32)
    {
      v20 = __clz(__rbit64(v32)) | v18 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v33 = v21 << 6;
      v34 = v21 + 1;
      v35 = (v39 + 8 * v21);
      while (v34 < (v20 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_24B040A60(v18, v60, 0);
          v20 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_24B040A60(v18, v60, 0);
    }

LABEL_4:
    v19 = v59 + 1;
    v18 = v20;
    if (v59 + 1 == v40)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_24B1FCFD4(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE498);
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v2[6] = v6;
  *v6 = v2;
  v6[1] = sub_24B1FD140;

  return v8(v5);
}

uint64_t sub_24B1FD140()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v6 = v2[4];
    v5 = v2[5];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];
    v7[3] = v8;
    v7[4] = sub_24B039184(&qword_27EFCE4A0, &qword_27EFCE498);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
    (*(v6 + 32))(boxed_opaque_existential_0, v5, v8);
  }

  v4 = v3[1];

  return v4();
}

uint64_t static PeopleLocationsProvider.Dependencies.liveDaemon()@<X0>(void *a1@<X8>)
{
  v2 = sub_24B2D2674();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  sub_24B2D3174();
  sub_24B2D2AE4();
  (*(v3 + 104))(v5, *MEMORY[0x277D09048], v2);
  v13 = sub_24B2D2954();
  (*(v3 + 8))(v5, v2);
  v14 = *(v7 + 32);
  v14(v9, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v14((v16 + v15), v9, v6);
  *a1 = &unk_24B2F0EF8;
  a1[1] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_24B2F0F08;
  *(v17 + 24) = v13;
  a1[2] = &unk_24B2F0F38;
  a1[3] = v17;
  a1[4] = &unk_24B2F0F18;
  a1[5] = v13;
  a1[6] = &unk_24B2F0F28;
  a1[7] = v13;
  a1[8] = sub_24B1FEF20;
  a1[9] = 0;
  a1[10] = sub_24B1FEF34;
  a1[11] = 0;
  return swift_retain_n();
}

uint64_t sub_24B1FD5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24B2D19F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FD66C, 0, 0);
}

uint64_t sub_24B1FD66C()
{
  v1 = *(v0 + 48);
  **(v0 + 56) = *(v0 + 16);
  (*(v1 + 104))();

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_24B1FD740;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);

  return MEMORY[0x28215F4D0](v3, v4);
}

uint64_t sub_24B1FD740(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_24B1FDA7C;
  }

  else
  {
    v7 = sub_24B1FD8B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24B1FD8B4()
{
  v12 = v0;

  v1 = sub_24B2D3164();
  v2 = sub_24B2D5904();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v11 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_24AFF321C(0x6D6561446576696CLL, 0xEC00000029286E6FLL, &v11);
    *(v3 + 12) = 2080;
    sub_24B2D1574();
    sub_24B2D1944();
    sub_24B1FF18C();
    v5 = sub_24B2D51F4();
    v7 = sub_24AFF321C(v5, v6, &v11);

    *(v3 + 14) = v7;
    _os_log_impl(&dword_24AFD2000, v1, v2, "%s - result %s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v4, -1, -1);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v8 = *(v0 + 8);
  v9 = *(v0 + 72);

  return v8(v9);
}

uint64_t sub_24B1FDA7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FDAE0(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B0384BC;

  return sub_24B1FD5A8(a1, v6, v1 + v5);
}

uint64_t sub_24B1FDBC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_24B2D2654();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8968);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FDCBC, 0, 0);
}

uint64_t sub_24B1FDCBC()
{
  (*(v0[5] + 104))(v0[6], *MEMORY[0x277D08FE0], v0[4]);
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_24B1FDD8C;
  v2 = v0[8];
  v3 = v0[6];
  v4 = MEMORY[0x277D84F90];

  return MEMORY[0x28215FB18](v2, v4, v3, 1);
}

uint64_t sub_24B1FDD8C()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24B1FDFFC;
  }

  else
  {
    v5 = sub_24B1FDEFC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24B1FDEFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE4A8);
  sub_24B039184(&qword_27EFC8990, &qword_27EFC8968);
  sub_24B2D5D84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FDFFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FE06C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFD370;

  return sub_24B1FDBC0(a1, v1);
}

uint64_t sub_24B1FE108(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE348);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v3 = sub_24B2D1574();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_24B2D28E4();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_24B2D2C04();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v6 = sub_24B2D2794();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B1FE338, 0, 0);
}

uint64_t sub_24B1FE338()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D09130])
  {
    v5 = v0[19];
    v6 = v0[16];
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[13];
    v10 = v0[11];
    v54 = v0[10];
    v11 = v0[7];
    v56 = v0[6];
    v12 = v0[5];
    (*(v0[18] + 96))(v5, v0[17]);
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC89C0) + 48);
    (*(v8 + 32))(v6, v5, v7);
    (*(v10 + 32))(v9, v5 + v13, v54);
    sub_24B2D2894();
    v14 = (*(v11 + 48))(v12, 1, v56);
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v20 = v0[10];
    v19 = v0[11];
    if (v14 == 1)
    {
      v21 = v0[2];
      sub_24AFF8258(v0[5], &qword_27EFCE348);
      (*(v19 + 8))(v18, v20);
      (*(v16 + 8))(v15, v17);
      *v21 = MEMORY[0x277D84F90];
    }

    else
    {
      v57 = v0[14];
      v36 = v0[7];
      v51 = v0[6];
      v53 = v0[13];
      v55 = v0[2];
      v37 = v0[9];
      (*(v36 + 32))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE4B0);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_24B2DE430;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE4B8);
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE98) - 8);
      v39 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_24B2DE430;
      v41 = v40 + v39;
      (*(v36 + 16))(v41, v37, v51);
      sub_24B2D2B44();
      v42 = sub_24B195218(v40);
      swift_setDeallocating();
      sub_24AFF8258(v41, &qword_27EFCDE98);
      swift_deallocClassInstance();
      *(v52 + 32) = v42;
      *(v52 + 40) = 1;
      (*(v36 + 8))(v37, v51);
      (*(v19 + 8))(v53, v20);
      (*(v16 + 8))(v15, v57);
      *v55 = v52;
    }
  }

  else
  {
    v22 = v0[18];
    v23 = v0[19];
    v24 = v0[17];
    if (v4 == *MEMORY[0x277D09128])
    {
      v26 = v0[11];
      v25 = v0[12];
      v27 = v0[10];
      v28 = v0[6];
      v29 = v0[7];
      v30 = v0[4];
      (*(v22 + 96))(v0[19], v24);
      (*(v26 + 32))(v25, v23, v27);
      sub_24B2D2894();
      v31 = (*(v29 + 48))(v30, 1, v28);
      v33 = v0[11];
      v32 = v0[12];
      v34 = v0[10];
      if (v31 == 1)
      {
        v35 = v0[2];
        sub_24AFF8258(v0[4], &qword_27EFCE348);
        (*(v33 + 8))(v32, v34);
        *v35 = MEMORY[0x277D84F90];
      }

      else
      {
        v44 = v0[7];
        v43 = v0[8];
        v45 = v0[6];
        v58 = v0[2];
        (*(v44 + 32))(v43, v0[4], v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE4B0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_24B2DE430;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC80A0);
        v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_24B2DE430;
        (*(v44 + 16))(v48 + v47, v43, v45);
        *(v46 + 32) = v48;
        *(v46 + 40) = 2;
        (*(v44 + 8))(v43, v45);
        (*(v33 + 8))(v32, v34);
        *v58 = v46;
      }
    }

    else
    {
      *v0[2] = MEMORY[0x277D84F90];
      (*(v22 + 8))(v23, v24);
    }
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_24B1FE94C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B1FE96C, 0, 0);
}

uint64_t sub_24B1FE96C()
{
  v1 = sub_24B1FCA50(v0[2]);
  v2 = sub_24B1D1160(v1);
  v0[4] = v2;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_24B1FEA30;

  return MEMORY[0x28215F4C0](v2);
}

uint64_t sub_24B1FEA30()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B1FEB6C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B1FEB6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B1FEBD0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFDE44;

  return sub_24B1FE94C(a1, v1);
}

uint64_t sub_24B1FEC68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B1FEC88, 0, 0);
}

uint64_t sub_24B1FEC88()
{
  v1 = sub_24B1FCA50(v0[2]);
  v2 = sub_24B1D1160(v1);
  v0[4] = v2;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_24B1FED4C;

  return MEMORY[0x28215F4C8](v2);
}

uint64_t sub_24B1FED4C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24B1FF1E4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_24B1FEE88(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24AFFDE44;

  return sub_24B1FEC68(a1, v1);
}

unint64_t sub_24B1FEF34(uint64_t a1)
{
  v2 = sub_24B2D18D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D08CC8])
  {
    return 0xA055690D9DB80000;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_24B1FF070(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AFFDE44;

  return sub_24B1FCFD4(a1, v4);
}

uint64_t sub_24B1FF128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B1FF18C()
{
  result = qword_27EFCC6C0;
  if (!qword_27EFCC6C0)
  {
    sub_24B2D1574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCC6C0);
  }

  return result;
}

uint64_t PeopleLocationsProvider.Subscription.init(identifier:priority:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_24B2D1574();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t PeopleLocationsProvider.Subscription.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t PeopleLocationsProvider.Subscription.Priority.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_24B2D5E14();

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

uint64_t PeopleLocationsProvider.Subscription.Priority.rawValue.getter()
{
  if (*v0)
  {
    return 0x776F6C6C616873;
  }

  else
  {
    return 1702259052;
  }
}

uint64_t sub_24B1FF368(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776F6C6C616873;
  }

  else
  {
    v3 = 1702259052;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x776F6C6C616873;
  }

  else
  {
    v5 = 1702259052;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B2D6004();
  }

  return v8 & 1;
}

uint64_t sub_24B1FF408()
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FF484()
{
  sub_24B2D5404();
}

uint64_t sub_24B1FF4EC()
{
  sub_24B2D60E4();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FF564@<X0>(char *a1@<X8>)
{
  v2 = sub_24B2D5E14();

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

void sub_24B1FF5C4(uint64_t *a1@<X8>)
{
  v2 = 1702259052;
  if (*v1)
  {
    v2 = 0x776F6C6C616873;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PeopleLocationsProvider.Subscription.debugDescription.getter()
{
  sub_24B2D5C34();

  strcpy(v8, "Subscription(");
  HIWORD(v8[1]) = -4864;
  v1 = type metadata accessor for PeopleLocationsProvider.Subscription(0);
  v2 = *(v0 + *(v1 + 20)) == 0;
  if (*(v0 + *(v1 + 20)))
  {
    v3 = 0x776F6C6C616873;
  }

  else
  {
    v3 = 1702259052;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  MEMORY[0x24C23BC10](v3, v4);

  v5 = MEMORY[0x24C23BC10](58, 0xE100000000000000);
  v6 = MEMORY[0x24C237D40](v5);
  MEMORY[0x24C23BC10](v6);

  MEMORY[0x24C23BC10](41, 0xE100000000000000);
  return v8[0];
}

uint64_t PeopleLocationsProvider.Subscription.hash(into:)()
{
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  type metadata accessor for PeopleLocationsProvider.Subscription(0);
  sub_24B2D5404();
}

uint64_t PeopleLocationsProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  type metadata accessor for PeopleLocationsProvider.Subscription(0);
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FF8AC()
{
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FF988()
{
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  sub_24B2D5404();
}

uint64_t sub_24B1FFA58()
{
  sub_24B2D60E4();
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6C0, MEMORY[0x277D08B50]);
  sub_24B2D5254();
  sub_24B2D5404();

  return sub_24B2D6124();
}

uint64_t sub_24B1FFCB4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t PeopleLocationsProvider.LocationState.Request.timestamp.setter(uint64_t a1)
{
  v3 = sub_24B2D24A4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PeopleLocationsProvider.LocationState.Result.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);

  return sub_24B1418C4(v3, a1);
}

uint64_t PeopleLocationsProvider.LocationState.Result.location.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);

  return sub_24B1E71FC(a1, v3);
}

uint64_t _s12FindMyUICore23PeopleLocationsProviderC12SubscriptionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_24B2D1574();
  sub_24B200868(&qword_27EFCC6D8, MEMORY[0x277D08B50]);
  sub_24B2D54E4();
  sub_24B2D54E4();
  if (v18 == v16 && v19 == v17)
  {
  }

  else
  {
    v5 = sub_24B2D6004();

    v6 = 0;
    if ((v5 & 1) == 0)
    {
      return v6 & 1;
    }
  }

  v7 = *(type metadata accessor for PeopleLocationsProvider.Subscription(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8)
  {
    v10 = 0x776F6C6C616873;
  }

  else
  {
    v10 = 1702259052;
  }

  if (v8)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v9)
  {
    v12 = 0x776F6C6C616873;
  }

  else
  {
    v12 = 1702259052;
  }

  if (v9)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_24B2D6004();
  }

  return v6 & 1;
}

uint64_t sub_24B200084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B20010C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

BOOL _s12FindMyUICore23PeopleLocationsProviderC13LocationStateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B2D1944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  if ((_s12FindMyUICore13ItemsProviderC9InfoStateV7RequestV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for PeopleLocationsProvider.LocationState(0) + 20);
  v15 = (a1 + v14);
  v16 = a2 + v14;
  if (*v15 != *(a2 + v14))
  {
    return 0;
  }

  v17 = *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);
  v18 = *(v11 + 48);
  sub_24B1418C4(&v15[v17], v13);
  sub_24B1418C4(v16 + v17, &v13[v18]);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB288);
      return 1;
    }

    goto LABEL_8;
  }

  sub_24B1418C4(v13, v10);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_24AFF8258(v13, &qword_27EFCC660);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v18], v4);
  sub_24B200868(&qword_27EFCC670, MEMORY[0x277D08CD0]);
  v21 = sub_24B2D52A4();
  v22 = *(v5 + 8);
  v22(v7, v4);
  v22(v10, v4);
  sub_24AFF8258(v13, &qword_27EFCB288);
  return (v21 & 1) != 0;
}

BOOL _s12FindMyUICore23PeopleLocationsProviderC13LocationStateV6ResultV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_24B2D1944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCB288);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC660);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = *(type metadata accessor for PeopleLocationsProvider.LocationState.Result(0) + 20);
  v15 = *(v11 + 48);
  sub_24B1418C4(&a1[v14], v13);
  sub_24B1418C4(&a2[v14], &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_24AFF8258(v13, &qword_27EFCB288);
      return 1;
    }

    goto LABEL_7;
  }

  sub_24B1418C4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_24AFF8258(v13, &qword_27EFCC660);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_24B200868(&qword_27EFCC670, MEMORY[0x277D08CD0]);
  v18 = sub_24B2D52A4();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_24AFF8258(v13, &qword_27EFCB288);
  return (v18 & 1) != 0;
}

unint64_t sub_24B2007CC()
{
  result = qword_27EFCE4C0;
  if (!qword_27EFCE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE4C0);
  }

  return result;
}

uint64_t sub_24B200868(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B2008D8()
{
  result = sub_24B2D1574();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24B200984()
{
  result = type metadata accessor for PeopleLocationsProvider.LocationState.Request(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PeopleLocationsProvider.LocationState.Result(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24B200B0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - v12;
  sub_24B008890(a1, &v17 - v12, a5);
  v14 = *a2;
  v15 = *a7;
  swift_beginAccess();
  sub_24B068E10(v13, v14 + v15, a5);
  return swift_endAccess();
}

uint64_t sub_24B200C00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_24B008890(v3 + v6, a3, a2);
}

uint64_t sub_24B200C88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_24B068E10(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t UserLocationProvider.__allocating_init(dependencies:)(__int128 *a1)
{
  v2 = swift_allocObject();
  UserLocationProvider.init(dependencies:)(a1);
  return v2;
}

uint64_t UserLocationProvider.init(dependencies:)(__int128 *a1)
{
  v3 = sub_24B2D2504();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDB58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  swift_defaultActor_initialize();
  v10 = v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838);
  v12 = v11[9];
  v13 = MEMORY[0x277D84F90];
  *(v10 + v12) = sub_24B193C80(MEMORY[0x277D84F90]);
  *(v10 + v11[10]) = MEMORY[0x277D84FA0];
  *(v10 + v11[11]) = 0;
  sub_24B2D3174();
  v14 = v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  v15 = sub_24B2D1C44();
  v16 = *(*(v15 - 8) + 56);
  v17 = *a1;
  v24 = a1[1];
  v25 = v17;
  v16(v9, 1, 1, v15);
  *(v14 + 16) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880);
  v19 = *(v18 + 52);
  *(v14 + v19) = sub_24B1933E8(v13);
  sub_24B202A90(v9, v14 + *(v18 + 48));
  *v14 = 0xD00000000000001BLL;
  *(v14 + 8) = 0x800000024B2DCB90;
  v20 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_taskQueue;
  sub_24B2D12D4();
  v21 = sub_24B2D1294();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_24B2D24F4();
  *(v1 + v20) = sub_24B2D12B4();
  *(v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher) = 0;
  v22 = v24;
  *(v1 + 112) = v25;
  *(v1 + 128) = v22;
  return v1;
}

uint64_t sub_24B2010E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher;
  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher))
  {

    sub_24B2D5764();
  }

  *(v0 + v4) = 0;

  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  *(v0 + v4) = sub_24B00A9A4(0, 0, v3, &unk_24B2F1370, v7);
}

uint64_t sub_24B201264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a4;
  v5 = sub_24B2D3184();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC838);
  v4[38] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  v4[39] = v6;
  v4[40] = *(v6 - 8);
  v4[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE558);
  v4[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B2013FC, 0, 0);
}

uint64_t sub_24B2013FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 112);
    v0[43] = *(Strong + 120);

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[44] = v3;
    *v3 = v0;
    v3[1] = sub_24B20158C;

    return v6(v0 + 7);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24B20158C()
{

  return MEMORY[0x2822009F8](sub_24B2016A4, 0, 0);
}

uint64_t sub_24B2016A4()
{
  sub_24B07F7D0((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  *(v0 + 120) = swift_getAssociatedTypeWitness();
  *(v0 + 128) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((v0 + 96));
  sub_24B2D57B4();

  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, *(v0 + 120));
  v5 = swift_task_alloc();
  *(v0 + 360) = v5;
  *v5 = v0;
  v5[1] = sub_24B201884;
  v6 = *(v0 + 336);

  return MEMORY[0x282200310](v6, 0, 0);
}

uint64_t sub_24B201884()
{

  if (v0)
  {
    v1 = sub_24B201CB4;
  }

  else
  {
    v1 = sub_24B201994;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24B201994()
{
  v1 = v0[42];
  if ((*(v0[40] + 48))(v1, 1, v0[39]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 12));
    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_24B202A90(v1, v0[41]);
    Strong = swift_weakLoadStrong();
    v0[46] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_24B201B60, Strong, 0);
    }

    else
    {
      sub_24AFF8258(v0[41], &qword_27EFCE590);
      __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
      v5 = swift_task_alloc();
      v0[45] = v5;
      *v5 = v0;
      v5[1] = sub_24B201884;
      v6 = v0[42];

      return MEMORY[0x282200310](v6, 0, 0);
    }
  }
}

uint64_t sub_24B201B60()
{
  sub_24B202160(*(v0 + 328));

  return MEMORY[0x2822009F8](sub_24B201BD4, 0, 0);
}

uint64_t sub_24B201BD4()
{
  sub_24AFF8258(v0[41], &qword_27EFCE590);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 12), v0[15]);
  v1 = swift_task_alloc();
  v0[45] = v1;
  *v1 = v0;
  v1[1] = sub_24B201884;
  v2 = v0[42];

  return MEMORY[0x282200310](v2, 0, 0);
}

uint64_t sub_24B201CB4()
{
  v1 = v0[32];
  v0[47] = v1;
  __swift_destroy_boxed_opaque_existential_0((v0 + 12));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[48] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24B201DBC, Strong, 0);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 2));

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_24B201DBC()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 304);
  v3 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  swift_beginAccess();
  sub_24B008890(v1 + v3, v2, &qword_27EFCC838);

  return MEMORY[0x2822009F8](sub_24B201E6C, 0, 0);
}

uint64_t sub_24B201E6C()
{
  v23 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 304);
  (*(*(v0 + 288) + 16))(*(v0 + 296), v2, *(v0 + 280));
  sub_24AFF8258(v2, &qword_27EFCC838);
  v3 = v1;
  v4 = sub_24B2D3164();
  v5 = sub_24B2D5914();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 288);
    v21 = *(v0 + 296);
    v19 = *(v0 + 376);
    v20 = *(v0 + 280);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_24AFF321C(0x7274537472617473, 0xED000029286D6165, &v22);
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v9 = *(*(v0 + 240) - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = sub_24B2D53C4();
    v12 = v11;

    v13 = sub_24AFF321C(v10, v12, &v22);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_24AFD2000, v4, v5, "UserLocationProvider: %s - Error %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v8, -1, -1);
    MEMORY[0x24C23D530](v7, -1, -1);

    (*(v6 + 8))(v21, v20);
  }

  else
  {
    v15 = *(v0 + 288);
    v14 = *(v0 + 296);
    v16 = *(v0 + 280);

    (*(v15 + 8))(v14, v16);
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_24B202160(uint64_t a1)
{
  v2 = v1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  MEMORY[0x28223BE20](v35);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = sub_24B2D3184();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage;
  swift_beginAccess();
  v17 = *(v13 + 16);
  v36 = v12;
  v17(v15, v2 + v16, v12);
  v37 = a1;
  sub_24B008890(a1, v11, &qword_27EFCE590);
  v18 = sub_24B2D3164();
  v19 = sub_24B2D5934();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v2;
    v21 = v20;
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v21 = 136315394;
    *(v21 + 4) = sub_24AFF321C(0xD00000000000001FLL, 0x800000024B2DCC20, v38);
    *(v21 + 12) = 2080;
    sub_24B008890(v11, v8, &qword_27EFCE590);
    v22 = v5;
    v23 = sub_24B2D53C4();
    v25 = v24;
    sub_24AFF8258(v11, &qword_27EFCE590);
    v26 = sub_24AFF321C(v23, v25, v38);

    *(v21 + 14) = v26;
    v5 = v22;
    _os_log_impl(&dword_24AFD2000, v18, v19, "UserLocationProvider: %s - %s", v21, 0x16u);
    v27 = v33;
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v27, -1, -1);
    v28 = v21;
    v2 = v34;
    MEMORY[0x24C23D530](v28, -1, -1);
  }

  else
  {

    sub_24AFF8258(v11, &qword_27EFCE590);
  }

  (*(v13 + 8))(v15, v36);
  sub_24B008890(v37, v8, &qword_27EFCE590);
  v29 = v2 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage;
  swift_beginAccess();
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCC880) + 48);
  sub_24B008890(v29 + v30, v5, &qword_27EFCE590);
  sub_24B203090(v8, v29 + v30);
  sub_24B1D6300(v5);
  sub_24AFF8258(v5, &qword_27EFCE590);
  sub_24AFF8258(v8, &qword_27EFCE590);
  return swift_endAccess();
}

uint64_t sub_24B202558(uint64_t a1, char a2)
{
  if (a2)
  {
    return sub_24B2010E4();
  }

  return result;
}

uint64_t sub_24B202564(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher;
    if (*(v2 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher))
    {

      sub_24B2D5764();
    }

    *(v2 + v3) = 0;
  }

  return result;
}

uint64_t UserLocationProvider.deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage, &qword_27EFCC838);
  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage, &qword_27EFCC880);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t UserLocationProvider.__deallocating_deinit()
{

  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_subscriptionsStorage, &qword_27EFCC838);
  sub_24AFF8258(v0 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_dataStorage, &qword_27EFCC880);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B202798(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B2027BC, v2, 0);
}

uint64_t sub_24B2027BC()
{
  if (*(v0 + 24) == 1)
  {
    sub_24B2010E4();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24B20282C(uint64_t a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B202850, v2, 0);
}

uint64_t sub_24B202850()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    v2 = OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher;
    if (*(v1 + OBJC_IVAR____TtC12FindMyUICore20UserLocationProvider_valuePublisher))
    {

      sub_24B2D5764();
    }

    *(v1 + v2) = 0;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24B202934@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_24B008890(v3 + v6, a3, a2);
}

uint64_t sub_24B2029BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *a4;
  swift_beginAccess();
  sub_24B068E10(a1, v5 + v8, a5);
  return swift_endAccess();
}

uint64_t sub_24B202A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B202B00(uint64_t a1)
{
  *(a1 + 8) = sub_24B202C98(&qword_27EFCE518, type metadata accessor for UserLocationProvider);
  result = sub_24B202C98(&qword_27EFCE520, type metadata accessor for UserLocationProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for UserLocationProvider()
{
  result = qword_27EFCE538;
  if (!qword_27EFCE538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24B202BE4()
{
  result = qword_27EFCE530;
  if (!qword_27EFCE530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE590);
    sub_24B202C98(&qword_27EFCE220, MEMORY[0x277D08DB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE530);
  }

  return result;
}

uint64_t sub_24B202C98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  return sub_24B008890(v6 + v7, a4, a3);
}

void sub_24B202D58()
{
  sub_24B202FBC();
  if (v0 <= 0x3F)
  {
    sub_24B203018();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24B202FBC()
{
  if (!qword_27EFCE548)
  {
    sub_24B137F64();
    v0 = type metadata accessor for SubscriptionManagerStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCE548);
    }
  }
}

void sub_24B203018()
{
  if (!qword_27EFCE550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFCE590);
    sub_24B202BE4();
    v0 = type metadata accessor for DataObservableStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_27EFCE550);
    }
  }
}

uint64_t sub_24B203090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B203100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFD370;

  return sub_24B201264(a1, v4, v5, v6);
}

uint64_t UserLocationProvider.Dependencies.thisDeviceLocationStream.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserLocationProvider.Dependencies.thisDeviceLocationStream.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_24B203240(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 16) = sub_24B203354;
  *(a2 + 24) = v5;
  return result;
}

uint64_t UserLocationProvider.Dependencies.isLocationUseAuthorized.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserLocationProvider.Dependencies.isLocationUseAuthorized.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t UserLocationProvider.Dependencies.init(thisDeviceLocationStream:isLocationUseAuthorized:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_24B20338C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

void static UserLocationProvider.Dependencies.live(customEffectiveBundleIdentifier:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a1;
  v47 = a3;
  v46 = sub_24B2D5194();
  v4 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v48 = &v45 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - v13;
  sub_24B2D3174();
  v15 = sub_24B2D3164();
  v16 = sub_24B2D5934();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24AFD2000, v15, v16, "UserLocationProvider.Dependencies.Live: Will initialize CLLocationManager", v17, 2u);
    MEMORY[0x24C23D530](v17, -1, -1);
  }

  if (a2)
  {
    v18 = objc_opt_self();

    v19 = [v18 mainBundle];
    v20 = [v19 bundleIdentifier];

    if (!v20)
    {

      goto LABEL_12;
    }

    v21 = sub_24B2D5394();
    v23 = v22;

    if (v21 == v50 && v23 == a2)
    {
    }

    else
    {
      v24 = sub_24B2D6004();

      if ((v24 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  v25 = [objc_opt_self() sharedManager];
  if (v25)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_12:
  v26 = [objc_allocWithZone(_s20CoreLocationDelegateCMa()) init];
  sub_24B204324();
  v27 = v46;
  (*(v4 + 104))(v6, *MEMORY[0x277D851C8], v46);
  v28 = sub_24B2D59D4();
  (*(v4 + 8))(v6, v27);
  v29 = objc_allocWithZone(MEMORY[0x277CBFC10]);
  v30 = sub_24B2D5374();
  v31 = [v29 initWithEffectiveBundleIdentifier:v30 delegate:v26 onQueue:v28];

  if (!v31)
  {
    __break(1u);
    return;
  }

  v25 = v31;
LABEL_14:
  v50 = v25;
  v32 = sub_24B2D3164();
  v33 = sub_24B2D5904();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_24AFD2000, v32, v33, "UserLocationProvider.Dependencies.Live: Will initialize CLLocationManager", v34, 2u);
    MEMORY[0x24C23D530](v34, -1, -1);
  }

  v35 = v48;
  (*(v8 + 16))(v48, v14, v7);
  v36 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v37 = (v9 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = *(v8 + 32);
  v39(v38 + v36, v35, v7);
  v40 = v49;
  *(v38 + v37) = v50;
  v39(v40, v14, v7);
  v41 = swift_allocObject();
  v39(v41 + v36, v40, v7);
  v42 = v50;
  *(v41 + v37) = v50;
  v43 = v47;
  *v47 = &unk_24B2F1408;
  v43[1] = v38;
  v43[2] = sub_24B204234;
  v43[3] = v41;

  v44 = v42;
}

uint64_t sub_24B203940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_24B2D25F4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_24B2D2604();
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE560);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE568);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B203AD8, 0, 0);
}

uint64_t sub_24B203AD8()
{
  v1 = sub_24B2D3164();
  v2 = sub_24B2D5934();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AFD2000, v1, v2, "UserLocationProvider.Dependencies.Live: Will start thisDeviceLocationStream", v3, 2u);
    MEMORY[0x24C23D530](v3, -1, -1);
  }

  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[7];
  v13 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];
  v10 = v0[2];

  [v9 requestWhenInUseAuthorization];
  (*(v8 + 104))(v6, *MEMORY[0x277D850A0], v7);
  sub_24B2D25E4();
  (*(v8 + 8))(v6, v7);
  sub_24B204370();
  sub_24B2D5E04();
  sub_24B039184(&qword_27EFCE578, &qword_27EFCE560);
  sub_24B2D57D4();
  (*(v5 + 8))(v4, v13);
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE580);
  v10[4] = sub_24B039184(&qword_27EFCE588, &qword_27EFCE580);
  __swift_allocate_boxed_opaque_existential_0(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE590);
  sub_24B039184(&qword_27EFCE598, &qword_27EFCE568);
  sub_24B2D5D84();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24B203DD8(uint64_t a1)
{
  v4 = *(sub_24B2D3184() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AFFD370;

  return sub_24B203940(a1, v1 + v5, v6);
}

uint64_t sub_24B203F04()
{
  v1 = sub_24B2D2614();
  v2 = v1;
  if (v1)
  {
  }

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t sub_24B203F78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24B203F98, 0, 0);
}

uint64_t sub_24B203F98()
{
  if (sub_24B2D2614())
  {
    sub_24B2D1BC4();
    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(v0 + 16);
  v3 = sub_24B2D1C44();
  (*(*(v3 - 8) + 56))(v2, v1, 1, v3);
  v4 = *(v0 + 8);

  return v4();
}

BOOL sub_24B204054(uint64_t a1, void *a2)
{
  v3 = sub_24B2D3164();
  v4 = sub_24B2D5904();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AFD2000, v3, v4, "UserLocationProvider.Dependencies.Live: Will check authorization status", v5, 2u);
    MEMORY[0x24C23D530](v5, -1, -1);
  }

  v6 = [a2 authorizationStatus];
  v8 = dword_285E48EE0 == v6 || unk_285E48EE4 == v6;
  v9 = sub_24B2D3164();
  v10 = sub_24B2D5904();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_24AFD2000, v9, v10, "UserLocationProvider.Dependencies.Live: Authorization status %{BOOL}d", v11, 8u);
    MEMORY[0x24C23D530](v11, -1, -1);
  }

  return v8;
}

uint64_t objectdestroyTm_28()
{
  v1 = sub_24B2D3184();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

BOOL sub_24B204234()
{
  v1 = *(sub_24B2D3184() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24B204054(v0 + v2, v3);
}

unint64_t sub_24B204324()
{
  result = qword_27EFC8540;
  if (!qword_27EFC8540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EFC8540);
  }

  return result;
}

unint64_t sub_24B204370()
{
  result = qword_27EFCE570;
  if (!qword_27EFCE570)
  {
    sub_24B2D2604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE570);
  }

  return result;
}

uint64_t UserLocationProvider.Subscription.hashValue.getter()
{
  sub_24B2D60E4();
  MEMORY[0x24C23C8D0](0);
  return sub_24B2D6124();
}

unint64_t sub_24B204440()
{
  result = qword_27EFCE5A0;
  if (!qword_27EFCE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFCE5A0);
  }

  return result;
}

uint64_t sub_24B2044A4(uint64_t a1)
{
  v3 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B2D1704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v30 = v1;
  v42 = MEMORY[0x277D84F90];
  sub_24B0076F4(0, v9, 0);
  v10 = v42;
  v11 = a1 + 64;
  result = sub_24B2D5B54();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v36 = (v13 + 16);
  v37 = v13;
  v34 = a1;
  v35 = v13 + 32;
  v31 = a1 + 72;
  v32 = v9;
  v33 = a1 + 64;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v40 = v15;
    v41 = v18;
    v19 = v38;
    sub_24B215C50(*(a1 + 48) + *(v39 + 72) * v14, v38, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    (*v36)(v8, v19, v5);
    sub_24B215CB8(v19, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v42 = v10;
    v20 = v5;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_24B0076F4(v21 > 1, v22 + 1, 1);
      v10 = v42;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v37 + 32))(v10 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v8, v20);
    v16 = 1 << *(v34 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v33;
    v23 = *(v33 + 8 * v17);
    if ((v23 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    v5 = v20;
    a1 = v34;
    if (v41 != *(v34 + 36))
    {
      goto LABEL_24;
    }

    v24 = v23 & (-2 << (v14 & 0x3F));
    if (v24)
    {
      v16 = __clz(__rbit64(v24)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v17 << 6;
      v26 = v17 + 1;
      v27 = (v31 + 8 * v17);
      while (v26 < (v16 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          result = sub_24B040A60(v14, v41, 0);
          v16 = __clz(__rbit64(v28)) + v25;
          goto LABEL_4;
        }
      }

      result = sub_24B040A60(v14, v41, 0);
    }

LABEL_4:
    v15 = v40 + 1;
    v14 = v16;
    if (v40 + 1 == v32)
    {
      return v10;
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

uint64_t sub_24B20486C()
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2584();

  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  sub_24B21547C(v1);
  return v1;
}

uint64_t sub_24B20492C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state);
  v5 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_24B21547C(v4);
}

uint64_t sub_24B2049E4()
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2574();
}

uint64_t sub_24B204AB4()
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2584();

  return *(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort);
}

uint64_t sub_24B204B5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2584();

  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort);
  return result;
}

uint64_t sub_24B204C0C()
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2574();
}

uint64_t sub_24B204CDC(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort) = a2;
  v2 = sub_24B207314();
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2574();
  sub_24B207228(v2);
}

uint64_t sub_24B204DDC()
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2584();

  v1 = *(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);

  return v1;
}

uint64_t sub_24B204E98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2584();

  v4 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  a2[1] = v4;
}

uint64_t sub_24B204F50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  v6 = *(v2 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search) == a1 && *(v2 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search + 8) == a2;
  if (v6 || (sub_24B2D6004() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;

    v7 = sub_24B207314();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
    sub_24B2D2574();
    sub_24B207228(v7);
  }

  else
  {
    v10 = swift_getKeyPath();
    MEMORY[0x28223BE20](v10);
    sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
    sub_24B2D2574();
  }
}

uint64_t sub_24B205168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  *v3 = a2;
  v3[1] = a3;

  v4 = sub_24B207314();
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2574();
  sub_24B207228(v4);
}

uint64_t sub_24B2052A8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2584();

  return *(v2 + *a2);
}

uint64_t sub_24B205348@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2584();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_24B2053FC(unsigned __int8 a1, void *a2)
{
  if (*(v2 + *a2) == a1)
  {
    v3 = sub_24B207314();
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
    sub_24B2D2574();
    sub_24B207228(v3);
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x28223BE20](v5);
    sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
    sub_24B2D2574();
  }
}

uint64_t sub_24B2055C0(uint64_t a1, char a2, void *a3)
{
  *(a1 + *a3) = a2;
  v3 = sub_24B207314();
  swift_getKeyPath();
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2574();
  sub_24B207228(v3);
}

uint64_t sub_24B2056BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC85B8);
  MEMORY[0x28223BE20](v1 - 8);
  v149 = &v124 - v2;
  v3 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v3 - 8);
  v130 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v124 - v9;
  v137 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v147 = &v124 - v13;
  v153 = type metadata accessor for SettingsContactsProvider.Subscription();
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v148 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v124 - v16;
  v17 = type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0);
  MEMORY[0x28223BE20](v17 - 8);
  v131 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8);
  MEMORY[0x28223BE20](v19 - 8);
  v142 = (&v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v141 = &v124 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC7880);
  MEMORY[0x28223BE20](v23 - 8);
  v134 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v143 = &v124 - v26;
  v27 = sub_24B2D1704();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v125 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v152 = &v124 - v31;
  MEMORY[0x28223BE20](v32);
  v155 = (&v124 - v33);
  MEMORY[0x28223BE20](v34);
  v126 = &v124 - v35;
  v140 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v124 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v154 = &v124 - v38;
  sub_24B2D2564();
  v39 = v163;
  v40 = v164;
  swift_getKeyPath();
  v158 = v0;
  v159 = v39;
  v160 = v40;
  v162 = v0;
  sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  sub_24B2D2574();
  sub_24B207228(v39);

  if (*(v0 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController_isAutomaticLocationsSubscriptionEnabled) == 1)
  {
    v132 = v10;
    v133 = v7;
    v127 = v0;
    v42 = *(v0 + 32);
    swift_getKeyPath();
    v163 = v42;
    sub_24B215C08(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
    sub_24B2D2584();

    v43 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
    swift_beginAccess();
    v44 = *(v42 + v43);
    v45 = v44 + 64;
    v46 = 1 << *(v44 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v44 + 64);
    v49 = (v46 + 63) >> 6;
    v156 = (v28 + 32);
    v146 = (v28 + 56);
    v129 = v28;
    v145 = (v28 + 48);
    v144 = v44;
    result = swift_bridgeObjectRetain_n();
    v50 = 0;
    v51 = &qword_27EFCE5F8;
    v128 = MEMORY[0x277D84F90];
    v157 = v27;
    while (1)
    {
      v52 = v50;
      if (!v48)
      {
        break;
      }

LABEL_9:
      v53 = v51;
      sub_24B215C50(*(v144 + 56) + *(v139 + 72) * (__clz(__rbit64(v48)) | (v50 << 6)), v154, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v54 = v138;
      sub_24B215578(v154, v138, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v56 = v142;
      if (EnumCaseMultiPayload == 1)
      {
        sub_24B215578(v54, v142, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v57 = 0;
      }

      else
      {
        v57 = 1;
      }

      v58 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v59 = *(v58 - 8);
      (*(v59 + 56))(v56, v57, 1, v58);
      v60 = v56;
      v61 = v141;
      v51 = v53;
      sub_24B0391CC(v60, v141, v53);
      if ((*(v59 + 48))(v61, 1, v58) == 1)
      {
        sub_24AFF8258(v61, v53);
        v62 = 1;
        v63 = v143;
        v64 = v157;
      }

      else
      {
        v65 = v131;
        sub_24B215C50(v61, v131, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
        sub_24B215CB8(v61, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v64 = v157;
        v63 = v143;
        (*v156)(v143, v65, v157);
        v62 = 0;
      }

      v48 &= v48 - 1;
      (*v146)(v63, v62, 1, v64);

      if ((*v145)(v63, 1, v64) == 1)
      {
        result = sub_24AFF8258(v63, &qword_27EFC7880);
      }

      else
      {
        v66 = *v156;
        (*v156)(v126, v63, v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_24B006728(0, v128[2] + 1, 1, v128);
        }

        v67 = v129;
        v69 = v128[2];
        v68 = v128[3];
        if (v69 >= v68 >> 1)
        {
          v71 = sub_24B006728(v68 > 1, v69 + 1, 1, v128);
          v67 = v129;
          v128 = v71;
        }

        v70 = v128;
        v128[2] = v69 + 1;
        result = (v66)(v70 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v69, v126, v64);
      }
    }

    while (1)
    {
      v50 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        __break(1u);
        goto LABEL_74;
      }

      if (v50 >= v49)
      {
        break;
      }

      v48 = *(v45 + 8 * v50);
      ++v52;
      if (v48)
      {
        goto LABEL_9;
      }
    }

    v72 = v128;
    v73 = v128[2];
    if (v73)
    {
      v162 = MEMORY[0x277D84F90];
      sub_24B007B8C(0, v73, 0);
      sub_24B2D5694();
      v154 = v162;
      v74 = *(v129 + 16);
      v75 = v72 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
      v76 = *(v129 + 72);
      do
      {
        v74(v155, v75, v157);
        sub_24B2D5684();
        sub_24B2D5604();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v77 = v150;
        (*v156)(v150, v155, v157);
        swift_storeEnumTagMultiPayload();

        v78 = v154;
        v162 = v154;
        v80 = *(v154 + 16);
        v79 = *(v154 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_24B007B8C(v79 > 1, v80 + 1, 1);
          v78 = v162;
        }

        *(v78 + 16) = v80 + 1;
        v81 = (*(v151 + 80) + 32) & ~*(v151 + 80);
        v154 = v78;
        sub_24B215578(v77, v78 + v81 + *(v151 + 72) * v80, type metadata accessor for SettingsContactsProvider.Subscription);
        v75 += v76;
        --v73;
      }

      while (v73);
    }

    else
    {

      v154 = MEMORY[0x277D84F90];
    }

    v82 = *(v127 + 40);
    swift_getKeyPath();
    v162 = v82;
    sub_24B215C08(&qword_27EFCE610, type metadata accessor for SettingsFamilyRelationshipsProvider);
    sub_24B2D2584();

    v83 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
    swift_beginAccess();
    v84 = *(v82 + v83);
    v85 = v84 + 64;
    v86 = 1 << v84[32];
    v87 = -1;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    v88 = v87 & *(v84 + 8);
    v89 = (v86 + 63) >> 6;
    v155 = (v129 + 16);
    result = swift_bridgeObjectRetain_n();
    v90 = 0;
    v142 = MEMORY[0x277D84F90];
    v91 = &qword_27EFCE5F0;
    v143 = v84;
    while (v88)
    {
      v92 = v90;
LABEL_41:
      sub_24B215C50(*(v84 + 7) + *(v136 + 72) * (__clz(__rbit64(v88)) | (v92 << 6)), v147, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v93 = v91;
      v94 = v135;
      sub_24B215578(v147, v135, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v95 = v133;
        sub_24B215578(v94, v133, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
        v96 = 0;
      }

      else
      {
        v96 = 1;
        v95 = v133;
      }

      v97 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState(0);
      v98 = *(v97 - 8);
      (*(v98 + 56))(v95, v96, 1, v97);
      v99 = v95;
      v100 = v132;
      v91 = v93;
      sub_24B0391CC(v99, v132, v93);
      if ((*(v98 + 48))(v100, 1, v97) == 1)
      {
        sub_24AFF8258(v100, v93);
        v101 = 1;
        v102 = v157;
        v103 = v134;
      }

      else
      {
        v104 = v130;
        sub_24B215C50(v100, v130, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        sub_24B215CB8(v100, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState.LoadedState);
        v103 = v134;
        v102 = v157;
        (*v155)(v134, v104, v157);
        sub_24B215CB8(v104, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
        v101 = 0;
      }

      v84 = v143;
      v88 &= v88 - 1;
      (*v146)(v103, v101, 1, v102);

      if ((*v145)(v103, 1, v102) == 1)
      {
        result = sub_24AFF8258(v103, &qword_27EFC7880);
        v90 = v92;
      }

      else
      {
        v105 = *v156;
        (*v156)(v125, v103, v157);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v142 = sub_24B006728(0, v142[2] + 1, 1, v142);
        }

        v106 = v129;
        v108 = v142[2];
        v107 = v142[3];
        if (v108 >= v107 >> 1)
        {
          v110 = sub_24B006728(v107 > 1, v108 + 1, 1, v142);
          v106 = v129;
          v142 = v110;
        }

        v109 = v142;
        v142[2] = v108 + 1;
        result = (v105)(v109 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v108, v125, v157);
        v90 = v92;
      }
    }

    while (1)
    {
      v92 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        break;
      }

      if (v92 >= v89)
      {

        v111 = v142;
        v112 = v142[2];
        if (v112)
        {
          sub_24B2D5694();
          v113 = v111 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
          v114 = *(v129 + 72);
          v150 = *(v129 + 16);
          v115 = (v151 + 56);
          v116 = (v151 + 48);
          v117 = MEMORY[0x277D84F90];
          (v150)(v152, v113, v157);
          while (1)
          {
            sub_24B2D5684();
            sub_24B2D5604();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v118 = v149;
            (*v156)(v149, v152, v157);
            v119 = v153;
            swift_storeEnumTagMultiPayload();
            (*v115)(v118, 0, 1, v119);

            if ((*v116)(v118, 1, v119) == 1)
            {
              sub_24AFF8258(v118, &qword_27EFC85B8);
            }

            else
            {
              sub_24B215578(v118, v148, type metadata accessor for SettingsContactsProvider.Subscription);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v117 = sub_24B006EAC(0, v117[2] + 1, 1, v117);
              }

              v121 = v117[2];
              v120 = v117[3];
              if (v121 >= v120 >> 1)
              {
                v117 = sub_24B006EAC(v120 > 1, v121 + 1, 1, v117);
              }

              v117[2] = v121 + 1;
              sub_24B215578(v148, v117 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v121, type metadata accessor for SettingsContactsProvider.Subscription);
            }

            v113 += v114;
            if (!--v112)
            {
              break;
            }

            (v150)(v152, v113, v157);
          }
        }

        else
        {

          v117 = MEMORY[0x277D84F90];
        }

        v161 = v154;
        sub_24B03339C(v117);
        v122 = v127;
        v123 = sub_24B1D1498(v161);

        sub_24B20A7A0(v123, *(v122 + 16), *(v122 + 24));
      }

      v88 = *&v85[8 * v92];
      ++v90;
      if (v88)
      {
        goto LABEL_41;
      }
    }

LABEL_74:
    __break(1u);
  }

  return result;
}

void *sub_24B206C2C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_24B2D56D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  sub_24B2D5694();

  v11 = sub_24B2D5684();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v8;
  v12[5] = v7;
  v12[6] = v6;
  v12[7] = v9;
  v12[8] = v10;
  sub_24B00A9A4(0, 0, v4, &unk_24B2F15A8, v12);

  v14 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController_logger;
  v15 = sub_24B2D3184();
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  sub_24B207228(*(v1 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__state));

  v16 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController___observationRegistrar;
  v17 = sub_24B2D25C4();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  return v1;
}

uint64_t sub_24B206E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_24B2D5694();
  v8[7] = sub_24B2D5684();
  v10 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B206EFC, v10, v9);
}

uint64_t sub_24B206EFC()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_24B25AC90(v2, v1);
  sub_24B25AFA8(v2, v1);
  sub_24B25B2C0(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_24B206FA0()
{
  sub_24B206C2C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SettingsPeopleListController()
{
  result = qword_27EFCE5E0;
  if (!qword_27EFCE5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B20704C()
{
  result = sub_24B2D3184();
  if (v1 <= 0x3F)
  {
    result = sub_24B2D25C4();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24B20714C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24AFFDE44;

  return sub_24B206E5C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24B207228(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B207268@<X0>(uint64_t *a1@<X8>)
{
  sub_24B2D5694();
  sub_24B2D5684();
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_24B207314();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B207314()
{
  v301 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
  v1 = MEMORY[0x28223BE20](v301);
  v290 = &v276 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v277 = &v276 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v291 = &v276 - v6;
  MEMORY[0x28223BE20](v5);
  v279 = &v276 - v7;
  v300 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
  v8 = MEMORY[0x28223BE20](v300);
  v280 = &v276 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v276 = &v276 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v281 = &v276 - v13;
  MEMORY[0x28223BE20](v12);
  v278 = &v276 - v14;
  v313 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v15 = MEMORY[0x28223BE20](v313);
  v17 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v299 = &v276 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v298 = &v276 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v311 = &v276 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v306 = &v276 - v25;
  MEMORY[0x28223BE20](v24);
  v305 = &v276 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v276 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v296 = &v276 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v295 = &v276 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v294 = &v276 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v318 = &v276 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v310 = &v276 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v304 = (&v276 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v309 = &v276 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v303 = (&v276 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v302 = &v276 - v51;
  MEMORY[0x28223BE20](v50);
  v324 = (&v276 - v52);
  v319 = sub_24B2D21C4();
  v292 = *(v319 - 8);
  v53 = MEMORY[0x28223BE20](v319);
  v327 = &v276 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v328 = &v276 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE640);
  v57 = MEMORY[0x28223BE20](v56 - 8);
  v320 = &v276 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v341 = &v276 - v59;
  v336 = type metadata accessor for SettingsPersonInfo();
  v339 = *(v336 - 8);
  v60 = MEMORY[0x28223BE20](v336);
  v330 = &v276 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v334 = &v276 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v316 = &v276 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v337 = &v276 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v331 = &v276 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v335 = &v276 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v317 = &v276 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v329 = &v276 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v322 = &v276 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v314 = &v276 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v289 = &v276 - v81;
  MEMORY[0x28223BE20](v80);
  v288 = &v276 - v82;
  v315 = sub_24B2D1704();
  v83 = *(v315 - 1);
  MEMORY[0x28223BE20](v315);
  v321 = &v276 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE298);
  MEMORY[0x28223BE20](v340);
  v323 = &v276 - v85;
  v342 = v0;
  v86 = *(v0 + 32);
  swift_getKeyPath();
  v349[0] = v86;
  sub_24B215C08(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);
  sub_24B2D2584();

  v87 = OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__data;
  swift_beginAccess();
  v88 = *(v86 + v87);
  swift_bridgeObjectRetain_n();
  v89 = 0;
  v90 = sub_24B2044A4(v88);
  v332 = v88;

  v91 = sub_24B1D12FC(v90);

  v92 = *(v91 + 16);
  v297 = v33;
  if (v92)
  {
    v93 = sub_24B007564(v92, 0);
    v338 = sub_24B0363DC(v349, (v93 + ((*(v83 + 80) + 32) & ~*(v83 + 80))), v92, v91);
    v94 = v349[0];
    v89 = v349[2];
    v333 = v349[3];
    v326 = v349[4];

    sub_24B0363BC();
    if (v338 != v92)
    {
LABEL_196:
      __break(1u);

      (*v93)(v83, v94);

      __break(1u);

      __break(1u);
      return result;
    }

    v89 = 0;
  }

  else
  {
    v93 = MEMORY[0x277D84F90];
  }

  v308 = v30;
  v293 = v17;
  v349[0] = v93;
  sub_24B213D84(v349);

  v325 = v349[0];
  v95 = v342;
  v96 = *(v342 + 40);
  swift_getKeyPath();
  v349[0] = v96;
  sub_24B215C08(&qword_27EFCE610, type metadata accessor for SettingsFamilyRelationshipsProvider);
  sub_24B2D2584();

  v97 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__data;
  swift_beginAccess();
  v98 = *(v96 + v97);
  v99 = *(v95 + 48);
  swift_getKeyPath();
  v348[1] = v99;
  sub_24B215C08(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider);

  sub_24B2D2584();

  v100 = OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__data;
  swift_beginAccess();
  v101 = *(v99 + v100);
  v93 = (v98 + 8);
  v102 = 1 << *(v98 + 32);
  v103 = -1;
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  v104 = v103 & v98[8];
  v94 = (v102 + 63) >> 6;
  v105 = (v339 + 48);
  v333 = v98;

  v326 = v101;

  v106 = 0;
  v338 = MEMORY[0x277D84F90];
  v307 = MEMORY[0x277D84F90];
  v107 = v320;
  v312 = v105;
  if (v104)
  {
    while (1)
    {
      v108 = v106;
LABEL_12:
      v109 = __clz(__rbit64(v104));
      v104 &= v104 - 1;
      v110 = v109 | (v108 << 6);
      v111 = v333;
      v112 = v333[6];
      v113 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
      v114 = v323;
      sub_24B215C50(v112 + *(*(v113 - 8) + 72) * v110, v323, type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier);
      v115 = v111[7];
      v116 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
      sub_24B215C50(v115 + *(*(v116 - 8) + 72) * v110, v114 + *(v340 + 48), type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
      v117 = v341;
      sub_24B211344(v114, v332, v326, v111, v341);
      sub_24AFF8258(v114, &qword_27EFCE298);
      v105 = v312;
      if ((*v312)(v117, 1, v336) == 1)
      {
        sub_24AFF8258(v117, &qword_27EFCE640);
      }

      else
      {
        v118 = v288;
        sub_24B215578(v117, v288, type metadata accessor for SettingsPersonInfo);
        sub_24B215578(v118, v289, type metadata accessor for SettingsPersonInfo);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v307 = sub_24B006E84(0, v307[2] + 1, 1, v307);
        }

        v120 = v307[2];
        v119 = v307[3];
        if (v120 >= v119 >> 1)
        {
          v307 = sub_24B006E84(v119 > 1, v120 + 1, 1, v307);
        }

        v121 = v307;
        v307[2] = v120 + 1;
        sub_24B215578(v289, v121 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v120, type metadata accessor for SettingsPersonInfo);
      }

      v106 = v108;
      v107 = v320;
      if (!v104)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v108 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      __break(1u);
      goto LABEL_191;
    }

    if (v108 >= v94)
    {
      break;
    }

    v104 = *(v93 + 8 * v108);
    ++v106;
    if (v104)
    {
      goto LABEL_12;
    }
  }

  v345 = v307;
  swift_getKeyPath();
  v122 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController___observationRegistrar;
  v123 = v342;
  v343 = v342;
  v340 = sub_24B215C08(&qword_27EFCE600, type metadata accessor for SettingsPeopleListController);
  v341 = v122;
  sub_24B2D2584();

  v287 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort;
  v289 = sub_24B2165C8(*(v123 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__sort));
  v343 = v289;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE648);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE650);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8048);
  v93 = sub_24B039184(&qword_27EFCE658, &qword_27EFCE648);
  v127 = sub_24B039184(&qword_27EFCE660, &qword_27EFCE650);
  v128 = sub_24B039184(&qword_27EFCE668, &qword_27EFC8048);
  v288 = v124;
  v286 = v125;
  v285 = v126;
  v284 = v93;
  v283 = v127;
  v282 = v128;
  v323 = sub_24B2D54C4();

  v348[0] = MEMORY[0x277D84F90];
  v129 = v325;
  v130 = v325[2];
  if (v130)
  {
    v131 = 0;
    v93 = v83 + 8;
    v338 = MEMORY[0x277D84F90];
    v94 = v315;
    while (v131 < v129[2])
    {
      v132 = v129 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v131;
      v133 = v83;
      v134 = *(v83 + 16);
      v135 = v321;
      v134(v321, v132, v94);
      sub_24B212158(v135, v332, v326, v342, v348, v333, v107);
      (*v93)(v135, v94);
      if ((*v105)(v107, 1, v336) == 1)
      {
        sub_24AFF8258(v107, &qword_27EFCE640);
        v83 = v133;
        v129 = v325;
      }

      else
      {
        v136 = v107;
        v137 = v314;
        sub_24B215578(v136, v314, type metadata accessor for SettingsPersonInfo);
        sub_24B215578(v137, v322, type metadata accessor for SettingsPersonInfo);
        v138 = v338;
        v83 = v133;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_24B006E84(0, v138[2] + 1, 1, v138);
        }

        v129 = v325;
        v338 = v138;
        v140 = v138[2];
        v139 = v138[3];
        if (v140 >= v139 >> 1)
        {
          v338 = sub_24B006E84(v139 > 1, v140 + 1, 1, v338);
        }

        v141 = v338;
        v338[2] = v140 + 1;
        sub_24B215578(v322, v141 + ((*(v339 + 80) + 32) & ~*(v339 + 80)) + *(v339 + 72) * v140, type metadata accessor for SettingsPersonInfo);
        v107 = v320;
        v94 = v315;
      }

      if (v130 == ++v131)
      {
        goto LABEL_32;
      }
    }

LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

LABEL_32:

  v345 = v338;
  swift_getKeyPath();
  v142 = v342;
  v343 = v342;
  sub_24B2D2584();

  v343 = sub_24B2165C8(*(v142 + v287));
  v94 = sub_24B2D54C4();

  v338 = (v142 + OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__search);
  v143 = *(v94 + 16);
  v333 = v94;
  v322 = v143;
  if (v143)
  {
    v144 = 0;
    v321 = *MEMORY[0x277CBD078];
    v320 = *MEMORY[0x277CBD000];
    v315 = (v292 + 8);
    v314 = *MEMORY[0x277CBCFF8];
    v89 = MEMORY[0x277D84F90];
    v83 = v317;
    v145 = v329;
    while (1)
    {
      if (v144 >= *(v94 + 16))
      {
        goto LABEL_192;
      }

      v147 = ((*(v339 + 80) + 32) & ~*(v339 + 80));
      v332 = *(v339 + 72);
      sub_24B215C50(v147 + v94 + v332 * v144, v145, type metadata accessor for SettingsPersonInfo);
      sub_24B2D5694();
      v148 = sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v345 = v342;
      sub_24B2D2584();

      v149 = *v338;
      v93 = v338[1];
      v150 = HIBYTE(v93) & 0xF;
      if ((v93 & 0x2000000000000000) == 0)
      {
        v150 = v149 & 0xFFFFFFFFFFFFLL;
      }

      if (!v150)
      {

LABEL_56:
        v145 = v329;
        sub_24B215578(v329, v83, type metadata accessor for SettingsPersonInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v347 = v89;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24B007B48(0, v89[2] + 1, 1);
          v89 = v347;
        }

        v93 = v89[2];
        v168 = v89[3];
        if (v93 >= v168 >> 1)
        {
          sub_24B007B48(v168 > 1, v93 + 1, 1);
          v89 = v347;
        }

        v89[2] = v93 + 1;
        sub_24B215578(v83, v147 + v89 + v93 * v332, type metadata accessor for SettingsPersonInfo);
        goto LABEL_35;
      }

      v151 = *(v145 + *(v336 + 24));
      v326 = v147;
      v325 = v148;
      if (!v151)
      {
        break;
      }

      sub_24B2D21B4();
      if ([v151 isKeyAvailable_])
      {
        v152 = [v151 nickname];
        sub_24B2D5394();

        sub_24B2D21A4();
      }

      if ([v151 isKeyAvailable_])
      {
        v153 = [v151 givenName];
        sub_24B2D5394();

        sub_24B2D2174();
      }

      if ([v151 isKeyAvailable_])
      {
        v154 = [v151 familyName];
        sub_24B2D5394();

        sub_24B2D2184();
      }

      v155 = objc_opt_self();
      v156 = v328;
      v157 = sub_24B2D2194();
      v158 = [v155 localizedStringFromPersonNameComponents:v157 style:2 options:0];

      sub_24B2D5394();
      (*v315)(v156, v319);
      v159 = sub_24B2D52C4();
      v161 = v160;

      if (!v161)
      {
        goto LABEL_53;
      }

      v162 = v89;
LABEL_54:
      v345 = v159;
      v346 = v161;
      v343 = v149;
      v344 = v93;
      sub_24AFFE0A4();
      v164 = sub_24B2D5AE4();

      v345 = sub_24B2D16F4();
      v346 = v165;
      v343 = v149;
      v344 = v93;
      v166 = sub_24B2D5AE4();

      v83 = v317;
      v89 = v162;
      v147 = v326;
      if (v164 & 1) != 0 || (v166)
      {
        goto LABEL_56;
      }

      v145 = v329;
      sub_24B215CB8(v329, type metadata accessor for SettingsPersonInfo);
LABEL_35:
      v94 = v333;
      v146 = v324;
      if (v322 == ++v144)
      {
        goto LABEL_62;
      }
    }

LABEL_53:
    v162 = v89;
    v159 = sub_24B2D16D4();
    v161 = v163;

    goto LABEL_54;
  }

  v89 = MEMORY[0x277D84F90];
  v146 = v324;
LABEL_62:
  v329 = v89[2];
  if (v329)
  {
    v169 = 0;
    v326 = v146 + 1;
    v93 = MEMORY[0x277D84F90];
    v328 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__filterStorage;
    while (1)
    {
      if (v169 >= v89[2])
      {
        goto LABEL_193;
      }

      v170 = (*(v339 + 80) + 32) & ~*(v339 + 80);
      v83 = *(v339 + 72);
      sub_24B215C50(v89 + v170 + v83 * v169, v335, type metadata accessor for SettingsPersonInfo);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v343 = v342;
      v94 = v342 + v341;
      sub_24B2D2584();

      v171 = v338[1];
      v172 = *v338 & 0xFFFFFFFFFFFFLL;
      if ((v171 & 0x2000000000000000) != 0)
      {
        v172 = HIBYTE(v171) & 0xF;
      }

      if (v172)
      {
        goto LABEL_74;
      }

      swift_getKeyPath();
      v176 = v342;
      v343 = v342;
      v94 = v342 + v341;
      sub_24B2D2584();

      v177 = v328[v176];
      if (v177 <= 1)
      {
        if (!v328[v176])
        {
          goto LABEL_74;
        }

        goto LABEL_65;
      }

      v332 = v93;
      if (v177 != 2)
      {
        break;
      }

      v183 = v305;
      sub_24B215C50(v335 + *(v336 + 20), v305, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v184 = v302;
        sub_24B215578(v183, v302, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v185 = 0;
      }

      else
      {
        v185 = 1;
        v184 = v302;
      }

      v94 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v188 = *(v94 - 8);
      (*(v188 + 56))(v184, v185, 1, v94);
      v189 = v184;
      v190 = v324;
      sub_24B0391CC(v189, v324, &qword_27EFCE5F8);
      if ((*(v188 + 48))(v190, 1, v94) == 1)
      {
        goto LABEL_64;
      }

      v191 = *(v326 + *(v94 + 32));
      sub_24B215CB8(v190, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);

      v93 = v332;
      if ((v191 & 1) == 0)
      {
        goto LABEL_75;
      }

LABEL_66:
      sub_24B215CB8(v335, type metadata accessor for SettingsPersonInfo);
LABEL_67:
      if (v329 == ++v169)
      {
        goto LABEL_110;
      }
    }

    v178 = v311;
    v179 = v310;
    v180 = v309;
    if (v177 == 3)
    {
      v181 = v306;
      sub_24B215C50(v335 + *(v336 + 20), v306, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_24B215578(v181, v180, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v182 = 0;
      }

      else
      {
        v182 = 1;
      }

      v94 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v192 = *(v94 - 8);
      (*(v192 + 56))(v180, v182, 1, v94);
      v193 = v180;
      v190 = v303;
      sub_24B0391CC(v193, v303, &qword_27EFCE5F8);
      if ((*(v192 + 48))(v190, 1, v94) != 1)
      {
        v194 = v278;
        sub_24B215C50(v190 + *(v94 + 28), v278, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        sub_24B215CB8(v190, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v94 = v281;
        sub_24B215578(v194, v281, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v93 = v332;
        if (!EnumCaseMultiPayload)
        {
          goto LABEL_105;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v196 = &v313;
          goto LABEL_108;
        }

LABEL_65:

        goto LABEL_66;
      }
    }

    else
    {
      sub_24B215C50(v335 + *(v336 + 20), v311, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v186 = swift_getEnumCaseMultiPayload();
      if (v186 == 1)
      {
        sub_24B215578(v178, v179, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v187 = 0;
      }

      else
      {
        v187 = 1;
      }

      v197 = v179;
      v94 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v198 = *(v94 - 8);
      (*(v198 + 56))(v197, v187, 1, v94);
      v199 = v197;
      v190 = v304;
      sub_24B0391CC(v199, v304, &qword_27EFCE5F8);
      if ((*(v198 + 48))(v190, 1, v94) != 1)
      {
        v200 = v279;
        sub_24B215C50(v190 + *(v94 + 24), v279, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        sub_24B215CB8(v190, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v94 = v291;
        sub_24B215578(v200, v291, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        v201 = swift_getEnumCaseMultiPayload();
        if (v201 > 1)
        {
          v93 = v332;
          if (v201 == 2)
          {
            goto LABEL_107;
          }
        }

        else
        {
          v93 = v332;
          if (!v201)
          {
LABEL_105:
            v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
            sub_24AFF8258(v94 + *(v202 + 48), &qword_27EFC8450);
            sub_24AFF8258(v94, &qword_27EFC8450);
LABEL_74:

LABEL_75:
            sub_24B215578(v335, v331, type metadata accessor for SettingsPersonInfo);
            v173 = swift_isUniquelyReferenced_nonNull_native();
            v345 = v93;
            if ((v173 & 1) == 0)
            {
              v94 = &v345;
              sub_24B007B48(0, *(v93 + 16) + 1, 1);
              v93 = v345;
            }

            v175 = *(v93 + 16);
            v174 = *(v93 + 24);
            if (v175 >= v174 >> 1)
            {
              v94 = &v345;
              sub_24B007B48(v174 > 1, v175 + 1, 1);
              v93 = v345;
            }

            *(v93 + 16) = v175 + 1;
            sub_24B215578(v331, v93 + v170 + v175 * v83, type metadata accessor for SettingsPersonInfo);
            goto LABEL_67;
          }

LABEL_107:
          v196 = &v323;
LABEL_108:
          sub_24AFF8258(*(v196 - 32), &qword_27EFC8450);
        }

        goto LABEL_65;
      }
    }

LABEL_64:
    sub_24AFF8258(v190, &qword_27EFCE5F8);
    v93 = v332;
    goto LABEL_65;
  }

  v93 = MEMORY[0x277D84F90];
LABEL_110:

  v203 = v323;
  v328 = *(v323 + 16);
  v332 = v93;
  if (v328)
  {
    v93 = 0;
    v326 = *MEMORY[0x277CBD078];
    v325 = *MEMORY[0x277CBD000];
    v324 = (v292 + 8);
    v322 = *MEMORY[0x277CBCFF8];
    v204 = MEMORY[0x277D84F90];
    v205 = v318;
    v206 = v316;
    v207 = v337;
    while (1)
    {
      if (v93 >= *(v203 + 16))
      {
        goto LABEL_194;
      }

      v209 = (*(v339 + 80) + 32) & ~*(v339 + 80);
      v210 = *(v339 + 72);
      sub_24B215C50(v203 + v209 + v210 * v93, v207, type metadata accessor for SettingsPersonInfo);
      sub_24B2D5694();
      v211 = sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v345 = v342;
      v94 = v342 + v341;
      sub_24B2D2584();

      v89 = *v338;
      v212 = v338[1];
      v213 = HIBYTE(v212) & 0xF;
      if ((v212 & 0x2000000000000000) == 0)
      {
        v213 = v89 & 0xFFFFFFFFFFFFLL;
      }

      v335 = v210;
      if (!v213)
      {

LABEL_134:
        sub_24B215578(v337, v206, type metadata accessor for SettingsPersonInfo);
        v228 = swift_isUniquelyReferenced_nonNull_native();
        v347 = v204;
        if ((v228 & 1) == 0)
        {
          v94 = &v347;
          sub_24B007B48(0, *(v204 + 16) + 1, 1);
          v204 = v347;
        }

        v229 = v335;
        v89 = *(v204 + 16);
        v230 = *(v204 + 24);
        v83 = v89 + 1;
        if (v89 >= v230 >> 1)
        {
          v94 = &v347;
          sub_24B007B48(v230 > 1, v89 + 1, 1);
          v204 = v347;
        }

        *(v204 + 16) = v83;
        sub_24B215578(v206, v204 + v209 + v89 * v229, type metadata accessor for SettingsPersonInfo);
        v207 = v337;
        goto LABEL_113;
      }

      v214 = *(v337 + *(v336 + 24));
      v331 = v209;
      v329 = v211;
      if (!v214)
      {
        break;
      }

      sub_24B2D21B4();
      if ([v214 isKeyAvailable_])
      {
        v215 = [v214 nickname];
        sub_24B2D5394();

        sub_24B2D21A4();
      }

      if ([v214 isKeyAvailable_])
      {
        v216 = [v214 givenName];
        sub_24B2D5394();

        sub_24B2D2174();
      }

      if ([v214 isKeyAvailable_])
      {
        v217 = [v214 familyName];
        sub_24B2D5394();

        sub_24B2D2184();
      }

      v218 = objc_opt_self();
      v219 = v327;
      v220 = sub_24B2D2194();
      v221 = [v218 localizedStringFromPersonNameComponents:v220 style:2 options:0];

      sub_24B2D5394();
      (*v324)(v219, v319);
      v222 = sub_24B2D52C4();
      v224 = v223;

      if (!v224)
      {
        goto LABEL_131;
      }

      v83 = v204;
LABEL_132:
      v345 = v222;
      v346 = v224;
      v343 = v89;
      v344 = v212;
      sub_24AFFE0A4();
      v226 = sub_24B2D5AE4();

      v345 = sub_24B2D16F4();
      v346 = v227;
      v343 = v89;
      v344 = v212;
      v94 = sub_24B2D5AE4();

      v205 = v318;
      v206 = v316;
      v204 = v83;
      v209 = v331;
      if (v226 & 1) != 0 || (v94)
      {
        goto LABEL_134;
      }

      v208 = v337;
      sub_24B215CB8(v337, type metadata accessor for SettingsPersonInfo);
      v207 = v208;
LABEL_113:
      v203 = v323;
      if (v328 == ++v93)
      {
        goto LABEL_140;
      }
    }

LABEL_131:
    v83 = v204;
    v222 = sub_24B2D16D4();
    v224 = v225;

    goto LABEL_132;
  }

  v204 = MEMORY[0x277D84F90];
  v205 = v318;
LABEL_140:

  v94 = v332;
  v335 = *(v204 + 16);
  if (v335)
  {
    v83 = 0;
    v329 = v205 + 8;
    v231 = MEMORY[0x277D84F90];
    v331 = OBJC_IVAR____TtC12FindMyUICore28SettingsPeopleListController__familyFilterStorage;
    v232 = &qword_27EFCE5F8;
    while (1)
    {
      if (v83 >= *(v204 + 16))
      {
        goto LABEL_195;
      }

      v89 = v232;
      v337 = (*(v339 + 80) + 32) & ~*(v339 + 80);
      v93 = *(v339 + 72);
      sub_24B215C50(v204 + v337 + v93 * v83, v334, type metadata accessor for SettingsPersonInfo);
      sub_24B2D5694();
      sub_24B2D5684();
      sub_24B2D5604();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v343 = v342;
      sub_24B2D2584();

      v236 = v338[1];
      v237 = *v338 & 0xFFFFFFFFFFFFLL;
      if ((v236 & 0x2000000000000000) != 0)
      {
        v237 = HIBYTE(v236) & 0xF;
      }

      if (v237)
      {
        goto LABEL_153;
      }

      swift_getKeyPath();
      v241 = v342;
      v343 = v342;
      sub_24B2D2584();

      v242 = *(v241 + v331);
      if (v242 <= 1)
      {
        if (!*(v241 + v331))
        {
          goto LABEL_153;
        }

        goto LABEL_144;
      }

      if (v242 != 2)
      {
        break;
      }

      v247 = v298;
      sub_24B215C50(v334 + *(v336 + 20), v298, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v248 = swift_getEnumCaseMultiPayload();
      v249 = v294;
      if (v248 == 1)
      {
        sub_24B215578(v247, v294, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v250 = 0;
      }

      else
      {
        v250 = 1;
      }

      v254 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v255 = *(v254 - 8);
      (*(v255 + 56))(v249, v250, 1, v254);
      v256 = v249;
      v257 = v318;
      v232 = v89;
      v258 = v89;
      v89 = &unk_24B2F15C0;
      sub_24B0391CC(v256, v318, v258);
      if ((*(v255 + 48))(v257, 1, v254) == 1)
      {
        goto LABEL_142;
      }

      v259 = *(v329 + *(v254 + 32));
      sub_24B215CB8(v257, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);

      if ((v259 & 1) == 0)
      {
        goto LABEL_154;
      }

LABEL_145:
      sub_24B215CB8(v334, type metadata accessor for SettingsPersonInfo);
LABEL_146:
      ++v83;
      v235 = v333;
      v94 = v332;
      if (v335 == v83)
      {
        goto LABEL_189;
      }
    }

    v243 = v308;
    if (v242 == 3)
    {
      v244 = v299;
      sub_24B215C50(v334 + *(v336 + 20), v299, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v245 = v296;
        sub_24B215578(v244, v296, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v246 = 0;
      }

      else
      {
        v246 = 1;
        v245 = v296;
      }

      v260 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v261 = *(v260 - 8);
      (*(v261 + 56))(v245, v246, 1, v260);
      v262 = v245;
      v257 = v295;
      v232 = v89;
      v263 = v89;
      v89 = &unk_24B2F15C0;
      sub_24B0391CC(v262, v295, v263);
      if ((*(v261 + 48))(v257, 1, v260) != 1)
      {
        v264 = v276;
        sub_24B215C50(v257 + *(v260 + 28), v276, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        sub_24B215CB8(v257, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v265 = v280;
        sub_24B215578(v264, v280, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState);
        v266 = swift_getEnumCaseMultiPayload();
        if (!v266)
        {
          goto LABEL_184;
        }

        if (v266 == 1)
        {
          v267 = &v312;
          goto LABEL_187;
        }

        goto LABEL_144;
      }
    }

    else
    {
      v251 = v293;
      sub_24B215C50(v334 + *(v336 + 20), v293, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
      v252 = swift_getEnumCaseMultiPayload();
      if (v252 == 1)
      {
        sub_24B215578(v251, v243, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v253 = 0;
      }

      else
      {
        v253 = 1;
      }

      v268 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
      v269 = *(v268 - 8);
      (*(v269 + 56))(v243, v253, 1, v268);
      v270 = v243;
      v257 = v297;
      v232 = v89;
      v271 = v89;
      v89 = &unk_24B2F15C0;
      sub_24B0391CC(v270, v297, v271);
      if ((*(v269 + 48))(v257, 1, v268) != 1)
      {
        v272 = v277;
        sub_24B215C50(v257 + *(v268 + 24), v277, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        sub_24B215CB8(v257, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
        v265 = v290;
        sub_24B215578(v272, v290, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState);
        v273 = swift_getEnumCaseMultiPayload();
        if (v273 > 1)
        {
          if (v273 == 2)
          {
            goto LABEL_186;
          }
        }

        else
        {
          if (!v273)
          {
LABEL_184:
            v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8458);
            v89 = &unk_24B2DE7A0;
            sub_24AFF8258(v265 + *(v274 + 48), &qword_27EFC8450);
            sub_24AFF8258(v265, &qword_27EFC8450);
LABEL_153:

LABEL_154:
            sub_24B215578(v334, v330, type metadata accessor for SettingsPersonInfo);
            v238 = swift_isUniquelyReferenced_nonNull_native();
            v345 = v231;
            if ((v238 & 1) == 0)
            {
              sub_24B007B48(0, *(v231 + 16) + 1, 1);
              v231 = v345;
            }

            v240 = *(v231 + 16);
            v239 = *(v231 + 24);
            if (v240 >= v239 >> 1)
            {
              sub_24B007B48(v239 > 1, v240 + 1, 1);
              v231 = v345;
            }

            *(v231 + 16) = v240 + 1;
            sub_24B215578(v330, v231 + v337 + v240 * v93, type metadata accessor for SettingsPersonInfo);
            goto LABEL_146;
          }

LABEL_186:
          v267 = &v322;
LABEL_187:
          v233 = *(v267 - 32);
          v234 = &qword_27EFC8450;
LABEL_143:
          sub_24AFF8258(v233, v234);
        }

LABEL_144:

        goto LABEL_145;
      }
    }

LABEL_142:
    v233 = v257;
    v234 = v232;
    goto LABEL_143;
  }

  v231 = MEMORY[0x277D84F90];
  v235 = v333;
LABEL_189:

  v345 = v94;
  sub_24B032C70(v231);

  return v235;
}

uint64_t sub_24B20A480()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFC8580);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_24B2D56D4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_24B2D5694();

  v5 = sub_24B2D5684();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  sub_24B00A9A4(0, 0, v2, &unk_24B2F1688, v6);
}

uint64_t sub_24B20A600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_24B2D5694();
  *(v4 + 48) = sub_24B2D5684();
  v6 = sub_24B2D5604();

  return MEMORY[0x2822009F8](sub_24B20A698, v6, v5);
}

uint64_t sub_24B20A698()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24B2056BC();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_24B20A730())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_24B2154BC;
}

void sub_24B20A7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v159 = a3;
  v160 = a2;
  v5 = *v3;
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v146 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v148 = &v141 - v10;
  MEMORY[0x28223BE20](v11);
  v147 = &v141 - v12;
  MEMORY[0x28223BE20](v13);
  v143 = &v141 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v141 - v16;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE618);
  MEMORY[0x28223BE20](v161);
  v145 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v142 = &v141 - v20;
  MEMORY[0x28223BE20](v21);
  v144 = &v141 - v22;
  MEMORY[0x28223BE20](v23);
  v141 = &v141 - v24;
  MEMORY[0x28223BE20](v25);
  v155 = &v141 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v141 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v141 - v31;
  v33 = sub_24B215C08(&qword_27EFCE620, type metadata accessor for SettingsContactsProvider);
  v34 = v33 + 24;
  v35 = *(v33 + 24);
  v157 = v3;
  v164 = v33;
  v165 = v5;
  v36 = v5;
  v37 = v159;
  v162 = v35;
  v163 = v34;
  (v35)(v36);
  v38 = *(v7 + 16);
  v156 = v6;
  v152 = v38;
  v153 = v7 + 16;
  v38(v17, v32, v6);
  v39 = a1;
  sub_24AFF8258(v32, &qword_27EFCE618);

  v40 = sub_24B2D3164();
  v41 = sub_24B2D5934();

  v42 = os_log_type_enabled(v40, v41);
  v158 = a1;
  v149 = v7;
  v150 = v29;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v166 = v44;
    *v43 = 136315394;
    type metadata accessor for SettingsContactsProvider.Subscription();
    sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription);
    v45 = sub_24B2D57F4();
    v47 = v7;
    v48 = sub_24AFF321C(v45, v46, &v166);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v167 = v160;
    v168 = v37;

    v49 = sub_24B2D53C4();
    v51 = sub_24AFF321C(v49, v50, &v166);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_24AFD2000, v40, v41, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v43, 0x16u);
    swift_arrayDestroy();
    v52 = v44;
    v39 = v158;
    MEMORY[0x24C23D530](v52, -1, -1);
    MEMORY[0x24C23D530](v43, -1, -1);

    v53 = v47;
    v29 = v150;
    v154 = *(v53 + 8);
  }

  else
  {

    v154 = *(v7 + 8);
  }

  v154(v17, v156);
  v54 = v157;
  v162(v165, v164);
  v55 = v161;
  v151 = *&v29[*(v161 + 40)];

  sub_24AFF8258(v29, &qword_27EFCE618);
  v56 = v39;
  v57 = *(v39 + 16);
  swift_getKeyPath();
  v167 = v54;
  sub_24B215C08(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider);

  if (v57)
  {

    sub_24B2D2584();

    v167 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    v58 = v54 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
    swift_beginAccess();
    v59 = *(v161 + 36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v166 = *(v58 + v59);
    *(v58 + v59) = 0x8000000000000000;
    sub_24B1CB3E8(v56, v160, v37, isUniquelyReferenced_nonNull_native);

    *(v58 + v59) = v166;
    v55 = v161;
  }

  else
  {
    sub_24B2D2584();

    v167 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18CF60(0, v160, v37);
  }

  sub_24B213510(&qword_27EFCE618, &unk_24B2F1C60, &qword_27EFCE630);
  swift_endAccess();
  v167 = v54;
  swift_getKeyPath();
  sub_24B2D2594();

  v61 = v155;
  v162(v165, v164);
  v62 = *(v61 + *(v55 + 36));
  v167 = MEMORY[0x277D84F90];
  v63 = 1 << *(v62 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v62 + 64);
  v66 = (v63 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v67 = 0;
  while (v65)
  {
LABEL_16:
    v69 = *(*(v62 + 56) + ((v67 << 9) | (8 * __clz(__rbit64(v65)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v65 &= v65 - 1;

    sub_24B032C9C(v69);
  }

  while (1)
  {
    v68 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
      return;
    }

    if (v68 >= v66)
    {
      break;
    }

    v65 = *(v62 + 64 + 8 * v68);
    ++v67;
    if (v65)
    {
      v67 = v68;
      goto LABEL_16;
    }
  }

  v70 = v167;
  sub_24AFF8258(v155, &qword_27EFCE618);
  v71 = sub_24B1D1498(v70);

  swift_getKeyPath();
  v72 = v157;
  v167 = v157;
  sub_24B215C08(&qword_27EFCE628, type metadata accessor for SettingsContactsProvider);

  sub_24B2D2584();

  v167 = v72;
  swift_getKeyPath();
  sub_24B2D25A4();

  v73 = v72 + OBJC_IVAR____TtC12FindMyUICore24SettingsContactsProvider__storage;
  swift_beginAccess();
  *(v73 + *(v161 + 40)) = v71;

  sub_24B213724();
  swift_endAccess();
  v167 = v72;
  swift_getKeyPath();
  sub_24B2D2594();

  v74 = v151;
  v75 = v158;
  if (*(v151 + 16) <= *(v158 + 16) >> 3)
  {
    v167 = v158;

    sub_24B2A468C(v74);
    v155 = v167;
  }

  else
  {

    v155 = sub_24B2AECDC(v74, v75);
  }

  v76 = v159;
  v77 = v156;
  v78 = v147;
  if (*(v71 + 16) <= *(v74 + 16) >> 3)
  {
    v167 = v74;

    sub_24B2A468C(v71);
    if (*(v167 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    if (*(sub_24B2AECDC(v71, v74) + 16))
    {
LABEL_23:
      v79 = v144;
      v162(v165, v164);
      v152(v78, v79, v77);
      sub_24AFF8258(v79, &qword_27EFCE618);

      v80 = sub_24B2D3164();
      v81 = sub_24B2D5934();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v166 = v83;
        *v82 = 136315651;
        type metadata accessor for SettingsContactsProvider.Subscription();
        sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription);
        v84 = sub_24B2D57F4();
        v86 = sub_24AFF321C(v84, v85, &v166);

        *(v82 + 4) = v86;
        *(v82 + 12) = 2160;
        *(v82 + 14) = 1752392040;
        *(v82 + 22) = 2081;
        v167 = v160;
        v168 = v159;

        v87 = sub_24B2D53C4();
        v89 = sub_24AFF321C(v87, v88, &v166);
        v76 = v159;

        *(v82 + 24) = v89;
        _os_log_impl(&dword_24AFD2000, v80, v81, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v82, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v83, -1, -1);
        v90 = v82;
        v77 = v156;
        MEMORY[0x24C23D530](v90, -1, -1);
      }

      v154(v78, v77);
      v91 = v148;
      v92 = *(v71 + 16);

      sub_24B21BB88(v92 == 0);
      goto LABEL_31;
    }
  }

  v93 = v141;
  v162(v165, v164);
  v94 = v143;
  v152(v143, v93, v77);
  sub_24AFF8258(v93, &qword_27EFCE618);

  v95 = sub_24B2D3164();
  v96 = v77;
  v97 = sub_24B2D5934();

  if (os_log_type_enabled(v95, v97))
  {
    v98 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v166 = v99;
    *v98 = 136315651;
    type metadata accessor for SettingsContactsProvider.Subscription();
    sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription);
    v100 = sub_24B2D57F4();
    v102 = sub_24AFF321C(v100, v101, &v166);

    *(v98 + 4) = v102;
    *(v98 + 12) = 2160;
    *(v98 + 14) = 1752392040;
    *(v98 + 22) = 2081;
    v167 = v160;
    v168 = v76;

    v103 = sub_24B2D53C4();
    v105 = sub_24AFF321C(v103, v104, &v166);

    *(v98 + 24) = v105;
    _os_log_impl(&dword_24AFD2000, v95, v97, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v98, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v99, -1, -1);
    MEMORY[0x24C23D530](v98, -1, -1);

    v106 = v143;
  }

  else
  {

    v106 = v94;
  }

  v154(v106, v96);
  v77 = v96;
  v91 = v148;
LABEL_31:
  v107 = v155;
  if (*(v155 + 16))
  {

    v108 = v145;
    v162(v165, v164);
    v109 = v146;
    v152(v146, v108, v77);
    sub_24AFF8258(v108, &qword_27EFCE618);

    v110 = sub_24B2D3164();
    v111 = v77;
    v112 = sub_24B2D5934();

    if (os_log_type_enabled(v110, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v166 = v114;
      *v113 = 136315394;
      type metadata accessor for SettingsContactsProvider.Subscription();
      sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription);
      v115 = sub_24B2D57F4();
      v117 = sub_24AFF321C(v115, v116, &v166);

      *(v113 + 4) = v117;
      *(v113 + 12) = 2080;
      v167 = v160;
      v168 = v76;

      v118 = sub_24B2D53C4();
      v120 = sub_24AFF321C(v118, v119, &v166);
      v107 = v155;

      *(v113 + 14) = v120;
      _os_log_impl(&dword_24AFD2000, v110, v112, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v114, -1, -1);
      MEMORY[0x24C23D530](v113, -1, -1);

      v121 = v146;
    }

    else
    {

      v121 = v109;
    }

    v154(v121, v111);
    v136 = v158;
    v137 = *(v151 + 16);

    SettingsContactsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(v107, v137 == 0);

    v138 = v161;
  }

  else
  {

    v122 = v142;
    v162(v165, v164);
    v152(v91, v122, v77);
    sub_24AFF8258(v122, &qword_27EFCE618);

    v123 = sub_24B2D3164();
    v124 = sub_24B2D5934();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v166 = v126;
      *v125 = 136315651;
      type metadata accessor for SettingsContactsProvider.Subscription();
      sub_24B215C08(&qword_27EFCE0C8, type metadata accessor for SettingsContactsProvider.Subscription);
      v127 = sub_24B2D57F4();
      v129 = v128;

      v130 = sub_24AFF321C(v127, v129, &v166);

      *(v125 + 4) = v130;
      *(v125 + 12) = 2160;
      *(v125 + 14) = 1752392040;
      *(v125 + 22) = 2081;
      v167 = v160;
      v168 = v159;

      v131 = sub_24B2D53C4();
      v133 = sub_24AFF321C(v131, v132, &v166);

      *(v125 + 24) = v133;
      _os_log_impl(&dword_24AFD2000, v123, v124, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v125, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v126, -1, -1);
      v76 = v159;
      MEMORY[0x24C23D530](v125, -1, -1);

      v134 = v91;
      v135 = v156;
    }

    else
    {

      v134 = v91;
      v135 = v77;
    }

    v154(v134, v135);
    v138 = v161;
    v136 = v158;
  }

  v139 = v150;
  v162(v165, v164);
  v140 = *(v139 + *(v138 + 48));

  sub_24AFF8258(v139, &qword_27EFCE618);
  v167 = v160;
  v168 = v76;
  v140(v136, &v167);
}

uint64_t sub_24B20BCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v175 = a2;
  v6 = *v3;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v162 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v152 - v11;
  MEMORY[0x28223BE20](v12);
  v155 = &v152 - v13;
  MEMORY[0x28223BE20](v14);
  v164 = &v152 - v15;
  MEMORY[0x28223BE20](v16);
  v154 = &v152 - v17;
  v161 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v152 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6C0);
  MEMORY[0x28223BE20](v22);
  v157 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v153 = &v152 - v25;
  MEMORY[0x28223BE20](v26);
  v156 = &v152 - v27;
  MEMORY[0x28223BE20](v28);
  v152 = &v152 - v29;
  MEMORY[0x28223BE20](v30);
  v168 = &v152 - v31;
  MEMORY[0x28223BE20](v32);
  v169 = &v152 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v152 - v35;
  v37 = sub_24B215C08(&qword_27EFCE6C8, type metadata accessor for SettingsFamilyRelationshipsProvider);
  v38 = *(v37 + 24);
  v172 = v3;
  v179 = v37;
  v180 = v6;
  v177 = v38;
  v178 = v37 + 24;
  (v38)(v6);
  v171 = v8;
  v173 = *(v8 + 16);
  v174 = v8 + 16;
  v173(v21, v36, v7);
  sub_24AFF8258(v36, &qword_27EFCE6C0);

  v39 = sub_24B2D3164();
  v40 = sub_24B2D5934();

  v41 = os_log_type_enabled(v39, v40);
  v176 = v22;
  v163 = v7;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v181 = v43;
    *v42 = 136315394;
    sub_24B1D2434();
    v44 = sub_24B2D57F4();
    v46 = v7;
    v47 = sub_24AFF321C(v44, v45, &v181);

    *(v42 + 4) = v47;
    *(v42 + 12) = 2080;
    v182 = v175;
    v183 = a3;

    v48 = sub_24B2D53C4();
    v50 = sub_24AFF321C(v48, v49, &v181);

    *(v42 + 14) = v50;
    _os_log_impl(&dword_24AFD2000, v39, v40, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v43, -1, -1);
    MEMORY[0x24C23D530](v42, -1, -1);

    v51 = *(v171 + 8);
    v52 = v21;
    v53 = v46;
    v22 = v176;
  }

  else
  {

    v51 = *(v171 + 8);
    v52 = v21;
    v53 = v7;
  }

  v166 = v51;
  v51(v52, v53);
  v54 = v169;
  v55 = v172;
  v177(v180, v179);
  v165 = *(v54 + *(v22 + 40));

  sub_24AFF8258(v54, &qword_27EFCE6C0);
  v56 = *(a1 + 16);
  swift_getKeyPath();
  v170 = a3;
  v167 = a1;
  v182 = v55;
  sub_24B215C08(&qword_27EFCE610, type metadata accessor for SettingsFamilyRelationshipsProvider);

  if (v56)
  {

    sub_24B2D2584();

    v182 = v55;
    swift_getKeyPath();
    sub_24B2D25A4();

    v57 = v55 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
    swift_beginAccess();
    v58 = a3;
    v59 = v176[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v181 = *(v57 + v59);
    *(v57 + v59) = 0x8000000000000000;
    sub_24B1CB418(a1, v175, v58, isUniquelyReferenced_nonNull_native);
    v22 = v176;

    *(v57 + v59) = v181;
  }

  else
  {
    sub_24B2D2584();

    v182 = v55;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18CFA0(0, v175, a3);
  }

  sub_24B213510(&qword_27EFCE6C0, &unk_24B2F1F30, &qword_27EFCE6D0);
  swift_endAccess();
  v182 = v55;
  swift_getKeyPath();
  sub_24B2D2594();

  v61 = v168;
  v177(v180, v179);
  v62 = *(v61 + *(v22 + 36));
  v182 = MEMORY[0x277D84F90];
  v63 = 1 << *(v62 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v62 + 64);
  v66 = (v63 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v68 = 0;
  while (v65)
  {
LABEL_16:
    v70 = *(*(v62 + 56) + ((v68 << 9) | (8 * __clz(__rbit64(v65)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v65 &= v65 - 1;

    result = sub_24B03350C(v70);
  }

  while (1)
  {
    v69 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v69 >= v66)
    {

      v71 = v182;
      sub_24AFF8258(v168, &qword_27EFCE6C0);
      v72 = sub_24B1D1628(v71);

      swift_getKeyPath();
      v73 = OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider___observationRegistrar;
      v74 = v172;
      v182 = v172;
      v75 = sub_24B215C08(&qword_27EFCE610, type metadata accessor for SettingsFamilyRelationshipsProvider);

      sub_24B2D2584();

      v182 = v74;
      swift_getKeyPath();
      sub_24B2D25A4();

      v76 = v74 + OBJC_IVAR____TtC12FindMyUICore35SettingsFamilyRelationshipsProvider__storage;
      swift_beginAccess();
      *(v76 + v176[10]) = v72;

      sub_24B213B84(&qword_27EFCE6C0, &unk_24B2F1F30, sub_24B1D2434);
      swift_endAccess();
      v182 = v74;
      swift_getKeyPath();
      v160 = v73;
      v159 = v75;
      sub_24B2D2594();

      v77 = v165;
      v78 = v167;
      if (*(v165 + 16) <= *(v167 + 16) >> 3)
      {
        v182 = v167;

        sub_24B2A4894(v77);
        v168 = v182;
      }

      else
      {

        v168 = sub_24B2B00F8(v77, v78);
      }

      v79 = v170;
      v80 = v163;
      v81 = v164;
      if (*(v72 + 16) <= *(v77 + 16) >> 3)
      {
        v182 = v77;

        sub_24B2A4894(v72);
        if (!*(v182 + 16))
        {
          goto LABEL_27;
        }

LABEL_23:
        v82 = v156;
        v177(v180, v179);
        v173(v81, v82, v80);
        sub_24AFF8258(v82, &qword_27EFCE6C0);

        v83 = sub_24B2D3164();
        v84 = sub_24B2D5934();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = v79;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v181 = v87;
          *v86 = 136315651;
          sub_24B1D2434();
          v88 = sub_24B2D57F4();
          v90 = sub_24AFF321C(v88, v89, &v181);

          *(v86 + 4) = v90;
          *(v86 + 12) = 2160;
          *(v86 + 14) = 1752392040;
          *(v86 + 22) = 2081;
          v182 = v175;
          v183 = v85;

          v91 = sub_24B2D53C4();
          v93 = sub_24AFF321C(v91, v92, &v181);

          *(v86 + 24) = v93;
          _os_log_impl(&dword_24AFD2000, v83, v84, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v86, 0x20u);
          swift_arrayDestroy();
          v94 = v87;
          v74 = v172;
          MEMORY[0x24C23D530](v94, -1, -1);
          v95 = v86;
          v80 = v163;
          MEMORY[0x24C23D530](v95, -1, -1);
        }

        v96 = v171;
        v166(v164, v80);
        v97 = *(v72 + 16);

        v98 = v97 == 0;
        swift_getKeyPath();
        v182 = v74;
        sub_24B2D2584();

        v99 = v162;
        v173(v162, v76, v80);
        v100 = (*(v96 + 80) + 32) & ~*(v96 + 80);
        v101 = swift_allocObject();
        *(v101 + 16) = v98;
        *(v101 + 24) = v74;
        (*(v96 + 32))(v101 + v100, v99, v80);

        sub_24B2D12C4();

        v79 = v170;
      }

      else
      {

        if (*(sub_24B2B00F8(v72, v77) + 16))
        {
          goto LABEL_23;
        }

LABEL_27:

        v102 = v152;
        v177(v180, v179);
        v103 = v154;
        v173(v154, v102, v80);
        sub_24AFF8258(v102, &qword_27EFCE6C0);

        v104 = sub_24B2D3164();
        v105 = sub_24B2D5934();

        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v181 = v107;
          *v106 = 136315651;
          sub_24B1D2434();
          v108 = sub_24B2D57F4();
          v110 = v80;
          v111 = sub_24AFF321C(v108, v109, &v181);

          *(v106 + 4) = v111;
          *(v106 + 12) = 2160;
          *(v106 + 14) = 1752392040;
          *(v106 + 22) = 2081;
          v182 = v175;
          v183 = v79;

          v112 = sub_24B2D53C4();
          v114 = sub_24AFF321C(v112, v113, &v181);

          *(v106 + 24) = v114;
          v80 = v110;
          _os_log_impl(&dword_24AFD2000, v104, v105, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v106, 0x20u);
          swift_arrayDestroy();
          v115 = v107;
          v74 = v172;
          MEMORY[0x24C23D530](v115, -1, -1);
          MEMORY[0x24C23D530](v106, -1, -1);

          v96 = v171;
          v116 = v154;
          v117 = v110;
        }

        else
        {

          v96 = v171;
          v116 = v103;
          v117 = v80;
        }

        v166(v116, v117);
      }

      v118 = v158;
      v119 = v168;
      if (*(v168 + 16))
      {

        v120 = v157;
        v177(v180, v179);
        v173(v118, v120, v80);
        sub_24AFF8258(v120, &qword_27EFCE6C0);

        v121 = sub_24B2D3164();
        v122 = sub_24B2D5934();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v181 = v124;
          *v123 = 136315394;
          sub_24B1D2434();
          v125 = sub_24B2D57F4();
          v127 = sub_24AFF321C(v125, v126, &v181);

          *(v123 + 4) = v127;
          *(v123 + 12) = 2080;
          v182 = v175;
          v183 = v79;

          v128 = sub_24B2D53C4();
          v130 = sub_24AFF321C(v128, v129, &v181);
          v96 = v171;

          *(v123 + 14) = v130;
          v74 = v172;
          _os_log_impl(&dword_24AFD2000, v121, v122, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v123, 0x16u);
          swift_arrayDestroy();
          v131 = v124;
          v119 = v168;
          MEMORY[0x24C23D530](v131, -1, -1);
          MEMORY[0x24C23D530](v123, -1, -1);
        }

        v166(v118, v80);
        v132 = *(v165 + 16);

        swift_getKeyPath();
        v182 = v74;
        sub_24B2D2584();

        v133 = v162;
        v173(v162, v76, v80);
        v134 = (*(v96 + 80) + 40) & ~*(v96 + 80);
        v135 = swift_allocObject();
        *(v135 + 16) = v132 == 0;
        *(v135 + 24) = v74;
        *(v135 + 32) = v119;
        (*(v96 + 32))(v135 + v134, v133, v80);

        sub_24B2D12C4();

        v79 = v170;
LABEL_38:
        v146 = v175;
      }

      else
      {

        v136 = v153;
        v177(v180, v179);
        v137 = v155;
        v173(v155, v136, v80);
        sub_24AFF8258(v136, &qword_27EFCE6C0);

        v138 = sub_24B2D3164();
        v139 = sub_24B2D5934();

        if (!os_log_type_enabled(v138, v139))
        {

          v166(v137, v80);
          goto LABEL_38;
        }

        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v181 = v141;
        *v140 = 136315651;
        sub_24B1D2434();
        v142 = sub_24B2D57F4();
        v144 = v143;

        v145 = sub_24AFF321C(v142, v144, &v181);

        *(v140 + 4) = v145;
        *(v140 + 12) = 2160;
        *(v140 + 14) = 1752392040;
        *(v140 + 22) = 2081;
        v146 = v175;
        v182 = v175;
        v183 = v79;

        v147 = sub_24B2D53C4();
        v149 = sub_24AFF321C(v147, v148, &v181);

        *(v140 + 24) = v149;
        _os_log_impl(&dword_24AFD2000, v138, v139, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v140, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v141, -1, -1);
        MEMORY[0x24C23D530](v140, -1, -1);

        v166(v155, v80);
      }

      v150 = v169;
      v177(v180, v179);
      v151 = *(v150 + v176[12]);

      sub_24AFF8258(v150, &qword_27EFCE6C0);
      v182 = v146;
      v183 = v79;
      v151(v167, &v182);
    }

    v65 = *(v62 + 64 + 8 * v69);
    ++v68;
    if (v65)
    {
      v68 = v69;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_24B20D2FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v160 = a3;
  v161 = a2;
  v5 = *v3;
  v6 = sub_24B2D3184();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v147 = &v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v149 = &v142 - v10;
  MEMORY[0x28223BE20](v11);
  v148 = &v142 - v12;
  MEMORY[0x28223BE20](v13);
  v144 = &v142 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v142 - v16;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6D8);
  MEMORY[0x28223BE20](v162);
  v146 = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v143 = &v142 - v20;
  MEMORY[0x28223BE20](v21);
  v145 = &v142 - v22;
  MEMORY[0x28223BE20](v23);
  v142 = &v142 - v24;
  MEMORY[0x28223BE20](v25);
  v156 = &v142 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v142 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v142 - v31;
  v33 = sub_24B215C08(&qword_27EFCE6E0, type metadata accessor for SettingsPeopleRelationshipsProvider);
  v34 = v33 + 24;
  v35 = *(v33 + 24);
  v158 = v3;
  v165 = v33;
  v166 = v5;
  v36 = v5;
  v37 = v160;
  v163 = v35;
  v164 = v34;
  (v35)(v36);
  v38 = *(v7 + 16);
  v157 = v6;
  v153 = v38;
  v154 = v7 + 16;
  v38(v17, v32, v6);
  v39 = a1;
  sub_24AFF8258(v32, &qword_27EFCE6D8);

  v40 = sub_24B2D3164();
  v41 = sub_24B2D5934();

  v42 = os_log_type_enabled(v40, v41);
  v159 = a1;
  v150 = v7;
  v151 = v29;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v167 = v44;
    *v43 = 136315394;
    type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
    sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v45 = sub_24B2D57F4();
    v47 = v7;
    v48 = sub_24AFF321C(v45, v46, &v167);

    *(v43 + 4) = v48;
    *(v43 + 12) = 2080;
    v168 = v161;
    v169 = v37;

    v49 = sub_24B2D53C4();
    v51 = sub_24AFF321C(v49, v50, &v167);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_24AFD2000, v40, v41, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v43, 0x16u);
    swift_arrayDestroy();
    v52 = v44;
    v39 = v159;
    MEMORY[0x24C23D530](v52, -1, -1);
    MEMORY[0x24C23D530](v43, -1, -1);

    v53 = v47;
    v29 = v151;
    v155 = *(v53 + 8);
  }

  else
  {

    v155 = *(v7 + 8);
  }

  v155(v17, v157);
  v54 = v158;
  v163(v166, v165);
  v55 = v162;
  v152 = *&v29[*(v162 + 40)];

  sub_24AFF8258(v29, &qword_27EFCE6D8);
  v56 = v39;
  v57 = *(v39 + 16);
  swift_getKeyPath();
  v168 = v54;
  sub_24B215C08(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);

  if (v57)
  {

    sub_24B2D2584();

    v168 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    v58 = v54 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
    swift_beginAccess();
    v59 = *(v162 + 36);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = *(v58 + v59);
    *(v58 + v59) = 0x8000000000000000;
    sub_24B1CB448(v56, v161, v37, isUniquelyReferenced_nonNull_native);

    *(v58 + v59) = v167;
    v55 = v162;
  }

  else
  {
    sub_24B2D2584();

    v168 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18CFE0(0, v161, v37);
  }

  sub_24B213510(&qword_27EFCE6D8, &unk_24B2F1890, &qword_27EFCE6E8);
  swift_endAccess();
  v168 = v54;
  swift_getKeyPath();
  sub_24B2D2594();

  v61 = v156;
  v163(v166, v165);
  v62 = *(v61 + *(v55 + 36));
  v168 = MEMORY[0x277D84F90];
  v63 = 1 << *(v62 + 32);
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v62 + 64);
  v66 = (v63 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v67 = 0;
  while (v65)
  {
LABEL_16:
    v69 = *(*(v62 + 56) + ((v67 << 9) | (8 * __clz(__rbit64(v65)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v65 &= v65 - 1;

    sub_24B033790(v69);
  }

  while (1)
  {
    v68 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      __break(1u);
      return;
    }

    if (v68 >= v66)
    {
      break;
    }

    v65 = *(v62 + 64 + 8 * v68);
    ++v67;
    if (v65)
    {
      v67 = v68;
      goto LABEL_16;
    }
  }

  v70 = v168;
  sub_24AFF8258(v156, &qword_27EFCE6D8);
  v71 = sub_24B1D169C(v70);

  swift_getKeyPath();
  v72 = v158;
  v168 = v158;
  sub_24B215C08(&qword_27EFCE608, type metadata accessor for SettingsPeopleRelationshipsProvider);

  sub_24B2D2584();

  v168 = v72;
  swift_getKeyPath();
  sub_24B2D25A4();

  v73 = v72 + OBJC_IVAR____TtC12FindMyUICore35SettingsPeopleRelationshipsProvider__storage;
  swift_beginAccess();
  *(v73 + *(v162 + 40)) = v71;

  sub_24B213954();
  swift_endAccess();
  v168 = v72;
  swift_getKeyPath();
  sub_24B2D2594();

  v74 = v152;
  v75 = v159;
  if (*(v152 + 16) <= *(v159 + 16) >> 3)
  {
    v168 = v159;

    sub_24B2A4998(v74);
    v156 = v168;
  }

  else
  {

    v156 = sub_24B2B0588(v74, v75);
  }

  v76 = v160;
  v77 = v157;
  v78 = v148;
  if (*(v71 + 16) <= *(v74 + 16) >> 3)
  {
    v168 = v74;

    sub_24B2A4998(v71);
    v79 = v168;
    if (*(v168 + 16))
    {
      goto LABEL_23;
    }
  }

  else
  {

    v79 = sub_24B2B0588(v71, v74);
    if (*(v79 + 16))
    {
LABEL_23:
      v80 = v145;
      v163(v166, v165);
      v153(v78, v80, v77);
      sub_24AFF8258(v80, &qword_27EFCE6D8);

      v81 = sub_24B2D3164();
      v82 = sub_24B2D5934();

      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v167 = v84;
        *v83 = 136315651;
        type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
        sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
        v85 = sub_24B2D57F4();
        v87 = sub_24AFF321C(v85, v86, &v167);

        *(v83 + 4) = v87;
        *(v83 + 12) = 2160;
        *(v83 + 14) = 1752392040;
        *(v83 + 22) = 2081;
        v168 = v161;
        v169 = v160;

        v88 = sub_24B2D53C4();
        v90 = sub_24AFF321C(v88, v89, &v167);
        v76 = v160;

        *(v83 + 24) = v90;
        _os_log_impl(&dword_24AFD2000, v81, v82, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C23D530](v84, -1, -1);
        v91 = v83;
        v77 = v157;
        MEMORY[0x24C23D530](v91, -1, -1);
      }

      v155(v78, v77);
      v92 = v149;
      v93 = *(v71 + 16);

      SettingsPeopleRelationshipsProvider.didRemoveUniqueSubscriptions(removedSubscriptions:isEmpty:)(v79, v93 == 0);
      goto LABEL_31;
    }
  }

  v94 = v142;
  v163(v166, v165);
  v95 = v144;
  v153(v144, v94, v77);
  sub_24AFF8258(v94, &qword_27EFCE6D8);

  v96 = sub_24B2D3164();
  v97 = v77;
  v98 = sub_24B2D5934();

  if (os_log_type_enabled(v96, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v167 = v100;
    *v99 = 136315651;
    type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
    sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
    v101 = sub_24B2D57F4();
    v103 = sub_24AFF321C(v101, v102, &v167);

    *(v99 + 4) = v103;
    *(v99 + 12) = 2160;
    *(v99 + 14) = 1752392040;
    *(v99 + 22) = 2081;
    v168 = v161;
    v169 = v76;

    v104 = sub_24B2D53C4();
    v106 = sub_24AFF321C(v104, v105, &v167);

    *(v99 + 24) = v106;
    _os_log_impl(&dword_24AFD2000, v96, v98, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v99, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v100, -1, -1);
    MEMORY[0x24C23D530](v99, -1, -1);

    v107 = v144;
  }

  else
  {

    v107 = v95;
  }

  v155(v107, v97);
  v77 = v97;
  v92 = v149;
LABEL_31:
  v108 = v156;
  if (*(v156 + 16))
  {

    v109 = v146;
    v163(v166, v165);
    v110 = v147;
    v153(v147, v109, v77);
    sub_24AFF8258(v109, &qword_27EFCE6D8);

    v111 = sub_24B2D3164();
    v112 = v77;
    v113 = sub_24B2D5934();

    if (os_log_type_enabled(v111, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v167 = v115;
      *v114 = 136315394;
      type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
      sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v116 = sub_24B2D57F4();
      v118 = sub_24AFF321C(v116, v117, &v167);

      *(v114 + 4) = v118;
      *(v114 + 12) = 2080;
      v168 = v161;
      v169 = v76;

      v119 = sub_24B2D53C4();
      v121 = sub_24AFF321C(v119, v120, &v167);
      v108 = v156;

      *(v114 + 14) = v121;
      _os_log_impl(&dword_24AFD2000, v111, v113, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v114, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v115, -1, -1);
      MEMORY[0x24C23D530](v114, -1, -1);

      v122 = v147;
    }

    else
    {

      v122 = v110;
    }

    v155(v122, v112);
    v137 = v159;
    v138 = *(v152 + 16);

    SettingsPeopleRelationshipsProvider.didAddNewUniqueSubscriptions(addedSubscriptions:wasEmpty:)(v108, v138 == 0);

    v139 = v162;
  }

  else
  {

    v123 = v143;
    v163(v166, v165);
    v153(v92, v123, v77);
    sub_24AFF8258(v123, &qword_27EFCE6D8);

    v124 = sub_24B2D3164();
    v125 = sub_24B2D5934();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v167 = v127;
      *v126 = 136315651;
      type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription(0);
      sub_24B215C08(&qword_27EFCE0F0, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription);
      v128 = sub_24B2D57F4();
      v130 = v129;

      v131 = sub_24AFF321C(v128, v130, &v167);

      *(v126 + 4) = v131;
      *(v126 + 12) = 2160;
      *(v126 + 14) = 1752392040;
      *(v126 + 22) = 2081;
      v168 = v161;
      v169 = v160;

      v132 = sub_24B2D53C4();
      v134 = sub_24AFF321C(v132, v133, &v167);

      *(v126 + 24) = v134;
      _os_log_impl(&dword_24AFD2000, v124, v125, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v126, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C23D530](v127, -1, -1);
      v76 = v160;
      MEMORY[0x24C23D530](v126, -1, -1);

      v135 = v92;
      v136 = v157;
    }

    else
    {

      v135 = v92;
      v136 = v77;
    }

    v155(v135, v136);
    v139 = v162;
    v137 = v159;
  }

  v140 = v151;
  v163(v166, v165);
  v141 = *(v140 + *(v139 + 48));

  sub_24AFF8258(v140, &qword_27EFCE6D8);
  v168 = v161;
  v169 = v76;
  v141(v137, &v168);
}

uint64_t sub_24B20E854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v170 = a2;
  v6 = *v3;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v156 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v157 = &v147 - v11;
  MEMORY[0x28223BE20](v12);
  v150 = &v147 - v13;
  MEMORY[0x28223BE20](v14);
  v158 = &v147 - v15;
  MEMORY[0x28223BE20](v16);
  v148 = &v147 - v17;
  v155 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v147 - v20;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE680);
  MEMORY[0x28223BE20](v171);
  v154 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v149 = &v147 - v24;
  MEMORY[0x28223BE20](v25);
  v153 = &v147 - v26;
  MEMORY[0x28223BE20](v27);
  v147 = &v147 - v28;
  MEMORY[0x28223BE20](v29);
  v162 = &v147 - v30;
  MEMORY[0x28223BE20](v31);
  v163 = &v147 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v147 - v34;
  v36 = sub_24B215C08(&qword_27EFCE688, type metadata accessor for SettingsFindMyServiceProvider);
  v37 = v36 + 24;
  v38 = *(v36 + 24);
  v169 = v3;
  v174 = v36;
  v175 = v6;
  v39 = v6;
  v40 = a1;
  v172 = v38;
  v173 = v37;
  (v38)(v39);
  v41 = *(v8 + 16);
  v167 = v8 + 16;
  v168 = v7;
  v166 = v41;
  v41(v21, v35, v7);
  sub_24AFF8258(v35, &qword_27EFCE680);

  v42 = sub_24B2D3164();
  v43 = sub_24B2D5934();

  v44 = os_log_type_enabled(v42, v43);
  v165 = a1;
  v161 = v8;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v176 = v46;
    *v45 = 136315394;
    sub_24B1D238C();
    v47 = sub_24B2D57F4();
    v49 = sub_24AFF321C(v47, v48, &v176);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v177 = v170;
    v178 = a3;

    v50 = sub_24B2D53C4();
    v52 = sub_24AFF321C(v50, v51, &v176);
    v40 = v165;

    *(v45 + 14) = v52;
    _os_log_impl(&dword_24AFD2000, v42, v43, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v46, -1, -1);
    MEMORY[0x24C23D530](v45, -1, -1);
  }

  v160 = *(v8 + 8);
  v160(v21, v168);
  v53 = v163;
  v54 = v169;
  v172(v175, v174);
  v55 = v171;
  v159 = *(v53 + v171[10]);

  sub_24AFF8258(v53, &qword_27EFCE680);
  v56 = *(v40 + 16);
  swift_getKeyPath();
  v164 = a3;
  v177 = v54;
  sub_24B215C08(&qword_27EFCE690, type metadata accessor for SettingsFindMyServiceProvider);

  if (v56)
  {

    sub_24B2D2584();

    v177 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    v57 = v54 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
    swift_beginAccess();
    v58 = v171[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v176 = *(v57 + v58);
    *(v57 + v58) = 0x8000000000000000;
    sub_24B1CB478(v40, v170, a3, isUniquelyReferenced_nonNull_native);

    *(v57 + v58) = v176;
    v55 = v171;
  }

  else
  {
    sub_24B2D2584();

    v177 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18D020(0, v170, a3);
  }

  sub_24B213510(&qword_27EFCE680, &unk_24B2F17B8, &qword_27EFCE698);
  swift_endAccess();
  v177 = v54;
  swift_getKeyPath();
  sub_24B2D2594();

  v60 = v162;
  v172(v175, v174);
  v61 = *(v60 + v55[9]);
  v177 = MEMORY[0x277D84F90];
  v62 = 1 << *(v61 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v61 + 64);
  v65 = (v62 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v67 = 0;
  while (v64)
  {
LABEL_15:
    v69 = *(*(v61 + 56) + ((v67 << 9) | (8 * __clz(__rbit64(v64)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v64 &= v64 - 1;

    result = sub_24B033E90(v69);
  }

  while (1)
  {
    v68 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v68 >= v65)
    {

      v70 = v177;
      sub_24AFF8258(v162, &qword_27EFCE680);
      v71 = sub_24B1D182C(v70);

      swift_getKeyPath();
      v72 = OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider___observationRegistrar;
      v73 = v169;
      v177 = v169;
      v74 = sub_24B215C08(&qword_27EFCE690, type metadata accessor for SettingsFindMyServiceProvider);

      sub_24B2D2584();

      v177 = v73;
      swift_getKeyPath();
      sub_24B2D25A4();

      v75 = v73 + OBJC_IVAR____TtC12FindMyUICore29SettingsFindMyServiceProvider__storage;
      swift_beginAccess();
      *(v75 + v171[10]) = v71;

      v151 = v75;
      sub_24B213B84(&qword_27EFCE680, &unk_24B2F17B8, sub_24B1D238C);
      swift_endAccess();
      v177 = v73;
      swift_getKeyPath();
      v162 = v72;
      v152 = v74;
      sub_24B2D2594();

      v76 = v159;
      v77 = v165;
      if (*(v159 + 16) <= *(v165 + 16) >> 3)
      {
        v177 = v165;

        sub_24B2A4BA0(v76);
        v78 = v177;
      }

      else
      {

        v78 = sub_24B2B1810(v76, v77);
      }

      v79 = v164;
      v80 = v168;
      v81 = v158;
      if (*(v71 + 16) <= *(v76 + 16) >> 3)
      {
        v177 = v76;

        sub_24B2A4BA0(v71);
        if (!*(v177 + 16))
        {
          goto LABEL_25;
        }

LABEL_22:
        v82 = v153;
        v172(v175, v174);
        v166(v81, v82, v80);
        sub_24AFF8258(v82, &qword_27EFCE680);

        v83 = sub_24B2D3164();
        v84 = sub_24B2D5934();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = v79;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v176 = v87;
          *v86 = 136315651;
          sub_24B1D238C();
          v88 = sub_24B2D57F4();
          v90 = sub_24AFF321C(v88, v89, &v176);

          *(v86 + 4) = v90;
          *(v86 + 12) = 2160;
          *(v86 + 14) = 1752392040;
          *(v86 + 22) = 2081;
          v177 = v170;
          v178 = v85;

          v91 = sub_24B2D53C4();
          v93 = sub_24AFF321C(v91, v92, &v176);

          *(v86 + 24) = v93;
          _os_log_impl(&dword_24AFD2000, v83, v84, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v86, 0x20u);
          swift_arrayDestroy();
          v94 = v87;
          v80 = v168;
          MEMORY[0x24C23D530](v94, -1, -1);
          MEMORY[0x24C23D530](v86, -1, -1);

          v95 = v158;
        }

        else
        {

          v95 = v81;
        }

        v160(v95, v80);
        v108 = v157;
        v124 = *(v71 + 16);

        v73 = v169;
        v125 = swift_allocObject();
        *(v125 + 16) = v124 == 0;
        *(v125 + 24) = v73;

        sub_24B2D12C4();

        v79 = v164;
        if (*(v78 + 16))
        {
          goto LABEL_32;
        }

LABEL_28:

        v109 = v149;
        v172(v175, v174);
        v110 = v150;
        v166(v150, v109, v80);
        sub_24AFF8258(v109, &qword_27EFCE680);

        v111 = sub_24B2D3164();
        v112 = sub_24B2D5934();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = v80;
          v115 = swift_slowAlloc();
          v176 = v115;
          *v113 = 136315651;
          sub_24B1D238C();
          v116 = sub_24B2D57F4();
          v118 = v117;

          v119 = sub_24AFF321C(v116, v118, &v176);

          *(v113 + 4) = v119;
          *(v113 + 12) = 2160;
          *(v113 + 14) = 1752392040;
          *(v113 + 22) = 2081;
          v120 = v170;
          v177 = v170;
          v178 = v79;

          v121 = sub_24B2D53C4();
          v123 = sub_24AFF321C(v121, v122, &v176);

          *(v113 + 24) = v123;
          _os_log_impl(&dword_24AFD2000, v111, v112, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v113, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v115, -1, -1);
          MEMORY[0x24C23D530](v113, -1, -1);

          v160(v150, v114);
        }

        else
        {

          v160(v110, v80);
          v120 = v170;
        }

        v141 = v165;
      }

      else
      {

        if (*(sub_24B2B1810(v71, v76) + 16))
        {
          goto LABEL_22;
        }

LABEL_25:

        v96 = v147;
        v172(v175, v174);
        v97 = v148;
        v166(v148, v96, v80);
        sub_24AFF8258(v96, &qword_27EFCE680);

        v98 = sub_24B2D3164();
        v99 = sub_24B2D5934();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v176 = v158;
          *v100 = 136315651;
          sub_24B1D238C();
          v101 = sub_24B2D57F4();
          v103 = sub_24AFF321C(v101, v102, &v176);

          *(v100 + 4) = v103;
          *(v100 + 12) = 2160;
          *(v100 + 14) = 1752392040;
          *(v100 + 22) = 2081;
          v177 = v170;
          v178 = v79;

          v104 = sub_24B2D53C4();
          v106 = sub_24AFF321C(v104, v105, &v176);
          v80 = v168;

          *(v100 + 24) = v106;
          _os_log_impl(&dword_24AFD2000, v98, v99, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v100, 0x20u);
          v107 = v158;
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v107, -1, -1);
          MEMORY[0x24C23D530](v100, -1, -1);
        }

        v160(v97, v80);
        v108 = v157;
        if (!*(v78 + 16))
        {
          goto LABEL_28;
        }

LABEL_32:

        v126 = v154;
        v172(v175, v174);
        v166(v108, v126, v80);
        sub_24AFF8258(v126, &qword_27EFCE680);

        v127 = sub_24B2D3164();
        v128 = sub_24B2D5934();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v176 = v130;
          *v129 = 136315394;
          sub_24B1D238C();
          v131 = sub_24B2D57F4();
          v133 = v132;

          v134 = sub_24AFF321C(v131, v133, &v176);

          *(v129 + 4) = v134;
          *(v129 + 12) = 2080;
          v177 = v170;
          v178 = v79;

          v135 = sub_24B2D53C4();
          v137 = sub_24AFF321C(v135, v136, &v176);

          *(v129 + 14) = v137;
          _os_log_impl(&dword_24AFD2000, v127, v128, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v129, 0x16u);
          swift_arrayDestroy();
          v138 = v130;
          v80 = v168;
          MEMORY[0x24C23D530](v138, -1, -1);
          MEMORY[0x24C23D530](v129, -1, -1);
        }

        else
        {
        }

        v139 = v161;
        v160(v108, v80);
        v140 = v156;
        v141 = v165;
        v142 = *(v159 + 16);

        swift_getKeyPath();
        v177 = v73;
        sub_24B2D2584();

        v166(v140, v151, v80);
        v143 = (*(v139 + 80) + 32) & ~*(v139 + 80);
        v144 = swift_allocObject();
        *(v144 + 16) = v142 == 0;
        *(v144 + 24) = v73;
        (*(v139 + 32))(v144 + v143, v140, v80);

        sub_24B2D12C4();

        v79 = v164;
        v120 = v170;
      }

      v145 = v163;
      v172(v175, v174);
      v146 = *(v145 + v171[12]);

      sub_24AFF8258(v145, &qword_27EFCE680);
      v177 = v120;
      v178 = v79;
      v146(v141, &v177);
    }

    v64 = *(v61 + 64 + 8 * v68);
    ++v67;
    if (v64)
    {
      v67 = v68;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B20FDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v170 = a2;
  v6 = *v3;
  v7 = sub_24B2D3184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v156 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v157 = &v147 - v11;
  MEMORY[0x28223BE20](v12);
  v150 = &v147 - v13;
  MEMORY[0x28223BE20](v14);
  v158 = &v147 - v15;
  MEMORY[0x28223BE20](v16);
  v148 = &v147 - v17;
  v155 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v147 - v20;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE6A0);
  MEMORY[0x28223BE20](v171);
  v154 = &v147 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v149 = &v147 - v24;
  MEMORY[0x28223BE20](v25);
  v153 = &v147 - v26;
  MEMORY[0x28223BE20](v27);
  v147 = &v147 - v28;
  MEMORY[0x28223BE20](v29);
  v162 = &v147 - v30;
  MEMORY[0x28223BE20](v31);
  v163 = &v147 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v147 - v34;
  v36 = sub_24B215C08(&qword_27EFCE6A8, type metadata accessor for SettingsProvider);
  v37 = v36 + 24;
  v38 = *(v36 + 24);
  v169 = v3;
  v174 = v36;
  v175 = v6;
  v39 = v6;
  v40 = a1;
  v172 = v38;
  v173 = v37;
  (v38)(v39);
  v41 = *(v8 + 16);
  v167 = v8 + 16;
  v168 = v7;
  v166 = v41;
  v41(v21, v35, v7);
  sub_24AFF8258(v35, &qword_27EFCE6A0);

  v42 = sub_24B2D3164();
  v43 = sub_24B2D5934();

  v44 = os_log_type_enabled(v42, v43);
  v165 = a1;
  v161 = v8;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v176 = v46;
    *v45 = 136315394;
    sub_24B1D23E0();
    v47 = sub_24B2D57F4();
    v49 = sub_24AFF321C(v47, v48, &v176);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v177 = v170;
    v178 = a3;

    v50 = sub_24B2D53C4();
    v52 = sub_24AFF321C(v50, v51, &v176);
    v40 = v165;

    *(v45 + 14) = v52;
    _os_log_impl(&dword_24AFD2000, v42, v43, "SettingsProviderProtocol: subscriptions\n- subscriptions: %s\n- subscriber: %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23D530](v46, -1, -1);
    MEMORY[0x24C23D530](v45, -1, -1);
  }

  v160 = *(v8 + 8);
  v160(v21, v168);
  v53 = v163;
  v54 = v169;
  v172(v175, v174);
  v55 = v171;
  v159 = *(v53 + v171[10]);

  sub_24AFF8258(v53, &qword_27EFCE6A0);
  v56 = *(v40 + 16);
  swift_getKeyPath();
  v164 = a3;
  v177 = v54;
  sub_24B215C08(&qword_27EFCE6B0, type metadata accessor for SettingsProvider);

  if (v56)
  {

    sub_24B2D2584();

    v177 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    v57 = v54 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
    swift_beginAccess();
    v58 = v171[9];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v176 = *(v57 + v58);
    *(v57 + v58) = 0x8000000000000000;
    sub_24B1CB4A8(v40, v170, a3, isUniquelyReferenced_nonNull_native);

    *(v57 + v58) = v176;
    v55 = v171;
  }

  else
  {
    sub_24B2D2584();

    v177 = v54;
    swift_getKeyPath();
    sub_24B2D25A4();

    swift_beginAccess();
    sub_24B18D060(0, v170, a3);
  }

  sub_24B213510(&qword_27EFCE6A0, &unk_24B2F1800, &qword_27EFCE6B8);
  swift_endAccess();
  v177 = v54;
  swift_getKeyPath();
  sub_24B2D2594();

  v60 = v162;
  v172(v175, v174);
  v61 = *(v60 + v55[9]);
  v177 = MEMORY[0x277D84F90];
  v62 = 1 << *(v61 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v61 + 64);
  v65 = (v62 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v67 = 0;
  while (v64)
  {
LABEL_15:
    v69 = *(*(v61 + 56) + ((v67 << 9) | (8 * __clz(__rbit64(v64)))));
    sub_24B2D5694();

    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v64 &= v64 - 1;

    result = sub_24B0340D0(v69);
  }

  while (1)
  {
    v68 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v68 >= v65)
    {

      v70 = v177;
      sub_24AFF8258(v162, &qword_27EFCE6A0);
      v71 = sub_24B1D185C(v70);

      swift_getKeyPath();
      v72 = OBJC_IVAR____TtC12FindMyUICore16SettingsProvider___observationRegistrar;
      v73 = v169;
      v177 = v169;
      v74 = sub_24B215C08(&qword_27EFCE6B0, type metadata accessor for SettingsProvider);

      sub_24B2D2584();

      v177 = v73;
      swift_getKeyPath();
      sub_24B2D25A4();

      v75 = v73 + OBJC_IVAR____TtC12FindMyUICore16SettingsProvider__storage;
      swift_beginAccess();
      *(v75 + v171[10]) = v71;

      v151 = v75;
      sub_24B213B84(&qword_27EFCE6A0, &unk_24B2F1800, sub_24B1D23E0);
      swift_endAccess();
      v177 = v73;
      swift_getKeyPath();
      v162 = v72;
      v152 = v74;
      sub_24B2D2594();

      v76 = v159;
      v77 = v165;
      if (*(v159 + 16) <= *(v165 + 16) >> 3)
      {
        v177 = v165;

        sub_24B2A4D44(v76);
        v78 = v177;
      }

      else
      {

        v78 = sub_24B2B1878(v76, v77);
      }

      v79 = v164;
      v80 = v168;
      v81 = v158;
      if (*(v71 + 16) <= *(v76 + 16) >> 3)
      {
        v177 = v76;

        sub_24B2A4D44(v71);
        if (!*(v177 + 16))
        {
          goto LABEL_25;
        }

LABEL_22:
        v82 = v153;
        v172(v175, v174);
        v166(v81, v82, v80);
        sub_24AFF8258(v82, &qword_27EFCE6A0);

        v83 = sub_24B2D3164();
        v84 = sub_24B2D5934();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = v79;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v176 = v87;
          *v86 = 136315651;
          sub_24B1D23E0();
          v88 = sub_24B2D57F4();
          v90 = sub_24AFF321C(v88, v89, &v176);

          *(v86 + 4) = v90;
          *(v86 + 12) = 2160;
          *(v86 + 14) = 1752392040;
          *(v86 + 22) = 2081;
          v177 = v170;
          v178 = v85;

          v91 = sub_24B2D53C4();
          v93 = sub_24AFF321C(v91, v92, &v176);

          *(v86 + 24) = v93;
          _os_log_impl(&dword_24AFD2000, v83, v84, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- SubscriptionsThatDoNotExistAnymore: %s\n- SettingsSubscriber: %{private,mask.hash}s", v86, 0x20u);
          swift_arrayDestroy();
          v94 = v87;
          v80 = v168;
          MEMORY[0x24C23D530](v94, -1, -1);
          MEMORY[0x24C23D530](v86, -1, -1);

          v95 = v158;
        }

        else
        {

          v95 = v81;
        }

        v160(v95, v80);
        v108 = v157;
        v124 = *(v71 + 16);

        v73 = v169;
        v125 = swift_allocObject();
        *(v125 + 16) = v124 == 0;
        *(v125 + 24) = v73;

        sub_24B2D12C4();

        v79 = v164;
        if (*(v78 + 16))
        {
          goto LABEL_32;
        }

LABEL_28:

        v109 = v149;
        v172(v175, v174);
        v110 = v150;
        v166(v150, v109, v80);
        sub_24AFF8258(v109, &qword_27EFCE6A0);

        v111 = sub_24B2D3164();
        v112 = sub_24B2D5934();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = v80;
          v115 = swift_slowAlloc();
          v176 = v115;
          *v113 = 136315651;
          sub_24B1D23E0();
          v116 = sub_24B2D57F4();
          v118 = v117;

          v119 = sub_24AFF321C(v116, v118, &v176);

          *(v113 + 4) = v119;
          *(v113 + 12) = 2160;
          *(v113 + 14) = 1752392040;
          *(v113 + 22) = 2081;
          v120 = v170;
          v177 = v170;
          v178 = v79;

          v121 = sub_24B2D53C4();
          v123 = sub_24AFF321C(v121, v122, &v176);

          *(v113 + 24) = v123;
          _os_log_impl(&dword_24AFD2000, v111, v112, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v113, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v115, -1, -1);
          MEMORY[0x24C23D530](v113, -1, -1);

          v160(v150, v114);
        }

        else
        {

          v160(v110, v80);
          v120 = v170;
        }

        v141 = v165;
      }

      else
      {

        if (*(sub_24B2B1878(v71, v76) + 16))
        {
          goto LABEL_22;
        }

LABEL_25:

        v96 = v147;
        v172(v175, v174);
        v97 = v148;
        v166(v148, v96, v80);
        sub_24AFF8258(v96, &qword_27EFCE6A0);

        v98 = sub_24B2D3164();
        v99 = sub_24B2D5934();

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v158 = swift_slowAlloc();
          v176 = v158;
          *v100 = 136315651;
          sub_24B1D23E0();
          v101 = sub_24B2D57F4();
          v103 = sub_24AFF321C(v101, v102, &v176);

          *(v100 + 4) = v103;
          *(v100 + 12) = 2160;
          *(v100 + 14) = 1752392040;
          *(v100 + 22) = 2081;
          v177 = v170;
          v178 = v79;

          v104 = sub_24B2D53C4();
          v106 = sub_24AFF321C(v104, v105, &v176);
          v80 = v168;

          *(v100 + 24) = v106;
          _os_log_impl(&dword_24AFD2000, v98, v99, "SettingsProviderProtocol: setSubscriptions-didRemoveUniqueSubscriptions\n- Skipping notification due to%s\n- SettingsSubscriber: %{private,mask.hash}s", v100, 0x20u);
          v107 = v158;
          swift_arrayDestroy();
          MEMORY[0x24C23D530](v107, -1, -1);
          MEMORY[0x24C23D530](v100, -1, -1);
        }

        v160(v97, v80);
        v108 = v157;
        if (!*(v78 + 16))
        {
          goto LABEL_28;
        }

LABEL_32:

        v126 = v154;
        v172(v175, v174);
        v166(v108, v126, v80);
        sub_24AFF8258(v126, &qword_27EFCE6A0);

        v127 = sub_24B2D3164();
        v128 = sub_24B2D5934();

        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v176 = v130;
          *v129 = 136315394;
          sub_24B1D23E0();
          v131 = sub_24B2D57F4();
          v133 = v132;

          v134 = sub_24AFF321C(v131, v133, &v176);

          *(v129 + 4) = v134;
          *(v129 + 12) = 2080;
          v177 = v170;
          v178 = v79;

          v135 = sub_24B2D53C4();
          v137 = sub_24AFF321C(v135, v136, &v176);

          *(v129 + 14) = v137;
          _os_log_impl(&dword_24AFD2000, v127, v128, "SettingsProviderProtocol: setSubscriptions-didAddNewUniqueSubscriptions\n- subscriptionsThatDidNotExistBefore: %s\n- subscriber: %s", v129, 0x16u);
          swift_arrayDestroy();
          v138 = v130;
          v80 = v168;
          MEMORY[0x24C23D530](v138, -1, -1);
          MEMORY[0x24C23D530](v129, -1, -1);
        }

        else
        {
        }

        v139 = v161;
        v160(v108, v80);
        v140 = v156;
        v141 = v165;
        v142 = *(v159 + 16);

        swift_getKeyPath();
        v177 = v73;
        sub_24B2D2584();

        v166(v140, v151, v80);
        v143 = (*(v139 + 80) + 32) & ~*(v139 + 80);
        v144 = swift_allocObject();
        *(v144 + 16) = v142 == 0;
        *(v144 + 24) = v73;
        (*(v139 + 32))(v144 + v143, v140, v80);

        sub_24B2D12C4();

        v79 = v164;
        v120 = v170;
      }

      v145 = v163;
      v172(v175, v174);
      v146 = *(v145 + v171[12]);

      sub_24AFF8258(v145, &qword_27EFCE6A0);
      v177 = v120;
      v178 = v79;
      v146(v141, &v177);
    }

    v64 = *(v61 + 64 + 8 * v68);
    ++v67;
    if (v64)
    {
      v67 = v68;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24B211344@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v112 = a4;
  v111 = a3;
  v133 = a2;
  v123 = a1;
  v119 = a5;
  v118 = sub_24B2D1704();
  v122 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v117 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE670);
  MEMORY[0x28223BE20](v6 - 8);
  v121 = &v105 - v7;
  v109 = type metadata accessor for SettingsContactsProvider.Subscription();
  MEMORY[0x28223BE20](v109);
  v110 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCDE28);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v115 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v105 - v12;
  v132 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState(0);
  v13 = *(v132 - 8);
  v14 = MEMORY[0x28223BE20](v132);
  v116 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v114 = &v105 - v17;
  MEMORY[0x28223BE20](v16);
  v129 = &v105 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE5F8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v127 = &v105 - v23;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE260);
  v107 = *(v130 - 8);
  v24 = MEMORY[0x28223BE20](v130);
  v131 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v126 = &v105 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFCE258);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v106 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v108 = &v105 - v30;
  v31 = sub_24B2D5694();
  v113 = sub_24B2D5684();
  v125 = v31;
  sub_24B2D5604();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v32 = v133 + 64;
  v33 = 1 << v133[32];
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v133 + 8);
  v36 = (v33 + 63) >> 6;

  v38 = 0;
  v128 = v22;
  v39 = v131;
  v124 = v13;
  while (v35)
  {
LABEL_14:
    v41 = __clz(__rbit64(v35)) | (v38 << 6);
    v42 = v133;
    v43 = *(v133 + 6);
    v44 = v43 + *(*(type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier(0) - 8) + 72) * v41;
    v45 = v126;
    sub_24B215C50(v44, v126, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
    v46 = *(v42 + 7) + *(v13 + 72) * v41;
    v47 = v130;
    sub_24B215C50(v46, v45 + *(v130 + 48), type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    sub_24B0391CC(v45, v39, &qword_27EFCE260);
    v48 = *(v47 + 48);
    sub_24B2D5684();
    sub_24B2D5604();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v49 = v129;
    sub_24B215C50(v39 + v48, v129, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v50 = v128;
      sub_24B215578(v49, v128, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
      v51 = 0;
    }

    else
    {
      v51 = 1;
      v50 = v128;
    }

    v52 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
    v53 = *(v52 - 8);
    (*(v53 + 56))(v50, v51, 1, v52);
    v54 = v50;
    v55 = v127;
    sub_24B0391CC(v54, v127, &qword_27EFCE5F8);
    if ((*(v53 + 48))(v55, 1, v52) == 1)
    {
      sub_24AFF8258(v55, &qword_27EFCE5F8);
      v13 = v124;
LABEL_7:

      v39 = v131;
      goto LABEL_8;
    }

    v56 = (v55 + *(v52 + 20));
    v57 = *v56;
    v58 = v56[1];

    sub_24B215CB8(v55, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState);
    v59 = type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0);
    v13 = v124;
    if (!v58)
    {
      goto LABEL_7;
    }

    v60 = (v123 + *(v59 + 20));
    v39 = v131;
    if (v57 == *v60 && v58 == v60[1])
    {

      goto LABEL_43;
    }

    v61 = sub_24B2D6004();

    if (v61)
    {

LABEL_43:
      v64 = v108;
      sub_24B0391CC(v39, v108, &qword_27EFCE260);
      v62 = v107;
      v63 = *(v107 + 56);
      v65 = v64;
      v66 = 0;
LABEL_26:
      v67 = v130;
      v63(v65, v66, 1, v130);
      v68 = v118;
      v69 = v121;
      v70 = v122;
      v71 = v132;
      v72 = v111;
      v73 = v106;
      sub_24B2156F0(v64, v106);
      if ((*(v62 + 48))(v73, 1, v67) == 1)
      {
        sub_24AFF8258(v73, &qword_27EFCE258);
        (*(v13 + 56))(v120, 1, 1, v71);
      }

      else
      {
        v74 = v73 + *(v67 + 48);
        v75 = v120;
        sub_24B215578(v74, v120, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
        (*(v13 + 56))(v75, 0, 1, v71);
        sub_24B215CB8(v73, type metadata accessor for SettingsPeopleRelationshipsProvider.Subscription.Identifier);
      }

      v76 = v110;
      v77 = *(v70 + 16);
      v77(v110, v123, v68);
      swift_storeEnumTagMultiPayload();
      v78 = v112;
      if (*(v72 + 16) && (v79 = sub_24B18186C(v76), (v80 & 1) != 0))
      {
        v133 = *(*(v72 + 56) + 8 * v79);
        sub_24B215CB8(v76, type metadata accessor for SettingsContactsProvider.Subscription);
        if (!*(v78 + 16))
        {
          goto LABEL_32;
        }

LABEL_34:
        v81 = v13;
        v82 = sub_24B181A88(v123);
        if (v83)
        {
          v84 = v82;
          v85 = *(v78 + 56);
          v86 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
          v87 = *(v86 - 8);
          sub_24B215C50(v85 + *(v87 + 72) * v84, v69, type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState);
          sub_24AFF8258(v64, &qword_27EFCE258);
          (*(v87 + 56))(v69, 0, 1, v86);
LABEL_37:
          v89 = v114;
          v90 = v123;
          v77(v114, v123, v68);
          v91 = (v90 + *(type metadata accessor for SettingsFamilyRelationshipsProvider.Subscription.Identifier(0) + 20));
          v93 = *v91;
          v92 = v91[1];
          v94 = type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.LoadedState(0);
          type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowerState(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState.FollowingState(0);
          swift_storeEnumTagMultiPayload();
          v95 = (v89 + *(v94 + 20));
          *v95 = v93;
          v95[1] = v92;
          v96 = v89 + *(v94 + 32);
          *v96 = 0;
          *(v96 + 8) = 1;
          v97 = v132;
          swift_storeEnumTagMultiPayload();
          v98 = v117;
          v77(v117, v90, v68);
          v99 = v115;
          sub_24B0391CC(v120, v115, &qword_27EFCDE28);
          v100 = *(v81 + 48);
          if (v100(v99, 1, v97) == 1)
          {
            v101 = v116;
            sub_24B215578(v89, v116, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
            v102 = v100(v99, 1, v97);

            if (v102 != 1)
            {
              sub_24AFF8258(v99, &qword_27EFCDE28);
            }
          }

          else
          {

            sub_24B215CB8(v89, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
            v101 = v116;
            sub_24B215578(v99, v116, type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
          }

          v103 = v119;
          (*(v122 + 32))(v119, v98, v68);
          v104 = type metadata accessor for SettingsPersonInfo();
          sub_24B215578(v101, v103 + v104[5], type metadata accessor for SettingsPeopleRelationshipsProvider.RelationshipState);
          *(v103 + v104[6]) = v133;
          sub_24B0391CC(v121, v103 + v104[7], &qword_27EFCE670);
          (*(*(v104 - 1) + 56))(v103, 0, 1, v104);
        }
      }

      else
      {
        sub_24B215CB8(v76, type metadata accessor for SettingsContactsProvider.Subscription);
        v133 = 0;
        if (*(v78 + 16))
        {
          goto LABEL_34;
        }

LABEL_32:
        v81 = v13;
      }

      sub_24AFF8258(v64, &qword_27EFCE258);
      v88 = type metadata accessor for SettingsFamilyRelationshipsProvider.FamilyMemberState(0);
      (*(*(v88 - 8) + 56))(v69, 1, 1, v88);
      goto LABEL_37;
    }

LABEL_8:
    v35 &= v35 - 1;
    result = sub_24AFF8258(v39, &qword_27EFCE260);
  }

  while (1)
  {
    v40 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v40 >= v36)
    {

      v62 = v107;
      v63 = *(v107 + 56);
      v64 = v108;
      v65 = v108;
      v66 = 1;
      goto LABEL_26;
    }

    v35 = *&v32[8 * v40];
    ++v38;
    if (v35)
    {
      v38 = v40;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}