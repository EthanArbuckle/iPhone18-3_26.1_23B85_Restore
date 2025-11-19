uint64_t sub_22B1335A8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v7 = *v1;

  if (v0)
  {
    v4 = *(v2 + 432);

    v5 = sub_22B1348E0;
  }

  else
  {
    v5 = sub_22B1336C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22B1336C0()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 432);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    if (*(v4 + 16))
    {
      v5 = swift_task_alloc();
      *(v0 + 480) = v5;
      *v5 = v0;
      v5[1] = sub_22B1345B0;
      v6 = *(v0 + 432);

      return (sub_22B1309C4)(v6);
    }

    v62 = *(v0 + 432);

    goto LABEL_21;
  }

  (*(v3 + 32))(*(v0 + 248), v1, v2);
  v8 = sub_22B360BFC();
  v9 = *(v0 + 248);
  if (v8)
  {
    v10 = *(v0 + 432);
    v11 = *(v0 + 224);
    v12 = *(v0 + 232);

    sub_22B134CDC();
    v13 = swift_allocError();
    *v14 = 2;
    swift_willThrow();
    (*(v12 + 8))(v9, v11);
    v16 = *(v0 + 392);
    v15 = *(v0 + 400);
    v17 = *(v0 + 384);
    v18 = *(v0 + 280);
    v19 = *(v0 + 264);
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    v16(v18, v17, v19);
    v20 = v13;
    v21 = sub_22B36050C();
    v22 = sub_22B360D1C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v13;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_22B116000, v21, v22, "Failed to fetch event digests: %@", v23, 0xCu);
      sub_22B123284(v24, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v24, -1, -1);
      MEMORY[0x23188F650](v23, -1, -1);
    }

    else
    {
    }

    v63 = *(v0 + 272) + 8;
    (*(v0 + 408))(*(v0 + 280), *(v0 + 264));
LABEL_21:
    v64 = *(v0 + 400);
    (*(v0 + 392))(*(v0 + 288), *(v0 + 384), *(v0 + 264));
    v65 = sub_22B36050C();
    v66 = sub_22B360D1C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = *(v0 + 416);
      v68 = swift_slowAlloc();
      *v68 = 134217984;
      *(v68 + 4) = v67;
      _os_log_impl(&dword_22B116000, v65, v66, "[ActivityLogCoordinator] Downloaded %ld older load daily digests", v68, 0xCu);
      MEMORY[0x23188F650](v68, -1, -1);
    }

    v69 = *(v0 + 408);
    v71 = *(v0 + 368);
    v70 = *(v0 + 376);
    v73 = *(v0 + 352);
    v72 = *(v0 + 360);
    v116 = *(v0 + 344);
    v117 = *(v0 + 320);
    v118 = *(v0 + 312);
    v119 = *(v0 + 304);
    v74 = *(v0 + 288);
    v120 = *(v0 + 296);
    v121 = *(v0 + 280);
    v76 = *(v0 + 264);
    v75 = *(v0 + 272);
    v122 = *(v0 + 256);
    v123 = *(v0 + 248);
    v124 = *(v0 + 240);
    v125 = *(v0 + 216);
    v126 = *(v0 + 208);
    v128 = *(v0 + 184);
    v130 = *(v0 + 176);

    v69(v74, v76);
    (*(v71 + 8))(v70, v72);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v77 = *(v0 + 8);
    v78 = *(v0 + 416);

    return v77(v78);
  }

  v27 = *(v0 + 488);
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 224);
  (*(v29 + 16))(v28, *(v0 + 248), v30);
  if ((*(v29 + 88))(v28, v30) != v27)
  {
    v79 = *(v0 + 400);
    (*(v0 + 392))(*(v0 + 296), *(v0 + 384), *(v0 + 264));
    v80 = sub_22B36050C();
    v81 = sub_22B360D1C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_22B116000, v80, v81, "Unknown event type", v82, 2u);
      MEMORY[0x23188F650](v82, -1, -1);
    }

    v83 = *(v0 + 408);
    v84 = *(v0 + 296);
    v85 = *(v0 + 264);
    v86 = *(v0 + 272);
    v88 = *(v0 + 240);
    v87 = *(v0 + 248);
    v89 = *(v0 + 224);
    v90 = *(v0 + 232);

    v83(v84, v85);
    v91 = *(v90 + 8);
    v91(v87, v89);
    v91(v88, v89);
    goto LABEL_32;
  }

  v31 = *(v0 + 492);
  v32 = *(v0 + 240);
  v33 = *(v0 + 216);
  v35 = *(v0 + 200);
  v34 = *(v0 + 208);
  v36 = *(v0 + 192);
  (*(*(v0 + 232) + 96))(v32, *(v0 + 224));
  (*(v35 + 32))(v33, v32, v36);
  (*(v35 + 16))(v34, v33, v36);
  if ((*(v35 + 88))(v34, v36) != v31)
  {
    v92 = *(v0 + 400);
    (*(v0 + 392))(*(v0 + 304), *(v0 + 384), *(v0 + 264));
    v93 = sub_22B36050C();
    v94 = sub_22B360D1C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_22B116000, v93, v94, "Unknown energykit event", v95, 2u);
      MEMORY[0x23188F650](v95, -1, -1);
    }

    v96 = *(v0 + 408);
    v97 = *(v0 + 304);
    v98 = *(v0 + 264);
    v99 = *(v0 + 272);
    v100 = *(v0 + 232);
    v127 = *(v0 + 224);
    v129 = *(v0 + 248);
    v101 = *(v0 + 216);
    v131 = *(v0 + 208);
    v103 = *(v0 + 192);
    v102 = *(v0 + 200);

    v96(v97, v98);
    v104 = *(v102 + 8);
    v104(v101, v103);
    (*(v100 + 8))(v129, v127);
    v104(v131, v103);
LABEL_32:
    v45 = *(v0 + 432);
    v61 = *(v0 + 416);
    goto LABEL_33;
  }

  v37 = *(v0 + 432);
  v38 = *(v0 + 208);
  v39 = *(v0 + 184);
  v41 = *(v0 + 168);
  v40 = *(v0 + 176);
  v42 = *(v0 + 160);
  (*(*(v0 + 200) + 96))(v38, *(v0 + 192));
  v43 = *(v41 + 32);
  v43(v39, v38, v42);
  (*(v41 + 16))(v40, v39, v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v0 + 432);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_22B32CCA8(0, *(v45 + 2) + 1, 1, *(v0 + 432));
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_22B32CCA8(v46 > 1, v47 + 1, 1, v45);
  }

  *(v0 + 448) = v45;
  v48 = *(v0 + 424);
  v50 = *(v0 + 168);
  v49 = *(v0 + 176);
  v51 = *(v0 + 160);
  *(v45 + 2) = v47 + 1;
  v52 = *(v50 + 80);
  *(v0 + 496) = v52;
  v53 = *(v50 + 72);
  *(v0 + 456) = v53;
  v43(&v45[((v52 + 32) & ~v52) + v53 * v47], v49, v51);
  v54 = v48 + 1;
  *(v0 + 464) = v48 + 1;
  if (__OFADD__(v48, 1))
  {
    __break(1u);
LABEL_44:
    swift_once();
    goto LABEL_40;
  }

  if (v47 < 0x63)
  {
    v55 = *(v0 + 248);
    v56 = *(v0 + 224);
    v57 = *(v0 + 232);
    v58 = *(v0 + 216);
    v59 = *(v0 + 192);
    v60 = *(v0 + 200);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    (*(v60 + 8))(v58, v59);
    (*(v57 + 8))(v55, v56);
    v61 = vdupq_n_s64(v54);
LABEL_33:
    *(v0 + 432) = v45;
    *(v0 + 416) = v61;
    v105 = *(v0 + 80);
    v106 = *(v0 + 88);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v105);
    v107 = *(MEMORY[0x277D856D8] + 4);
    v108 = swift_task_alloc();
    *(v0 + 440) = v108;
    *v108 = v0;
    v108[1] = sub_22B1335A8;
    v109 = *(v0 + 256);

    return MEMORY[0x282200310](v109, 0, 0, v0 + 120, v105, v106);
  }

  v110 = *(v0 + 400);
  (*(v0 + 392))(*(v0 + 312), *(v0 + 384), *(v0 + 264));

  v111 = sub_22B36050C();
  v112 = sub_22B360D0C();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 134217984;
    *(v113 + 4) = *(v45 + 2);

    _os_log_impl(&dword_22B116000, v111, v112, "[ActivityLogCoordinator] Batch processing %ld daily session digest events", v113, 0xCu);
    MEMORY[0x23188F650](v113, -1, -1);
  }

  else
  {
  }

  v114 = *(v0 + 272) + 8;
  (*(v0 + 408))(*(v0 + 312), *(v0 + 264));
  if (qword_27D8B9F78 != -1)
  {
    goto LABEL_44;
  }

LABEL_40:
  v115 = swift_task_alloc();
  *(v0 + 472) = v115;
  *v115 = v0;
  v115[1] = sub_22B1341D0;

  return sub_22B175388(v45);
}

uint64_t sub_22B1341D0()
{
  v2 = *(*v1 + 472);
  v4 = *v1;

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_22B1342D8, 0, 0);
}

uint64_t sub_22B1342D8()
{
  v1 = *(v0 + 448);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 448);
  if (isUniquelyReferenced_nonNull_native)
  {
    v4 = *(v3 + 16);
    v5 = *(v0 + 448);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 448);
    if ((v6 & 1) == 0)
    {
      v7 = sub_22B32CCA8(0, v4, 1, *(v0 + 448));
    }

    v8 = *(v0 + 160);
    v9 = v7 + ((*(v0 + 496) + 32) & ~*(v0 + 496));
    swift_arrayDestroy();
    if (v4)
    {
      v10 = *(v0 + 456);
      if (v10 * v4 > 0 || v9 >= &v9[v10 * v4 + (v7[2] - v4) * v10])
      {
        v12 = *(v0 + 160);
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v10)
      {
        v30 = *(v0 + 160);
        swift_arrayInitWithTakeBackToFront();
      }

      v7[2] -= v4;
    }

    v31 = *(v0 + 248);
    v32 = *(v0 + 224);
    v33 = *(v0 + 232);
    v34 = *(v0 + 216);
    v35 = *(v0 + 192);
    v36 = *(v0 + 200);
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    (*(v36 + 8))(v34, v35);
    (*(v33 + 8))(v31, v32);
    goto LABEL_24;
  }

  if (*(v3 + 24) >= 2uLL)
  {
    v13 = *(v0 + 456);
    v14 = (*(v0 + 496) + 32) & ~*(v0 + 496);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA250, &unk_22B367FC0);
    v7 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v7);
    if (v13)
    {
      v21 = *(v0 + 456);
      if (v15 - v14 != 0x8000000000000000 || v21 != -1)
      {
        v7[2] = 0;
        v7[3] = 2 * ((v15 - v14) / v21);
        v23 = *(v0 + 448);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x282200310](v15, v16, v17, v18, v19, v20);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_19:
  v24 = *(v0 + 248);
  v25 = *(v0 + 224);
  v26 = *(v0 + 232);
  v27 = *(v0 + 216);
  v28 = *(v0 + 192);
  v29 = *(v0 + 200);
  (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
  (*(v29 + 8))(v27, v28);
  (*(v26 + 8))(v24, v25);

LABEL_24:
  v37 = *(v0 + 464);
  *(v0 + 424) = v37;
  *(v0 + 432) = v7;
  *(v0 + 416) = v37;
  v38 = *(v0 + 80);
  v39 = *(v0 + 88);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v38);
  v40 = *(MEMORY[0x277D856D8] + 4);
  v41 = swift_task_alloc();
  *(v0 + 440) = v41;
  *v41 = v0;
  v41[1] = sub_22B1335A8;
  v15 = *(v0 + 256);
  v18 = v0 + 120;
  v16 = 0;
  v17 = 0;
  v19 = v38;
  v20 = v39;

  return MEMORY[0x282200310](v15, v16, v17, v18, v19, v20);
}

uint64_t sub_22B1345B0()
{
  v1 = *(*v0 + 480);
  v2 = *(*v0 + 432);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1346C8, 0, 0);
}

uint64_t sub_22B1346C8()
{
  v1 = *(v0 + 400);
  (*(v0 + 392))(*(v0 + 288), *(v0 + 384), *(v0 + 264));
  v2 = sub_22B36050C();
  v3 = sub_22B360D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 416);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22B116000, v2, v3, "[ActivityLogCoordinator] Downloaded %ld older load daily digests", v5, 0xCu);
    MEMORY[0x23188F650](v5, -1, -1);
  }

  v6 = *(v0 + 408);
  v8 = *(v0 + 368);
  v7 = *(v0 + 376);
  v10 = *(v0 + 352);
  v9 = *(v0 + 360);
  v17 = *(v0 + 344);
  v18 = *(v0 + 320);
  v19 = *(v0 + 312);
  v20 = *(v0 + 304);
  v11 = *(v0 + 288);
  v21 = *(v0 + 296);
  v22 = *(v0 + 280);
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v23 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 240);
  v26 = *(v0 + 216);
  v27 = *(v0 + 208);
  v28 = *(v0 + 184);
  v29 = *(v0 + 176);

  v6(v11, v13);
  (*(v8 + 8))(v7, v9);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v14 = *(v0 + 8);
  v15 = *(v0 + 416);

  return v14(v15);
}

uint64_t sub_22B1348E0()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 384);
  v5 = *(v0 + 280);
  v6 = *(v0 + 264);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_22B36050C();
  v9 = sub_22B360D1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_22B116000, v8, v9, "Failed to fetch event digests: %@", v10, 0xCu);
    sub_22B123284(v11, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 272) + 8;
  (*(v0 + 408))(*(v0 + 280), *(v0 + 264));
  v15 = *(v0 + 400);
  (*(v0 + 392))(*(v0 + 288), *(v0 + 384), *(v0 + 264));
  v16 = sub_22B36050C();
  v17 = sub_22B360D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 416);
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = v18;
    _os_log_impl(&dword_22B116000, v16, v17, "[ActivityLogCoordinator] Downloaded %ld older load daily digests", v19, 0xCu);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  v20 = *(v0 + 408);
  v22 = *(v0 + 368);
  v21 = *(v0 + 376);
  v24 = *(v0 + 352);
  v23 = *(v0 + 360);
  v31 = *(v0 + 344);
  v32 = *(v0 + 320);
  v33 = *(v0 + 312);
  v34 = *(v0 + 304);
  v25 = *(v0 + 288);
  v35 = *(v0 + 296);
  v36 = *(v0 + 280);
  v27 = *(v0 + 264);
  v26 = *(v0 + 272);
  v37 = *(v0 + 256);
  v38 = *(v0 + 248);
  v39 = *(v0 + 240);
  v40 = *(v0 + 216);
  v41 = *(v0 + 208);
  v42 = *(v0 + 184);
  v43 = *(v0 + 176);

  v20(v25, v27);
  (*(v22 + 8))(v21, v23);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v28 = *(v0 + 8);
  v29 = *(v0 + 416);

  return v28(v29);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_22B134CDC()
{
  result = qword_281408E20;
  if (!qword_281408E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281408E20);
  }

  return result;
}

unint64_t sub_22B134D30()
{
  result = qword_27D8BA260;
  if (!qword_27D8BA260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BA258, &qword_22B363808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA260);
  }

  return result;
}

uint64_t sub_22B134D94(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B124D88;

  return sub_22B12FC4C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_22B134E5C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22B119A60;

  return sub_22B12FC4C(a1, a2, v6, v7, v9, v8);
}

unint64_t sub_22B134F24()
{
  result = qword_27D8BA278;
  if (!qword_27D8BA278)
  {
    sub_22B35EA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BA278);
  }

  return result;
}

uint64_t sub_22B134F7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B12FFA0(a1, v4, v5, v7, v6);
}

uint64_t sub_22B13503C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B130250(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22B135144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22B124D88;

  return sub_22B1302F8(a1, v4, v5, v7, v6);
}

uint64_t sub_22B135204(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22B124D88;

  return sub_22B1243B8(a1, v5);
}

id sub_22B1352C0()
{
  type metadata accessor for EnergyUtilityManager();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = [objc_opt_self() standardUserDefaults];
  *(v0 + 112) = result;
  strcpy((v0 + 120), "utilityEKSites");
  v2 = MEMORY[0x277D84F90];
  *(v0 + 135) = -18;
  *(v0 + 136) = v2;
  qword_27D8BB1A0 = v0;
  return result;
}

uint64_t sub_22B13534C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  v35 = v6[2];
  v35(v11, v12, v5);
  v13 = sub_22B36050C();
  v14 = sub_22B360D0C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v6 + 2;
    v17 = v16;
    *&v40[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_22B1A7B20(0xD000000000000018, 0x800000022B368FD0, v40);
    _os_log_impl(&dword_22B116000, v13, v14, "EnergyKitUtilityActor->%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);
  }

  v18 = v6[1];
  v18(v11, v5);
  v20 = v3[14];
  v19 = v3[15];
  v21 = v3[16];
  v22 = sub_22B36081C();
  v23 = [v20 objectForKey_];

  v24 = v36;
  if (v23)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
  }

  v40[0] = v38;
  v40[1] = v39;
  sub_22B137FC8(v40, &v38);
  if (*(&v39 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    v25 = swift_dynamicCast();
    if (v25)
    {
      v26 = v37;
      *&v38 = a1;
      *(&v38 + 1) = v34;
      MEMORY[0x28223BE20](v25);
      *(&v33 - 2) = &v38;
      v27 = sub_22B207C78(sub_22B138090, (&v33 - 4), v26);

      goto LABEL_13;
    }
  }

  else
  {
    sub_22B123284(&v38, &unk_27D8BA950, &qword_22B364940);
  }

  v27 = 0;
LABEL_13:
  v35(v24, v12, v5);
  v28 = sub_22B36050C();
  v29 = sub_22B360CFC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *&v38 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_22B1A7B20(0xD000000000000018, 0x800000022B368FD0, &v38);
    *(v30 + 12) = 1024;
    *(v30 + 14) = v27 & 1;
    _os_log_impl(&dword_22B116000, v28, v29, "%s Onboarding complete: %{BOOL}d", v30, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x23188F650](v31, -1, -1);
    MEMORY[0x23188F650](v30, -1, -1);
  }

  v18(v24, v5);
  sub_22B123284(v40, &unk_27D8BA950, &qword_22B364940);
  return v27 & 1;
}

uint64_t sub_22B13580C(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_22B36052C();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v73 = &v70[-v14];
  MEMORY[0x28223BE20](v15);
  v72 = &v70[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v70[-v18];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  v21 = v9[2];
  v77 = v9 + 2;
  v78 = v20;
  v76 = v21;
  v21(v19, v20, v8);
  v22 = sub_22B36050C();
  v23 = sub_22B360D0C();
  v24 = os_log_type_enabled(v22, v23);
  v75 = v9;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v74 = v12;
    v26 = v8;
    v27 = v25;
    v28 = a3;
    v29 = swift_slowAlloc();
    v81 = v29;
    *v27 = 136315138;
    *(v27 + 4) = sub_22B1A7B20(0xD000000000000024, 0x800000022B368FA0, &v81);
    _os_log_impl(&dword_22B116000, v22, v23, "EnergyKitUtilityActor->%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v30 = v29;
    a3 = v28;
    MEMORY[0x23188F650](v30, -1, -1);
    v31 = v27;
    v8 = v26;
    v12 = v74;
    v9 = v75;
    MEMORY[0x23188F650](v31, -1, -1);
  }

  v32 = v9[1];
  v32(v19, v8);
  v71 = a3;
  if (a3)
  {
    v33 = swift_beginAccess();
    v34 = v4[17];
    v80[0] = a1;
    v80[1] = a2;
    MEMORY[0x28223BE20](v33);
    *&v70[-16] = v80;

    v35 = sub_22B207C78(sub_22B137FAC, &v70[-32], v34);

    if (v35)
    {
      v36 = v72;
      v76(v72, v78, v8);
      v37 = sub_22B36050C();
      v38 = sub_22B360D0C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_22B116000, v37, v38, "already onboarded", v39, 2u);
        v40 = v39;
LABEL_19:
        MEMORY[0x23188F650](v40, -1, -1);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    swift_beginAccess();
    v50 = v4[17];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4[17] = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_22B32CD20(0, *(v50 + 2) + 1, 1, v50);
      v4[17] = v50;
    }

    v53 = *(v50 + 2);
    v52 = *(v50 + 3);
    if (v53 >= v52 >> 1)
    {
      v50 = sub_22B32CD20((v52 > 1), v53 + 1, 1, v50);
    }

    *(v50 + 2) = v53 + 1;
    v54 = &v50[16 * v53];
    *(v54 + 4) = a1;
    *(v54 + 5) = a2;
    v4[17] = v50;
    swift_endAccess();
  }

  else
  {
    swift_beginAccess();
    v41 = v4[17];
    v42 = *(v41 + 16);
    if (!v42)
    {
LABEL_17:
      v36 = v73;
      v76(v73, v78, v8);
      v37 = sub_22B36050C();
      v46 = sub_22B360D0C();
      if (os_log_type_enabled(v37, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22B116000, v37, v46, "not yet onboarded", v47, 2u);
        v40 = v47;
        goto LABEL_19;
      }

LABEL_20:

      v48 = v36;
      v49 = v8;
      return (v32)(v48, v49);
    }

    v43 = 0;
    v44 = (v41 + 40);
    while (1)
    {
      v45 = *(v44 - 1) == a1 && *v44 == a2;
      if (v45 || (sub_22B36134C() & 1) != 0)
      {
        break;
      }

      ++v43;
      v44 += 2;
      if (v42 == v43)
      {
        goto LABEL_17;
      }
    }

    swift_beginAccess();
    sub_22B135FC4(v43);
    swift_endAccess();
  }

  v55 = v4[14];
  swift_beginAccess();
  v56 = v4[17];

  v57 = sub_22B360A3C();

  v58 = v4[15];
  v59 = v4[16];
  v60 = sub_22B36081C();
  [v55 setObject:v57 forKey:v60];

  v76(v12, v78, v8);

  v61 = sub_22B36050C();
  v62 = v8;
  v63 = sub_22B360CFC();

  if (!os_log_type_enabled(v61, v63))
  {

    v48 = v12;
    v49 = v62;
    return (v32)(v48, v49);
  }

  v64 = swift_slowAlloc();
  v65 = swift_slowAlloc();
  v79 = v65;
  *v64 = 136315650;
  *(v64 + 4) = sub_22B1A7B20(0xD000000000000024, 0x800000022B368FA0, &v79);
  v74 = v12;
  *(v64 + 12) = 2080;
  if (v71)
  {
    v66 = 0x696472616F626E6FLL;
  }

  else
  {
    v66 = 0x72616F622D66666FLL;
  }

  v78 = v32;
  if (v71)
  {
    v67 = 0xEA0000000000676ELL;
  }

  else
  {
    v67 = 0xEC000000676E6964;
  }

  v68 = sub_22B1A7B20(v66, v67, &v79);

  *(v64 + 14) = v68;
  *(v64 + 22) = 2080;
  *(v64 + 24) = sub_22B1A7B20(a1, a2, &v79);
  _os_log_impl(&dword_22B116000, v61, v63, "%s Completed %s for %s", v64, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x23188F650](v65, -1, -1);
  MEMORY[0x23188F650](v64, -1, -1);

  return v78(v74, v62);
}

uint64_t sub_22B135FC4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22B206AB0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22B136050(double a1, double a2)
{
  *(v3 + 56) = v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  v4 = sub_22B36052C();
  *(v3 + 64) = v4;
  v5 = *(v4 - 8);
  *(v3 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B136138, v2, 0);
}

uint64_t sub_22B136138()
{
  v29 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[14] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D0C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  v11 = v0[8];
  v10 = v0[9];
  if (v8)
  {
    v27 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B368F70, &v28);
    _os_log_impl(&dword_22B116000, v6, v7, "EnergyKitUtilityActor->%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v14 = *(v10 + 8);
    v14(v27, v11);
  }

  else
  {

    v14 = *(v10 + 8);
    v14(v9, v11);
  }

  v0[17] = v14;
  v5(v0[12], v4, v0[8]);
  v15 = sub_22B36050C();
  v16 = sub_22B360CFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Fetching utilityID from server.", v17, 2u);
    MEMORY[0x23188F650](v17, -1, -1);
  }

  v18 = v0[12];
  v19 = v0[8];
  v20 = v0[9];

  v14(v18, v19);
  sub_22B3602DC();
  v21 = sub_22B36029C();
  v0[18] = v21;
  v22 = *(MEMORY[0x277D18250] + 4);
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = sub_22B136434;
  v24.n128_u64[0] = v0[5];
  v25.n128_u64[0] = v0[6];

  return MEMORY[0x282172618](v21, v24, v25);
}

uint64_t sub_22B136434(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v9 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = *(v3 + 56);
    v6 = sub_22B136790;
  }

  else
  {
    v7 = *(v3 + 56);

    v6 = sub_22B13655C;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B13655C()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 112), *(v0 + 64));

  v3 = sub_22B36050C();
  v4 = sub_22B360D0C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v25 = *(v0 + 136);
    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_22B1A7B20(0xD000000000000020, 0x800000022B368F70, &v26);
    *(v9 + 12) = 2080;
    v11 = MEMORY[0x23188E390](v5, MEMORY[0x277D837D0]);
    v13 = sub_22B1A7B20(v11, v12, &v26);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_22B116000, v3, v4, "%s server result: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);

    v25(v6, v7);
  }

  else
  {
    v14 = *(v0 + 136);
    v15 = *(v0 + 88);
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);

    v14(v15, v16);
  }

  v18 = *(v0 + 160);
  v20 = *(v0 + 96);
  v19 = *(v0 + 104);
  v22 = *(v0 + 80);
  v21 = *(v0 + 88);

  v23 = *(v0 + 8);

  return v23(v18);
}

uint64_t sub_22B136790()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_22B36050C();
  v9 = sub_22B360D1C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 168);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22B116000, v8, v9, "Unable to fetch utilities from server. Error: %@", v12, 0xCu);
    sub_22B123284(v13, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 72) + 8;
  (*(v0 + 136))(*(v0 + 80), *(v0 + 64));
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_22B13695C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B35DF8C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA280, &qword_22B363930) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = sub_22B36052C();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B136AE4, v2, 0);
}

uint64_t sub_22B136AE4()
{
  v50 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  v0[19] = v4;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v0[20] = v5;
  v0[21] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v48 = v5;
  v5(v1, v4, v3);
  v6 = sub_22B36050C();
  v7 = sub_22B360D0C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v10 = v0[12];
  v11 = v0[13];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B368F50, &v49);
    _os_log_impl(&dword_22B116000, v6, v7, "EnergyKitUtilityActor->%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  v0[22] = v14;
  v15 = v0[6];
  v46 = v14;
  if (v15)
  {
    v47 = v0[5];
  }

  else
  {
    v16 = v0[10];
    v17 = v0[11];
    v18 = v0[8];
    v19 = v0[9];
    sub_22B35DF7C();
    sub_22B35DF6C();
    (*(v19 + 8))(v16, v18);
    v20 = sub_22B35DF5C();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v17, 1, v20);
    v23 = v0[11];
    if (v22 == 1)
    {
      sub_22B123284(v0[11], &qword_27D8BA280, &qword_22B363930);
      v47 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v47 = sub_22B35DF4C();
      v15 = v24;
      (*(v21 + 8))(v23, v20);
    }
  }

  v0[23] = v15;
  v25 = v0[6];
  v48(v0[17], v4, v0[12]);

  v26 = sub_22B36050C();
  v27 = sub_22B360D0C();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[17];
  v31 = v0[12];
  v30 = v0[13];
  if (v28)
  {
    v32 = swift_slowAlloc();
    v45 = v4;
    v33 = swift_slowAlloc();
    v49 = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B368F50, &v49);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_22B1A7B20(v47, v15, &v49);
    _os_log_impl(&dword_22B116000, v26, v27, "%s country code: %s", v32, 0x16u);
    swift_arrayDestroy();
    v34 = v33;
    v4 = v45;
    MEMORY[0x23188F650](v34, -1, -1);
    MEMORY[0x23188F650](v32, -1, -1);
  }

  v46(v29, v31);
  v48(v0[16], v4, v0[12]);
  v35 = sub_22B36050C();
  v36 = sub_22B360CFC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_22B116000, v35, v36, "Fetching all utilities from server", v37, 2u);
    MEMORY[0x23188F650](v37, -1, -1);
  }

  v38 = v0[16];
  v40 = v0[12];
  v39 = v0[13];

  v46(v38, v40);
  sub_22B3602DC();
  v41 = sub_22B36029C();
  v0[24] = v41;
  v42 = *(MEMORY[0x277D18268] + 4);
  v43 = swift_task_alloc();
  v0[25] = v43;
  *v43 = v0;
  v43[1] = sub_22B137028;

  return MEMORY[0x282172638](v47, v15, v41);
}

uint64_t sub_22B137028(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  v7 = v3[24];
  v8 = v3[23];
  v9 = v3[7];
  if (v1)
  {

    v10 = sub_22B137400;
  }

  else
  {

    v10 = sub_22B1371A8;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_22B1371A8()
{
  v31 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 120), *(v0 + 152), *(v0 + 96));

  v3 = sub_22B36050C();
  v4 = sub_22B360D0C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 208);
    v29 = *(v0 + 176);
    v6 = *(v0 + 120);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_22B1A7B20(0xD00000000000001DLL, 0x800000022B368F50, &v30);
    *(v9 + 12) = 2080;
    v11 = sub_22B36025C();
    v12 = MEMORY[0x23188E390](v5, v11);
    v14 = sub_22B1A7B20(v12, v13, &v30);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_22B116000, v3, v4, "%s server result: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v10, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);

    v29(v6, v7);
  }

  else
  {
    v15 = *(v0 + 176);
    v16 = *(v0 + 120);
    v17 = *(v0 + 96);
    v18 = *(v0 + 104);

    v15(v16, v17);
  }

  v19 = *(v0 + 208);
  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  v23 = *(v0 + 120);
  v22 = *(v0 + 128);
  v24 = *(v0 + 112);
  v26 = *(v0 + 80);
  v25 = *(v0 + 88);

  v27 = *(v0 + 8);

  return v27(v19);
}

uint64_t sub_22B137400()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  (*(v0 + 160))(*(v0 + 112), *(v0 + 152), *(v0 + 96));
  v3 = v1;
  v4 = sub_22B36050C();
  v5 = sub_22B360D1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22B116000, v4, v5, "Unable to fetch utilities from server. Error: %@", v8, 0xCu);
    sub_22B123284(v9, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v9, -1, -1);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 104) + 8;
  (*(v0 + 176))(*(v0 + 112), *(v0 + 96));
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 112);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);

  v20 = *(v0 + 8);

  return v20(0);
}

uint64_t sub_22B1375D8(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_22B36052C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1376C0, v2, 0);
}

uint64_t sub_22B1376C0()
{
  v29 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[8];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v2, qword_28140BD10);
  v0[14] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[15] = v5;
  v0[16] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_22B36050C();
  v7 = sub_22B360D0C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  v11 = v0[8];
  v10 = v0[9];
  if (v8)
  {
    v27 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B368F30, &v28);
    _os_log_impl(&dword_22B116000, v6, v7, "EnergyKitUtilityActor->%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);

    v14 = *(v10 + 8);
    v14(v27, v11);
  }

  else
  {

    v14 = *(v10 + 8);
    v14(v9, v11);
  }

  v0[17] = v14;
  v5(v0[12], v4, v0[8]);
  v15 = sub_22B36050C();
  v16 = sub_22B360CFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Fetching utility information from server", v17, 2u);
    MEMORY[0x23188F650](v17, -1, -1);
  }

  v18 = v0[12];
  v19 = v0[8];
  v20 = v0[9];

  v14(v18, v19);
  sub_22B3602DC();
  v21 = sub_22B36029C();
  v0[18] = v21;
  v22 = *(MEMORY[0x277D18270] + 4);
  v23 = swift_task_alloc();
  v0[19] = v23;
  *v23 = v0;
  v23[1] = sub_22B1379C0;
  v25 = v0[5];
  v24 = v0[6];

  return MEMORY[0x282172650](v25, v24, v21);
}

uint64_t sub_22B1379C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v9 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v5 = *(v3 + 56);
    v6 = sub_22B137D1C;
  }

  else
  {
    v7 = *(v3 + 56);

    v6 = sub_22B137AE8;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22B137AE8()
{
  v27 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  (*(v0 + 120))(*(v0 + 88), *(v0 + 112), *(v0 + 64));
  v3 = v1;
  v4 = sub_22B36050C();
  v5 = sub_22B360D0C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v24 = *(v0 + 88);
    v25 = *(v0 + 136);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_22B1A7B20(0xD00000000000001ELL, 0x800000022B368F30, &v26);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v3;
    *v10 = v6;
    v12 = v3;
    _os_log_impl(&dword_22B116000, v4, v5, "%s server result: %@", v9, 0x16u);
    sub_22B123284(v10, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23188F650](v11, -1, -1);
    MEMORY[0x23188F650](v9, -1, -1);

    v25(v24, v7);
  }

  else
  {
    v13 = *(v0 + 136);
    v14 = *(v0 + 88);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);

    v13(v14, v15);
  }

  v17 = *(v0 + 160);
  v19 = *(v0 + 96);
  v18 = *(v0 + 104);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);

  v22 = *(v0 + 8);

  return v22(v17);
}

uint64_t sub_22B137D1C()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);

  v3(v5, v4, v6);
  v7 = v1;
  v8 = sub_22B36050C();
  v9 = sub_22B360D1C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 168);
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22B116000, v8, v9, "Unable to fetch utility information from server. Error %@", v12, 0xCu);
    sub_22B123284(v13, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 72) + 8;
  (*(v0 + 136))(*(v0 + 80), *(v0 + 64));
  v18 = *(v0 + 96);
  v17 = *(v0 + 104);
  v20 = *(v0 + 80);
  v19 = *(v0 + 88);

  v21 = *(v0 + 8);

  return v21(0);
}

uint64_t sub_22B137EE8()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22B137F54(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22B36134C() & 1;
  }
}

uint64_t sub_22B137FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA950, &qword_22B364940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B138038(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22B36134C() & 1;
  }
}

void *sub_22B1380AC(NSObject *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, objc_class *a8, objc_class *a9)
{
  v187 = a8;
  v193 = a7;
  v186 = a6;
  v164 = a3;
  v170 = sub_22B3605EC();
  v169 = *(v170 - 8);
  v13 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v167 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_22B36062C();
  v166 = *(v168 - 8);
  v15 = *(v166 + 64);
  MEMORY[0x28223BE20](v168);
  v165 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_22B36037C();
  v171 = *(v181 - 8);
  v17 = *(v171 + 64);
  MEMORY[0x28223BE20](v181);
  v184 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v183 = &v155 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v182 = &v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v194 = (&v155 - v25);
  v26 = sub_22B3603FC();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v185 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v177 = (&v155 - v30);
  v189 = sub_22B35EDDC();
  v173 = *(v189 - 8);
  isa = v173[8].isa;
  MEMORY[0x28223BE20](v189);
  v191 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v190 = &v155 - v34;
  v192 = sub_22B36052C();
  v196 = *(v192 - 8);
  v35 = v196[8];
  MEMORY[0x28223BE20](v192);
  v176 = &v155 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v175 = &v155 - v38;
  MEMORY[0x28223BE20](v39);
  v174 = (&v155 - v40);
  MEMORY[0x28223BE20](v41);
  v172 = &v155 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = (&v155 - v44);
  MEMORY[0x28223BE20](v46);
  v180 = &v155 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v155 - v49;
  v51 = sub_22B35F01C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  *&v54 = MEMORY[0x28223BE20](v51).n128_u64[0];
  v56 = &v155 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(a2 + 112);
  if (result)
  {
    v58 = [result persistentStoreCoordinator];
    [a1 setPersistentStoreCoordinator:v58];

    (*(v52 + 104))(v56, *MEMORY[0x277D073C8], v51);
    v188 = a4;
    v195 = a5;
    v59 = sub_22B1442DC(a4, a5, a1, v56, 1, 0, a2);
    result = (*(v52 + 8))(v56, v51);
    if (v59)
    {
      v178 = v59 >> 62;
      if (v59 >> 62)
      {
        v60 = sub_22B36109C();
      }

      else
      {
        v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v61 = v192;
      v62 = v193;
      v179 = a9;
      if (v60 > 1)
      {
        v159 = a1;
        v157 = a2;
        if (qword_28140A0C8 != -1)
        {
          goto LABEL_64;
        }

        while (1)
        {
          v63 = __swift_project_value_buffer(v61, qword_28140BD10);
          swift_beginAccess();
          v64 = v196;
          v65 = v196[2];
          v160 = v63;
          v162 = (v196 + 2);
          v161 = v65;
          v65(v45, v63, v61);

          v66 = sub_22B36050C();
          v67 = sub_22B360D2C();

          v68 = os_log_type_enabled(v66, v67);
          v69 = v191;
          if (v68)
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *&aBlock = v71;
            *v70 = 136315650;
            *(v70 + 4) = sub_22B1A7B20(v186, v62, &aBlock);
            *(v70 + 12) = 2048;
            if (v178)
            {
              v72 = sub_22B36109C();
            }

            else
            {
              v72 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v70 + 14) = v72;

            *(v70 + 22) = 2080;
            *(v70 + 24) = sub_22B1A7B20(v188, v195, &aBlock);
            _os_log_impl(&dword_22B116000, v66, v67, "[Deduplication] [%s] %ld duplicates for %s", v70, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v71, -1, -1);
            MEMORY[0x23188F650](v70, -1, -1);

            v64 = v196;
          }

          else
          {
          }

          v163 = v64[1];
          v163(v45, v61);
          v89 = v159;
          if (v178)
          {
            if (!sub_22B36109C())
            {
LABEL_28:

              [v89 refreshAllObjects];
              v69 = v174;
              v161(v174, v160, v61);

              v97 = v195;

              v89 = sub_22B36050C();
              v98 = sub_22B360CFC();

              if (!os_log_type_enabled(v89, v98))
              {
                goto LABEL_33;
              }

              v99 = v61;
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              *&aBlock = v101;
              *v100 = 136315394;
              *(v100 + 4) = sub_22B1A7B20(v186, v62, &aBlock);
              *(v100 + 12) = 2080;
              *(v100 + 14) = sub_22B1A7B20(v188, v97, &aBlock);
              _os_log_impl(&dword_22B116000, v89, v98, "[Deduplication] [%s] End deduplication of %s", v100, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23188F650](v101, -1, -1);
              MEMORY[0x23188F650](v100, -1, -1);

              v102 = v69;
              v103 = v99;
LABEL_34:
              v105 = (v163)(v102, v103);
              return (v187)(v105);
            }
          }

          else if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v90 = v59 & 0xC000000000000001;
          if ((v59 & 0xC000000000000001) != 0)
          {
            v91 = MEMORY[0x23188EAC0](0, v59);
          }

          else
          {
            if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }

            v91 = *(v59 + 32);
          }

          v67 = v91;
          v92 = [v91 metadata];
          v93 = sub_22B35DCDC();
          v95 = v94;

          v201 = v93;
          v202 = v95;
          v199 = 0;
          aBlock = 0u;
          v198 = 0u;
          v89 = v177;
          sub_22B3603EC();
          v96 = sub_22B144B84(qword_281408638, MEMORY[0x277D07340]);
          v45 = v189;
          v66 = v189;
          v61 = 0;
          sub_22B36043C();
          if (v178)
          {
            if (v59 < 0)
            {
              v89 = v59;
            }

            else
            {
              v89 = (v59 & 0xFFFFFFFFFFFFFF8);
            }

            if (sub_22B36109C() < 1)
            {
              goto LABEL_68;
            }

            v104 = sub_22B36109C();
          }

          else
          {
            v104 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v104)
            {
              __break(1u);
LABEL_33:

              v102 = v69;
              v103 = v61;
              goto LABEL_34;
            }
          }

          if (v104 < v60)
          {
            goto LABEL_67;
          }

          if (v90)
          {
            sub_22B35EDEC();

            v106 = 1;
            do
            {
              v107 = v106 + 1;
              sub_22B36118C();
              v106 = v107;
            }

            while (v60 != v107);
            if (v178)
            {

              v108 = sub_22B36128C();
              v110 = v109;
              v112 = v111;
              v60 = v113 >> 1;
              goto LABEL_49;
            }
          }

          else
          {
          }

          v108 = v59 & 0xFFFFFFFFFFFFFF8;
          v110 = (v59 & 0xFFFFFFFFFFFFFF8) + 32;
          v112 = 1;
LABEL_49:
          v178 = v96;
          v156 = v67;
          v155 = v108;
          swift_unknownObjectRetain();
          if (v60 == v112)
          {
LABEL_50:
            swift_unknownObjectRelease_n();
            v114 = v172;
            v115 = v192;
            v161(v172, v160, v192);
            v116 = v195;

            v117 = sub_22B36050C();
            v118 = sub_22B360D2C();

            if (os_log_type_enabled(v117, v118))
            {
              v119 = swift_slowAlloc();
              v120 = swift_slowAlloc();
              *&aBlock = v120;
              *v119 = 136315138;
              v121 = v188;
              *(v119 + 4) = sub_22B1A7B20(v188, v116, &aBlock);
              _os_log_impl(&dword_22B116000, v117, v118, "Deduplicated %s", v119, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v120);
              MEMORY[0x23188F650](v120, -1, -1);
              MEMORY[0x23188F650](v119, -1, -1);

              v163(v114, v115);
              v122 = v187;
            }

            else
            {

              v163(v114, v115);
              v122 = v187;
              v121 = v188;
            }

            v137 = sub_22B36042C();
            v60 = v138;
            v45 = v137;
            v139 = [v156 zoneName];
            v90 = sub_22B36084C();
            v67 = v140;

            v89 = swift_allocObject();
            v89[2].isa = v121;
            v61 = v121;
            v69 = v195;
            v141 = v159;
            v89[3].isa = v195;
            v89[4].isa = v141;
            v142 = v186;
            v89[5].isa = v59;
            v89[6].isa = v142;
            v89[7].isa = v193;
            v89[8].isa = v122;
            v89[9].isa = v179;

            v66 = v141;

            v196 = MEMORY[0x23188EEB0](v143);
            if (qword_2814097C0 == -1)
            {
LABEL_61:
              v144 = *(qword_28140BCF0 + 24);
              v145 = swift_allocObject();
              v145[2] = v66;
              v145[3] = v61;
              v145[4] = v69;
              v145[5] = v45;
              v145[6] = v60;
              v145[7] = v90;
              v146 = v157;
              v145[8] = v67;
              v145[9] = v146;
              v147 = v164;
              v145[10] = v164;
              v145[11] = sub_22B144AE4;
              v145[12] = v89;
              v199 = sub_22B144B18;
              v200 = v145;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              *&v198 = sub_22B118A6C;
              *(&v198 + 1) = &block_descriptor_41;
              v148 = _Block_copy(&aBlock);

              v149 = v66;
              v150 = v144;
              sub_22B144B30(v45, v60);

              v151 = v147;

              v152 = v165;
              sub_22B36060C();
              v201 = MEMORY[0x277D84F90];
              sub_22B144B84(&qword_281409370, MEMORY[0x277D85198]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
              sub_22B124A3C();
              v153 = v167;
              v154 = v170;
              sub_22B36104C();
              MEMORY[0x23188E6D0](0, v152, v153, v148);
              _Block_release(v148);

              (*(v169 + 8))(v153, v154);
              (*(v166 + 8))(v152, v168);

              objc_autoreleasePoolPop(v196);

              sub_22B12F174(v45, v60);
              return (v173[1].isa)(v190, v189);
            }

LABEL_69:
            swift_once();
            goto LABEL_61;
          }

          v174 = (v171 + 8);
          v177 = v173 + 1;
          v62 = v60 - v112;
          if (v60 <= v112)
          {
            v123 = v112;
          }

          else
          {
            v123 = v60;
          }

          v124 = v123 - v112;
          v125 = (v110 + 8 * v112);
          v158 = v59;
          while (v124)
          {
            v128 = *v125;
            v129 = [v128 metadata];
            v130 = sub_22B35DCDC();
            v132 = v131;

            v201 = v130;
            v202 = v132;
            v199 = 0;
            aBlock = 0u;
            v198 = 0u;
            sub_22B3603EC();
            v133 = sub_22B36043C();
            v134 = MEMORY[0x23188EEB0](v133);
            sub_22B35EC3C();
            v135 = v183;
            sub_22B36034C();
            sub_22B36036C();
            (*v174)(v135, v181);
            v180 = v128;
            sub_22B35EC3C();
            v136 = v184;
            sub_22B36034C();
            v60 = v182;
            sub_22B36036C();
            (*v174)(v136, v181);
            sub_22B35EAFC();
            v126 = v191;
            v127 = v194;
            sub_22B35EADC();
            sub_22B123284(v60, &qword_27D8BA340, &qword_22B363FB0);
            sub_22B123284(v127, &qword_27D8BA340, &qword_22B363FB0);
            objc_autoreleasePoolPop(v134);

            v45 = v189;
            (v177->isa)(v126, v189);
            --v124;
            ++v125;
            --v62;
            v59 = v158;
            if (!v62)
            {
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_64:
          swift_once();
        }
      }

      [a1 refreshAllObjects];
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v73 = __swift_project_value_buffer(v61, qword_28140BD10);
      swift_beginAccess();
      v74 = v196;
      v194 = v196[2];
      v194(v50, v73, v61);

      v75 = v195;

      v76 = v61;
      v77 = sub_22B36050C();
      v78 = sub_22B360CFC();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v203 = v80;
        *v79 = 136315394;
        *(v79 + 4) = sub_22B1A7B20(v186, v193, &v203);
        *(v79 + 12) = 2080;
        *(v79 + 14) = sub_22B1A7B20(v188, v75, &v203);
        _os_log_impl(&dword_22B116000, v77, v78, "[Deduplication] [%s] Single Site. End deduplication of %s", v79, 0x16u);
        swift_arrayDestroy();
        v81 = v80;
        v62 = v193;
        MEMORY[0x23188F650](v81, -1, -1);
        MEMORY[0x23188F650](v79, -1, -1);

        v82 = v196[1];
      }

      else
      {

        v82 = v74[1];
      }

      v82(v50, v76);
      v83 = v180;
      v194(v180, v73, v76);

      v84 = sub_22B36050C();
      v85 = sub_22B360CFC();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v203 = v87;
        *v86 = 136315394;
        *(v86 + 4) = sub_22B1A7B20(v186, v62, &v203);
        *(v86 + 12) = 2080;
        *(v86 + 14) = sub_22B1A7B20(v188, v75, &v203);
        _os_log_impl(&dword_22B116000, v84, v85, "[Deduplication] [%s] End site deduplication of %s", v86, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v87, -1, -1);
        MEMORY[0x23188F650](v86, -1, -1);
      }

      v88 = (v82)(v83, v76);
      return (v187)(v88);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22B139B3C(void *a1, uint64_t a2, unint64_t a3, void *a4, char *a5, uint64_t a6, unint64_t a7, void (*a8)(uint64_t), unint64_t a9)
{
  v54 = a7;
  v55 = a8;
  v51 = a6;
  v52 = a2;
  v13 = sub_22B36052C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v49 - v20;
  if (a1)
  {
    v22 = a1;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v49 = v17;
    v50 = a4;
    v23 = __swift_project_value_buffer(v13, qword_28140BD10);
    swift_beginAccess();
    (*(v14 + 16))(v21, v23, v13);
    v24 = a1;

    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v27 = 136315394;
      *(v27 + 4) = sub_22B1A7B20(v52, a3, aBlock);
      *(v27 + 12) = 2112;
      v30 = a1;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      *v28 = v31;
      _os_log_impl(&dword_22B116000, v25, v26, "[Deduplication] Failed for %s %@", v27, 0x16u);
      sub_22B123284(v28, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23188F650](v29, -1, -1);
      MEMORY[0x23188F650](v27, -1, -1);
    }

    (*(v14 + 8))(v21, v13);
    v32 = swift_allocObject();
    v33 = v50;
    *(v32 + 16) = v50;
    v34 = swift_allocObject();
    v53 = sub_22B1451F0;
    *(v34 + 16) = sub_22B1451F0;
    *(v34 + 24) = v32;
    aBlock[4] = sub_22B128240;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B32556C;
    aBlock[3] = &block_descriptor_90;
    v35 = _Block_copy(aBlock);
    v36 = v33;

    [v36 performBlockAndWait_];

    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if (v35)
    {
      __break(1u);
      return result;
    }

    v17 = v49;
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    *(&v49 - 2) = a4;
    *(&v49 - 1) = a5;
    MEMORY[0x28223BE20](v38);
    *(&v49 - 2) = sub_22B144CF8;
    *(&v49 - 1) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA210, &qword_22B363A20);
    sub_22B360E7C();
    v53 = 0;
  }

  v40 = v54;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v13, qword_28140BD10);
  swift_beginAccess();
  (*(v14 + 16))(v17, v41, v13);

  v42 = sub_22B36050C();
  v43 = sub_22B360D2C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v54 = a9;
    v46 = v17;
    v47 = v45;
    v57[0] = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_22B1A7B20(v51, v40, v57);
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_22B1A7B20(v52, a3, v57);
    _os_log_impl(&dword_22B116000, v42, v43, "[Deduplication] [%s] End site deduplication of %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v47, -1, -1);
    MEMORY[0x23188F650](v44, -1, -1);

    v48 = (*(v14 + 8))(v46, v13);
  }

  else
  {

    v48 = (*(v14 + 8))(v17, v13);
  }

  v55(v48);
  return sub_22B144D48(v53);
}

id sub_22B13A1B0(void *a1, unint64_t a2)
{
  result = sub_22B207390(3);
  if (!v2)
  {
    if (a2 >> 62)
    {
      result = sub_22B36109C();
      v6 = result;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x23188EAC0](i, a2);
          }

          else
          {
            v8 = *(a2 + 8 * i + 32);
          }

          v9 = v8;
          [a1 deleteObject_];
        }
      }
    }

    sub_22B207390(3);
    return [a1 refreshAllObjects];
  }

  return result;
}

uint64_t sub_22B13A2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_22B36052C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B13A384, 0, 0);
}

uint64_t sub_22B13A384()
{
  v38 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v5, v3);

  v6 = sub_22B36050C();
  v7 = sub_22B360D0C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  if (v8)
  {
    v13 = *(v0 + 48);
    v12 = *(v0 + 56);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, &v37);
    _os_log_impl(&dword_22B116000, v6, v7, "Deduplication caller %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v10 + 8))(v9, v11);
  v16 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 40);
  v19 = sub_22B13A9F4();
  *(v0 + 104) = v19;
  v20 = *(v19 + 32);
  *(v0 + 152) = v20;
  v21 = -1;
  v22 = -1 << v20;
  if (-(-1 << v20) < 64)
  {
    v21 = ~(-1 << -(-1 << v20));
  }

  v23 = v21 & *(v19 + 56);
  if (v23)
  {
    v24 = 0;
LABEL_12:
    *(v0 + 112) = v23;
    *(v0 + 120) = v24;
    v27 = *(v0 + 40);
    v28 = (*(v19 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v23)))));
    v30 = *v28;
    v29 = v28[1];
    *(v0 + 128) = v29;
    v31 = swift_task_alloc();
    *(v0 + 136) = v31;
    *(v31 + 16) = *(v0 + 64);
    *(v31 + 32) = v30;
    *(v31 + 40) = v29;
    *(v31 + 48) = v27;
    v32 = *(MEMORY[0x277D859E0] + 4);

    v33 = swift_task_alloc();
    *(v0 + 144) = v33;
    *v33 = v0;
    v33[1] = sub_22B13A6F8;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v25 = 0;
    v26 = ((63 - v22) >> 6) - 1;
    while (v26 != v25)
    {
      v24 = v25 + 1;
      v23 = *(v19 + 8 * v25++ + 64);
      if (v23)
      {
        goto LABEL_12;
      }
    }

    v34 = *(v0 + 96);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_22B13A6F8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_22B13A82C, 0, 0);
}

uint64_t sub_22B13A82C()
{
  v1 = *(v0 + 120);
  v2 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v2)
  {
    v3 = *(v0 + 104);
LABEL_7:
    *(v0 + 112) = v2;
    *(v0 + 120) = v1;
    v5 = *(v0 + 40);
    v6 = (*(v3 + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v2)))));
    v8 = *v6;
    v7 = v6[1];
    *(v0 + 128) = v7;
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *(v9 + 16) = *(v0 + 64);
    *(v9 + 32) = v8;
    *(v9 + 40) = v7;
    *(v9 + 48) = v5;
    v10 = *(MEMORY[0x277D859E0] + 4);

    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_22B13A6F8;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return MEMORY[0x2822007B8]();
      }

      v3 = *(v0 + 104);
      if (v4 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v12 = *(v0 + 96);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_22B13A9F4()
{
  v0 = sub_22B36052C();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v3 = MEMORY[0x23188EEB0](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA290, &qword_22B363A28);
  sub_22B360E7C();
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_22B13AC30(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v55 = a6;
  v56 = a2;
  v52 = a5;
  v53 = a4;
  v57 = a3;
  v7 = sub_22B36052C();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B35DF1C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v49 - v20;
  (*(v17 + 16))(&v49 - v20, a1, v16, v19);
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = swift_allocObject();
  v24 = *(v17 + 32);
  v54 = v23;
  v25 = v24(v23 + v22, v21, v16);
  v50 = MEMORY[0x23188EEB0](v25);
  sub_22B35DF0C();
  v26 = sub_22B35DECC();
  v28 = v27;
  (*(v12 + 8))(v15, v11);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  v30 = v51;
  (*(v51 + 16))(v10, v29, v7);

  v31 = v52;

  v32 = sub_22B36050C();
  v33 = sub_22B360CFC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v49 = v26;
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_22B1A7B20(v49, v28, aBlock);
    *(v35 + 12) = 2080;
    v37 = v53;
    *(v35 + 14) = sub_22B1A7B20(v53, v31, aBlock);
    _os_log_impl(&dword_22B116000, v32, v33, "[Deduplication] [%s] Begin site deduplication of %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v36, -1, -1);
    v38 = v35;
    v26 = v49;
    MEMORY[0x23188F650](v38, -1, -1);

    (*(v30 + 8))(v10, v7);
    v39 = v31;
  }

  else
  {

    (*(v30 + 8))(v10, v7);
    v39 = v31;
    v37 = v53;
  }

  v40 = swift_allocObject();
  v41 = v55;
  v42 = v56;
  v40[2] = v55;
  v40[3] = v42;
  v43 = v57;
  v40[4] = v57;
  v40[5] = v37;
  v40[6] = v39;
  v40[7] = v26;
  v40[8] = v28;
  v40[9] = sub_22B144238;
  v40[10] = v54;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_22B1442A4;
  *(v44 + 24) = v40;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_32;
  v45 = _Block_copy(aBlock);

  v46 = v41;

  v47 = v43;

  [v46 performBlockAndWait_];
  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
  }

  else
  {
    objc_autoreleasePoolPop(v50);
  }

  return result;
}

uint64_t sub_22B13B1D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  v44 = a3;
  v45 = a4;
  v43 = a1;
  v41 = a2;
  v42 = a10;
  v18 = sub_22B36052C();
  v39 = *(v18 - 8);
  v40 = v18;
  v19 = *(v39 + 64);
  MEMORY[0x28223BE20](v18);
  v38 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = swift_allocObject();
  v23 = v41;
  v22 = v42;
  v21[2] = a1;
  v21[3] = v23;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = a6;
  v41 = a6;
  v21[8] = a7;
  v21[9] = a8;
  v21[10] = a9;
  v21[11] = v22;
  v21[12] = a11;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22B144C34;
  *(v24 + 24) = v21;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_51;
  v25 = _Block_copy(aBlock);
  v26 = v43;

  sub_22B144B30(v45, a5);

  v27 = a9;

  [v26 performBlockAndWait_];
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
  }

  else if (qword_28140A0C8 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v28 = v40;
  v29 = __swift_project_value_buffer(v40, qword_28140BD10);
  swift_beginAccess();
  v31 = v38;
  v30 = v39;
  (*(v39 + 16))(v38, v29, v28);

  v32 = sub_22B36050C();
  v33 = sub_22B360D2C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_22B1A7B20(v41, a7, &v46);
    _os_log_impl(&dword_22B116000, v32, v33, "Add to share for %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x23188F650](v35, -1, -1);
    MEMORY[0x23188F650](v34, -1, -1);
  }

  (*(v30 + 8))(v31, v28);
}

void sub_22B13B58C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t *a8, uint64_t a9, void (*a10)(void), uint64_t a11)
{
  v75 = a7;
  v76 = a8;
  v74 = a6;
  v14 = sub_22B36052C();
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v70 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B35DE9C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  sub_22B35EDEC();
  v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  *(v22 + 16) = v23;
  v24 = v23;
  v68 = a2;
  v69 = a3;
  v25 = sub_22B36081C();
  [v24 setSiteID_];

  v26 = v24;
  v27 = sub_22B35DCCC();
  [v26 setMetadata_];

  v28 = v26;
  sub_22B35DE6C();
  v29 = sub_22B35DDDC();
  (*(v18 + 8))(v21, v17);
  v31 = v74;
  v30 = v75;
  [v28 setCreationDate_];

  v32 = v76;
  v73 = v22;
  v33 = *(v22 + 16);
  v34 = sub_22B36081C();
  [v33 setZoneName_];

  if (v32[14])
  {
    v35 = MEMORY[0x23188EEB0]([a1 assignObject:v33 toPersistentStore:?]);
    sub_22B1411A8(v32, 0, v31, v30, v78, aBlock);
    v65 = a1;
    v66 = a10;
    v67 = a11;
    objc_autoreleasePoolPop(v35);
    v36 = aBlock[0];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v37 = v72;
    v38 = __swift_project_value_buffer(v72, qword_28140BD10);
    swift_beginAccess();
    v40 = v70;
    v39 = v71;
    (*(v71 + 16))(v70, v38, v37);

    v41 = sub_22B36050C();
    v42 = sub_22B360CFC();

    v43 = v36 >> 62;
    if (!os_log_type_enabled(v41, v42))
    {

      (*(v39 + 8))(v40, v37);
      goto LABEL_9;
    }

    v37 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    aBlock[0] = v32;
    *v37 = 134218242;
    v40 = (v36 >> 62);
    if (v43)
    {
      goto LABEL_19;
    }

    for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
    {
      v45 = v70;
      v46 = v68;
      *(v37 + 4) = i;

      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_22B1A7B20(v46, v69, aBlock);
      _os_log_impl(&dword_22B116000, v41, v42, "Found %ld shares for %s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23188F650](v32, -1, -1);
      MEMORY[0x23188F650](v37, -1, -1);

      (*(v71 + 8))(v45, v72);
      v32 = v76;
      v43 = v40;
LABEL_9:
      if (v43)
      {
        v61 = sub_22B36109C();
        v47 = v67;
        if (!v61)
        {
LABEL_16:

          sub_22B134CDC();
          v62 = swift_allocError();
          *v63 = 13;
          v66();

          return;
        }
      }

      else
      {
        v47 = v67;
        if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }
      }

      if ((v36 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v48 = *(v36 + 32);
LABEL_14:
        v49 = v48;

        v50 = sub_22B207EFC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_22B363650;
        v52 = v73;
        v53 = *(v73 + 16);
        *(v51 + 32) = v53;
        sub_22B128014(0, &unk_281408598, 0x277CBE438);
        v54 = v53;
        v55 = sub_22B360A3C();

        v56 = swift_allocObject();
        v56[2] = v31;
        v56[3] = v30;
        v57 = v65;
        v56[4] = v65;
        v56[5] = v52;
        v56[6] = v66;
        v56[7] = v47;
        aBlock[4] = sub_22B144C94;
        aBlock[5] = v56;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22B333238;
        aBlock[3] = &block_descriptor_60;
        v58 = _Block_copy(aBlock);
        v59 = v49;

        v60 = v57;

        [v50 shareManagedObjects:v55 toShare:v59 completion:v58];
        _Block_release(v58);

        return;
      }

      __break(1u);
LABEL_19:
      ;
    }

    v48 = MEMORY[0x23188EAC0](0, v36);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_22B13BCB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8, void (*a9)(void), uint64_t a10)
{
  v15 = sub_22B36052C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v44 = a5;
    v46 = a8 + 16;
    v47 = a7;
    v20 = a4;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v45 = a9;
    v21 = __swift_project_value_buffer(v15, qword_28140BD10);
    swift_beginAccess();
    (*(v16 + 16))(v19, v21, v15);
    v22 = a4;

    v23 = sub_22B36050C();
    v24 = sub_22B360D1C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v43 = a10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v26 = 136315394;
      *(v26 + 4) = sub_22B1A7B20(v44, a6, &aBlock);
      *(v26 + 12) = 2112;
      v29 = a4;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v30;
      *v27 = v30;
      _os_log_impl(&dword_22B116000, v23, v24, "Deduplication Failed to add to share for %s %@", v26, 0x16u);
      sub_22B123284(v27, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x23188F650](v28, -1, -1);
      MEMORY[0x23188F650](v26, -1, -1);
    }

    (*(v16 + 8))(v19, v15);
    v31 = swift_allocObject();
    v32 = v46;
    v33 = v47;
    *(v31 + 16) = v47;
    *(v31 + 24) = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_22B144CF0;
    *(v34 + 24) = v31;
    v52 = sub_22B128240;
    v53 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_22B32556C;
    v51 = &block_descriptor_80;
    v35 = _Block_copy(&aBlock);
    v36 = v33;

    [v36 performBlockAndWait_];
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      sub_22B134CDC();
      v38 = swift_allocError();
      *v39 = 13;
      v45();
    }

    __break(1u);
    goto LABEL_11;
  }

  v40 = swift_allocObject();
  *(v40 + 16) = a9;
  *(v40 + 24) = a10;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_22B144CC4;
  *(v41 + 24) = v40;
  v52 = sub_22B128240;
  v53 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_22B32556C;
  v51 = &block_descriptor_70;
  v42 = _Block_copy(&aBlock);

  [a7 performBlockAndWait_];
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

void sub_22B13C1F0(void *a1, void *a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  [a1 deleteObject_];
  v8[0] = 0;
  if ([a1 save_])
  {
    v4 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F9840]();
  }

  else
  {
    v5 = v8[0];
    v6 = sub_22B35DB9C();

    swift_willThrow();
    v7 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_22B13C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = v17;
  *(v8 + 152) = v18;
  *(v8 + 248) = a8;
  *(v8 + 128) = a6;
  *(v8 + 136) = a7;
  *(v8 + 112) = a4;
  *(v8 + 120) = a5;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  v9 = sub_22B35F01C();
  *(v8 + 160) = v9;
  v10 = *(v9 - 8);
  *(v8 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 176) = swift_task_alloc();
  v12 = sub_22B36052C();
  *(v8 + 184) = v12;
  v13 = *(v12 - 8);
  *(v8 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B13C454, 0, 0);
}

uint64_t sub_22B13C454()
{
  v63 = v0;
  v1 = *(v0 + 96);
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + 88) & 0xFFFFFFFFFFFFLL;
  }

  if (!v2 || ((v3 = *(v0 + 128), (v3 & 0x2000000000000000) != 0) ? (v4 = HIBYTE(v3) & 0xF) : (v4 = *(v0 + 120) & 0xFFFFFFFFFFFFLL), !v4))
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
      v52 = *(v0 + 96);
    }

    v23 = *(v0 + 216);
    v24 = *(v0 + 184);
    v25 = *(v0 + 192);
    v26 = *(v0 + 128);
    v27 = __swift_project_value_buffer(v24, qword_28140BD10);
    swift_beginAccess();
    (*(v25 + 16))(v23, v27, v24);

    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 216);
    v33 = *(v0 + 184);
    v32 = *(v0 + 192);
    if (v30)
    {
      v34 = *(v0 + 120);
      v56 = *(v0 + 128);
      v36 = *(v0 + 88);
      v35 = *(v0 + 96);
      v60 = *(v0 + 216);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v62[0] = v38;
      *v37 = 136315394;
      *(v37 + 4) = sub_22B1A7B20(v36, v35, v62);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_22B1A7B20(v34, v56, v62);
      _os_log_impl(&dword_22B116000, v28, v29, "Received invalid site id %s or zone name %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v38, -1, -1);
      MEMORY[0x23188F650](v37, -1, -1);

      (*(v32 + 8))(v60, v33);
    }

    else
    {

      (*(v32 + 8))(v31, v33);
    }

    sub_22B134CDC();
    swift_allocError();
    *v39 = 13;
    swift_willThrow();
    v41 = *(v0 + 208);
    v40 = *(v0 + 216);
    v42 = *(v0 + 200);
    v43 = *(v0 + 176);

    v22 = *(v0 + 8);
    goto LABEL_16;
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);
  v53 = v7;
  v54 = *(v0 + 136);
  v9 = *(v6 + 104);
  v9(v5, *MEMORY[0x277D073D0]);
  v58 = sub_22B13D248();
  v10 = *(v6 + 8);
  v10(v5, v53);
  (v9)(v5, *MEMORY[0x277D073C8], v53);
  v11 = sub_22B13D248();
  v10(v5, v53);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  if (v58)
  {
    v15 = *(v0 + 128);
    v14 = *(v0 + 136);
    v16 = *(v0 + 120);
    v55 = *(v0 + 88);
    v59 = *(v0 + 104);
    v17 = swift_task_alloc();
    *(v17 + 16) = v14;
    *(v17 + 24) = v13;
    *(v17 + 32) = v12;
    *(v17 + 40) = v55;
    *(v17 + 56) = v59;
    *(v17 + 72) = v16;
    *(v17 + 80) = v15;
    sub_22B360E7C();

    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    v21 = *(v0 + 176);

    v22 = *(v0 + 8);
LABEL_16:

    return v22();
  }

  v45 = *(v0 + 248);
  v47 = *(v0 + 128);
  v46 = *(v0 + 136);
  v48 = *(v0 + 104);
  v57 = *(v0 + 88);
  v61 = *(v0 + 112);
  v49 = swift_task_alloc();
  *(v0 + 224) = v49;
  *(v49 + 16) = v46;
  *(v49 + 24) = v57;
  *(v49 + 40) = v48;
  *(v49 + 48) = v61;
  *(v49 + 64) = v47;
  *(v49 + 72) = v13;
  *(v49 + 80) = v12;
  *(v49 + 88) = v11 & 1;
  *(v49 + 89) = v45;
  v50 = *(MEMORY[0x277D85A40] + 4);
  v51 = swift_task_alloc();
  *(v0 + 232) = v51;
  *v51 = v0;
  v51[1] = sub_22B13C99C;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_22B13C99C()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v7 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_22B13CF70;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_22B13CAB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22B13CAB8()
{
  v52 = v0;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 128);
  v5 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v1, v5, v2);

  v6 = sub_22B36050C();
  v7 = sub_22B360D2C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  if (v8)
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v51[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_22B1A7B20(v13, v12, v51);
    _os_log_impl(&dword_22B116000, v6, v7, "Created share for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v11 + 8))(v9, v10);
  v16 = *(v0 + 240);
  v17 = *(v0 + 136);
  *(swift_task_alloc() + 16) = v17;
  sub_22B360E7C();
  v18 = v16;

  if (v16)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v21 = *(v0 + 184);
    v22 = *(v0 + 128);
    v23 = __swift_project_value_buffer(v21, qword_28140BD10);
    swift_beginAccess();
    (*(v20 + 16))(v19, v23, v21);

    v24 = v18;
    v25 = sub_22B36050C();
    v26 = sub_22B360D1C();

    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);
    v30 = *(v0 + 184);
    if (v27)
    {
      v50 = *(v0 + 200);
      v31 = *(v0 + 120);
      v32 = *(v0 + 128);
      v49 = *(v0 + 184);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v51[0] = v35;
      *v33 = 136315394;
      *(v33 + 4) = sub_22B1A7B20(v31, v32, v51);
      *(v33 + 12) = 2112;
      v36 = v18;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v33 + 14) = v37;
      *v34 = v37;
      _os_log_impl(&dword_22B116000, v25, v26, "Failed to create share for %s %@", v33, 0x16u);
      sub_22B123284(v34, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x23188F650](v35, -1, -1);
      MEMORY[0x23188F650](v33, -1, -1);

      (*(v29 + 8))(v50, v49);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    [*(v0 + 136) refreshAllObjects];
    sub_22B134CDC();
    swift_allocError();
    *v43 = 13;
    swift_willThrow();

    v45 = *(v0 + 208);
    v44 = *(v0 + 216);
    v46 = *(v0 + 200);
    v47 = *(v0 + 176);

    v42 = *(v0 + 8);
  }

  else
  {
    v39 = *(v0 + 208);
    v38 = *(v0 + 216);
    v40 = *(v0 + 200);
    v41 = *(v0 + 176);

    v42 = *(v0 + 8);
  }

  return v42();
}

uint64_t sub_22B13CF70()
{
  v32 = v0;
  v1 = *(v0 + 224);

  v2 = *(v0 + 240);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = *(v0 + 128);
  v7 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v4 + 16))(v3, v7, v5);

  v8 = v2;
  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();

  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 184);
  if (v11)
  {
    v30 = *(v0 + 200);
    v15 = *(v0 + 120);
    v16 = *(v0 + 128);
    v29 = *(v0 + 184);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_22B1A7B20(v15, v16, &v31);
    *(v17 + 12) = 2112;
    v20 = v2;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v21;
    *v18 = v21;
    _os_log_impl(&dword_22B116000, v9, v10, "Failed to create share for %s %@", v17, 0x16u);
    sub_22B123284(v18, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    MEMORY[0x23188F650](v17, -1, -1);

    (*(v13 + 8))(v30, v29);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  [*(v0 + 136) refreshAllObjects];
  sub_22B134CDC();
  swift_allocError();
  *v22 = 13;
  swift_willThrow();

  v24 = *(v0 + 208);
  v23 = *(v0 + 216);
  v25 = *(v0 + 200);
  v26 = *(v0 + 176);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22B13D248()
{
  v0 = sub_22B36052C();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v3 = MEMORY[0x23188EEB0](v2);
  sub_22B360E7C();
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_22B13D4D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, unsigned __int8 a11, unsigned __int8 a12)
{
  v43 = a7;
  v44 = a2;
  v53 = a6;
  v40 = a3;
  v41 = a11;
  v42 = a12;
  v48 = a10;
  v49 = a8;
  v47 = sub_22B3605EC();
  v52 = *(v47 - 8);
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B36062C();
  v50 = *(v17 - 8);
  v51 = v17;
  v18 = *(v50 + 64);
  MEMORY[0x28223BE20](v17);
  v45 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - v23;
  if (qword_2814097C0 != -1)
  {
    swift_once();
  }

  v39 = *(qword_28140BCF0 + 24);
  (*(v21 + 16))(v24, a1, v20);
  v25 = (*(v21 + 80) + 90) & ~*(v21 + 80);
  v26 = swift_allocObject();
  v27 = v43;
  v28 = v44;
  v29 = v40;
  *(v26 + 16) = v44;
  *(v26 + 24) = v29;
  *(v26 + 32) = a4;
  *(v26 + 40) = a5;
  *(v26 + 48) = v53;
  *(v26 + 56) = v27;
  *(v26 + 64) = v49;
  *(v26 + 72) = a9;
  v43 = a9;
  v30 = v48;
  *(v26 + 80) = v48;
  *(v26 + 88) = v41 & 1;
  *(v26 + 89) = v42 & 1;
  (*(v21 + 32))(v26 + v25, v24, v20);
  aBlock[4] = sub_22B144F10;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B118A6C;
  aBlock[3] = &block_descriptor_110;
  v31 = _Block_copy(aBlock);
  v32 = v39;
  v33 = v28;

  sub_22B144B30(a5, v53);

  v34 = v30;
  v35 = v45;
  sub_22B36060C();
  v54 = MEMORY[0x277D84F90];
  sub_22B144B84(&qword_281409370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA330, &unk_22B363330);
  sub_22B124A3C();
  v37 = v46;
  v36 = v47;
  sub_22B36104C();
  MEMORY[0x23188E6D0](0, v35, v37, v31);
  _Block_release(v31);

  (*(v52 + 8))(v37, v36);
  (*(v50 + 8))(v35, v51);
}

uint64_t sub_22B13D930(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, unsigned __int8 a11, uint64_t a12)
{
  v38 = a7;
  v39 = a8;
  v35 = a6;
  v36 = a1;
  v37 = a5;
  v32 = a2;
  v33 = a10;
  v34 = a11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v31 - v19;
  (*(v16 + 16))(&v31 - v19, a12, v15, v18);
  v21 = (*(v16 + 80) + 90) & ~*(v16 + 80);
  v22 = swift_allocObject();
  v23 = v32;
  *(v22 + 16) = a1;
  *(v22 + 24) = v23;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  v24 = v35;
  *(v22 + 48) = v37;
  *(v22 + 56) = v24;
  v25 = v39;
  *(v22 + 64) = v38;
  *(v22 + 72) = v25;
  *(v22 + 80) = a9;
  LOBYTE(v25) = v34;
  *(v22 + 88) = v33;
  *(v22 + 89) = v25;
  (*(v16 + 32))(v22 + v21, v20, v15);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_22B145020;
  *(v26 + 24) = v22;
  aBlock[4] = sub_22B128240;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22B32556C;
  aBlock[3] = &block_descriptor_120;
  v27 = _Block_copy(aBlock);
  v28 = v36;

  sub_22B144B30(a4, v37);

  v29 = a9;

  [v28 performBlockAndWait_];
  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  return result;
}

void sub_22B13DBE8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10, unsigned __int8 a11, uint64_t a12)
{
  v89 = a7;
  v90 = a8;
  v88 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v86 = *(v16 - 8);
  v87 = v16;
  v84 = *(v86 + 64);
  MEMORY[0x28223BE20](v16);
  v85 = &v78 - v17;
  v83 = sub_22B36052C();
  v81 = *(v83 - 8);
  v18 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v82 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B35DE9C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  *&v23 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 refreshAllObjects];
  v26 = swift_allocObject();
  sub_22B35EDEC();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  *(v26 + 16) = v27;
  v28 = v27;
  v79 = a2;
  v29 = a6;
  v80 = a3;
  v30 = sub_22B36081C();
  [v28 setSiteID_];

  v31 = v28;
  v32 = sub_22B35DCCC();
  [v31 setMetadata_];

  v33 = v31;
  sub_22B35DE8C();
  v34 = sub_22B35DDDC();
  (*(v21 + 8))(v25, v20);
  [v33 setCreationDate_];

  v35 = v26;
  v36 = *(v26 + 16);
  v37 = v89;
  v38 = v90;
  v39 = v36;
  v40 = sub_22B36081C();
  [v39 setZoneName_];

  if (!*(v38 + 112))
  {
    goto LABEL_24;
  }

  v41 = [a1 assignObject:v39 toPersistentStore:?];
  if ((a10 & 1) == 0)
  {
    v45 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
    v46 = sub_22B36081C();
    v47 = [v45 initWithZoneName_];

    v48 = [v47 zoneID];
LABEL_5:
    v49 = v48;
    v50 = [objc_allocWithZone(MEMORY[0x277CBC680]) initWithRecordZoneID_];

    v51 = v50;
LABEL_6:
    LODWORD(v89) = a11;
    v52 = sub_22B207EFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_22B363650;
    v54 = v35;
    v55 = *(v35 + 16);
    *(v53 + 32) = v55;
    sub_22B128014(0, &unk_281408598, 0x277CBE438);
    v56 = v55;
    v57 = sub_22B360A3C();

    v59 = v85;
    v58 = v86;
    v60 = v87;
    (*(v86 + 16))(v85, a12, v87);
    v61 = (*(v58 + 80) + 40) & ~*(v58 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = a1;
    *(v62 + 24) = v89 & 1;
    *(v62 + 32) = v54;
    (*(v58 + 32))(v62 + v61, v59, v60);
    aBlock[4] = sub_22B1450DC;
    aBlock[5] = v62;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22B333238;
    aBlock[3] = &block_descriptor_127;
    v63 = _Block_copy(aBlock);
    v64 = a1;

    [v52 shareManagedObjects:v57 toShare:v51 completion:v63];

    _Block_release(v63);

    return;
  }

  v42 = MEMORY[0x23188EEB0](v41);
  sub_22B1411A8(v38, 0, v29, v37, v91, aBlock);
  objc_autoreleasePoolPop(v42);
  v65 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v77 = sub_22B36109C();
    v66 = v83;
    if (v77)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v66 = v83;
  if (!*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:

    v43 = objc_allocWithZone(MEMORY[0x277CBC5E8]);
    v44 = sub_22B36081C();
    v47 = [v43 initWithZoneName_];

    v48 = [v47 zoneID];
    goto LABEL_5;
  }

LABEL_9:
  v88 = v65 >> 62;
  if ((v65 & 0xC000000000000001) != 0)
  {
    v68 = MEMORY[0x23188EAC0](0, v65);
    v67 = v82;
    goto LABEL_12;
  }

  v67 = v82;
  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v68 = *(v65 + 32);
LABEL_12:
    v69 = qword_28140A0C8;
    v89 = v68;
    if (v69 != -1)
    {
      swift_once();
    }

    v70 = __swift_project_value_buffer(v66, qword_28140BD10);
    swift_beginAccess();
    v71 = v81;
    (*(v81 + 16))(v67, v70, v66);

    v72 = sub_22B36050C();
    v73 = sub_22B360CFC();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      aBlock[0] = v75;
      *v74 = 134218242;
      if (v88)
      {
        v76 = sub_22B36109C();
      }

      else
      {
        v76 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v74 + 4) = v76;

      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_22B1A7B20(v79, v80, aBlock);
      _os_log_impl(&dword_22B116000, v72, v73, "Found %ld shares for %s", v74, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x23188F650](v75, -1, -1);
      MEMORY[0x23188F650](v74, -1, -1);

      (*(v81 + 8))(v82, v66);
      v51 = v89;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v71 + 8))(v67, v66);
      v51 = v89;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_22B13E488(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6, uint64_t a7)
{
  if (a4)
  {
    v10 = a7 + 16;
    v11 = swift_allocObject();
    *(v11 + 16) = a6 & 1;
    *(v11 + 24) = a5;
    *(v11 + 32) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_22B14518C;
    *(v12 + 24) = v11;
    v26 = sub_22B128240;
    v27 = v12;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_22B32556C;
    v25 = &block_descriptor_137;
    v13 = _Block_copy(&v22);
    v14 = a4;
    v15 = a5;

    [v15 performBlockAndWait_];
    _Block_release(v13);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      if (a6)
      {
        v17 = [objc_opt_self() processInfo];
        v18 = [v17 processName];

        v19 = sub_22B36084C();
        v21 = v20;

        LOWORD(v22) = 515;
        BYTE2(v22) = 19;
        v23 = v19;
        v24 = v21;
        v25 = 0;
        static AutoBugCaptureManager.sendIssue(_:)(&v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
        sub_22B360AEC();
      }

      else
      {
        v22 = a4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
        sub_22B360ADC();
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
    return sub_22B360AEC();
  }

  return result;
}

void sub_22B13E700(char a1, id a2, void *a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    [a2 deleteObject_];
  }

  v9[0] = 0;
  if ([a2 save_])
  {
    v5 = *MEMORY[0x277D85DE8];

    MEMORY[0x2821F9840]();
  }

  else
  {
    v6 = v9[0];
    v7 = sub_22B35DB9C();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

id sub_22B13E818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a8;
  v28 = a6;
  v29 = a7;
  v13 = sub_22B35F01C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  *&v16 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 refreshAllObjects];
  (*(v14 + 104))(v18, *MEMORY[0x277D073D0], v13);
  v19 = sub_22B1442DC(a4, a5, a1, v18, 0, 1, a2);
  (*(v14 + 8))(v18, v13);
  if (!v19)
  {
    return [a1 refreshAllObjects];
  }

  if (v19 >> 62)
  {
    result = sub_22B36109C();
    if (result)
    {
LABEL_4:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x23188EAC0](0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v21 = *(v19 + 32);
      }

      v22 = v21;
      v23 = [v21 managedObjectContext];

      if (v23)
      {
        MEMORY[0x28223BE20](v24);
        *(&v28 - 8) = v19;
        *(&v28 - 7) = a4;
        v26 = v28;
        v25 = v29;
        *(&v28 - 6) = a5;
        *(&v28 - 5) = v26;
        *(&v28 - 4) = v25;
        *(&v28 - 3) = v30;
        *(&v28 - 2) = v27;
        *(&v28 - 1) = v23;
        sub_22B360E7C();

        if (v8)
        {
          return result;
        }

        return [a1 refreshAllObjects];
      }
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

  return [a1 refreshAllObjects];
}

void sub_22B13EA84(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!sub_22B36109C())
    {
      goto LABEL_15;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    sub_22B207390(5);
    return;
  }

  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x23188EAC0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v3 = *(a1 + 32);
  }

  v4 = v3;
  v5 = sub_22B36081C();
  [v4 setSiteID_];

  if (!v2)
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(a1 + 32);
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = MEMORY[0x23188EAC0](0, a1);
LABEL_10:
  v7 = sub_22B35DCCC();
  [v6 setMetadata_];

  if (v2)
  {
    v8 = MEMORY[0x23188EAC0](0, a1);
LABEL_14:
    v9 = v8;
    v10 = sub_22B36081C();
    [v9 setZoneName_];

    goto LABEL_15;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a1 + 32);
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

void sub_22B13EC90(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  [a1 refreshAllObjects];
  v7 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v8 = sub_22B36081C();
  v9 = [v7 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D837D0];
  *(v10 + 16) = xmmword_22B3634B0;
  *(v10 + 56) = v11;
  *(v10 + 32) = 0x444965746973;
  *(v10 + 40) = 0xE600000000000000;
  v12 = sub_22B360A3C();

  [v9 setPropertiesToFetch_];

  [v9 setReturnsDistinctResults_];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_22B363650;
    v14 = *(a3 + 112);
    if (!v14)
    {
      goto LABEL_21;
    }

    *(v13 + 32) = v14;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v15 = v14;
    v16 = sub_22B360A3C();

    [v9 setAffectedStores_];
  }

  sub_22B35EDEC();
  v17 = a1;
  v18 = sub_22B360E9C();
  if (v4)
  {

    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v20 = sub_22B36081C();
    [v19 initWithDomain:v20 code:1 userInfo:0];

    swift_willThrow();
    return;
  }

  v36 = v18;
  if (v18 >> 62)
  {
    v21 = sub_22B36109C();
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_18:

    v23 = MEMORY[0x277D84F90];
LABEL_19:
    v34 = sub_22B31A80C(v23);

    [v17 refreshAllObjects];

    *a4 = v34;
    return;
  }

  v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_8:
  v35 = v9;
  v39 = MEMORY[0x277D84F90];
  sub_22B355680(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v23 = v39;
    v24 = v36;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x23188EAC0](v22, v24);
      }

      else
      {
        v25 = *(v24 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = [v25 siteID];
      v28 = sub_22B36084C();
      v30 = v29;

      v32 = *(v39 + 16);
      v31 = *(v39 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22B355680((v31 > 1), v32 + 1, 1);
        v24 = v36;
      }

      ++v22;
      *(v39 + 16) = v32 + 1;
      v33 = v39 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v21 != v22);

    v9 = v35;
    v17 = a1;
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22B13F064(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v105 = a6;
  v111[3] = *MEMORY[0x277D85DE8];
  v106 = sub_22B36052C();
  v103 = *(v106 - 8);
  v13 = *(v103 + 64);
  MEMORY[0x28223BE20](v106);
  v101 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v102 = &v97 - v16;
  v17 = type metadata accessor for CDEnergySite();
  v104 = *(v17 - 8);
  v18 = *(v104 + 64);
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v107 = (&v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 refreshAllObjects];
  v21 = [objc_opt_self() currentQueryGenerationToken];
  v111[0] = 0;
  v22 = [a1 setQueryGenerationFromToken:v21 error:v111];

  v108 = v17;
  if (v22)
  {
    v23 = v111[0];
  }

  else
  {
    v24 = v111[0];
    v25 = sub_22B35DB9C();

    swift_willThrow();
    v7 = 0;
  }

  v26 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v27 = sub_22B36081C();
  v28 = [v26 initWithEntityName_];

  [v28 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22B3634B0;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_22B1280E4();
  v100 = a2;
  *(v29 + 32) = a2;
  *(v29 + 40) = a3;

  v109 = sub_22B360CCC();
  v30 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v31 = sub_22B36081C();
  v32 = [v30 initWithKey:v31 ascending:0];

  if ((a4 & 1) == 0)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_22B363650;
    *(v36 + 32) = v32;
    sub_22B128014(0, &qword_281409308, 0x277CCAC98);
    v37 = v32;
    v38 = sub_22B360A3C();

    [v28 setSortDescriptors_];

    v39 = v109;
    [v28 setPredicate_];
    [v28 setFetchBatchSize_];
    sub_22B35EDEC();
    v40 = a1;
    v41 = sub_22B360E9C();
    if (v7)
    {

      v111[0] = 0;
      if ([a1 setQueryGenerationFromToken:0 error:v111])
      {
        v42 = v111[0];
      }

      else
      {
        v65 = v111[0];
        v66 = sub_22B35DB9C();

        swift_willThrow();
      }

      [a1 refreshAllObjects];
      v67 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v68 = sub_22B36081C();
      [v67 initWithDomain:v68 code:1 userInfo:0];

      swift_willThrow();
      goto LABEL_36;
    }

    if (v41 >> 62)
    {
      v40 = v41;
      v82 = sub_22B36109C();
      v41 = v40;
      v99 = v37;
      if (v82)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v43 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v99 = v37;
      if (v43)
      {
LABEL_12:
        v98 = a3;
        if ((v41 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x23188EAC0](0);
          goto LABEL_15;
        }

        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v44 = *(v41 + 32);
LABEL_15:
          v45 = v44;

          v46 = v45;
          v47 = [v46 siteID];
          v48 = sub_22B36084C();
          v50 = v49;

          v51 = v107;
          *v107 = v48;
          v51[1] = v50;
          v52 = [v46 zoneName];
          v53 = sub_22B36084C();
          v55 = v54;

          v51[2] = v53;
          v51[3] = v55;
          v56 = [v46 creationDate];
          v57 = v108;
          v58 = v51 + *(v108 + 24);
          sub_22B35DE5C();

          v59 = [v46 metadata];
          v60 = sub_22B35DCDC();
          v62 = v61;
          v101 = v46;

          v63 = (v51 + *(v57 + 28));
          *v63 = v60;
          v63[1] = v62;
          v111[0] = 0;
          if ([a1 setQueryGenerationFromToken:0 error:v111])
          {
            v64 = v111[0];
          }

          else
          {
            v69 = v111[0];
            v70 = sub_22B35DB9C();

            swift_willThrow();
          }

          v71 = v102;
          v72 = v98;
          [a1 refreshAllObjects];
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v73 = v106;
          v74 = __swift_project_value_buffer(v106, qword_28140BD10);
          swift_beginAccess();
          v75 = v103;
          (*(v103 + 16))(v71, v74, v73);

          v76 = sub_22B36050C();
          v77 = sub_22B360D2C();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            v110 = v79;
            *v78 = 136446210;
            *(v78 + 4) = sub_22B1A7B20(v100, v72, &v110);
            _os_log_impl(&dword_22B116000, v76, v77, "Found energysite %{public}s", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v79);
            MEMORY[0x23188F650](v79, -1, -1);
            MEMORY[0x23188F650](v78, -1, -1);

            (*(v75 + 8))(v102, v73);
          }

          else
          {

            (*(v75 + 8))(v71, v73);
          }

          v80 = v105;
          sub_22B144DC0(v107, v105);
          v81 = 0;
          goto LABEL_35;
        }

        __break(1u);
LABEL_39:
        swift_once();
LABEL_31:
        v86 = v106;
        v87 = __swift_project_value_buffer(v106, qword_28140BD10);
        swift_beginAccess();
        v88 = v103;
        (*(v103 + 16))(v40, v87, v86);

        v89 = sub_22B36050C();
        v90 = sub_22B360D2C();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = v89;
          v92 = swift_slowAlloc();
          v93 = v39;
          v94 = v88;
          v95 = swift_slowAlloc();
          v110 = v95;
          *v92 = 136446210;
          *(v92 + 4) = sub_22B1A7B20(v100, a5, &v110);
          _os_log_impl(&dword_22B116000, v91, v90, "Failed to find energysite for %{public}s", v92, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v95);
          MEMORY[0x23188F650](v95, -1, -1);
          MEMORY[0x23188F650](v92, -1, -1);

          (*(v94 + 8))(v101, v106);
        }

        else
        {

          (*(v88 + 8))(v40, v86);
        }

        v81 = 1;
        v80 = v105;
LABEL_35:
        (*(v104 + 56))(v80, v81, 1, v108);
LABEL_36:
        v96 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    a5 = a3;

    v111[0] = 0;
    if ([a1 setQueryGenerationFromToken:0 error:v111])
    {
      v83 = v111[0];
    }

    else
    {
      v84 = v111[0];
      v85 = sub_22B35DB9C();

      swift_willThrow();
    }

    v40 = v101;
    [a1 refreshAllObjects];
    if (qword_28140A0C8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22B363650;
  a5 = a5[14];
  if (a5)
  {
    *(v33 + 32) = a5;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v34 = a5;
    v35 = sub_22B360A3C();

    [v28 setAffectedStores_];

    goto LABEL_7;
  }

  __break(1u);
}

void sub_22B13FC04(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v49 = a5;
  v48 = a4;
  v10 = sub_22B35F01C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  *&v13 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  [a1 refreshAllObjects];
  v16 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v17 = sub_22B36081C();
  v18 = [v16 initWithEntityName_];

  (*(v11 + 16))(v15, a2, v10);
  LODWORD(v19) = (*(v11 + 88))(v15, v10);
  v20 = *MEMORY[0x277D073C8];
  v47 = a6;
  if (v19 == v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22B363650;
    v21 = *(a3 + 112);
    if (v21)
    {
LABEL_6:
      *(v19 + 32) = v21;
      sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
      v23 = v21;
LABEL_7:
      v24 = sub_22B360A3C();

      [v18 setAffectedStores_];

      goto LABEL_8;
    }

    __break(1u);
  }

  v22 = v19;
  if (v19 == *MEMORY[0x277D073D0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22B363650;
    v21 = *(a3 + 120);
    if (!v21)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    goto LABEL_6;
  }

  v35 = *MEMORY[0x277D073C0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22B363950;
  v37 = *(a3 + 120);
  if (v22 == v35)
  {
    if (!v37)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    *(v36 + 32) = v37;
    v38 = *(a3 + 112);
    if (!v38)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *(v36 + 40) = v38;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v39 = v37;
    v40 = v38;
    goto LABEL_7;
  }

  if (!v37)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *(v36 + 32) = v37;
  v41 = *(a3 + 112);
  if (!v41)
  {
LABEL_35:
    __break(1u);
    return;
  }

  *(v36 + 40) = v41;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v42 = v37;
  v43 = v41;
  v44 = sub_22B360A3C();

  [v18 setAffectedStores_];

  (*(v11 + 8))(v15, v10);
LABEL_8:
  [v18 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22B3634B0;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = sub_22B1280E4();
  v26 = v49;
  *(v25 + 32) = v48;
  *(v25 + 40) = v26;

  v27 = sub_22B360CCC();
  [v18 setPredicate_];
  sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v28 = v51;
  v29 = v50;
  v30 = sub_22B360E9C();
  if (v29)
  {

    return;
  }

  if (!(v30 >> 62))
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_25:

    goto LABEL_26;
  }

  v45 = v30;
  v46 = sub_22B36109C();
  v30 = v45;
  if (!v46)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((v30 & 0xC000000000000001) == 0)
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(v30 + 32);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_31;
  }

  v31 = MEMORY[0x23188EAC0](0);
LABEL_15:
  v32 = v31;

  v33 = [v32 integerValue];

  if (v33 <= 0)
  {
LABEL_26:
    v34 = 0;
    goto LABEL_27;
  }

  v34 = 1;
LABEL_27:
  [v28 refreshAllObjects];

  *v47 = v34;
}

uint64_t sub_22B140154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_22B36052C();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B140218, 0, 0);
}

uint64_t sub_22B140218()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v9 = *(v0 + 64);
  v3 = MEMORY[0x23188EEB0]();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA298, &qword_22B363A40);
  sub_22B360E7C();

  v5 = *(v0 + 96);
  objc_autoreleasePoolPop(v3);
  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7(v6);
}

void sub_22B140428(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v64 = a4;
  v8 = type metadata accessor for CDEnergySite();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = *(v71 + 64);
  MEMORY[0x28223BE20](v8);
  v73 = (&i - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22B35F01C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  *&v14 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v16 = &i - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  [a1 refreshAllObjects];
  v17 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v18 = sub_22B36081C();
  v65 = [v17 initWithEntityName_];

  (*(v12 + 16))(v16, a2, v11);
  LODWORD(v19) = (*(v12 + 88))(v16, v11);
  if (v19 == *MEMORY[0x277D073C8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22B363650;
    v12 = *(a3 + 112);
    if (v12)
    {
LABEL_6:
      *(v19 + 32) = v12;
      sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
LABEL_7:
      v20 = v12;
      v21 = sub_22B360A3C();

      v22 = v65;
      [v65 setAffectedStores_];

      goto LABEL_8;
    }

    __break(1u);
  }

  if (v19 == *MEMORY[0x277D073D0])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22B363650;
    v12 = *(a3 + 120);
    if (v12)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v54 = *MEMORY[0x277D073C0];
  v55 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_22B363950;
  v57 = *(a3 + 120);
  if (v55 == v54)
  {
    if (v57)
    {
      *(v56 + 32) = v57;
      v12 = *(a3 + 112);
      if (v12)
      {
        *(v56 + 40) = v12;
        sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
        v58 = v57;
        goto LABEL_7;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (!v57)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(v56 + 32) = v57;
  v59 = *(a3 + 112);
  if (!v59)
  {
LABEL_40:
    __break(1u);
    return;
  }

  *(v56 + 40) = v59;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v60 = v57;
  v61 = v59;
  v62 = sub_22B360A3C();

  v22 = v65;
  [v65 setAffectedStores_];

  (*(v12 + 8))(v16, v11);
LABEL_8:
  [v22 setResultType_];
  sub_22B35EDEC();
  v23 = sub_22B360E9C();
  if (v4)
  {

    v24 = v22;
    v25 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v26 = sub_22B36081C();
    [v25 initWithDomain:v26 code:1 userInfo:0];

    swift_willThrow();
  }

  else
  {
    v27 = v23;
    if (v23 >> 62)
    {
      goto LABEL_33;
    }

    v28 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v28; i = 0)
    {
      v29 = 0;
      v69 = v27 & 0xFFFFFFFFFFFFFF8;
      v70 = v27 & 0xC000000000000001;
      v30 = MEMORY[0x277D84F90];
      v67 = v27;
      v68 = v28;
      while (1)
      {
        if (v70)
        {
          v31 = MEMORY[0x23188EAC0](v29, v27);
        }

        else
        {
          if (v29 >= *(v69 + 16))
          {
            goto LABEL_32;
          }

          v31 = *(v27 + 8 * v29 + 32);
        }

        v32 = v31;
        v33 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v34 = [v31 siteID];
        v35 = sub_22B36084C();
        v37 = v36;

        v38 = v73;
        *v73 = v35;
        v38[1] = v37;
        v39 = [v32 zoneName];
        v40 = sub_22B36084C();
        v42 = v41;

        v38[2] = v40;
        v38[3] = v42;
        v43 = [v32 creationDate];
        v44 = v72;
        v45 = v38 + *(v72 + 24);
        sub_22B35DE5C();

        v46 = [v32 metadata];
        v47 = sub_22B35DCDC();
        v49 = v48;

        v50 = (v38 + *(v44 + 28));
        *v50 = v47;
        v50[1] = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_22B32CE2C(0, v30[2] + 1, 1, v30);
        }

        v51 = v68;
        v53 = v30[2];
        v52 = v30[3];
        if (v53 >= v52 >> 1)
        {
          v30 = sub_22B32CE2C(v52 > 1, v53 + 1, 1, v30);
        }

        v30[2] = v53 + 1;
        sub_22B144DC0(v73, v30 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v53);
        ++v29;
        v27 = v67;
        if (v33 == v51)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v28 = sub_22B36109C();
    }

    v30 = MEMORY[0x277D84F90];
LABEL_35:

    [v66 refreshAllObjects];

    *v64 = v30;
  }
}

void sub_22B140B14()
{
  v0 = sub_22B36052C();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v3 = MEMORY[0x23188EEB0](v2);
  sub_22B360E7C();
  objc_autoreleasePoolPop(v3);
}

void sub_22B140D38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22B36052C();
  v34[0] = *(v8 - 8);
  v9 = *(v34[0] + 64);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 refreshAllObjects];
  v13 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v14 = sub_22B36081C();
  v15 = [v13 initWithEntityName_];

  [v15 setResultType_];
  if (a3)
  {
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22B3634B0;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_22B1280E4();
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;

    v17 = sub_22B360CCC();
    [v15 setPredicate_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22B363650;
  v19 = *(a4 + 112);
  if (!v19)
  {
    goto LABEL_21;
  }

  *(v18 + 32) = v19;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v20 = v19;
  v21 = sub_22B360A3C();

  [v15 setAffectedStores_];

  sub_22B35EDEC();
  v22 = v34[5];
  v23 = sub_22B360E9C();
  if (!v22)
  {
    v29 = v23;
    if (v23 >> 62)
    {
      v30 = sub_22B36109C();
      if (v30)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v30 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_12:
        if (v30 >= 1)
        {
          for (i = 0; i != v30; ++i)
          {
            if ((v29 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x23188EAC0](i, v29);
            }

            else
            {
              v32 = *(v29 + 8 * i + 32);
            }

            v33 = v32;
            [a1 deleteObject_];
          }

          goto LABEL_19;
        }

        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

LABEL_19:

    sub_22B207390(4);

    return;
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v8, qword_28140BD10);
  swift_beginAccess();
  v25 = v34[0];
  (*(v34[0] + 16))(v12, v24, v8);
  v26 = sub_22B36050C();
  v27 = sub_22B360D1C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22B116000, v26, v27, "Error deleting entry from cache.", v28, 2u);
    MEMORY[0x23188F650](v28, -1, -1);
  }

  (*(v25 + 8))(v12, v8);
}

void sub_22B1411A8(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X5>, unint64_t *a6@<X8>)
{
  v71 = a3;
  v73[3] = *MEMORY[0x277D85DE8];
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v67 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = *(a1 + 112);
  if (!v18)
  {
    __break(1u);
  }

  v68 = a6;
  if ((a2 & 1) == 0 || (v18 = *(a1 + 120)) != 0)
  {
    v19 = v18;
    v20 = sub_22B207EFC();
    v73[0] = 0;
    v21 = [v20 fetchSharesInPersistentStore:v19 error:v73];

    v22 = v73[0];
    if (v21)
    {
      v66 = a5;
      sub_22B128014(0, &qword_281408538, 0x277CBC680);
      v23 = sub_22B360A5C();
      v24 = v22;

      if (v23 >> 62)
      {
LABEL_32:
        v25 = sub_22B36109C();
        if (v25)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25)
        {
LABEL_7:
          if (a4)
          {
            v63 = v12;
            v64 = v19;
            v65 = v11;
            v26 = 0;
            v69 = v23 & 0xFFFFFFFFFFFFFF8;
            v70 = v23 & 0xC000000000000001;
            while (1)
            {
              if (v70)
              {
                v27 = MEMORY[0x23188EAC0](v26, v23);
              }

              else
              {
                if (v26 >= *(v69 + 16))
                {
                  goto LABEL_31;
                }

                v27 = *(v23 + 8 * v26 + 32);
              }

              v17 = v27;
              v11 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v28 = [v27 recordID];
              v29 = [v28 zoneID];

              v19 = a4;
              v30 = [v29 zoneName];

              v31 = sub_22B36084C();
              v33 = v32;

              a4 = v19;
              if (v31 == v71 && v33 == v19)
              {
                break;
              }

              v12 = sub_22B36134C();

              if (v12)
              {
                goto LABEL_23;
              }

              ++v26;
              if (v11 == v25)
              {

                sub_22B134CDC();
                v45 = swift_allocError();
                *v46 = 13;
                v19 = v64;
                a5 = v66;
                goto LABEL_45;
              }
            }

LABEL_23:

            v19 = v64;
            v36 = v65;
            v37 = v63;
            v38 = v67;
            if (qword_28140A0C8 != -1)
            {
              swift_once();
            }

            v39 = __swift_project_value_buffer(v36, qword_28140BD10);
            swift_beginAccess();
            (*(v37 + 16))(v38, v39, v36);

            v40 = sub_22B36050C();
            v41 = sub_22B360D2C();

            if (os_log_type_enabled(v40, v41))
            {
              v42 = swift_slowAlloc();
              v43 = v37;
              v44 = swift_slowAlloc();
              v72 = v44;
              *v42 = 136315138;
              *(v42 + 4) = sub_22B1A7B20(v71, a4, &v72);
              _os_log_impl(&dword_22B116000, v40, v41, "Found share for %s", v42, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v44);
              MEMORY[0x23188F650](v44, -1, -1);
              MEMORY[0x23188F650](v42, -1, -1);

              (*(v43 + 8))(v67, v36);
            }

            else
            {

              (*(v37 + 8))(v38, v36);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
            v23 = swift_allocObject();
            *(v23 + 16) = xmmword_22B363650;
            *(v23 + 32) = v17;
          }

          *v68 = v23;
          goto LABEL_46;
        }
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v47 = __swift_project_value_buffer(v11, qword_28140BD10);
      swift_beginAccess();
      (*(v12 + 16))(v17, v47, v11);

      v48 = sub_22B36050C();
      v49 = sub_22B360D1C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v72 = v51;
        *v50 = 136315138;
        v52 = a4 == 0;
        if (a4)
        {
          v53 = v71;
        }

        else
        {
          v53 = 7958113;
        }

        v54 = a4;
        v55 = v12;
        if (v52)
        {
          v56 = 0xE300000000000000;
        }

        else
        {
          v56 = v54;
        }

        v57 = sub_22B1A7B20(v53, v56, &v72);
        v65 = v11;
        v58 = v19;
        v59 = v57;

        *(v50 + 4) = v59;
        v19 = v58;
        _os_log_impl(&dword_22B116000, v48, v49, "No share found for %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x23188F650](v51, -1, -1);
        MEMORY[0x23188F650](v50, -1, -1);

        (*(v55 + 8))(v17, v65);
      }

      else
      {

        (*(v12 + 8))(v17, v11);
      }

      a5 = v66;
      sub_22B134CDC();
      v45 = swift_allocError();
      *v60 = 13;
    }

    else
    {
      v35 = v73[0];
      v45 = sub_22B35DB9C();
    }

LABEL_45:
    swift_willThrow();

    *a5 = v45;
LABEL_46:
    v61 = *MEMORY[0x277D85DE8];
    return;
  }

  __break(1u);
}

void *sub_22B1418E4()
{
  type metadata accessor for EnergySiteRecordsManager();
  v0 = swift_allocObject();
  result = sub_22B141920();
  qword_28140BDD0 = v0;
  return result;
}

void *sub_22B141920()
{
  v1 = v0;
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 136) = 0;
  *(v0 + 128) = 0;
  if (qword_28140A888 != -1)
  {
    swift_once();
  }

  v2 = qword_27D8BB058;
  v3 = off_27D8BB060;

  v4 = sub_22B25376C(v2, v3, 0x4374686769736E49, 0xEC00000065686361);
  v6 = v5;

  v7 = v1[14];
  v8 = v1[15];
  v1[14] = v4;
  v1[15] = v6;
  sub_22B1441D8(v7, v8);
  v9 = v1[14];
  if (v9)
  {
    v10 = v1[14];

    v11 = sub_22B207EFC();

    v9 = [v11 newBackgroundContext];
    v12 = sub_22B36081C();
    [v9 setTransactionAuthor_];

    [v9 setMergePolicy_];
    [v9 setUndoManager_];
    [v9 setShouldRefreshAfterSave_];
    [v9 setStalenessInterval_];
    [v9 setShouldDeleteInaccessibleFaults_];
  }

  v13 = v1[16];
  v1[16] = v9;

  return v1;
}

void sub_22B141AE8(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v40 = a1;
  LODWORD(v38) = a3;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  v35 = *(v7 + 16);
  v36 = v14;
  v35(v13, v14, v6);

  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();

  v17 = os_log_type_enabled(v15, v16);
  v37 = v10;
  if (v17)
  {
    v18 = a2;
    v19 = swift_slowAlloc();
    v20 = v7;
    v21 = a4;
    v22 = swift_slowAlloc();
    v41 = v22;
    *v19 = 136380675;
    *(v19 + 4) = sub_22B1A7B20(v40, v18, &v41);
    _os_log_impl(&dword_22B116000, v15, v16, "Get energysite for %{private}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    a4 = v21;
    MEMORY[0x23188F650](v23, -1, -1);
    v24 = v19;
    a2 = v18;
    MEMORY[0x23188F650](v24, -1, -1);

    v25 = v20;
  }

  else
  {

    v25 = v7;
  }

  v26 = *(v25 + 8);
  v26(v13, v6);
  v27 = v39[14];
  if (v27 && (v28 = v39[16]) != 0)
  {
    v33[1] = v26;
    v29 = v39[15];
    sub_22B1231A0(v27, v29);
    v30 = v28;
    v34 = MEMORY[0x23188EEB0]();
    MEMORY[0x28223BE20](v34);
    v31 = v40;
    v33[-6] = v30;
    v33[-5] = v31;
    v33[-4] = a2;
    LOBYTE(v33[-3]) = v38 & 1;
    v33[-2] = v27;
    v33[-1] = v29;
    v39 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8A0, &unk_22B365970);
    v38 = v30;
    sub_22B360E7C();
    objc_autoreleasePoolPop(v34);
  }

  else
  {
    v32 = type metadata accessor for CDEnergySite();
    (*(*(v32 - 8) + 56))(a4, 1, 1, v32);
  }
}

uint64_t sub_22B141FF0(char a1, uint64_t a2)
{
  *(v3 + 88) = a2;
  *(v3 + 96) = v2;
  *(v3 + 184) = a1;
  v4 = sub_22B36052C();
  *(v3 + 104) = v4;
  v5 = *(v4 - 8);
  *(v3 + 112) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B1420B4, v2, 0);
}

uint64_t sub_22B1420B4()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Getting all energysites", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[14];
  v8 = v0[15];
  v11 = v0[12];
  v10 = v0[13];

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  v0[16] = v12;
  v13 = *(v11 + 120);
  v0[17] = v13;
  if (v12 && (v14 = *(v0[12] + 128), (v0[18] = v14) != 0))
  {
    v15 = *(v0 + 184);
    sub_22B1231A0(v12, v13);
    if (v15 == 1)
    {
      v16 = v14;
      v17 = swift_task_alloc();
      v0[19] = v17;
      *v17 = v0;
      v17[1] = sub_22B142484;
      v18 = v0[12];

      return sub_22B142D7C();
    }

    else
    {
      v22 = v0[18];
      v23 = swift_allocObject();
      v0[20] = v23;
      *(v23 + 16) = v22;
      v24 = swift_allocObject();
      *(v24 + 16) = sub_22B1451F0;
      *(v24 + 24) = v23;
      v25 = v14;
      v0[6] = sub_22B128240;
      v0[7] = v24;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_22B32556C;
      v0[5] = &block_descriptor_100;
      v26 = _Block_copy(v0 + 2);
      v27 = v0[7];
      v28 = v22;

      [v28 performBlockAndWait_];
      _Block_release(v26);
      LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

      if (v26)
      {
        __break(1u);
      }

      else
      {
        v29 = v0[17];
        v30 = v0[18];
        v31 = v0[16];
        v32 = swift_task_alloc();
        v0[21] = v32;
        *v32 = v0;
        v32[1] = sub_22B142764;
        v33 = v0[11];

        return sub_22B140154(v33, v30, v31, v29);
      }
    }
  }

  else
  {
    v20 = v0[15];

    v21 = v0[1];

    return v21(0);
  }

  return result;
}

uint64_t sub_22B142484()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B142594, v2, 0);
}

uint64_t sub_22B142594()
{
  v1 = v0[18];
  v2 = swift_allocObject();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22B1451F0;
  *(v3 + 24) = v2;
  v0[6] = sub_22B128240;
  v0[7] = v3;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B32556C;
  v0[5] = &block_descriptor_100;
  v4 = _Block_copy(v0 + 2);
  v5 = v0[7];
  v6 = v1;

  [v6 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[17];
    v9 = v0[18];
    v10 = v0[16];
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = sub_22B142764;
    v12 = v0[11];

    return sub_22B140154(v12, v9, v10, v8);
  }

  return result;
}

uint64_t sub_22B142764(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_22B14287C, v3, 0);
}

uint64_t sub_22B14287C()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  v5 = v0[22];
  v6 = v0[15];

  v7 = v0[1];

  return v7(v5);
}

uint64_t sub_22B14290C()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360D2C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Getting all energysites", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v11 = v1[14];
  if (!v11)
  {
    return MEMORY[0x277D84FA0];
  }

  v12 = v1[16];
  if (!v12)
  {
    return MEMORY[0x277D84FA0];
  }

  v13 = v1[15];
  sub_22B1231A0(v11, v13);
  v14 = v12;
  v15 = sub_22B13A9F4();

  return v15;
}

void sub_22B142B18(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22B36052C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);

  v12 = sub_22B36050C();
  v13 = sub_22B360D2C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136380675;
    *(v14 + 4) = sub_22B1A7B20(a1, a2, &v20);
    _os_log_impl(&dword_22B116000, v12, v13, "Delete energysite for %{private}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x23188F650](v15, -1, -1);
    MEMORY[0x23188F650](v14, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v16 = v3[14];
  if (v16)
  {
    v17 = v3[16];
    if (v17)
    {
      v18 = v3[15];
      sub_22B1231A0(v16, v18);
      v19 = v17;
      sub_22B140B14();
    }
  }
}

uint64_t sub_22B142D7C()
{
  v1[14] = v0;
  v2 = sub_22B36052C();
  v1[15] = v2;
  v3 = *(v2 - 8);
  v1[16] = v3;
  v4 = *(v3 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B142E48, v0, 0);
}

uint64_t sub_22B142E48()
{
  v1 = v0[14];
  if (*(v1 + 136) == 1)
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v2 = v0[18];
    v3 = v0[15];
    v4 = v0[16];
    v5 = __swift_project_value_buffer(v3, qword_28140BD10);
    swift_beginAccess();
    (*(v4 + 16))(v2, v5, v3);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[18];
    v10 = v0[15];
    v11 = v0[16];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22B116000, v6, v7, "[Deduplication] In Progress", v12, 2u);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
    goto LABEL_18;
  }

  *(v1 + 136) = 1;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = v0[16];
  v13 = v0[17];
  v15 = v0[15];
  v16 = __swift_project_value_buffer(v15, qword_28140BD10);
  swift_beginAccess();
  (*(v14 + 16))(v13, v16, v15);
  v17 = sub_22B36050C();
  v18 = sub_22B360D2C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_22B116000, v17, v18, "deduplicate energysite", v19, 2u);
    MEMORY[0x23188F650](v19, -1, -1);
  }

  v21 = v0[16];
  v20 = v0[17];
  v23 = v0[14];
  v22 = v0[15];

  (*(v21 + 8))(v20, v22);
  v24 = *(v23 + 112);
  v0[19] = v24;
  if (!v24)
  {
LABEL_17:
    *(v1 + 136) = 0;
LABEL_18:
    v36 = v0[17];
    v35 = v0[18];

    v37 = v0[1];

    return v37();
  }

  v25 = v0[14];
  v26 = *(v25 + 120);
  v0[20] = v26;
  sub_22B1231A0(v24, v26);
  sub_22B1231A0(v24, v26);

  sub_22B1441D8(v27, v26);
  v28 = sub_22B207EFC();

  v29 = [v28 newBackgroundContext];
  v0[21] = v29;
  v30 = sub_22B36081C();
  [v29 setTransactionAuthor_];

  [v29 setMergePolicy_];
  [v29 setUndoManager_];
  [v29 setShouldRefreshAfterSave_];
  [v29 setStalenessInterval_];
  [v29 setShouldDeleteInaccessibleFaults_];

  v31 = *(v25 + 128);
  v0[22] = v31;
  if (!v31)
  {

    goto LABEL_17;
  }

  v32 = v31;
  v33 = swift_task_alloc();
  v0[23] = v33;
  *v33 = v0;
  v33[1] = sub_22B1432C4;

  return sub_22B13A2BC(v29, 0xD000000000000018, 0x800000022B369090, v24, v26);
}

uint64_t sub_22B1432C4()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_22B1433D4, v2, 0);
}

uint64_t sub_22B1433D4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22B144218;
  *(v6 + 24) = v5;
  v0[6] = sub_22B12819C;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_22B32556C;
  v0[5] = &block_descriptor_2;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];
  v9 = v1;

  [v9 performBlockAndWait_];

  _Block_release(v7);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0[14] + 136) = 0;

    v12 = v0[17];
    v11 = v0[18];

    v13 = v0[1];

    return v13();
  }

  return result;
}

void sub_22B143598(uint64_t a1, unint64_t a2, int a3)
{
  v43 = a1;
  LODWORD(v3) = a3;
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v42 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v36[-v10];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  v39 = v6[2];
  v39(v11, v12, v5);

  v13 = sub_22B36050C();
  v14 = sub_22B360D2C();

  v15 = os_log_type_enabled(v13, v14);
  v40 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v37 = v3;
    v3 = v16;
    v17 = swift_slowAlloc();
    v38 = v6;
    v18 = v17;
    v46 = v17;
    *v3 = 136315138;
    *(v3 + 4) = sub_22B1A7B20(v43, a2, &v46);
    _os_log_impl(&dword_22B116000, v13, v14, "Fetching CKShare for energysite %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    v19 = v18;
    v6 = v38;
    MEMORY[0x23188F650](v19, -1, -1);
    v20 = v3;
    LOBYTE(v3) = v37;
    MEMORY[0x23188F650](v20, -1, -1);
  }

  v21 = v6[1];
  v21(v11, v5);
  v22 = v44[14];
  if (!v22)
  {
    v39(v42, v12, v5);
    v28 = sub_22B36050C();
    v29 = sub_22B360D1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B116000, v28, v29, "Nil model", v30, 2u);
      MEMORY[0x23188F650](v30, -1, -1);
    }

    v21(v42, v5);
    sub_22B134CDC();
    swift_allocError();
    v32 = 13;
    goto LABEL_14;
  }

  v23 = v44[16];
  if (!v23)
  {
    sub_22B134CDC();
    swift_allocError();
    v32 = 7;
LABEL_14:
    *v31 = v32;
    swift_willThrow();
    return;
  }

  v24 = v44[15];
  sub_22B1231A0(v44[14], v24);
  v25 = v23;
  v26 = MEMORY[0x23188EEB0]();
  v27 = v41;
  sub_22B1411A8(v22, v3 & 1, v43, v40, &v45, &v46);
  if (v27)
  {
    objc_autoreleasePoolPop(v26);
LABEL_9:

    return;
  }

  objc_autoreleasePoolPop(v26);
  v33 = v46;
  if (!(v46 >> 62))
  {
    if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_22:

    sub_22B134CDC();
    swift_allocError();
    *v35 = 13;
    swift_willThrow();
    goto LABEL_9;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_22;
  }

LABEL_17:
  if ((v33 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23188EAC0](0, v33);
    goto LABEL_20;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v33 + 32);
LABEL_20:

    return;
  }

  __break(1u);
}

void sub_22B143A3C(int a1)
{
  v29 = a1;
  v1 = sub_22B36052C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_28140BD10);
  swift_beginAccess();
  v28 = v2[2];
  v28(v8, v9, v1);
  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v5;
    v13 = v12;
    *v12 = 0;
    _os_log_impl(&dword_22B116000, v10, v11, "Fetching CKShares", v12, 2u);
    v5 = v27;
    MEMORY[0x23188F650](v13, -1, -1);
  }

  v14 = v2[1];
  v14(v8, v1);
  v15 = v30[14];
  if (v15)
  {
    v16 = v30[16];
    if (v16)
    {
      v17 = v30[15];
      sub_22B1231A0(v30[14], v17);
      v18 = v16;
      v19 = MEMORY[0x23188EEB0]();
      sub_22B1411A8(v15, v29 & 1, 0, 0, &v31, &v32);
      objc_autoreleasePoolPop(v19);

      return;
    }

    sub_22B134CDC();
    swift_allocError();
    v26 = 7;
  }

  else
  {
    v28(v5, v9, v1);
    v20 = sub_22B36050C();
    v21 = sub_22B360D1C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v5;
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22B116000, v20, v21, "Nil model", v23, 2u);
      v24 = v23;
      v5 = v22;
      MEMORY[0x23188F650](v24, -1, -1);
    }

    v14(v5, v1);
    sub_22B134CDC();
    swift_allocError();
    v26 = 13;
  }

  *v25 = v26;
  swift_willThrow();
}

uint64_t sub_22B143DD8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = sub_22B36052C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  (*(v6 + 16))(v9, v10, v5);

  v11 = sub_22B36050C();
  v12 = sub_22B360D2C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136380675;
    *(v13 + 4) = sub_22B1A7B20(v21, a2, &v22);
    _os_log_impl(&dword_22B116000, v11, v12, "Get energysite for %{private}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x23188F650](v14, -1, -1);
    MEMORY[0x23188F650](v13, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v15 = v3[14];
  if (v15)
  {
    v16 = v3[16];
    if (v16)
    {
      v17 = v3[15];
      sub_22B1231A0(v15, v17);
      v18 = v16;
      LOBYTE(v16) = sub_22B13D248();
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16 & 1;
}

uint64_t sub_22B144058()
{
  sub_22B1441D8(*(v0 + 112), *(v0 + 120));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for CDEnergySite()
{
  result = qword_28140A460;
  if (!qword_28140A460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B144130()
{
  result = sub_22B35DE9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22B1441D8(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_22B144238()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_22B360AEC();
}

uint64_t sub_22B1442DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v51 = a6;
  v52 = a5;
  v53 = a3;
  v55 = a1;
  v10 = sub_22B36052C();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_22B35F01C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x23188EEB0](v15);
  v18 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v19 = sub_22B36081C();
  v20 = [v18 initWithEntityName_];

  (*(v13 + 16))(v17, a4, v12);
  LODWORD(result) = (*(v13 + 88))(v17, v12);
  v22 = &unk_22B363000;
  if (result != *MEMORY[0x277D073C8])
  {
LABEL_4:
    if (result == *MEMORY[0x277D073D0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
      result = swift_allocObject();
      *(result + 16) = v22[101];
      v22 = *(a7 + 120);
      if (v22)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
      v37 = *MEMORY[0x277D073C0];
      v38 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
      result = swift_allocObject();
      *(result + 16) = xmmword_22B363950;
      v39 = *(a7 + 120);
      if (v38 != v37)
      {
        if (v39)
        {
          *(result + 32) = v39;
          v44 = *(a7 + 112);
          if (v44)
          {
            *(result + 40) = v44;
            sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
            v45 = v39;
            v46 = v44;
            v47 = sub_22B360A3C();

            [v20 setAffectedStores_];

            (*(v13 + 8))(v17, v12);
            goto LABEL_7;
          }

LABEL_25:
          __break(1u);
          return result;
        }

        goto LABEL_23;
      }

      v25 = v55;
      if (v39)
      {
        *(result + 32) = v39;
        v40 = *(a7 + 112);
        if (v40)
        {
          *(result + 40) = v40;
          sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
          v41 = v39;
          v42 = v40;
          v43 = sub_22B360A3C();

          [v20 setAffectedStores_];

          goto LABEL_8;
        }

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  result = swift_allocObject();
  *(result + 16) = xmmword_22B363650;
  v22 = *(a7 + 112);
  if (!v22)
  {
    __break(1u);
    goto LABEL_4;
  }

LABEL_6:
  *(result + 32) = v22;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v23 = v22;
  v24 = sub_22B360A3C();

  [v20 setAffectedStores_];

LABEL_7:
  v25 = v55;
LABEL_8:
  [v20 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22B3634B0;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = sub_22B1280E4();
  *(v26 + 32) = v25;
  *(v26 + 40) = a2;

  v27 = sub_22B360CCC();
  [v20 setPredicate_];
  if (v51)
  {
    v28 = 1;
  }

  else
  {
    v28 = 10;
  }

  v29 = &selRef_setFetchLimit_;
  if ((v51 & 1) == 0)
  {
    v29 = &selRef_setFetchBatchSize_;
  }

  [v20 *v29];
  v30 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v31 = sub_22B36081C();
  v32 = [v30 initWithKey:v31 ascending:v52 & 1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22B363650;
  *(v33 + 32) = v32;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v34 = v32;
  v35 = sub_22B360A3C();

  [v20 setSortDescriptors_];

  sub_22B35EDEC();
  v36 = sub_22B360E9C();

  objc_autoreleasePoolPop(v54);
  return v36;
}

uint64_t sub_22B144B30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22B144B84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_37Tm()
{
  v1 = *(v0 + 32);

  sub_22B12F174(*(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_22B144CC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t sub_22B144D14@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4();
  if (!v2)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t sub_22B144D48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22B144DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CDEnergySite();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22B144E6C()
{
  v2 = *(v0 + 16);
  result = sub_22B207390(3);
  if (!v1)
  {
    return [v2 refreshAllObjects];
  }

  return result;
}

void sub_22B144EE8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[9];
  sub_22B13EA84(v0[2]);
}

uint64_t objectdestroy_106Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 90) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  sub_22B12F174(*(v0 + 40), *(v0 + 48));
  v7 = *(v0 + 64);

  v8 = *(v0 + 72);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B1450DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAAD0, &qword_22B363A50) - 8) + 80);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);

  return sub_22B13E488(a1, a2, a3, a4, v10, v11, v12);
}

uint64_t sub_22B145224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_22B170BE0(a3, v24 - v10, &qword_27D8BA8D0, &qword_22B363610);
  v12 = sub_22B360B6C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22B123284(v11, &qword_27D8BA8D0, &qword_22B363610);
  }

  else
  {
    sub_22B360B5C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_22B360ACC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22B3608CC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

id sub_22B145490()
{
  result = [objc_allocWithZone(type metadata accessor for HomeEnergyListener()) init];
  qword_28140BD30 = result;
  return result;
}

NSObject *HomeEnergyListener.init()()
{
  v1 = sub_22B36052C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v7 = sub_22B36081C();
  v8 = [v6 initWithMachServiceName_];

  *&v0[OBJC_IVAR____TtC16HomeEnergyDaemon18HomeEnergyListener_xpcListener] = v8;
  v9 = type metadata accessor for HomeEnergyListener();
  v21.receiver = v0;
  v21.super_class = v9;
  v10 = objc_msgSendSuper2(&v21, sel_init);
  v11 = OBJC_IVAR____TtC16HomeEnergyDaemon18HomeEnergyListener_xpcListener;
  v12 = *&v10[OBJC_IVAR____TtC16HomeEnergyDaemon18HomeEnergyListener_xpcListener];
  v13 = v10;
  [v12 setDelegate_];
  [*&v10[v11] resume];
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v1, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v5, v14, v1);
  v15 = sub_22B36050C();
  v16 = sub_22B360CFC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_22B116000, v15, v16, "Listener is started", v17, 2u);
    MEMORY[0x23188F650](v17, -1, -1);
    v18 = v13;
  }

  else
  {
    v18 = v15;
    v15 = v13;
  }

  (*(v2 + 8))(v5, v1);
  return v13;
}

id HomeEnergyListener.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360CFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, "Listener is tearing down", v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  [*&v1[OBJC_IVAR____TtC16HomeEnergyDaemon18HomeEnergyListener_xpcListener] invalidate];
  v11 = type metadata accessor for HomeEnergyListener();
  v14.receiver = v1;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

uint64_t sub_22B145990(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x23188EEB0]();
  sub_22B1459E4(a2, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_22B1459E4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_22B36052C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - v11;
  swift_unknownObjectWeakInit();
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  v51 = v4[2];
  v52 = v13;
  v51(v12, v13, v3);
  v14 = a1;
  v15 = sub_22B36050C();
  v16 = sub_22B360D2C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v10;
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = [v14 processIdentifier];

    _os_log_impl(&dword_22B116000, v15, v16, "Listener connection received from %d", v18, 8u);
    v19 = v18;
    v10 = v17;
    MEMORY[0x23188F650](v19, -1, -1);
  }

  else
  {

    v15 = v14;
  }

  v20 = v4[1];
  v49 = v4 + 1;
  v20(v12, v3);
  v21 = sub_22B36081C();
  v22 = [v14 valueForEntitlement:v21];

  if (v22)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  aBlock = v58;
  v55 = v59;
  if (*(&v59 + 1))
  {
    if (swift_dynamicCast())
    {
      v23 = v53;
      goto LABEL_14;
    }
  }

  else
  {
    sub_22B123284(&aBlock, &unk_27D8BA950, &qword_22B364940);
  }

  v23 = 0;
LABEL_14:
  v51(v10, v52, v3);
  v24 = sub_22B36050C();
  v25 = sub_22B360D0C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v47 = v20;
    v27 = v26;
    v28 = swift_slowAlloc();
    v46 = v10;
    v29 = v28;
    *&aBlock = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_22B1A7B20(0xD000000000000026, 0x800000022B36AB80, &aBlock);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_22B1A7B20(0xD00000000000001CLL, 0x800000022B36AB60, &aBlock);
    *(v27 + 22) = 1024;
    *(v27 + 24) = v23;
    _os_log_impl(&dword_22B116000, v24, v25, "Entitlement for %s: %s: %{BOOL}d", v27, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v29, -1, -1);
    v30 = v27;
    v20 = v47;
    MEMORY[0x23188F650](v30, -1, -1);

    v31 = v46;
  }

  else
  {

    v31 = v10;
  }

  v20(v31, v3);
  if (v23)
  {
    v32 = [objc_opt_self() interfaceWithProtocol_];
    [v14 setExportedInterface:v32];

    Strong = swift_unknownObjectWeakLoadStrong();
    v34 = objc_allocWithZone(type metadata accessor for HomeEnergyProxy());
    v35 = sub_22B1650BC();

    [v14 setExportedObject:v35];
    v56 = sub_22B1460E0;
    v57 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_22B118A6C;
    *(&v55 + 1) = &block_descriptor_1123;
    v36 = _Block_copy(&aBlock);
    [v14 setInvalidationHandler:v36];
    _Block_release(v36);
    v56 = sub_22B1460EC;
    v57 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_22B118A6C;
    *(&v55 + 1) = &block_descriptor_1126;
    v37 = _Block_copy(&aBlock);
    [v14 setInterruptionHandler:v37];
    _Block_release(v37);
    [v14 resume];
    v38 = 1;
  }

  else
  {
    v39 = v48;
    v51(v48, v52, v3);
    v40 = v14;
    v41 = sub_22B36050C();
    v42 = sub_22B360D1C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67240192;
      *(v43 + 4) = [v40 processIdentifier];

      _os_log_impl(&dword_22B116000, v41, v42, "Connection %{public}d not entitled", v43, 8u);
      MEMORY[0x23188F650](v43, -1, -1);
    }

    else
    {
    }

    v20(v39, v3);
    v38 = 0;
  }

  result = MEMORY[0x23188F730](v60);
  *v50 = v38;
  return result;
}

uint64_t sub_22B1460F8(const char *a1)
{
  v2 = sub_22B36052C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_28140BD10);
  swift_beginAccess();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_22B36050C();
  v9 = sub_22B360CFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22B116000, v8, v9, a1, v10, 2u);
    MEMORY[0x23188F650](v10, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_22B146474(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B1464DC, 0, 0);
}

uint64_t sub_22B1464DC()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B1465D0;

  return sub_22B299254();
}

uint64_t sub_22B1465D0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v4[2](v4, a1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22B146880(int a1, void *aBlock)
{
  v2[4] = _Block_copy(aBlock);
  v2[2] = sub_22B36084C();
  v2[3] = v3;

  return MEMORY[0x2822009F8](sub_22B1468FC, 0, 0);
}

uint64_t sub_22B1468FC()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v0[5] = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22B146A2C;

  return sub_22B299C0C(v2, v1, 0, 0, 0xE000000000000000, 0, 0xE000000000000000, 0);
}

uint64_t sub_22B146A2C(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v8 = *v1;

  v5[2](v5, a1);
  _Block_release(v5);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_22B146D00(int a1, void *aBlock)
{
  v2[20] = _Block_copy(aBlock);
  v2[21] = sub_22B36084C();
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_22B146D7C, 0, 0);
}

uint64_t sub_22B146D7C()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  v2 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v3 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v3;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v2;
  if (qword_28140AA30 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_22B146EB8;

  return sub_22B29AB48(v0 + 88, 0);
}

uint64_t sub_22B146EB8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v5 = *v1;
  *(v2 + 192) = a1;

  sub_22B172074(v2 + 16);

  return MEMORY[0x2822009F8](sub_22B146FC0, 0, 0);
}

uint64_t sub_22B146FC0()
{
  v1 = v0[20];
  v1[2](v1, v0[24]);
  _Block_release(v1);
  v2 = v0[1];

  return v2();
}

uint64_t sub_22B147038()
{
  type metadata accessor for HomeEnergyDaemonUtilities();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B1724E0;

  return sub_22B34A2E4(1);
}

uint64_t sub_22B147248(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  type metadata accessor for HomeEnergyDaemonUtilities();
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B1472EC;

  return sub_22B34A2E4(1);
}

uint64_t sub_22B1472EC()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v6 = *v0;

  v3 = sub_22B3606CC();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_22B147450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22B124D88;

  return (sub_22B1652B0)(a1, a2, a3, a4);
}

uint64_t sub_22B1476C0(uint64_t a1, char a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  v12 = swift_task_alloc();
  v5[3] = v12;
  v5[4] = _Block_copy(a4);
  if (a1)
  {
    v13 = sub_22B36084C();
    a1 = v14;
    v5[5] = v14;
    if (a3)
    {
LABEL_3:
      sub_22B35DE5C();
      v15 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    v5[5] = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v15 = 1;
LABEL_6:
  v16 = sub_22B35DE9C();
  (*(*(v16 - 8) + 56))(v12, v15, 1, v16);
  v17 = a5;
  v18 = swift_task_alloc();
  v5[6] = v18;
  *v18 = v5;
  v18[1] = sub_22B14786C;

  return sub_22B1652B0(v13, a1, a2 & 1, v12);
}

uint64_t sub_22B14786C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v8 = *v0;

  sub_22B123284(v4, &qword_27D8BA340, &qword_22B363FB0);
  v3[2](v3);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_22B1479FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B147ABC;

  return sub_22B165E34(a1, a2, a3);
}

uint64_t sub_22B147ABC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_22B147D50(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B3606EC();
  v4[5] = v9;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22B147E70;

  return sub_22B165E34(v6, v8, v9);
}

uint64_t sub_22B147E70()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v9 = *v0;

  v6 = sub_22B36081C();

  (v4)[2](v4, v6);

  _Block_release(v4);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_22B148038()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140AA30 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_22B14813C;
    v2 = v0[2];

    return sub_22B1992BC(v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22B14813C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B1483B8(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  *(v2 + 24) = sub_22B360C4C();

  return MEMORY[0x2822009F8](sub_22B148444, 0, 0);
}

uint64_t sub_22B148444()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140AA30 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_22B148568;
    v2 = v0[3];

    return sub_22B1992BC(v2);
  }

  else
  {
    v5 = v0[2];
    v4 = v0[3];

    v5[2](v5);
    _Block_release(v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B148568()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v7 = *v0;

  v3 = *(v1 + 24);
  v4 = *(v1 + 16);

  v4[2](v4);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_22B1486A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22B124D88;

  return sub_22B166900();
}

uint64_t sub_22B1488B8(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22B1724C8;

  return sub_22B166900();
}

uint64_t sub_22B148960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B148984, 0, 0);
}

uint64_t sub_22B148984()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v0[6] = qword_28140BD38;

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_22B148A64;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_22B212870(v5, v4, v2, v3);
}

uint64_t sub_22B148A64(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_22B148D0C(int a1, uint64_t a2, void *aBlock)
{
  v3[4] = _Block_copy(aBlock);
  v3[2] = sub_22B36084C();
  v3[3] = v5;
  if (a2)
  {
    v6 = sub_22B36084C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3[5] = v6;
  v3[6] = v7;

  return MEMORY[0x2822009F8](sub_22B148DA8, 0, 0);
}

uint64_t sub_22B148DA8()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_28140BD38;
  v0[7] = v1;
  v0[8] = v3;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22B148E98;
  v5 = v0[5];
  v6 = v0[6];

  return sub_22B212870(v2, v1, v5, v6);
}

uint64_t sub_22B148E98(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 32);
  v10 = *v1;

  v7[2](v7, a1);
  _Block_release(v7);
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_22B149024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B1490E4;

  return sub_22B166CCC(a1, a2, a3);
}

uint64_t sub_22B1490E4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_22B149370(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B3606EC();
  v4[5] = v9;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22B149490;

  return sub_22B166CCC(v6, v8, v9);
}

uint64_t sub_22B149490(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v10 = *v1;

  v6[2](v6, a1);
  _Block_release(v6);
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_22B149618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B14963C, 0, 0);
}

uint64_t sub_22B14963C()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v0[6] = qword_28140BD38;

  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_22B1724C0;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_22B214420(v5, v4, v2, v3);
}

uint64_t sub_22B1498AC(int a1, int a2, void *aBlock)
{
  v3[6] = _Block_copy(aBlock);
  v3[2] = sub_22B36084C();
  v3[3] = v4;
  v3[4] = sub_22B36084C();
  v3[5] = v5;

  return MEMORY[0x2822009F8](sub_22B149938, 0, 0);
}

uint64_t sub_22B149938()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v0[7] = v1;
  v0[8] = v4;
  v0[9] = qword_28140BD38;

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_22B149A3C;

  return sub_22B214420(v3, v4, v2, v1);
}

uint64_t sub_22B149A3C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v10 = *v1;

  v7[2](v7, a1);
  _Block_release(v7);
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_22B149BC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B149BE8, 0, 0);
}

uint64_t sub_22B149BE8()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v0[4] = qword_28140BD38;

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_22B149CC4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_22B214CB8(v3, v2);
}

uint64_t sub_22B149CC4(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_22B149F64(int a1, void *aBlock)
{
  v2[4] = _Block_copy(aBlock);
  v2[2] = sub_22B36084C();
  v2[3] = v3;

  return MEMORY[0x2822009F8](sub_22B149FE0, 0, 0);
}

uint64_t sub_22B149FE0()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = qword_28140BD38;
  v0[5] = v1;
  v0[6] = v3;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_22B14A0CC;

  return sub_22B214CB8(v2, v1);
}

uint64_t sub_22B14A0CC(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v9 = *v1;

  v6[2](v6, a1);
  _Block_release(v6);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_22B14A250()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_28140BD38;

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22B14A324;

  return sub_22B2154B4();
}

uint64_t sub_22B14A324(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5(a1);
}

uint64_t sub_22B14A5B0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B14A618, 0, 0);
}

uint64_t sub_22B14A618()
{
  if (qword_28140A6A0 != -1)
  {
    swift_once();
  }

  *(v0 + 24) = qword_28140BD38;

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22B14A6EC;

  return sub_22B2154B4();
}

uint64_t sub_22B14A6EC(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v5[2](v5, a1);
  _Block_release(v5);
  v6 = *(v8 + 8);

  return v6();
}

void sub_22B14AA00(int a1, int a2, int a3, int a4, int a5, int a6, void *aBlock, void *a8, char a9)
{
  v9[2] = a8;
  v9[3] = _Block_copy(aBlock);
  sub_22B36084C();
  v9[4] = v11;
  sub_22B36084C();
  v9[5] = v12;
  sub_22B36084C();
  v9[6] = v13;
  sub_22B36084C();
  v9[7] = v14;
  v15 = a8;
  v16 = swift_task_alloc();
  v9[8] = v16;
  *v16 = v9;
  v16[1] = sub_22B14AB70;

  JUMPOUT(0x22B1672F0);
}

uint64_t sub_22B14AB70(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 48);
  v9 = *(*v2 + 40);
  v10 = *(*v2 + 32);
  v11 = *(*v2 + 16);
  v12 = *v2;

  if (a2 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_22B35DCCC();
    sub_22B11EDC0(a1, a2);
  }

  v14 = *(v5 + 24);
  (v14)[2](v14, v13);

  _Block_release(v14);
  v15 = *(v12 + 8);

  return v15();
}

uint64_t sub_22B14AF08(uint64_t a1, uint64_t a2, char a3, char a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v12 = sub_22B35DE9C();
  v6[3] = v12;
  v13 = *(v12 - 8);
  v6[4] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v6[5] = v15;
  v6[6] = _Block_copy(a5);
  if (a1)
  {
    v17 = sub_22B36084C();
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v6[7] = v16;
  v18 = v16;
  sub_22B35DE5C();
  v19 = a6;
  v20 = swift_task_alloc();
  v6[8] = v20;
  *v20 = v6;
  v20[1] = sub_22B14B094;

  return sub_22B167778(v17, v18, v15, a3 & 1, a4 & 1);
}

uint64_t sub_22B14B094()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *(*v1 + 16);
  v11 = *v1;

  (*(v8 + 8))(v7, v9);

  v12 = *(v3 + 48);
  if (v2)
  {
    v13 = sub_22B35DB8C();

    (*(v12 + 16))(v12, v13);
  }

  else
  {
    (*(v12 + 16))(*(v3 + 48), 0);
  }

  v15 = v4 + 40;
  v14 = *(v4 + 40);
  _Block_release(*(v15 + 8));

  v16 = *(v11 + 8);

  return v16();
}

uint64_t sub_22B14B414(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B14B47C, 0, 0);
}

uint64_t sub_22B14B47C()
{
  if (sub_22B35EEBC())
  {
    if (qword_281408750 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BC30;
    v0[3] = qword_28140BC30;

    return MEMORY[0x2822009F8](sub_22B14B570, v1, 0);
  }

  else
  {
    v2 = v0[2];
    v2[2](v2, 0, 0);
    _Block_release(v2);
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_22B14B570()
{
  v1 = v0[3];
  v2 = sub_22B320C40();
  v3 = v0[2];
  v3[2](v3, v2 & 1, 0);
  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22B14B768(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B14B7D0, 0, 0);
}

uint64_t sub_22B14B7D0()
{
  if (sub_22B35EEBC())
  {
    if (qword_28140B068 != -1)
    {
      swift_once();
    }

    v1 = qword_28140BDC0;
    v0[3] = qword_28140BDC0;

    return MEMORY[0x2822009F8](sub_22B14B8C4, v1, 0);
  }

  else
  {
    v2 = v0[2];
    v2[2](v2, 0, 0);
    _Block_release(v2);
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_22B14B8C4()
{
  v1 = v0[3];
  v2 = sub_22B212108();
  v3 = v0[2];
  v3[2](v3, v2 & 1, 0);
  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

uint64_t sub_22B14B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22B1724CC;

  return sub_22B167E10(a1, a2, a3);
}

uint64_t sub_22B14BBA8(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v8 = sub_22B35D8BC();
  v5[3] = v8;
  v9 = *(v8 - 8);
  v5[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v5[5] = v11;
  v5[6] = _Block_copy(a4);
  v12 = sub_22B36084C();
  v14 = v13;
  v5[7] = v13;
  sub_22B35D85C();
  v15 = a5;
  v16 = swift_task_alloc();
  v5[8] = v16;
  *v16 = v5;
  v16[1] = sub_22B14BD0C;

  return sub_22B167E10(v12, v14, v11);
}

uint64_t sub_22B14BD0C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *(*v2 + 24);
  v11 = *(*v2 + 16);
  v12 = *v2;

  (*(v9 + 8))(v8, v10);
  if (a2 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_22B35DCCC();
    sub_22B11EDC0(a1, a2);
  }

  v14 = *(v5 + 48);
  (v14)[2](v14, v13);

  _Block_release(v14);

  v15 = *(v12 + 8);

  return v15();
}

uint64_t sub_22B14BF04(double a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22B14BF24, 0, 0);
}

uint64_t sub_22B14BF24()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() sharedSession];
  v0[4] = v1;
  v2 = *(MEMORY[0x277D17E78] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_22B14C014;
  v4.n128_u64[0] = v0[2];
  v5.n128_u64[0] = v0[3];

  return MEMORY[0x282172088](v1, v4, v5);
}

uint64_t sub_22B14C014(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v9 = *v2;

  v7 = *(v9 + 8);

  return v7(a1, a2);
}

uint64_t sub_22B14C2C0(const void *a1, double a2, double a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = _Block_copy(a1);

  return MEMORY[0x2822009F8](sub_22B14C32C, 0, 0);
}

uint64_t sub_22B14C32C()
{
  if (qword_281409020 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() sharedSession];
  v0[5] = v1;
  v2 = *(MEMORY[0x277D17E78] + 4);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_22B14C41C;
  v4.n128_u64[0] = v0[2];
  v5.n128_u64[0] = v0[3];

  return MEMORY[0x282172088](v1, v4, v5);
}

uint64_t sub_22B14C41C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;

  if (a2)
  {
    v8 = sub_22B36081C();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v4 + 32);
  (v9)[2](v9, v8);

  _Block_release(v9);
  v10 = *(v7 + 8);

  return v10();
}

id HomeEnergyProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeEnergyProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeEnergyProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22B14C658(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = a3;
  v7 = sub_22B36052C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v44 = 0u;
    v45 = 0u;
LABEL_9:
    sub_22B123284(&v44, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_10;
  }

  v15 = Strong;
  v16 = sub_22B36081C();
  v17 = [v15 valueForEntitlement_];

  if (v17)
  {
    sub_22B36102C();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (!*(&v43 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v18 = v42;
    goto LABEL_11;
  }

LABEL_10:
  v18 = 0;
LABEL_11:
  v39 = a1;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  v37 = *(v8 + 16);
  v37(v13, v19, v7);

  v20 = v13;
  v21 = sub_22B36050C();
  v22 = v8;
  v23 = sub_22B360D0C();

  if (os_log_type_enabled(v21, v23))
  {
    v24 = swift_slowAlloc();
    v40 = v18;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36 = v20;
    v27 = v26;
    *&v42 = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_22B1A7B20(v38, a4, &v42);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_22B1A7B20(v39, a2, &v42);
    *(v25 + 22) = 1024;
    *(v25 + 24) = v40;
    _os_log_impl(&dword_22B116000, v21, v23, "Entitlement for %s: %s: %{BOOL}d", v25, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v27, -1, -1);
    v28 = v25;
    v18 = v40;
    MEMORY[0x23188F650](v28, -1, -1);

    v29 = *(v22 + 8);
    v29(v36, v7);
  }

  else
  {

    v29 = *(v22 + 8);
    v29(v20, v7);
  }

  v30 = v7;
  if ((v18 & 1) == 0)
  {
    v31 = v18;
    v37(v41, v19, v30);
    v32 = sub_22B36050C();
    v33 = sub_22B360D1C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_22B116000, v32, v33, "Connection not entitled", v34, 2u);
      MEMORY[0x23188F650](v34, -1, -1);
    }

    v29(v41, v30);
    return v31;
  }

  return v18;
}

uint64_t HomeEnergyProxy.registerEnergySite(site:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B14CACC, 0, 0);
}

uint64_t sub_22B14CACC()
{
  v1 = v0[3];
  if (sub_22B14C658(0xD00000000000001ALL, 0x800000022B3691D0, 0xD000000000000019, 0x800000022B3691F0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_22B1724B4;
    v3 = v0[2];

    return sub_22B222B30(v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B14CDCC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22B1724B8;

  return HomeEnergyProxy.registerEnergySite(site:)(v6);
}

uint64_t sub_22B14CEB0()
{
  v1 = v0[2];
  if (sub_22B14C658(0xD00000000000001ALL, 0x800000022B3691D0, 0x69536C6C41746567, 0xEF29287344496574))
  {
    if (qword_28140B2D8 != -1)
    {
      swift_once();
    }

    v2 = qword_28140BDD0;
    v0[3] = qword_28140BDD0;

    return MEMORY[0x2822009F8](sub_22B14CFF8, v2, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v3 = 9;
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_22B14CFF8()
{
  v1 = *(v0 + 24);
  v2 = sub_22B14290C();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22B14D1D0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_22B14D278;

  return HomeEnergyProxy.getAllSiteIDs()();
}

uint64_t sub_22B14D278()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_22B35DB8C();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_22B360C3C();

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

uint64_t HomeEnergyProxy.deleteEnergySite(site:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22B14D428, 0, 0);
}

uint64_t sub_22B14D428()
{
  v1 = v0[3];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000017, 0x800000022B369230))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_22B14D5A0;
    v3 = v0[2];

    return sub_22B23D0CC(v3);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v5 = 9;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22B14D5A0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_22B14D81C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_22B14D8E0;

  return HomeEnergyProxy.deleteEnergySite(site:)(v6);
}

uint64_t sub_22B14D8E0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_22B35DB8C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_22B14DC04(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_22B36084C();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](sub_22B14DC90, 0, 0);
}

uint64_t sub_22B14DC90()
{
  v1 = *(v0 + 16);
  if (sub_22B14C658(0xD00000000000001ALL, 0x800000022B3691D0, 0x7469732865746973, 0xED0000293A444965))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_22B14DE10;
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);

    return sub_22B22250C(v4, v3, 0, 0);
  }

  else
  {
    v6 = *(v0 + 40);

    v7 = *(v0 + 24);
    v7[2](v7, 0, 0);
    _Block_release(v7);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22B14DE10(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 16);
  v10 = *v1;

  v7 = *(v3 + 24);
  (v7)[2](v7, a1, 0);
  _Block_release(v7);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t HomeEnergyProxy.updateLocation(siteID:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B14DFAC, 0, 0);
}

uint64_t sub_22B14DFAC()
{
  v1 = v0[5];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000020, 0x800000022B369250))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_22B1724F4;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return sub_22B223504(v5, v3, v4);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B14E2B8(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_22B36084C();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_22B14E3A4;

  return HomeEnergyProxy.updateLocation(siteID:location:)(v7, v9, v10);
}

uint64_t sub_22B14E3A4(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_22B35DB8C();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 32), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t HomeEnergyProxy.updateTimezone(siteID:timezone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B14E5A8, 0, 0);
}

uint64_t sub_22B14E5A8()
{
  v1 = v0[6];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD000000000000020, 0x800000022B369280))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_22B1724F0;
    v3 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];

    return sub_22B223C04(v6, v5, v3, v4);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v8 = 9;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B14E8B4(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B36084C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_22B1724BC;

  return HomeEnergyProxy.updateTimezone(siteID:timezone:)(v6, v8, v9, v11);
}

uint64_t HomeEnergyProxy.updateState(siteID:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22B14E9D8, 0, 0);
}

uint64_t sub_22B14E9D8()
{
  v1 = v0[6];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000001ALL, 0x800000022B3692B0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_22B14EB54;
    v3 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];

    return sub_22B239328(v6, v5, v3, v4);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v8 = 9;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22B14EB54(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_22B14EDE4(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B36084C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_22B14EEE0;

  return HomeEnergyProxy.updateState(siteID:state:)(v6, v8, v9, v11);
}

uint64_t sub_22B14EEE0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 24);
  if (v3)
  {
    v12 = sub_22B35DB8C();

    (v11)[2](v11, 0, v12);
    _Block_release(v11);
  }

  else
  {
    (v11)[2](*(v5 + 24), a1, 0);
    _Block_release(v11);
  }

  v13 = *(v10 + 8);

  return v13();
}

uint64_t HomeEnergyProxy.updateFields(siteID:from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22B14F0E4, 0, 0);
}

uint64_t sub_22B14F0E4()
{
  v1 = v0[5];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD00000000000001ALL, 0x800000022B3692D0))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_22B14F260;
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return sub_22B2244D0(v5, v3, v4);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v7 = 9;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22B14F260(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_22B14F4F0(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_22B36084C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_22B3606EC();
  v4[5] = v9;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_22B1724BC;

  return HomeEnergyProxy.updateFields(siteID:from:)(v6, v8, v9);
}

uint64_t sub_22B14F600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 400) = v27;
  *(v9 + 408) = v8;
  *(v9 + 368) = v25;
  *(v9 + 384) = v26;
  *(v9 + 336) = v23;
  *(v9 + 352) = v24;
  *(v9 + 304) = v21;
  *(v9 + 320) = v22;
  *(v9 + 288) = v20;
  *(v9 + 272) = a7;
  *(v9 + 280) = a8;
  *(v9 + 256) = a5;
  *(v9 + 264) = a6;
  *(v9 + 240) = a3;
  *(v9 + 248) = a4;
  *(v9 + 224) = a1;
  *(v9 + 232) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280) - 8) + 64) + 15;
  *(v9 + 416) = swift_task_alloc();
  *(v9 + 424) = swift_task_alloc();
  v11 = sub_22B35DE9C();
  *(v9 + 432) = v11;
  v12 = *(v11 - 8);
  *(v9 + 440) = v12;
  v13 = *(v12 + 64) + 15;
  *(v9 + 448) = swift_task_alloc();
  *(v9 + 456) = swift_task_alloc();
  *(v9 + 464) = swift_task_alloc();
  v14 = sub_22B36052C();
  *(v9 + 472) = v14;
  v15 = *(v14 - 8);
  *(v9 + 480) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = swift_task_alloc();
  *(v9 + 504) = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0) - 8) + 64) + 15;
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = swift_task_alloc();
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B14F848, 0, 0);
}

uint64_t sub_22B14F848()
{
  v1 = v0[51];
  if (sub_22B14C658(0xD00000000000001BLL, 0x800000022B369210, 0xD0000000000000BDLL, 0x800000022B36A730))
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v2 = v0[70];
    v3 = v0[69];
    v4 = v0[68];
    v5 = v0[54];
    v6 = v0[55];
    v0[71] = qword_28140BDD8;
    v7 = *(v6 + 56);
    v0[72] = v7;
    v0[73] = (v6 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v7(v2, 1, 1, v5);
    v7(v3, 1, 1, v5);
    v7(v4, 1, 1, v5);
    v8 = swift_task_alloc();
    v0[74] = v8;
    *v8 = v0;
    v8[1] = sub_22B14FB14;
    v10 = v0[28];
    v9 = v0[29];

    return sub_22B22250C(v10, v9, 0, 0);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v12 = 9;
    swift_willThrow();
    v13 = v0[70];
    v14 = v0[69];
    v15 = v0[68];
    v16 = v0[67];
    v17 = v0[66];
    v18 = v0[65];
    v20 = v0[63];
    v19 = v0[64];
    v21 = v0[61];
    v22 = v0[62];
    v24 = v0[58];
    v25 = v0[57];
    v26 = v0[56];
    v27 = v0[53];
    v28 = v0[52];

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_22B14FB14(uint64_t a1)
{
  v2 = *(*v1 + 592);
  v3 = *(*v1 + 568);
  v5 = *v1;
  *(*v1 + 600) = a1;

  return MEMORY[0x2822009F8](sub_22B14FC2C, v3, 0);
}

uint64_t sub_22B14FC2C()
{
  if (*(v0 + 600))
  {
    if (*(v0 + 264))
    {
      v1 = *(v0 + 256);
      v2 = *(v0 + 264);

      sub_22B35F13C();
    }

    if (*(v0 + 248))
    {
      v3 = *(v0 + 240);
      v4 = *(v0 + 248);

      sub_22B35F44C();
    }

    v5 = *(v0 + 280);
    v6 = v5 != 0;
    if (v5)
    {
      v8 = *(v0 + 288);
      v7 = *(v0 + 296);
      v9 = *(v0 + 272);
      sub_22B170BE0(*(v0 + 400), *(v0 + 536), &qword_27D8BA340, &qword_22B363FB0);
      sub_22B35F2DC();

      sub_22B35F07C();

      sub_22B35F0CC();
    }

    if (*(v0 + 296))
    {
      v10 = *(v0 + 288);
      v11 = *(v0 + 296);

      sub_22B35F0CC();
      v6 = 1;
    }

    if (*(v0 + 312))
    {
      v12 = *(v0 + 304);
      v13 = *(v0 + 312);

      sub_22B35F15C();
      v6 = 1;
    }

    *(v0 + 656) = v6;
    if (*(v0 + 328))
    {
      v14 = *(v0 + 320);
      v15 = *(v0 + 328);

      sub_22B35F09C();
    }

    if (*(v0 + 344))
    {
      v16 = *(v0 + 336);
      v17 = *(v0 + 344);

      sub_22B35F0EC();
    }

    if (*(v0 + 360))
    {
      v18 = *(v0 + 352);
      v19 = *(v0 + 360);

      sub_22B35F3CC();
      v20 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
      *(v0 + 608) = v20;
      v21 = sub_22B36081C();
      *(v0 + 616) = v21;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 216;
      *(v0 + 24) = sub_22B150344;
      v22 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA8E0, qword_22B366260);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_22B164948;
      *(v0 + 104) = &block_descriptor_706;
      *(v0 + 112) = v22;
      [v20 geocodeAddressString:v21 completionHandler:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }

    else
    {
      if (*(v0 + 376))
      {
        v27 = *(v0 + 600);
        v28 = *(v0 + 368);
        v29 = *(v0 + 376);

        sub_22B35F1DC();
      }

      if (*(v0 + 392))
      {
        v30 = *(v0 + 600);
        v31 = *(v0 + 384);
        v32 = *(v0 + 392);

        sub_22B35F1BC();
      }

      v33 = *(v0 + 528);
      v34 = *(v0 + 432);
      v35 = *(v0 + 440);
      sub_22B170BE0(*(v0 + 552), v33, &qword_27D8BA340, &qword_22B363FB0);
      v36 = *(v35 + 48);
      if (v36(v33, 1, v34) == 1)
      {
        sub_22B123284(*(v0 + 528), &qword_27D8BA340, &qword_22B363FB0);
      }

      else
      {
        v37 = *(v0 + 600);
        v38 = *(v0 + 584);
        v39 = *(v0 + 576);
        v40 = *(v0 + 536);
        v41 = *(v0 + 464);
        v42 = *(v0 + 432);
        v43 = *(v0 + 440);
        (*(v43 + 32))(v41, *(v0 + 528), v42);
        (*(v43 + 16))(v40, v41, v42);
        v39(v40, 0, 1, v42);
        sub_22B35F2BC();
        (*(v43 + 8))(v41, v42);
      }

      v44 = *(v0 + 520);
      v45 = *(v0 + 432);
      sub_22B170BE0(*(v0 + 560), v44, &qword_27D8BA340, &qword_22B363FB0);
      if (v36(v44, 1, v45) == 1)
      {
        sub_22B123284(*(v0 + 520), &qword_27D8BA340, &qword_22B363FB0);
      }

      else
      {
        v46 = *(v0 + 600);
        v47 = *(v0 + 584);
        v48 = *(v0 + 576);
        v49 = *(v0 + 536);
        v50 = *(v0 + 456);
        v51 = *(v0 + 432);
        v52 = *(v0 + 440);
        (*(v52 + 32))(v50, *(v0 + 520), v51);
        (*(v52 + 16))(v49, v50, v51);
        v48(v49, 0, 1, v51);
        sub_22B35F23C();
        (*(v52 + 8))(v50, v51);
      }

      v53 = *(v0 + 512);
      v54 = *(v0 + 432);
      sub_22B170BE0(*(v0 + 544), v53, &qword_27D8BA340, &qword_22B363FB0);
      if (v36(v53, 1, v54) == 1)
      {
        sub_22B123284(*(v0 + 512), &qword_27D8BA340, &qword_22B363FB0);
      }

      else
      {
        v55 = *(v0 + 600);
        v56 = *(v0 + 584);
        v57 = *(v0 + 576);
        v58 = *(v0 + 536);
        v60 = *(v0 + 440);
        v59 = *(v0 + 448);
        v61 = *(v0 + 432);
        (*(v60 + 32))(v59, *(v0 + 512), v61);
        (*(v60 + 16))(v58, v59, v61);
        v57(v58, 0, 1, v61);
        sub_22B35F10C();
        (*(v60 + 8))(v59, v61);
      }

      v62 = *(v0 + 600);
      v63 = swift_task_alloc();
      *(v0 + 632) = v63;
      *v63 = v0;
      v63[1] = sub_22B151658;
      v64 = *(v0 + 656);

      return EKEnergySite.save(reset:tokenUpdate:)(0, v64);
    }
  }

  else
  {
    sub_22B134CDC();
    v23 = swift_allocError();
    *v24 = 10;
    swift_willThrow();
    *(v0 + 648) = v23;
    v25 = *(v0 + 560);
    v26 = *(v0 + 552);
    sub_22B123284(*(v0 + 544), &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v26, &qword_27D8BA340, &qword_22B363FB0);
    sub_22B123284(v25, &qword_27D8BA340, &qword_22B363FB0);

    return MEMORY[0x2822009F8](sub_22B1519B8, 0, 0);
  }
}

uint64_t sub_22B150344()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 624) = v3;
  v4 = *(v1 + 568);
  if (v3)
  {
    v5 = sub_22B151084;
  }

  else
  {
    v5 = sub_22B150464;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B150464()
{
  v124 = v2;
  v3 = *(v2 + 216);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v55 = *(v2 + 216);
    }

    if (sub_22B36109C())
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23188EAC0](0, v3);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_48;
        }

        v4 = *(v3 + 32);
      }

      v5 = v4;
      v6 = *(v2 + 616);

      v7 = [v5 location];
      if (!v7)
      {
        goto LABEL_12;
      }

      v1 = v7;
      v122 = v5;
      v8 = *(v2 + 600);
      v0 = v7;
      sub_22B35F3EC();
      if (qword_28140A0C8 == -1)
      {
LABEL_8:
        v9 = *(v2 + 496);
        v10 = *(v2 + 472);
        v11 = *(v2 + 480);
        v12 = *(v2 + 232);
        v13 = __swift_project_value_buffer(v10, qword_28140BD10);
        swift_beginAccess();
        (*(v11 + 16))(v9, v13, v10);

        v14 = v0;
        v15 = sub_22B36050C();
        v16 = sub_22B360D2C();

        v17 = os_log_type_enabled(v15, v16);
        v18 = *(v2 + 496);
        v19 = *(v2 + 472);
        v20 = *(v2 + 480);
        if (v17)
        {
          v113 = *(v2 + 224);
          v114 = *(v2 + 232);
          v21 = swift_slowAlloc();
          v119 = v18;
          v22 = swift_slowAlloc();
          v116 = v19;
          v23 = swift_slowAlloc();
          v123 = v23;
          *v21 = 136315650;
          *(v21 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v123);
          *(v21 + 12) = 2080;
          *(v21 + 14) = sub_22B1A7B20(v113, v114, &v123);
          *(v21 + 22) = 2112;
          *(v21 + 24) = v14;
          *v22 = v1;
          v24 = v14;
          _os_log_impl(&dword_22B116000, v15, v16, "%s site %s set location to %@", v21, 0x20u);
          sub_22B123284(v22, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v22, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x23188F650](v23, -1, -1);
          MEMORY[0x23188F650](v21, -1, -1);

          (*(v20 + 8))(v119, v116);
        }

        else
        {

          (*(v20 + 8))(v18, v19);
        }

        v5 = v122;
LABEL_12:
        v25 = [v5 timeZone];
        if (v25)
        {
          v26 = *(v2 + 416);
          v27 = v25;
          sub_22B35E0AC();

          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        v30 = *(v2 + 416);
        v29 = *(v2 + 424);
        v31 = sub_22B35E0BC();
        v32 = *(v31 - 8);
        (*(v32 + 56))(v30, v28, 1, v31);
        sub_22B170CD0(v30, v29, &unk_27D8BA080, &unk_22B364280);
        if ((*(v32 + 48))(v29, 1, v31) == 1)
        {
          v33 = *(v2 + 424);

          sub_22B123284(v33, &unk_27D8BA080, &unk_22B364280);
        }

        else
        {
          v34 = *(v2 + 600);
          v35 = *(v2 + 424);
          v36 = sub_22B35E06C();
          v38 = v37;
          (*(v32 + 8))(v35, v31);

          sub_22B35F42C();
          if (qword_28140A0C8 != -1)
          {
            swift_once();
          }

          v40 = *(v2 + 480);
          v39 = *(v2 + 488);
          v41 = *(v2 + 472);
          v42 = *(v2 + 232);
          v43 = __swift_project_value_buffer(v41, qword_28140BD10);
          swift_beginAccess();
          (*(v40 + 16))(v39, v43, v41);

          v44 = sub_22B36050C();
          v45 = sub_22B360D2C();

          v46 = os_log_type_enabled(v44, v45);
          v48 = *(v2 + 480);
          v47 = *(v2 + 488);
          v49 = *(v2 + 472);
          if (v46)
          {
            v115 = *(v2 + 232);
            v120 = *(v2 + 472);
            v50 = *(v2 + 224);
            v51 = swift_slowAlloc();
            v117 = v47;
            v52 = v36;
            v53 = swift_slowAlloc();
            v123 = v53;
            *v51 = 136315650;
            *(v51 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v123);
            *(v51 + 12) = 2080;
            *(v51 + 14) = sub_22B1A7B20(v50, v115, &v123);
            *(v51 + 22) = 2080;
            v54 = sub_22B1A7B20(v52, v38, &v123);

            *(v51 + 24) = v54;
            _os_log_impl(&dword_22B116000, v44, v45, "%s site %s set time zone to %s", v51, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23188F650](v53, -1, -1);
            MEMORY[0x23188F650](v51, -1, -1);

            (*(v48 + 8))(v117, v120);
          }

          else
          {

            (*(v48 + 8))(v47, v49);
          }
        }

        goto LABEL_30;
      }

LABEL_48:
      swift_once();
      goto LABEL_8;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v56 = *(v2 + 616);
  v57 = *(v2 + 608);

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v58 = *(v2 + 504);
  v59 = *(v2 + 472);
  v60 = *(v2 + 480);
  v61 = *(v2 + 360);
  v62 = *(v2 + 232);
  v63 = __swift_project_value_buffer(v59, qword_28140BD10);
  swift_beginAccess();
  (*(v60 + 16))(v58, v63, v59);

  v64 = sub_22B36050C();
  v65 = sub_22B360D1C();

  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v2 + 504);
  v68 = *(v2 + 472);
  v69 = *(v2 + 480);
  if (v66)
  {
    v118 = *(v2 + 352);
    v121 = *(v2 + 360);
    v70 = *(v2 + 224);
    v71 = *(v2 + 232);
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v123 = v73;
    *v72 = 136315650;
    *(v72 + 4) = sub_22B1A7B20(0xD00000000000011ALL, 0x800000022B36A810, &v123);
    *(v72 + 12) = 2080;
    *(v72 + 14) = sub_22B1A7B20(v70, v71, &v123);
    *(v72 + 22) = 2080;
    *(v72 + 24) = sub_22B1A7B20(v118, v121, &v123);
    _os_log_impl(&dword_22B116000, v64, v65, "%s site %s could not get placemark from %s", v72, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v73, -1, -1);
    MEMORY[0x23188F650](v72, -1, -1);

    (*(v69 + 8))(v67, v68);
  }

  else
  {

    (*(v69 + 8))(v67, v68);
  }

LABEL_30:
  if (*(v2 + 376))
  {
    v74 = *(v2 + 600);
    v75 = *(v2 + 368);
    v76 = *(v2 + 376);

    sub_22B35F1DC();
  }

  if (*(v2 + 392))
  {
    v77 = *(v2 + 600);
    v78 = *(v2 + 384);
    v79 = *(v2 + 392);

    sub_22B35F1BC();
  }

  v80 = *(v2 + 528);
  v81 = *(v2 + 432);
  v82 = *(v2 + 440);
  sub_22B170BE0(*(v2 + 552), v80, &qword_27D8BA340, &qword_22B363FB0);
  v83 = *(v82 + 48);
  if (v83(v80, 1, v81) == 1)
  {
    sub_22B123284(*(v2 + 528), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v84 = *(v2 + 600);
    v85 = *(v2 + 584);
    v86 = *(v2 + 576);
    v87 = *(v2 + 536);
    v88 = *(v2 + 464);
    v89 = *(v2 + 432);
    v90 = *(v2 + 440);
    (*(v90 + 32))(v88, *(v2 + 528), v89);
    (*(v90 + 16))(v87, v88, v89);
    v86(v87, 0, 1, v89);
    sub_22B35F2BC();
    (*(v90 + 8))(v88, v89);
  }

  v91 = *(v2 + 520);
  v92 = *(v2 + 432);
  sub_22B170BE0(*(v2 + 560), v91, &qword_27D8BA340, &qword_22B363FB0);
  if (v83(v91, 1, v92) == 1)
  {
    sub_22B123284(*(v2 + 520), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v93 = *(v2 + 600);
    v94 = *(v2 + 584);
    v95 = *(v2 + 576);
    v96 = *(v2 + 536);
    v97 = *(v2 + 456);
    v98 = *(v2 + 432);
    v99 = *(v2 + 440);
    (*(v99 + 32))(v97, *(v2 + 520), v98);
    (*(v99 + 16))(v96, v97, v98);
    v95(v96, 0, 1, v98);
    sub_22B35F23C();
    (*(v99 + 8))(v97, v98);
  }

  v100 = *(v2 + 512);
  v101 = *(v2 + 432);
  sub_22B170BE0(*(v2 + 544), v100, &qword_27D8BA340, &qword_22B363FB0);
  if (v83(v100, 1, v101) == 1)
  {
    sub_22B123284(*(v2 + 512), &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v102 = *(v2 + 600);
    v103 = *(v2 + 584);
    v104 = *(v2 + 576);
    v105 = *(v2 + 536);
    v107 = *(v2 + 440);
    v106 = *(v2 + 448);
    v108 = *(v2 + 432);
    (*(v107 + 32))(v106, *(v2 + 512), v108);
    (*(v107 + 16))(v105, v106, v108);
    v104(v105, 0, 1, v108);
    sub_22B35F10C();
    (*(v107 + 8))(v106, v108);
  }

  v109 = *(v2 + 600);
  v110 = swift_task_alloc();
  *(v2 + 632) = v110;
  *v110 = v2;
  v110[1] = sub_22B151658;
  v111 = *(v2 + 656);

  return EKEnergySite.save(reset:tokenUpdate:)(0, v111);
}