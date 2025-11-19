uint64_t sub_24AB8701C(uint64_t a1)
{
  v2 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v26 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B30, &unk_24ABAEDA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v28 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  v13 = sub_24ABABC0C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = *(v2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  (*(v14 + 32))(v18 + v17, &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_24AB94E2C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_24AB94E34;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB87488;
  aBlock[3] = &block_descriptor_305;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v16, v20);
  _Block_release(v20);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v22 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
    swift_beginAccess();
    sub_24AB94828(v2 + v22, v12, &unk_27EF95B30, &unk_24ABAEDA0);
    v23 = v27;
    if ((*(v4 + 48))(v12, 1, v27))
    {
      sub_24AB7C4A4(v12, &unk_27EF95B30, &unk_24ABAEDA0);
    }

    else
    {
      v24 = v26;
      (*(v4 + 16))(v26, v12, v23);
      sub_24AB7C4A4(v12, &unk_27EF95B30, &unk_24ABAEDA0);
      v29 = 1;
      sub_24ABAC06C();
      (*(v4 + 8))(v24, v23);
    }

    v25 = v28;
    (*(v4 + 56))(v28, 1, 1, v23);
    swift_beginAccess();
    sub_24AB779B0(v25, v2 + v22, &unk_27EF95B30, &unk_24ABAEDA0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24AB874B0()
{
  v1 = sub_24ABABC0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_24ABABE2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v12 = v11;
  LOBYTE(v11) = sub_24ABABE3C();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v14 = (v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
    sub_24AB84CD4(v14 + *(v15 + 28), &v23);
    os_unfair_lock_unlock(v14);
    v16 = *(v23 + 16);
    if (v16)
    {
      v19 = *(v2 + 16);
      v17 = v2 + 16;
      v18 = v19;
      v20 = v23 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v21 = *(v17 + 56);
      do
      {
        v18(v5, v20, v1);
        sub_24AB85E60(v5);
        (*(v17 - 8))(v5, v1);
        v20 += v21;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AB87704()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B30, &unk_24ABAEDA0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v19[-v12];
  v14 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_24AB91CD8;
  *(v15 + 24) = v1;
  aBlock[4] = sub_24AB94E34;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB87488;
  aBlock[3] = &block_descriptor_138;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v14, v16);
  _Block_release(v16);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v18 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
    swift_beginAccess();
    sub_24AB94828(v1 + v18, v13, &unk_27EF95B30, &unk_24ABAEDA0);
    if ((*(v3 + 48))(v13, 1, v2))
    {
      sub_24AB7C4A4(v13, &unk_27EF95B30, &unk_24ABAEDA0);
    }

    else
    {
      (*(v3 + 16))(v6, v13, v2);
      sub_24AB7C4A4(v13, &unk_27EF95B30, &unk_24ABAEDA0);
      v19[8] = 1;
      sub_24ABAC06C();
      (*(v3 + 8))(v6, v2);
    }

    (*(v3 + 56))(v11, 1, 1, v2);
    swift_beginAccess();
    sub_24AB779B0(v11, v1 + v18, &unk_27EF95B30, &unk_24ABAEDA0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24AB87A7C()
{
  v1 = v0;
  sub_24ABABD1C();
  v2 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan;
  v3 = *(v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan);
  v4 = sub_24ABABD1C();
  if (v3 < 1)
  {
    goto LABEL_10;
  }

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v5 = sub_24ABABD8C();
  __swift_project_value_buffer(v5, qword_27EF95FD8);

  v6 = sub_24ABABD6C();
  v7 = sub_24ABAC0FC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = MEMORY[0x28223BE20](v8);
    MEMORY[0x28223BE20](v9);
    v10 = sub_24ABABD1C();
    v11 = *(v1 + v2);
    v12 = MEMORY[0x28223BE20](v10);
    MEMORY[0x28223BE20](v12);
    sub_24ABABD1C();
    *(v8 + 4) = v11;

    _os_log_impl(&dword_24AB6F000, v6, v7, "sleeping in listing for %ld seconds", v8, 0xCu);
    MEMORY[0x24C229EC0](v8, -1, -1);
  }

  else
  {
  }

  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v15 = sub_24ABABD1C();
  v16 = *(v1 + v2);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  result = sub_24ABABD1C();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v16))
  {
    v4 = sleep(v16);
LABEL_10:
    v19 = MEMORY[0x28223BE20](v4);
    MEMORY[0x28223BE20](v19);
    v20 = sub_24ABABD1C();
    v21 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop);
    v22 = MEMORY[0x28223BE20](v20);
    MEMORY[0x28223BE20](v22);
    sub_24ABABD1C();
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AB87FDC()
{
  v17 = *MEMORY[0x277D85DE8];
  v1[34] = v0;
  v2 = sub_24ABABB6C();
  v1[35] = v2;
  v3 = *(v2 - 8);
  v1[36] = v3;
  v4 = *(v3 + 64) + 15;
  v1[37] = swift_task_alloc();
  v5 = *(type metadata accessor for RootInfo(0) - 8);
  v1[38] = v5;
  v6 = *(v5 + 64) + 15;
  v1[39] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v8 = sub_24ABABC0C();
  v1[42] = v8;
  v9 = *(v8 - 8);
  v1[43] = v9;
  v10 = *(v9 + 64) + 15;
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v11 = type metadata accessor for FileLocator();
  v1[48] = v11;
  v12 = *(v11 - 8);
  v1[49] = v12;
  v13 = *(v12 + 64) + 15;
  v1[50] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B08, &qword_24ABAED78) - 8) + 64) + 15;
  v1[51] = swift_task_alloc();
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_24AB88278, 0, 0);
}

uint64_t sub_24AB88278()
{
  v21 = *MEMORY[0x277D85DE8];
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  *(v0 + 416) = __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC0FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AB6F000, v2, v3, "starting to garbage collect index items missing on disk", v4, 2u);
    MEMORY[0x24C229EC0](v4, -1, -1);
  }

  v5 = *(v0 + 272);

  *(v0 + 240) = MEMORY[0x277D84F90];
  v6 = v5[11];
  v7 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v6);
  (*(v7 + 40))(v6, v7);
  v8 = *(v0 + 224);
  v9 = __swift_project_boxed_opaque_existential_1((v0 + 200), v8);
  v10 = *(v8 - 8);
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  (*(v10 + 16))(v12, v9, v8);
  *(v0 + 184) = swift_getAssociatedTypeWitness();
  *(v0 + 192) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 160));
  sub_24ABAC0AC();

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 200));
  v13 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state;
  *(v0 + 424) = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexQueue;
  *(v0 + 432) = v13;
  *(v0 + 480) = *MEMORY[0x277CC91D8];
  *(v0 + 440) = 0u;
  *(v0 + 456) = 0u;
  v14 = *(v0 + 184);
  v15 = *(v0 + 192);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 160, v14);
  v16 = *(MEMORY[0x277D856D8] + 4);
  v17 = swift_task_alloc();
  *(v0 + 472) = v17;
  *v17 = v0;
  v17[1] = sub_24AB88594;
  v18 = *(v0 + 408);
  v19 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282200310](v18, 0, 0, v0 + 248, v14, v15);
}

uint64_t sub_24AB88594()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 472);
  v7 = *v1;

  if (v0)
  {
    v3 = sub_24AB894B8;
  }

  else
  {
    v3 = sub_24AB886D0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AB886D0()
{
  v133 = *MEMORY[0x277D85DE8];
  v1 = v0 + 30;
  isEscapingClosureAtFileLocation = v0[51];
  if ((*(v0[49] + 48))(isEscapingClosureAtFileLocation, 1, v0[48]) != 1)
  {
LABEL_5:
    v9 = v0[50];
    sub_24AB91CDC(isEscapingClosureAtFileLocation, v9, type metadata accessor for FileLocator);
    if (*(v9 + 8))
    {
      v10 = v0[52];
      v11 = sub_24ABABD6C();
      v12 = sub_24ABAC11C();
      v13 = os_log_type_enabled(v11, v12);
      v14 = v0[50];
      if (v13)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_24AB6F000, v11, v12, "nil fileID for query result", v15, 2u);
        MEMORY[0x24C229EC0](v15, -1, -1);
      }

      sub_24AB91A08(v14, type metadata accessor for FileLocator);
      goto LABEL_40;
    }

    v16 = *v9;
    v18 = v0[42];
    v17 = v0[43];
    v19 = v0[41];
    sub_24AB94828(v0[50] + *(v0[48] + 20), v19, &qword_27EF95B00, &qword_24ABAED70);
    if ((*(v17 + 48))(v19, 1, v18) == 1)
    {
      v20 = v0[52];
      sub_24AB7C4A4(v0[41], &qword_27EF95B00, &qword_24ABAED70);
      v21 = sub_24ABABD6C();
      v22 = sub_24ABAC11C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v16;
        _os_log_impl(&dword_24AB6F000, v21, v22, "nil url for %llu, deleting from index", v23, 0xCu);
        MEMORY[0x24C229EC0](v23, -1, -1);
      }

      v24 = v0[57];
      v25 = v0[58];
      v26 = v0[53];
      v129 = v0[50];
      v27 = v0[34];

      v28 = *(v27 + v26);
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = v16;

      sub_24AB91BD8(v24);
      v30 = swift_allocObject();
      v31 = sub_24AB91C78;
      *(v30 + 16) = sub_24AB91C78;
      *(v30 + 24) = v29;
      v0[12] = sub_24AB94E34;
      v0[13] = v30;
      v0[8] = MEMORY[0x277D85DD0];
      v0[9] = 1107296256;
      v0[10] = sub_24AB87488;
      v0[11] = &block_descriptor_106;
      v32 = _Block_copy(v0 + 8);
      v33 = v0[13];

      dispatch_sync(v28, v32);
      _Block_release(v32);
      sub_24AB91A08(v129, type metadata accessor for FileLocator);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if (v24)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      v124 = v1;
      v50 = (v0[34] + v0[54]);
      v130 = *(v0[43] + 32);
      v130(v0[47], v0[41], v0[42]);
      os_unfair_lock_lock(v50);
      v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
      v52 = *&v51[*(type metadata accessor for FIRoot.State(0) + 28)];
      v53 = *(v52 + 16);
      v54 = MEMORY[0x277D84F90];
      v127 = v16;
      if (v53)
      {
        v55 = v0[38];
        v0[32] = MEMORY[0x277D84F90];
        sub_24ABA18DC(0, v53, 0);
        v54 = v0[32];
        v56 = v52 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
        v57 = *(v55 + 72);
        do
        {
          v58 = v0[46];
          v60 = v0[42];
          v59 = v0[43];
          v61 = v0[39];
          sub_24AB919A0(v56, v61, type metadata accessor for RootInfo);
          (*(v59 + 16))(v58, v61, v60);
          sub_24AB91A08(v61, type metadata accessor for RootInfo);
          v0[32] = v54;
          v63 = *(v54 + 16);
          v62 = *(v54 + 24);
          if (v63 >= v62 >> 1)
          {
            sub_24ABA18DC(v62 > 1, v63 + 1, 1);
            v54 = v0[32];
          }

          v64 = v0[46];
          v65 = v0[42];
          v66 = v0[43];
          *(v54 + 16) = v63 + 1;
          v130(v54 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v63, v64, v65);
          v56 += v57;
          --v53;
        }

        while (v53);
      }

      v67 = v0[47];
      v68 = v0[34];
      os_unfair_lock_unlock((v68 + v0[54]));
      v69 = *(v68 + 16);
      v70 = *(v68 + 56);
      __swift_project_boxed_opaque_existential_1((v68 + 24), *(v68 + 48));
      v71 = sub_24ABABBEC();
      LOBYTE(v67) = (*(v70 + 16))(v71);

      if (v67)
      {
        v72 = v0[50];
        v73 = v0[47];
        v74 = v0[42];
        v75 = v0[43];

        (*(v75 + 8))(v73, v74);
LABEL_27:
        sub_24AB91A08(v72, type metadata accessor for FileLocator);
        goto LABEL_40;
      }

      v0[33] = 0;
      v76 = v127;
      if (fpfs_fsgetpath() || (v101 = v0[33]) == 0)
      {

        v77 = v0[33];
        v78 = v124;
        if (v77)
        {
LABEL_30:
          MEMORY[0x24C229EC0](v77, -1, -1);
        }
      }

      else
      {
        v122 = *(v0 + 120);
        v132 = v0[45];
        v102 = v0[42];
        v103 = v0[43];
        v79 = v0[40];
        v104 = v0[36];
        v76 = v0[37];
        v120 = v0[35];
        v105 = [objc_opt_self() defaultManager];
        v106 = [v105 stringWithFileSystemRepresentation:v101 length:strlen(v101)];

        v78 = sub_24ABABEBC();
        (*(v103 + 56))(v79, 1, 1, v102);
        (*(v104 + 104))(v76, v122, v120);
        sub_24ABABBFC();
        v107 = 0;
        v108 = *(v54 + 16);
        while (v108 != v107)
        {
          if (v107 >= *(v54 + 16))
          {
            __break(1u);
            goto LABEL_54;
          }

          v109 = v0[44];
          v76 = v0[42];
          v110 = v0[43];
          (*(v110 + 16))(v109, v54 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v107, v76);
          v111 = sub_24ABABB9C();
          v112 = *(v110 + 8);
          ++v107;
          v112(v109, v76);
          v78 = sub_24ABABB9C();
          v79 = [v111 fp:v78 relativePathWithRealpath:?];

          if (v79)
          {
            v113 = v0[45];
            v114 = v0[42];

            v112(v113, v114);
            v115 = v0[33];
            if (v115)
            {
              MEMORY[0x24C229EC0](v115, -1, -1);
            }

            v72 = v0[50];
            v112(v0[47], v0[42]);
            goto LABEL_27;
          }
        }

        (*(v0[43] + 8))(v0[45], v0[42]);

        v77 = v0[33];
        v78 = v124;
        v76 = v127;
        if (v77)
        {
          goto LABEL_30;
        }
      }

      v79 = *v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v78 = v79;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
LABEL_54:
        v79 = sub_24ABA1408(0, *(v79 + 2) + 1, 1, v79);
        *v78 = v79;
      }

      v82 = *(v79 + 2);
      v81 = *(v79 + 3);
      if (v82 >= v81 >> 1)
      {
        v79 = sub_24ABA1408((v81 > 1), v82 + 1, 1, v79);
      }

      *(v79 + 2) = v82 + 1;
      *&v79[8 * v82 + 32] = v76;
      *v78 = v79;
      if (v82 >= 0x31)
      {
        v87 = v0[55];
        v86 = v0[56];
        v128 = v0[47];
        v131 = v0[50];
        v88 = v0[43];
        v125 = v0[42];
        v89 = v0[34];
        v90 = *(v89 + v0[53]);
        v85 = swift_allocObject();
        *(v85 + 16) = v89;
        *(v85 + 24) = v78;

        sub_24AB91BD8(v87);
        v91 = swift_allocObject();
        *(v91 + 16) = sub_24AB91C90;
        *(v91 + 24) = v85;
        v0[18] = sub_24AB94E34;
        v0[19] = v91;
        v0[14] = MEMORY[0x277D85DD0];
        v0[15] = 1107296256;
        v0[16] = sub_24AB87488;
        v0[17] = &block_descriptor_116;
        v92 = _Block_copy(v0 + 14);
        v93 = v0[19];

        dispatch_sync(v90, v92);
        _Block_release(v92);
        (*(v88 + 8))(v128, v125);
        sub_24AB91A08(v131, type metadata accessor for FileLocator);
        LOBYTE(v89) = swift_isEscapingClosureAtFileLocation();

        if (v89)
        {
          __break(1u);
        }

        v94 = *v78;
        *v78 = MEMORY[0x277D84F90];

        v84 = sub_24AB91C90;
      }

      else
      {
        v83 = v0[50];
        (*(v0[43] + 8))(v0[47], v0[42]);
        sub_24AB91A08(v83, type metadata accessor for FileLocator);
        v84 = v0[55];
        v85 = v0[56];
      }

      v31 = v0[57];
      v29 = v0[58];
      v0[55] = v84;
      v0[56] = v85;
    }

    v0[57] = v31;
    v0[58] = v29;
LABEL_40:
    v95 = v0[23];
    v96 = v0[24];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 20), v95);
    v97 = *(MEMORY[0x277D856D8] + 4);
    v98 = swift_task_alloc();
    v0[59] = v98;
    *v98 = v0;
    v98[1] = sub_24AB88594;
    v99 = v0[51];
    v100 = *MEMORY[0x277D85DE8];

    return MEMORY[0x282200310](v99, 0, 0, v0 + 31, v95, v96);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  if (!*(*v1 + 16))
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v3 = v0[34];
  v4 = *(v3 + v0[53]);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v1 = swift_allocObject();
  v6 = sub_24AB91C20;
  v1[2] = sub_24AB91C20;
  v1[3] = v5;
  v0[6] = sub_24AB91C50;
  v0[7] = v1;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24AB87488;
  v0[5] = &block_descriptor_95;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_15:
  v126 = v6;
  v34 = v0[52];
  v35 = sub_24ABABD6C();
  v36 = sub_24ABAC0FC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_24AB6F000, v35, v36, "finished garbage collecting index items missing on disk", v37, 2u);
    MEMORY[0x24C229EC0](v37, -1, -1);
  }

  v39 = v0[57];
  v38 = v0[58];
  v41 = v0[55];
  v40 = v0[56];
  v42 = v0[50];
  v43 = v0[51];
  v45 = v0[46];
  v44 = v0[47];
  v116 = v0[45];
  v117 = v0[44];
  v118 = v0[41];
  v119 = v0[40];
  v121 = v0[39];
  v123 = v0[37];

  v46 = v0[30];

  sub_24AB91BD8(v41);
  sub_24AB91BD8(v39);
  sub_24AB91BD8(v126);

  v47 = v0[1];
  v48 = *MEMORY[0x277D85DE8];

  return v47();
}

uint64_t sub_24AB894B8()
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = v0[57];
  v1 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[50];
  v5 = v0[51];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];
  v15 = v0[44];
  v16 = v0[41];
  v17 = v0[40];
  v18 = v0[39];
  v19 = v0[37];
  v14 = v0[31];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  v10 = v0[30];

  sub_24AB91BD8(v4);
  sub_24AB91BD8(v2);

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_24AB8960C(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = sub_24ABABD0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABABCFC();
  v9 = sub_24ABABCEC();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v22[0] = v9;
  v22[1] = v11;
  v12 = sub_24AB82948(v22, &v23);
  v14 = v13;
  v15 = a1[11];
  v16 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B20, &unk_24ABAED90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24ABAD4A0;
  *(v17 + 32) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  (*(v16 + 8))(MEMORY[0x277D84F90], v17, v12, v14, sub_24AB91CD0, v18, v15, v16);

  result = sub_24AB77A9C(v12, v14);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24AB89804(NSObject *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v5 = sub_24ABABD8C();
    __swift_project_value_buffer(v5, qword_27EF95FD8);
    v6 = a1;
    oslog = sub_24ABABD6C();
    v7 = sub_24ABAC11C();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 134218242;
      *(v8 + 4) = a2;
      *(v8 + 12) = 2112;
      v10 = a1;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24AB6F000, oslog, v7, "error while deleting fileID %llu: %@", v8, 0x16u);
      sub_24AB7C4A4(v9, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v9, -1, -1);
      MEMORY[0x24C229EC0](v8, -1, -1);

      v12 = oslog;
    }

    else
    {

      v12 = a1;
    }
  }
}

void sub_24AB899D4(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B10, &unk_24ABAED80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24ABAD4A0;
    v3 = a1;
    sub_24ABAC2FC();
    MEMORY[0x24C228EB0](0xD00000000000001CLL, 0x800000024ABAFD10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C50, &qword_24ABAF140);
    sub_24ABAC3AC();
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 32) = 0;
    *(v2 + 40) = 0xE000000000000000;
    sub_24ABAC61C();
  }
}

uint64_t sub_24AB89AF4(void *a1, uint64_t *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = sub_24ABABD0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABABCFC();
  v11 = sub_24ABABCEC();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v24[0] = v11;
  v24[1] = v13;
  v14 = sub_24AB82948(v24, &v25);
  v16 = v15;
  v17 = a1[11];
  v18 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v17);
  v19 = *a2;
  v20 = *(v18 + 8);

  v20(MEMORY[0x277D84F90], v19, v14, v16, a3, 0, v17, v18);

  result = sub_24AB77A9C(v14, v16);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24AB89C9C(NSObject *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v3 = sub_24ABABD8C();
    __swift_project_value_buffer(v3, qword_27EF95FD8);
    v4 = a1;
    oslog = sub_24ABABD6C();
    v5 = sub_24ABAC11C();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = a1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_24AB6F000, oslog, v5, "error while deleting items: %@", v6, 0xCu);
      sub_24AB7C4A4(v7, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v7, -1, -1);
      MEMORY[0x24C229EC0](v6, -1, -1);

      v10 = oslog;
    }

    else
    {

      v10 = a1;
    }
  }
}

uint64_t sub_24AB89E4C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v42 = a3;
  v39 = a1;
  v8 = sub_24ABABDFC();
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_24ABABE1C();
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v40);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v4;
  v45 = v4;
  sub_24ABABD1C();
  v16 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus;
  v17 = *(v4 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
  v44 = v4;
  v43 = v4;
  v18 = sub_24ABABD1C();
  if (v17 == 2)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v19 = sub_24ABABD8C();
    __swift_project_value_buffer(v19, qword_27EF95FD8);
    v20 = sub_24ABABD6C();
    v21 = sub_24ABAC0FC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24AB6F000, v20, v21, "scan is already running, not starting another", v22, 2u);
      MEMORY[0x24C229EC0](v22, -1, -1);
    }

    sub_24AB94484();
    v23 = swift_allocError();
    v42();

    v24 = *(v5 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanOSTransaction);
    return sub_24AB833A8();
  }

  else
  {
    v26 = MEMORY[0x28223BE20](v18);
    *(&v39 - 2) = v4;
    MEMORY[0x28223BE20](v26);
    *(&v39 - 2) = v4;
    v27 = sub_24ABABD1C();
    v28 = *(v4 + v16);
    v29 = MEMORY[0x28223BE20](v27);
    *(&v39 - 2) = v4;
    MEMORY[0x28223BE20](v29);
    *(&v39 - 2) = v4;
    sub_24ABABD1C();
    if (v28 == 1)
    {
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v30 = sub_24ABABD8C();
      __swift_project_value_buffer(v30, qword_27EF95FD8);
      v31 = sub_24ABABD6C();
      v32 = sub_24ABAC0FC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_24AB6F000, v31, v32, "starting scans", v33, 2u);
        MEMORY[0x24C229EC0](v33, -1, -1);
      }
    }

    v34 = *(v5 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
    v35 = swift_allocObject();
    v36 = v42;
    v35[2] = v5;
    v35[3] = v36;
    v37 = v39;
    v35[4] = a4;
    v35[5] = v37;
    v35[6] = a2;
    aBlock[4] = sub_24AB94474;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB9AA08;
    aBlock[3] = &block_descriptor_235;
    v38 = _Block_copy(aBlock);

    sub_24ABABE0C();
    v47 = MEMORY[0x277D84F90];
    sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24ABAC28C();
    MEMORY[0x24C229110](0, v15, v11, v38);
    _Block_release(v38);
    (*(v41 + 8))(v11, v8);
    (*(v12 + 8))(v15, v40);
  }
}

uint64_t sub_24AB8A4F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v168 = a5;
  v164 = a4;
  v169 = a2;
  v170 = a3;
  v178 = *MEMORY[0x277D85DE8];
  v6 = sub_24ABABDFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v167 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24ABABE1C();
  v166 = *(v10 - 8);
  v11 = *(v166 + 64);
  MEMORY[0x28223BE20](v10);
  v165 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IndexingState();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24ABABD0C();
  v161 = *(v17 - 8);
  v18 = *(v161 + 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v145 - v23;
  v25 = (a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v27 = v25 + *(type metadata accessor for FIRoot.State(0) + 24);
  v163 = v26;
  v28 = *&v27[v26];
  if (!(v28 >> 62))
  {
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_21:
    os_unfair_lock_unlock(v25);
    goto LABEL_22;
  }

  v159 = v27;
  v56 = sub_24ABAC3DC();
  v27 = v159;
  if (!v56)
  {
    goto LABEL_21;
  }

LABEL_3:
  v160 = v10;
  v159 = v27;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x24C229290](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_25;
    }

    v29 = *(v28 + 32);
  }

  os_unfair_lock_unlock(v25);
  if (!v29)
  {
LABEL_22:
    v57 = sub_24ABAC09C();
    (*(*(v57 - 8) + 56))(v24, 1, 1, v57);
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v59 = v169;
    v60 = v170;
    v58[4] = a1;
    v58[5] = v59;
    v58[6] = v60;

    sub_24AB8C3CC(0, 0, v24, &unk_24ABAEE00, v58);

    goto LABEL_36;
  }

  v158 = v7;
  v157 = v6;
  v31 = MEMORY[0x28223BE20](v30);
  *(&v145 - 2) = a1;
  MEMORY[0x28223BE20](v31);
  *(&v145 - 2) = a1;

  v32 = sub_24ABABD1C();
  v7 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop;
  v33 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop);
  v34 = MEMORY[0x28223BE20](v32);
  *(&v145 - 2) = a1;
  MEMORY[0x28223BE20](v34);
  *(&v145 - 2) = a1;
  sub_24ABABD1C();
  v162 = v29;
  if ((v33 & 1) == 0)
  {
    v45 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanOSTransaction);
    v46 = sub_24AB82F80();
    v47 = MEMORY[0x28223BE20](v46);
    *(&v145 - 2) = a1;
    MEMORY[0x28223BE20](v47);
    *(&v145 - 2) = a1;
    v48 = 2;
    v49 = sub_24ABABD1C();
    v156 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus;
    *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus) = 2;
    v50 = MEMORY[0x28223BE20](v49);
    *(&v145 - 2) = a1;
    MEMORY[0x28223BE20](v50);
    *(&v145 - 2) = a1;
    sub_24ABABD1C();
    v51 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
    swift_beginAccess();
    v52 = *(v29 + v51);
    if (v52 >> 62)
    {
      v53 = sub_24ABAC3DC();
      if (v53)
      {
LABEL_14:
        v54 = v53 - 1;
        if (__OFSUB__(v53, 1))
        {
          __break(1u);
        }

        else if ((v52 & 0xC000000000000001) == 0)
        {
          if ((v54 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v54 < *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v55 = *(v52 + 8 * v54 + 32);

LABEL_19:
            v29 = v162;
            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_52;
        }

        v55 = MEMORY[0x24C229290](v54, v52);

        goto LABEL_19;
      }
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v53)
      {
        goto LABEL_14;
      }
    }

    v55 = 0;
LABEL_28:

    sub_24AB7997C(v29, a1);
    v48 = 0x24ABAE000;
    v97 = v96;
    v152 = v98;
    v153 = v99;
    v154 = v55;

    v101 = MEMORY[0x28223BE20](v100);
    *(&v145 - 2) = a1;
    MEMORY[0x28223BE20](v101);
    *(&v145 - 2) = a1;
    v102 = sub_24ABABD1C();
    *(a1 + v156) = 3;
    v103 = MEMORY[0x28223BE20](v102);
    *(&v145 - 2) = a1;
    MEMORY[0x28223BE20](v103);
    *(&v145 - 2) = a1;
    sub_24ABABD1C();
    if (!v97)
    {
      if (qword_27EF95308 == -1)
      {
LABEL_42:
        v123 = sub_24ABABD8C();
        __swift_project_value_buffer(v123, qword_27EF95FD8);

        v124 = sub_24ABABD6C();
        v125 = sub_24ABAC0FC();

        v126 = os_log_type_enabled(v124, v125);
        v87 = v158;
        if (v126)
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          aBlock = v128;
          *v127 = 136315138;
          v129 = sub_24ABABB9C();
          v130 = v48;
          v131 = [v129 fp_shortDescription];

          v132 = sub_24ABABEBC();
          v134 = v133;

          v48 = v130;
          v135 = sub_24AB760CC(v132, v134, &aBlock);
          v87 = v158;

          *(v127 + 4) = v135;
          _os_log_impl(&dword_24AB6F000, v124, v125, "lister for %s completed", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v128);
          MEMORY[0x24C229EC0](v128, -1, -1);
          MEMORY[0x24C229EC0](v127, -1, -1);
        }

        v77 = v157;
        v85 = v168;
        v136 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError);
        *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError) = 0;

        v86 = v164;
        v164(0);
        os_unfair_lock_lock(v25);
        sub_24AB8C9F4();

        os_unfair_lock_unlock(v25);

        v161 = 0;
        goto LABEL_35;
      }

LABEL_53:
      swift_once();
      goto LABEL_42;
    }

    v145 = 0;
    v104 = swift_allocObject();
    v151 = v104;
    *(v104 + 16) = 0;
    v146 = (v104 + 16);
    sub_24ABABCFC();
    v105 = sub_24ABABCEC();
    v107 = v106;
    (*(v161 + 1))(v20, v17);
    aBlock = v105;
    v173 = v107;
    v148 = &v174;
    v108 = sub_24AB82948(&aBlock, &v174);
    v161 = v108;
    v110 = v109;
    v147 = v109;
    v111 = dispatch_group_create();
    v149 = v111;
    dispatch_group_enter(v111);
    v150 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexQueue);
    v112 = swift_allocObject();
    v112[2] = a1;
    v112[3] = v97;
    v113 = v152;
    v112[4] = v153;
    v112[5] = v113;
    v112[6] = v108;
    v112[7] = v110;
    v114 = v97;
    v115 = v151;
    v112[8] = v154;
    v112[9] = v115;
    v112[10] = v111;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_24AB9479C;
    *(v48 + 24) = v112;
    v155 = v112;
    v176 = sub_24AB94E34;
    v177 = v48;
    aBlock = MEMORY[0x277D85DD0];
    v173 = 1107296256;
    v174 = sub_24AB87488;
    v175 = &block_descriptor_272;
    v116 = _Block_copy(&aBlock);

    v148 = v114;

    v117 = v147;

    v118 = v149;

    sub_24AB7FC5C(v161, v117);

    dispatch_sync(v150, v116);
    _Block_release(v116);
    LOBYTE(v105) = swift_isEscapingClosureAtFileLocation();

    if ((v105 & 1) == 0)
    {
      sub_24ABAC12C();
      v119 = v146;
      swift_beginAccess();
      v120 = *v119;
      if (v120)
      {
        v121 = v120;

        swift_willThrow();

        sub_24AB77A9C(v161, v117);

        v161 = sub_24AB9479C;
        v122 = v120;
        v48 = 0x24ABAE000;
      }

      else
      {
        v150 = v118;
        sub_24AB74A50(v148, v153, v152);

        v137 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler + 24);
        v138 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler + 32);
        __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler), v137);
        v140 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState);
        v139 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState + 8);

        v140(v141);

        v142 = v161;
        v143 = v145;
        (*(v138 + 16))(0xD000000000000023, 0x800000024ABAF7E0, v16, v161, v117, v137, v138);
        v144 = v117;
        if (!v143)
        {
          sub_24AB91A08(v16, type metadata accessor for IndexingState);
          sub_24AB77A9C(v142, v117);

          v161 = sub_24AB9479C;
          v77 = v157;
          v85 = v168;
          v86 = v164;
          v48 = 0x24ABAE000;
LABEL_34:
          v87 = v158;
LABEL_35:
          v88 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
          v89 = swift_allocObject();
          v89[2] = a1;
          v89[3] = v86;
          v90 = v169;
          v91 = v170;
          v89[4] = v85;
          v89[5] = v90;
          v89[6] = v91;
          v176 = sub_24AB946FC;
          v177 = v89;
          aBlock = MEMORY[0x277D85DD0];
          v173 = *(v48 + 2336);
          v174 = sub_24AB9AA08;
          v175 = &block_descriptor_257;
          v92 = _Block_copy(&aBlock);

          v93 = v165;
          sub_24ABABE0C();
          v171 = MEMORY[0x277D84F90];
          sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
          sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
          v94 = v167;
          sub_24ABAC28C();
          MEMORY[0x24C229110](0, v93, v94, v92);

          _Block_release(v92);

          (*(v87 + 8))(v94, v77);
          (*(v166 + 8))(v93, v160);

          result = sub_24AB91BD8(v161);
          goto LABEL_36;
        }

        v122 = v143;
        sub_24AB91A08(v16, type metadata accessor for IndexingState);
        sub_24AB77A9C(v142, v144);

        v161 = sub_24AB9479C;
        v48 = 0x24ABAE000;
      }

      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v61 = sub_24ABABD8C();
      __swift_project_value_buffer(v61, qword_27EF95FD8);

      v62 = v122;
      v63 = sub_24ABABD6C();
      v64 = sub_24ABAC11C();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        aBlock = v154;
        *v65 = 136315394;
        v67 = sub_24ABABB9C();
        v68 = [v67 fp_shortDescription];

        v69 = sub_24ABABEBC();
        v71 = v70;

        v72 = sub_24AB760CC(v69, v71, &aBlock);

        *(v65 + 4) = v72;
        *(v65 + 12) = 2112;
        v73 = v122;
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v65 + 14) = v74;
        *v66 = v74;
        _os_log_impl(&dword_24AB6F000, v63, v64, "lister for %s failed: %@", v65, 0x16u);
        sub_24AB7C4A4(v66, &unk_27EF953F0, &unk_24ABAD6A0);
        v75 = v66;
        v48 = &unk_24ABAE000;
        MEMORY[0x24C229EC0](v75, -1, -1);
        v76 = v154;
        __swift_destroy_boxed_opaque_existential_0Tm(v154);
        MEMORY[0x24C229EC0](v76, -1, -1);
        MEMORY[0x24C229EC0](v65, -1, -1);
      }

      v77 = v157;
      v79 = MEMORY[0x28223BE20](v78);
      *(&v145 - 2) = a1;
      MEMORY[0x28223BE20](v79);
      *(&v145 - 2) = a1;
      v80 = sub_24ABABD1C();
      *(a1 + v156) = 3;
      v81 = MEMORY[0x28223BE20](v80);
      *(&v145 - 2) = a1;
      MEMORY[0x28223BE20](v81);
      *(&v145 - 2) = a1;
      sub_24ABABD1C();
      v82 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError);
      *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError) = v122;
      v83 = v122;
      v84 = v122;

      v85 = v168;
      v86 = v164;
      v164(v122);

      os_unfair_lock_lock(v25);
      sub_24AB8C9F4();

      os_unfair_lock_unlock(v25);

      goto LABEL_34;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (qword_27EF95308 != -1)
  {
LABEL_25:
    swift_once();
  }

  v35 = sub_24ABABD8C();
  __swift_project_value_buffer(v35, qword_27EF95FD8);
  v36 = sub_24ABABD6C();
  v37 = sub_24ABAC0FC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_24AB6F000, v36, v37, "force stopping current scan", v38, 2u);
    MEMORY[0x24C229EC0](v38, -1, -1);
  }

  v40 = MEMORY[0x28223BE20](v39);
  *(&v145 - 2) = a1;
  MEMORY[0x28223BE20](v40);
  *(&v145 - 2) = a1;
  v41 = sub_24ABABD1C();
  *(a1 + v7) = 0;
  v42 = MEMORY[0x28223BE20](v41);
  *(&v145 - 2) = a1;
  MEMORY[0x28223BE20](v42);
  *(&v145 - 2) = a1;
  sub_24ABABD1C();
  v43 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanOSTransaction);
  sub_24AB833A8();

LABEL_36:
  v95 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AB8BC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_24AB8BD20;

  return sub_24AB87FDC();
}

uint64_t sub_24AB8BD20()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_24AB8C090;
  }

  else
  {
    v3 = sub_24AB8BE34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24AB8BE34()
{
  v1 = v0[2];
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_24ABABD1C();

  *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus) = 4;
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_24ABABD1C();

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v2 = sub_24ABABD8C();
  __swift_project_value_buffer(v2, qword_27EF95FD8);
  v3 = sub_24ABABD6C();
  v4 = sub_24ABAC0FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24AB6F000, v3, v4, "finished scans", v5, 2u);
    MEMORY[0x24C229EC0](v5, -1, -1);
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  v9 = *(v8 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanOSTransaction);
  sub_24AB833A8();
  v10 = *(v8 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError);
  v11 = v10;
  v7(v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24AB8C090()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC11C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AB6F000, v2, v3, "error in delete gc", v4, 2u);
    MEMORY[0x24C229EC0](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = v0[6];
  if (*(v5 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError))
  {
  }

  else
  {
    *(v5 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError) = v6;
  }

  v7 = v0[2];
  *(swift_task_alloc() + 16) = v7;
  *(swift_task_alloc() + 16) = v7;
  sub_24ABABD1C();

  *(v7 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus) = 4;
  *(swift_task_alloc() + 16) = v7;
  *(swift_task_alloc() + 16) = v7;
  sub_24ABABD1C();

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v8 = sub_24ABABD6C();
  v9 = sub_24ABAC0FC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24AB6F000, v8, v9, "finished scans", v10, 2u);
    MEMORY[0x24C229EC0](v10, -1, -1);
  }

  v12 = v0[3];
  v11 = v0[4];
  v13 = v0[2];

  v14 = *(v13 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanOSTransaction);
  sub_24AB833A8();
  v15 = *(v13 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError);
  v16 = v15;
  v12(v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_24AB8C3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_24AB94828(a3, v27 - v11, &qword_27EF95BC0, &qword_24ABAEDF0);
  v13 = sub_24ABAC09C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24AB7C4A4(v12, &qword_27EF95BC0, &qword_24ABAEDF0);
  }

  else
  {
    sub_24ABAC08C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24ABAC04C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24ABABECC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_24AB7C4A4(a3, &qword_27EF95BC0, &qword_24ABAEDF0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24AB7C4A4(a3, &qword_27EF95BC0, &qword_24ABAEDF0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24AB8C6CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v13 = a1[11];
  v12 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v13);
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v15 = *(v12 + 8);

  v16 = a9;
  v15(a2, a3, a5, a6, sub_24AB9481C, v14, v13, v12);
}

void sub_24AB8C7C8(void *a1, uint64_t a2, uint64_t a3, dispatch_group_t group)
{
  if (a1)
  {
    v8 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v9 = sub_24ABABD8C();
    __swift_project_value_buffer(v9, qword_27EF95FD8);
    v10 = a1;

    v11 = sub_24ABABD6C();
    v12 = sub_24ABAC11C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v13 = 136315394;
      if (a2)
      {
        v17 = *(a2 + 16);
        v16 = *(a2 + 24);
      }

      else
      {
        v16 = 0xE800000000000000;
        v17 = 0x68746170206C696ELL;
      }

      v18 = sub_24AB760CC(v17, v16, &v22);

      *(v13 + 4) = v18;
      *(v13 + 12) = 2112;
      v19 = a1;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v20;
      *v14 = v20;
      _os_log_impl(&dword_24AB6F000, v11, v12, "failed to index while listing %s: %@", v13, 0x16u);
      sub_24AB7C4A4(v14, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x24C229EC0](v15, -1, -1);
      MEMORY[0x24C229EC0](v13, -1, -1);
    }

    swift_beginAccess();
    v21 = *(a3 + 16);
    *(a3 + 16) = a1;
  }

  dispatch_group_leave(group);
}

void sub_24AB8C9F4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x24C229290](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_24ABAC3DC())
  {
    goto LABEL_20;
  }

  if (!sub_24ABAC3DC())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = sub_24ABAC3DC();
LABEL_16:
    if (v4)
    {
      sub_24ABA2614(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_24AB8CACC()
{
  v1 = sub_24ABABDFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24ABABE1C();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  aBlock[4] = sub_24AB91B04;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  sub_24ABABE0C();
  v14 = MEMORY[0x277D84F90];
  sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_24AB8CD74(uint64_t a1)
{
  v2 = sub_24ABABE2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  LOBYTE(v7) = sub_24ABABE3C();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v10 = (a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
    os_unfair_lock_lock((a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
    v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
    v12 = *(type metadata accessor for FIRoot.State(0) + 24);
    v13 = *&v11[v12];
    *&v11[v12] = MEMORY[0x277D84F90];

    os_unfair_lock_unlock(v10);
    return sub_24AB874B0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AB8CEE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void (*a4)(__darwin_ino64_t, void)@<X3>, uint64_t a5@<X4>, __darwin_ino64_t *a6@<X8>)
{
  v136 = a5;
  v137 = a4;
  v135 = a3;
  v143 = a6;
  v147[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v138 = &v125[-v10];
  v139 = sub_24ABABC0C();
  v140 = *(v139 - 8);
  v11 = *(v140 + 64);
  MEMORY[0x28223BE20](v139);
  v133 = &v125[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B60, "\b.");
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v125[-v15];
  v141 = type metadata accessor for FileMetadata();
  v134 = *(v141 - 8);
  v17 = *(v134 + 64);
  MEMORY[0x28223BE20](v141);
  v132 = &v125[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = type metadata accessor for RootInfo(0);
  v19 = *(*(v130 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v130);
  v131 = &v125[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v125[-v23];
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v125[-v26];
  MEMORY[0x28223BE20](v25);
  v28 = *a1;
  v29 = *(a1 + 8);
  st_ino = *(a1 + 16);
  v144 = a2;
  v30 = sub_24ABABBEC();
  v145 = v28;
  v32 = sub_24AB82D58(v28, v29, v30, v31);
  v34 = v33;

  if (v34)
  {
    memset(&v146, 0, sizeof(v146));

    sub_24ABA4D88(v32, v34, &v146);
    st_ino = v146.st_ino;
    v35 = v32;
    v29 = v34;
  }

  else
  {

    v35 = v145;
  }

  v36 = objc_opt_self();
  v37 = *(a1 + 32);
  v38 = [v36 fpfs:v37 initWithFSEventsFlags:?];
  v129 = sub_24ABABEBC();
  v40 = v39;

  v41 = v144;
  sub_24AB821B8();
  v145 = v35;
  if (v42)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v43 = sub_24ABABD8C();
    __swift_project_value_buffer(v43, qword_27EF95FD8);
    sub_24AB919A0(v41, v27, type metadata accessor for RootInfo);

    v44 = sub_24ABABD6C();
    v45 = sub_24ABAC10C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v146.st_dev = v47;
      *v46 = 136315906;
      v48 = sub_24ABABB9C();
      v49 = [v48 fp_shortDescription];

      v50 = sub_24ABABEBC();
      v52 = v51;

      sub_24AB91A08(v27, type metadata accessor for RootInfo);
      v53 = sub_24AB760CC(v50, v52, &v146.st_dev);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2080;
      v54 = sub_24AB760CC(v145, v29, &v146.st_dev);

      *(v46 + 14) = v54;
      *(v46 + 22) = 2048;
      *(v46 + 24) = st_ino;
      *(v46 + 32) = 2080;
      v55 = sub_24AB760CC(v129, v40, &v146.st_dev);

      *(v46 + 34) = v55;
      _os_log_impl(&dword_24AB6F000, v44, v45, "%s | E: ignored event path %s fileID %llu flags %s", v46, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x24C229EC0](v47, -1, -1);
      MEMORY[0x24C229EC0](v46, -1, -1);
    }

    else
    {

      sub_24AB91A08(v27, type metadata accessor for RootInfo);
    }

    type metadata accessor for FIRoot.IndexAction(0);
    goto LABEL_15;
  }

  v128 = v37;
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v56 = sub_24ABABD8C();
  __swift_project_value_buffer(v56, qword_27EF95FD8);
  sub_24AB919A0(v41, v24, type metadata accessor for RootInfo);

  v57 = sub_24ABABD6C();
  v58 = sub_24ABAC10C();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    *&v146.st_dev = v127;
    *v59 = 136315906;
    v60 = sub_24ABABB9C();
    v126 = v58;
    v61 = v60;
    v62 = [v60 fp_shortDescription];

    v63 = sub_24ABABEBC();
    v65 = v64;

    sub_24AB91A08(v24, type metadata accessor for RootInfo);
    v66 = sub_24AB760CC(v63, v65, &v146.st_dev);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2080;
    v67 = sub_24AB760CC(v145, v29, &v146.st_dev);

    *(v59 + 14) = v67;
    *(v59 + 22) = 2048;
    v68 = st_ino;
    *(v59 + 24) = st_ino;
    *(v59 + 32) = 2080;
    v69 = sub_24AB760CC(v129, v40, &v146.st_dev);

    *(v59 + 34) = v69;
    _os_log_impl(&dword_24AB6F000, v57, v126, "%s | E: event path %s fileID %llu flags %s", v59, 0x2Au);
    v70 = v127;
    swift_arrayDestroy();
    MEMORY[0x24C229EC0](v70, -1, -1);
    v71 = v59;
    v41 = v144;
    MEMORY[0x24C229EC0](v71, -1, -1);
  }

  else
  {

    sub_24AB91A08(v24, type metadata accessor for RootInfo);
    v68 = st_ino;
  }

  v74 = v139;
  v75 = v138;
  v137(v68, v135);
  v76 = v141;
  v77 = (*(v134 + 48))(v16, 1, v141);
  v78 = v140;
  if (v77 != 1)
  {
    v79 = v16;
    v80 = v132;
    sub_24AB91CDC(v79, v132, type metadata accessor for FileMetadata);
    sub_24AB94828(&v80[v76[21]], v75, &qword_27EF95B00, &qword_24ABAED70);
    if ((*(v78 + 48))(v75, 1, v74) == 1)
    {
      sub_24AB7C4A4(v75, &qword_27EF95B00, &qword_24ABAED70);
      v81 = v131;
      sub_24AB919A0(v41, v131, type metadata accessor for RootInfo);
      v82 = sub_24ABABD6C();
      v83 = sub_24ABAC10C();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v147[0] = v85;
        *v84 = 136315394;
        v86 = sub_24ABABB9C();
        v87 = [v86 fp_shortDescription];

        v88 = sub_24ABABEBC();
        v90 = v89;

        sub_24AB91A08(v81, type metadata accessor for RootInfo);
        v91 = sub_24AB760CC(v88, v90, v147);

        *(v84 + 4) = v91;
        *(v84 + 12) = 2048;
        swift_beginAccess();
        *(v84 + 14) = *v80;
        _os_log_impl(&dword_24AB6F000, v82, v83, "%s | item %llu has nil contentURL", v84, 0x16u);
        __swift_destroy_boxed_opaque_existential_0Tm(v85);
        MEMORY[0x24C229EC0](v85, -1, -1);
        MEMORY[0x24C229EC0](v84, -1, -1);
      }

      else
      {

        sub_24AB91A08(v81, type metadata accessor for RootInfo);
      }

      goto LABEL_45;
    }

    v145 = *(v78 + 32);
    v145(v133, v75, v74);
    v92 = sub_24ABABBEC();
    v94 = v93;
    if (v92 == sub_24ABABBEC() && v94 == v95)
    {

      v96 = v130;
    }

    else
    {
      v97 = sub_24ABAC58C();

      v96 = v130;
      if ((v97 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (*(v41 + *(v96 + 20) + 8))
    {
      v80[v76[17]] = 1;
    }

LABEL_29:
    v98 = (v41 + *(v96 + 20));
    v100 = *v98;
    v99 = v98[1];
    v101 = &v80[v76[19]];
    v102 = v101[1];
    *v101 = v100;
    v101[1] = v99;

    v103 = sub_24ABABB9C();
    v104 = v133;
    v105 = sub_24ABABB9C();
    v106 = [v103 fp:v105 relativePathWithRealpath:?];

    if (!v106)
    {
      (*(v78 + 8))(v104, v74);
LABEL_38:
      *v143 = v68;
      type metadata accessor for FIRoot.IndexAction(0);
LABEL_46:
      swift_storeEnumTagMultiPayload();
      result = sub_24AB91A08(v80, type metadata accessor for FileMetadata);
      goto LABEL_16;
    }

    v107 = sub_24ABABEBC();
    v109 = v108;

    if (v107 || v109 != 0xE000000000000000)
    {
      v110 = sub_24ABAC58C();
    }

    else
    {

      v110 = 1;
    }

    v111 = v141;
    v112 = v133;
    v80[*(v111 + 64)] = sub_24AB82004() & 1;
    if (v80[*(v111 + 60)])
    {
      (*(v78 + 8))(v112, v74);
      goto LABEL_38;
    }

    if (v80[48] == 2 && (v128 & 0x800) != 0)
    {
      v113 = sub_24ABABBEC();
      v115 = v114;
      v116 = sub_24ABABBEC();
      sub_24AB82D58(v113, v115, v116, v117);
      v119 = v118;

      if (v119)
      {

        v78 = v140;
        v112 = v133;
      }

      else
      {
        v78 = v140;
        v112 = v133;
        if ((v110 & 1) == 0)
        {
          v122 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B58, &unk_24ABAEDC0) + 48);
          v123 = v112;
          v124 = v143;
          sub_24AB919A0(v80, v143, type metadata accessor for FileMetadata);
          v145(&v124[v122], v123, v74);
          (*(v78 + 56))(&v124[v122], 0, 1, v74);
          goto LABEL_45;
        }
      }
    }

    (*(v78 + 8))(v112, v74);
    v120 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B58, &unk_24ABAEDC0) + 48);
    v121 = v143;
    sub_24AB919A0(v80, v143, type metadata accessor for FileMetadata);
    (*(v78 + 56))(&v121[v120], 1, 1, v74);
LABEL_45:
    type metadata accessor for FIRoot.IndexAction(0);
    goto LABEL_46;
  }

  sub_24AB7C4A4(v16, &qword_27EF95B60, "\b.");
  *v143 = v68;
  type metadata accessor for FIRoot.IndexAction(0);
LABEL_15:
  result = swift_storeEnumTagMultiPayload();
LABEL_16:
  v73 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AB8E26C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_eventProcessingOSTransaction);

  a4(v6);
}

void sub_24AB8E2C4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B68, &unk_24ABAEDD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - v8);
  sub_24AB94828(a1, &v20 - v8, &qword_27EF95B68, &unk_24ABAEDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *v9;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v11 = sub_24ABABD8C();
    __swift_project_value_buffer(v11, qword_27EF95FD8);
    v12 = v10;
    v13 = sub_24ABABD6C();
    v14 = sub_24ABAC11C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v10;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_24AB6F000, v13, v14, "failed to retrieve persisted indexing state: %@", v15, 0xCu);
      sub_24AB7C4A4(v16, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v16, -1, -1);
      MEMORY[0x24C229EC0](v15, -1, -1);
    }

    else
    {
    }

    v19 = 0;
  }

  else
  {
    sub_24AB7C4A4(v9, &qword_27EF95B68, &unk_24ABAEDD0);
    v19 = 1;
  }

  swift_beginAccess();
  *(a2 + 16) = v19;
  dispatch_group_leave(a3);
}

uint64_t sub_24AB8E50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v118 = a3;
  v5 = type metadata accessor for IndexingState();
  v116 = *(v5 - 8);
  v6 = *(v116 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v117 = v7;
  v119 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_24ABABDFC();
  v8 = *(v143 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v143);
  v142 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_24ABABE1C();
  v11 = *(v141 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v141);
  v140 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  v14 = *(v137 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v137);
  v125 = &v110 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B30, &unk_24ABAEDA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v136 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v135 = &v110 - v21;
  v139 = sub_24ABABC0C();
  v22 = *(v139 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v139);
  v138 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v153 = &v110 - v25;
  v160 = MEMORY[0x277D84F90];
  v26 = (a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
  v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v28 = *&v27[*(type metadata accessor for FIRoot.State(0) + 28)];

  sub_24AB950BC(v29);
  os_unfair_lock_unlock(v26);
  v30 = v160;
  v31 = *(a1 + 16);
  sub_24AB93DD0(a1 + 24, &aBlock);
  v32 = swift_allocObject();
  sub_24AB93E6C(&aBlock, v32 + 16);
  v115 = v30;
  v120 = sub_24AB923B4(a2, v30, v31, sub_24AB93E84, v32);
  v121 = v33;
  v35 = v34;

  v36 = *(v35 + 16);
  v122 = v35;
  if (v36)
  {
    v150 = v36;
    v111 = a2;
    v37 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
    v152 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
    v38 = *(v22 + 80);

    v149 = v37;
    swift_beginAccess();
    v39 = v35 + ((v38 + 32) & ~v38);
    v41 = *(v22 + 16);
    v40 = v22 + 16;
    v134 = v41;
    v42 = v8;
    v43 = (v40 + 16);
    v131 = *(v40 + 56);
    v151 = &v156;
    v130 = (v14 + 48);
    v124 = (v14 + 16);
    v123 = (v14 + 8);
    v44 = (v14 + 56);
    v45 = v38;
    v129 = v44;
    v113 = v42;
    v128 = (v42 + 8);
    v112 = v11;
    v46 = (v11 + 1);
    v47 = (v38 + 24) & ~v38;
    v127 = v46;
    v126 = (v40 - 8);
    v48 = v40;
    v49 = v23;
    v50 = v139;
    v51 = a1;
    v52 = v153;
    v148 = v45;
    v146 = v47;
    v132 = v43;
    v133 = v49;
    v147 = v48;
    while (1)
    {
      v145 = v39;
      v63 = v134;
      (v134)(v52);
      v64 = v138;
      v65 = v52;
      v66 = v63;
      v63(v138, v65, v50);
      v67 = swift_allocObject();
      *(v67 + 16) = v51;
      v68 = *v43;
      a2 = v64;
      (*v43)(v67 + v47, v64, v50);
      v69 = swift_allocObject();
      *(v69 + 16) = sub_24AB93EFC;
      *(v69 + 24) = v67;
      v158 = sub_24AB94E34;
      v159 = v69;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v156 = sub_24AB87488;
      v157 = &block_descriptor_178;
      v70 = _Block_copy(&aBlock);
      v11 = v159;

      dispatch_sync(v152, v70);
      _Block_release(v70);
      LOBYTE(v70) = swift_isEscapingClosureAtFileLocation();

      if (v70)
      {
        break;
      }

      v144 = v68;
      v71 = v51;
      v72 = v51 + v149;
      v73 = v135;
      sub_24AB94828(v72, v135, &unk_27EF95B30, &unk_24ABAEDA0);
      v74 = v137;
      if ((*v130)(v73, 1, v137))
      {
        sub_24AB7C4A4(v73, &unk_27EF95B30, &unk_24ABAEDA0);
      }

      else
      {
        v75 = v125;
        (*v124)(v125, v73, v74);
        sub_24AB7C4A4(v73, &unk_27EF95B30, &unk_24ABAEDA0);
        LOBYTE(aBlock) = 1;
        sub_24ABAC06C();
        (*v123)(v75, v74);
      }

      v53 = v136;
      (*v129)(v136, 1, 1, v74);
      v51 = v71;
      v54 = v149;
      swift_beginAccess();
      sub_24AB779B0(v53, v71 + v54, &unk_27EF95B30, &unk_24ABAEDA0);
      swift_endAccess();

      v50 = v139;
      v66(a2, v153, v139);
      v55 = v146;
      v56 = swift_allocObject();
      *(v56 + 16) = v51;
      v43 = v132;
      v144(v56 + v55, a2, v50);
      v158 = sub_24AB93F00;
      v159 = v56;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v156 = sub_24AB9AA08;
      v157 = &block_descriptor_184;
      v57 = _Block_copy(&aBlock);

      v58 = v140;
      sub_24ABABE0C();
      v154 = MEMORY[0x277D84F90];
      sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
      sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
      v59 = v142;
      v60 = v143;
      sub_24ABAC28C();
      MEMORY[0x24C229110](0, v58, v59, v57);
      _Block_release(v57);
      v61 = v59;
      v47 = v146;
      v62 = v60;
      v52 = v153;
      (*v128)(v61, v62);
      (*v127)(v58, v141);
      (*v126)(v52, v50);

      v39 = v145 + v131;
      if (!--v150)
      {

        v8 = v113;
        v11 = v112;
        a2 = v111;
        a1 = v51;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    v51 = v8;
    v114 = a1;
    if (qword_27EF95308 == -1)
    {
      goto LABEL_10;
    }
  }

  swift_once();
LABEL_10:
  v76 = sub_24ABABD8C();
  __swift_project_value_buffer(v76, qword_27EF95FD8);

  v77 = v120;

  v78 = v121;

  v79 = sub_24ABABD6C();
  v80 = sub_24ABAC10C();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&aBlock = v82;
    *v81 = 136315138;
    v83 = type metadata accessor for FileMetadata();

    v85 = MEMORY[0x24C228F90](v84, v83);
    v87 = v86;

    v88 = sub_24AB760CC(v85, v87, &aBlock);
    v77 = v120;

    *(v81 + 4) = v88;
    v78 = v121;
    _os_log_impl(&dword_24AB6F000, v79, v80, "Changed items %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    MEMORY[0x24C229EC0](v82, -1, -1);
    MEMORY[0x24C229EC0](v81, -1, -1);
  }

  v89 = sub_24ABABD6C();
  v90 = sub_24ABAC10C();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&aBlock = v92;
    *v91 = 136315138;

    v94 = MEMORY[0x24C228F90](v93, MEMORY[0x277D84D38]);
    v96 = v95;

    v97 = sub_24AB760CC(v94, v96, &aBlock);
    v78 = v121;

    *(v91 + 4) = v97;
    _os_log_impl(&dword_24AB6F000, v89, v90, "Deleted item IDs %s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    MEMORY[0x24C229EC0](v92, -1, -1);
    MEMORY[0x24C229EC0](v91, -1, -1);
  }

  v98 = v114;
  v99 = v119;
  v100 = v116;
  v101 = *(v114 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexQueue);
  sub_24AB919A0(v118, v119, type metadata accessor for IndexingState);
  v102 = (*(v100 + 80) + 56) & ~*(v100 + 80);
  v103 = swift_allocObject();
  v103[2] = v98;
  v103[3] = v77;
  v104 = v122;
  v103[4] = v78;
  v103[5] = v104;
  v103[6] = a2;
  sub_24AB91CDC(v99, v103 + v102, type metadata accessor for IndexingState);
  v158 = sub_24AB940D4;
  v159 = v103;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v156 = sub_24AB9AA08;
  v157 = &block_descriptor_190;
  v105 = _Block_copy(&aBlock);

  v106 = v140;
  sub_24ABABE0C();
  v154 = MEMORY[0x277D84F90];
  sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  v107 = v142;
  v108 = v143;
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v106, v107, v105);
  _Block_release(v105);
  (*(v51 + 8))(v107, v108);
  (v11[1])(v106, v141);
}

uint64_t sub_24AB8F524(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ABABC0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v15 = a1;
  v14 = a1;
  sub_24ABABD1C();
  v7 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
  v13 = a1;
  v12 = a1;
  result = sub_24ABABD1C();
  if (v7 != 2)
  {
    (*(v5 + 16))(&v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v4);
    v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v10 = swift_allocObject();
    (*(v5 + 32))(v10 + v9, &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
    sub_24AB89E4C(nullsub_1, 0, sub_24AB94248, v10);
  }

  return result;
}

void sub_24AB8F730(void *a1, uint64_t a2)
{
  v4 = sub_24ABABC0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v10 = sub_24ABABD8C();
    __swift_project_value_buffer(v10, qword_27EF95FD8);
    (*(v5 + 16))(v8, a2, v4);
    v11 = a1;
    v12 = sub_24ABABD6C();
    v13 = sub_24ABAC11C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = v23;
      *v14 = 136315394;
      v16 = sub_24ABABBEC();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_24AB760CC(v16, v18, &v24);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2112;
      v20 = a1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v21;
      *v15 = v21;
      _os_log_impl(&dword_24AB6F000, v12, v13, "failed to scan of %s: %@", v14, 0x16u);
      sub_24AB7C4A4(v15, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v15, -1, -1);
      v22 = v23;
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x24C229EC0](v22, -1, -1);
      MEMORY[0x24C229EC0](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }
  }
}

uint64_t sub_24AB8F9EC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v56 = a6;
  v55 = a5;
  v68 = a3;
  v62 = a2;
  v71[1] = *MEMORY[0x277D85DE8];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A00, &qword_24ABAEB60);
  v58 = *(v59 - 8);
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v54 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B50, &qword_24ABAEDB8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v53 - v13;
  v14 = sub_24ABABD0C();
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = (v18 + 16);
  sub_24ABABCFC();
  v65 = v17;
  v70[0] = sub_24ABABCEC();
  v70[1] = v20;
  v21 = sub_24AB82948(v70, v71);
  v23 = v22;
  v24 = dispatch_group_create();
  dispatch_group_enter(v24);
  v26 = a1[11];
  v25 = a1[12];
  v63 = a1;
  v61 = __swift_project_boxed_opaque_existential_1(a1 + 8, v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  *(v27 + 24) = v24;
  v28 = *(v25 + 8);
  v64 = v18;

  v29 = v24;
  v30 = v62;
  v31 = v68;
  v62 = v21;
  v68 = v23;
  v28(v30, v31, v21, v23, sub_24AB941B8, v27, v26, v25);

  sub_24ABAC12C();
  v32 = swift_beginAccess();
  v33 = *v19;
  if (*v19)
  {
    v35 = v62;
    v34 = v63;
    v36 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
    swift_beginAccess();
    v37 = v57;
    sub_24AB94828(v34 + v36, v57, &qword_27EF95B50, &qword_24ABAEDB8);
    v38 = v58;
    v39 = v59;
    if ((*(v58 + 48))(v37, 1, v59))
    {
      v40 = v33;
      sub_24AB7C4A4(v37, &qword_27EF95B50, &qword_24ABAEDB8);
    }

    else
    {
      v46 = v54;
      (*(v38 + 16))(v54, v37, v39);
      v47 = v33;
      sub_24AB7C4A4(v37, &qword_27EF95B50, &qword_24ABAEDB8);
      v69 = v33;
      v48 = v33;
      sub_24ABAC05C();
      (*(v38 + 8))(v46, v39);
    }

    v49 = v60;
    (*(v38 + 56))(v60, 1, 1, v39);
    swift_beginAccess();
    sub_24AB779B0(v49, v34 + v36, &qword_27EF95B50, &qword_24ABAEDB8);
    swift_endAccess();
    v50 = *(v34 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_eventProcessingOSTransaction);
    sub_24AB833A8();
    sub_24AB77A9C(v35, v68);
  }

  else
  {
    v41 = MEMORY[0x28223BE20](v32);
    v42 = v63;
    *(&v53 - 2) = v63;
    MEMORY[0x28223BE20](v41);
    *(&v53 - 2) = v42;
    sub_24ABABD1C();
    v43 = v62;
    v44 = sub_24AB90250(v55, v42, v56, v62, v68);
    v45 = MEMORY[0x28223BE20](v44);
    *(&v53 - 2) = v42;
    MEMORY[0x28223BE20](v45);
    *(&v53 - 2) = v42;
    sub_24ABABD1C();
    sub_24AB77A9C(v43, v68);
  }

  (*(v66 + 8))(v65, v67);

  v52 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24AB900BC(void *a1, uint64_t a2, dispatch_group_t group)
{
  if (a1)
  {
    v6 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v7 = sub_24ABABD8C();
    __swift_project_value_buffer(v7, qword_27EF95FD8);
    v8 = a1;
    v9 = sub_24ABABD6C();
    v10 = sub_24ABAC11C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_24AB6F000, v9, v10, "Event handling failed to index: %@", v11, 0xCu);
      sub_24AB7C4A4(v12, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v12, -1, -1);
      MEMORY[0x24C229EC0](v11, -1, -1);
    }

    swift_beginAccess();
    v15 = *(a2 + 16);
    *(a2 + 16) = a1;
  }

  dispatch_group_leave(group);
}

uint64_t sub_24AB90250(void *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A00, &qword_24ABAEB60);
  v61 = *(v64 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v64);
  v58 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B50, &qword_24ABAEDB8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v60 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - v20;
  v22 = a1[2];
  if (v22)
  {
    v23 = &a1[5 * v22];
    v24 = *v23;
    v57 = a3;
    v25 = v23[2];
    v26 = (a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);

    os_unfair_lock_lock(v26);
    *(&v26->_os_unfair_lock_opaque + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28)) = v25;
    v6 = v5;
    a3 = v57;

    os_unfair_lock_unlock(v26);
  }

  v57 = a1;
  v27 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler + 24);
  v28 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler + 32);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler), v27);
  v29 = a3;
  v30 = a4;
  v31 = a4;
  v32 = a5;
  (*(v28 + 16))(0xD000000000000023, 0x800000024ABAF7E0, v29, v31, a5, v27, v28);
  if (v6)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v33 = sub_24ABABD8C();
    __swift_project_value_buffer(v33, qword_27EF95FD8);
    sub_24AB7FC5C(v30, a5);
    v34 = v6;
    v35 = sub_24ABABD6C();
    v36 = sub_24ABAC11C();
    sub_24AB77A9C(v30, v32);

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v63 = v39;
      *v37 = 136315394;
      v40 = sub_24ABABC1C();
      v42 = sub_24AB760CC(v40, v41, &v63);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2112;
      v43 = v6;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v44;
      *v38 = v44;
      _os_log_impl(&dword_24AB6F000, v35, v36, "failed to store indexing state with cookie %s: %@", v37, 0x16u);
      sub_24AB7C4A4(v38, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v39);
      MEMORY[0x24C229EC0](v39, -1, -1);
      MEMORY[0x24C229EC0](v37, -1, -1);
    }

    v45 = v64;
    v46 = v61;
    v47 = v59;
    v48 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
    swift_beginAccess();
    sub_24AB94828(a2 + v48, v47, &qword_27EF95B50, &qword_24ABAEDB8);
    if ((*(v46 + 48))(v47, 1, v45))
    {

      sub_24AB7C4A4(v47, &qword_27EF95B50, &qword_24ABAEDB8);
    }

    else
    {
      v50 = v58;
      (*(v46 + 16))(v58, v47, v45);
      sub_24AB7C4A4(v47, &qword_27EF95B50, &qword_24ABAEDB8);
      v62 = v6;
      sub_24ABAC05C();
      (*(v46 + 8))(v50, v45);
    }
  }

  else
  {
    v49 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
    swift_beginAccess();
    sub_24AB94828(a2 + v49, v21, &qword_27EF95B50, &qword_24ABAEDB8);
    v46 = v61;
    v45 = v64;
    if ((*(v61 + 48))(v21, 1, v64))
    {
      sub_24AB7C4A4(v21, &qword_27EF95B50, &qword_24ABAEDB8);
    }

    else
    {
      v51 = v58;
      (*(v46 + 16))(v58, v21, v45);
      sub_24AB7C4A4(v21, &qword_27EF95B50, &qword_24ABAEDB8);
      v62 = v57;

      sub_24ABAC06C();
      (*(v46 + 8))(v51, v45);
    }
  }

  v52 = v60;
  (*(v46 + 56))(v60, 1, 1, v45);
  v53 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
  swift_beginAccess();
  sub_24AB779B0(v52, a2 + v53, &qword_27EF95B50, &qword_24ABAEDB8);
  swift_endAccess();
  v54 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_eventProcessingOSTransaction);
  return sub_24AB833A8();
}

uint64_t sub_24AB908F4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24AB909EC;

  return v7(a1);
}

uint64_t sub_24AB909EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_24AB90AE4(_BYTE *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2 - a1;
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  result = sub_24ABAAF2C(v5);
  __dst = result;
  v12 = v7;
  v14 = v8;
  v13 = v9;
  if (a1 && a2 != a1)
  {
    memcpy(&__dst, a1, v4);
    result = __dst;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AB90BA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24ABABADC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24ABABA9C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24AB90C28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_24ABABADC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_24ABABA9C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24ABABC2C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

unint64_t sub_24AB90CA4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_24ABABFCC();
  }

  __break(1u);
  return result;
}

unint64_t sub_24AB90CF0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24AB90D20()
{
  result = qword_27EF95928;
  if (!qword_27EF95928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95928);
  }

  return result;
}

uint64_t sub_24AB90D74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24AB90DC0()
{
  result = qword_27EF95948;
  if (!qword_27EF95948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95948);
  }

  return result;
}

uint64_t sub_24AB90E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24ABABC0C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24AB90F3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24ABABC0C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24AB90FF8()
{
  sub_24ABABC0C();
  if (v0 <= 0x3F)
  {
    sub_24AB9107C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AB9107C()
{
  if (!qword_27EF95960)
  {
    v0 = sub_24ABAC20C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF95960);
    }
  }
}

void sub_24AB910F4()
{
  sub_24AB91308(319, &qword_27EF959F8, &qword_27EF95A00, &qword_24ABAEB60);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_24AB91684(319, &qword_27EF95A08, type metadata accessor for FIRoot.State, MEMORY[0x277D85458]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_24AB91308(319, &qword_27EF95A10, &qword_27EF95A18, &qword_24ABAEB98);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24AB91308(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_24ABAC20C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_24AB9135C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_24AB913A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AB91480(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_24AB91548()
{
  sub_24AB91684(319, &qword_27EF95A40, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24AB91684(319, &qword_27EF95A48, type metadata accessor for TreeLister, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_24AB91684(319, &qword_27EF95A50, type metadata accessor for RootInfo, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AB91684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AB916FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_24AB91744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24AB917AC()
{
  result = qword_27EF95A58;
  if (!qword_27EF95A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95A58);
  }

  return result;
}

unint64_t sub_24AB91804()
{
  result = qword_27EF95A60;
  if (!qword_27EF95A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95A60);
  }

  return result;
}

unint64_t sub_24AB9185C()
{
  result = qword_27EF95A68;
  if (!qword_27EF95A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95A68);
  }

  return result;
}

unint64_t sub_24AB918B0()
{
  result = qword_27EF95A78;
  if (!qword_27EF95A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95A78);
  }

  return result;
}

uint64_t sub_24AB91904(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95AA0, &qword_24ABAED58);
    sub_24AB90D74(a2, type metadata accessor for RootInfo);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AB919A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB91A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AB91A68(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95A88, &qword_24ABAED50);
    sub_24AB90D74(a2, type metadata accessor for TreeLister);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24AB91BD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24AB91BE8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB91C50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24AB91CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB91D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6576457473616CLL && a2 == 0xEB00000000444974;
  if (v4 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55556D6165727473 && a2 == 0xEA00000000004449 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E616373 && a2 == 0xE500000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746F6F72 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24ABAC58C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_24AB91EE0()
{
  v16 = sub_24ABAC14C();
  v0 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v1 = sub_24ABABE1C();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v15 = sub_24ABAC15C();
  v3 = *(v15 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v15);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24ABAC1CC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v14 = sub_24AB943C0(0, &qword_27EF95B78, 0x277D85CA8);
  v17 = MEMORY[0x277D84F90];
  sub_24AB90D74(&qword_27EF95B80, MEMORY[0x277D852C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B88, &qword_24ABAEDE0);
  sub_24AB94408(&unk_27EF95B90, &qword_27EF95B88, &qword_24ABAEDE0);
  sub_24ABAC28C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v15);
  v9 = sub_24ABAC1DC();
  v15 = v9;
  v10 = objc_allocWithZone(MEMORY[0x277D086A0]);
  v11 = sub_24ABABE8C();
  v14 = [v10 initWithLabel:v11 workloop:v9 shouldWatchRoot:0];

  sub_24AB943C0(0, &unk_27EF95E00, 0x277D85C78);
  sub_24ABABE0C();
  v17 = MEMORY[0x277D84F90];
  sub_24AB90D74(&unk_27EF95BA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95E10, &qword_24ABAEDE8);
  sub_24AB94408(&qword_27EF95BB0, &unk_27EF95E10, &qword_24ABAEDE8);
  sub_24ABAC28C();
  v13[1] = sub_24ABAC13C();
  sub_24ABABE0C();
  v17 = MEMORY[0x277D84F90];
  sub_24ABAC28C();
  sub_24ABAC13C();
  sub_24ABABE0C();
  v17 = MEMORY[0x277D84F90];
  sub_24ABAC28C();
  sub_24ABAC13C();

  return v14;
}

void *sub_24AB923B4(uint64_t a1, uint64_t a2, unsigned int a3, void (*a4)(__darwin_ino64_t, void), uint64_t a5)
{
  v112 = a5;
  v111 = a4;
  v110 = a3;
  v7 = type metadata accessor for FileMetadata();
  v103 = *(v7 - 8);
  v8 = *(v103 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v106 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v95 - v11;
  v109 = type metadata accessor for FIRoot.IndexAction(0);
  v12 = *(*(v109 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v109);
  v116 = (&v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v120 = (&v95 - v15);
  v16 = type metadata accessor for RootInfo(0);
  v118 = *(v16 - 8);
  v17 = *(v118 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v108 = &v95 - v22;
  MEMORY[0x28223BE20](v21);
  v119 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v102 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v107 = &v95 - v29;
  MEMORY[0x28223BE20](v28);
  v133 = &v95 - v30;
  v132 = sub_24ABABB6C();
  v31 = *(v132 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v132);
  v131 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_24ABABC0C();
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v101 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v100 = &v95 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v95 - v41;
  v130 = *(a1 + 16);
  if (v130)
  {
    v43 = v40;
    v127 = objc_opt_self();
    type metadata accessor for FIRoot(0);
    v44 = 0;
    v126 = a1 + 32;
    v125 = *(v31 + 104);
    v124 = (v43 + 56);
    v123 = (v43 + 8);
    v99 = (v43 + 48);
    v136 = *(a2 + 16);
    v98 = (v43 + 32);
    v97 = v43;
    v96 = (v43 + 16);
    v122 = *MEMORY[0x277CC91C0];
    v121 = *MEMORY[0x277CC91D0];
    *&v45 = 136315650;
    v113 = v45;
    v115 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    v114 = MEMORY[0x277D84F90];
    v117 = a2;
    v128 = v34;
    v129 = v31 + 104;
    do
    {
      v137 = v44;
      v47 = (v126 + 40 * v44);
      v48 = v47[1];
      v139 = *v47;
      v140 = v48;
      v49 = *(v47 + 8);
      v141 = v49;
      if ((v49 & 0x20000) != 0)
      {
        v50 = v122;
      }

      else
      {
        v50 = v121;
      }

      v125(v131, v50, v132);
      v51 = v139;
      (*v124)(v133, 1, 1, v34);
      swift_bridgeObjectRetain_n();
      v135 = v51;
      sub_24ABABBFC();
      v52 = [v127 fpfs:v49 initWithFSEventsFlags:?];
      v134 = sub_24ABABEBC();
      v54 = v53;

      if (v136)
      {
        v55 = v117 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
        v56 = *(v118 + 72);
        v57 = v136;
        while (1)
        {
          sub_24AB919A0(v55, v20, type metadata accessor for RootInfo);
          v58 = sub_24ABABB9C();
          v59 = sub_24ABABB9C();
          v60 = [v58 fp:v59 relativePathWithRealpath:?];

          if (v60)
          {
            break;
          }

          sub_24AB91A08(v20, type metadata accessor for RootInfo);
          v55 += v56;
          if (!--v57)
          {
            goto LABEL_13;
          }
        }

        v68 = v108;
        sub_24AB91CDC(v20, v108, type metadata accessor for RootInfo);

        v69 = v68;
        v70 = v119;
        sub_24AB91CDC(v69, v119, type metadata accessor for RootInfo);
        v71 = v120;
        sub_24AB8CEE4(&v139, v70, v110, v111, v112, v120);
        sub_24AB94310(&v139);
        sub_24AB919A0(v71, v116, type metadata accessor for FIRoot.IndexAction);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v34 = v128;
          v46 = v137;
          if (EnumCaseMultiPayload == 1)
          {
            v73 = *v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v115 = sub_24ABA1408(0, *(v115 + 2) + 1, 1, v115);
            }

            v75 = *(v115 + 2);
            v74 = *(v115 + 3);
            if (v75 >= v74 >> 1)
            {
              v115 = sub_24ABA1408((v74 > 1), v75 + 1, 1, v115);
            }

            sub_24AB91A08(v120, type metadata accessor for FIRoot.IndexAction);
            sub_24AB91A08(v119, type metadata accessor for RootInfo);
            (*v123)(v42, v34);
            v76 = v115;
            *(v115 + 2) = v75 + 1;
            *&v76[8 * v75 + 32] = v73;
          }

          else
          {
            sub_24AB91A08(v120, type metadata accessor for FIRoot.IndexAction);
            sub_24AB91A08(v119, type metadata accessor for RootInfo);
            (*v123)(v42, v34);
          }
        }

        else
        {
          v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B58, &unk_24ABAEDC0) + 48);
          v78 = v116;
          v79 = v105;
          sub_24AB91CDC(v116, v105, type metadata accessor for FileMetadata);
          sub_24AB94340(v78 + v77, v107);
          sub_24AB919A0(v79, v106, type metadata accessor for FileMetadata);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = v128;
          v46 = v137;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v114 = sub_24ABA13B8(0, v114[2] + 1, 1, v114);
          }

          v82 = v114[2];
          v81 = v114[3];
          if (v82 >= v81 >> 1)
          {
            v114 = sub_24ABA13B8(v81 > 1, v82 + 1, 1, v114);
          }

          v83 = v114;
          v114[2] = v82 + 1;
          sub_24AB91CDC(v106, v83 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v82, type metadata accessor for FileMetadata);
          v84 = v107;
          v85 = v102;
          sub_24AB94828(v107, v102, &qword_27EF95B00, &qword_24ABAED70);
          if ((*v99)(v85, 1, v34) == 1)
          {
            sub_24AB7C4A4(v84, &qword_27EF95B00, &qword_24ABAED70);
            sub_24AB91A08(v105, type metadata accessor for FileMetadata);
            sub_24AB91A08(v120, type metadata accessor for FIRoot.IndexAction);
            sub_24AB91A08(v119, type metadata accessor for RootInfo);
            (*v123)(v42, v34);
            sub_24AB7C4A4(v85, &qword_27EF95B00, &qword_24ABAED70);
          }

          else
          {
            v86 = v100;
            v135 = *v98;
            v135(v100, v85, v34);
            (*v96)(v101, v86, v34);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v104 = sub_24ABA13E0(0, *(v104 + 2) + 1, 1, v104);
            }

            v88 = *(v104 + 2);
            v87 = *(v104 + 3);
            v89 = v97;
            if (v88 >= v87 >> 1)
            {
              v93 = sub_24ABA13E0(v87 > 1, v88 + 1, 1, v104);
              v89 = v97;
              v104 = v93;
            }

            v90 = *(v89 + 8);
            v91 = v89;
            v90(v100, v34);
            sub_24AB7C4A4(v107, &qword_27EF95B00, &qword_24ABAED70);
            sub_24AB91A08(v105, type metadata accessor for FileMetadata);
            sub_24AB91A08(v120, type metadata accessor for FIRoot.IndexAction);
            sub_24AB91A08(v119, type metadata accessor for RootInfo);
            v90(v42, v34);
            v92 = v104;
            *(v104 + 2) = v88 + 1;
            v135(&v92[((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v88], v101, v34);
          }
        }
      }

      else
      {
LABEL_13:
        if (qword_27EF95308 != -1)
        {
          swift_once();
        }

        v61 = sub_24ABABD8C();
        __swift_project_value_buffer(v61, qword_27EF95FD8);
        sub_24AB942D8(&v139, &v138);

        v62 = sub_24ABABD6C();
        v63 = sub_24ABAC11C();

        v64 = os_log_type_enabled(v62, v63);
        v34 = v128;
        if (v64)
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v138 = v66;
          *v65 = v113;
          *(v65 + 4) = sub_24AB760CC(v135, *(&v51 + 1), &v138);
          *(v65 + 12) = 2048;
          sub_24AB94310(&v139);
          *(v65 + 14) = v140;
          sub_24AB94310(&v139);
          *(v65 + 22) = 2080;
          v67 = sub_24AB760CC(v134, v54, &v138);

          *(v65 + 24) = v67;
          _os_log_impl(&dword_24AB6F000, v62, v63, "event not in any registered roots: path %s fileID %llu flags %s", v65, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C229EC0](v66, -1, -1);
          MEMORY[0x24C229EC0](v65, -1, -1);
        }

        else
        {

          sub_24AB94310(&v139);
          sub_24AB94310(&v139);
        }

        (*v123)(v42, v34);
        v46 = v137;
      }

      v44 = v46 + 1;
    }

    while (v44 != v130);
  }

  else
  {
    v115 = MEMORY[0x277D84F90];
    v104 = MEMORY[0x277D84F90];
    return MEMORY[0x277D84F90];
  }

  return v114;
}

void sub_24AB932E0(uint64_t a1)
{
  v2 = v1;
  if (a1 == 6)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v12 = sub_24ABABD8C();
    __swift_project_value_buffer(v12, qword_27EF95FD8);
    v8 = sub_24ABABD6C();
    v9 = sub_24ABAC0FC();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "reset due to needing deep scan, queueing scan";
LABEL_17:
    v13 = v9;
    v14 = v8;
    v15 = v10;
    v16 = 2;
    goto LABEL_22;
  }

  if (a1 == 9)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v7 = sub_24ABABD8C();
    __swift_project_value_buffer(v7, qword_27EF95FD8);
    v8 = sub_24ABABD6C();
    v9 = sub_24ABAC0FC();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "reset due to drop in live stream";
    goto LABEL_17;
  }

  if (a1 != 8)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v18 = sub_24ABABD8C();
    __swift_project_value_buffer(v18, qword_27EF95FD8);
    v8 = sub_24ABABD6C();
    v19 = sub_24ABAC0FC();
    if (!os_log_type_enabled(v8, v19))
    {
      goto LABEL_23;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    v11 = "reset with reason %ld";
    v13 = v19;
    v14 = v8;
    v15 = v10;
    v16 = 12;
LABEL_22:
    _os_log_impl(&dword_24AB6F000, v14, v13, v11, v15, v16);
    MEMORY[0x24C229EC0](v10, -1, -1);
LABEL_23:

    goto LABEL_24;
  }

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v3 = sub_24ABABD8C();
  __swift_project_value_buffer(v3, qword_27EF95FD8);
  v4 = sub_24ABABD6C();
  v5 = sub_24ABAC0FC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24AB6F000, v4, v5, "reset due to drop in historical stream, queueing scan", v6, 2u);
    MEMORY[0x24C229EC0](v6, -1, -1);
  }

  sub_24AB87704();
LABEL_24:
  if (*(*(v2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_eventProcessingOSTransaction) + 16))
  {
    sub_24AB833A8();
  }
}

uint64_t sub_24AB935DC()
{
  v1 = v0;
  v2 = sub_24ABABDFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24ABABE1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IndexingState();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  result = swift_beginAccess();
  if (*(v1[14] + 16))
  {
    v46 = v1[14];
    v47 = v13;
    v51 = v8;
    v52 = v6;
    v53 = v7;
    v54 = v3;
    v55 = v2;
    v1[14] = MEMORY[0x277D84F90];
    v18 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState);
    v19 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState + 8);

    v50 = v16;
    v18(v20);

    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v1[11];
    v24 = v1[12];
    v45 = __swift_project_boxed_opaque_existential_1(v1 + 8, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v22;
    v26 = v11;
    v27 = *(v24 + 32);

    v28 = v22;
    v49 = v1;
    v29 = v28;
    v30 = v24;
    v31 = v48;
    v27(sub_24AB93C0C, v25, v23, v30);

    sub_24ABAC12C();

    v32 = v49;
    swift_beginAccess();
    LOBYTE(v23) = *(v21 + 16);

    if ((v23 & 1) == 0)
    {
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v33 = sub_24ABABD8C();
      __swift_project_value_buffer(v33, qword_27EF95FD8);
      v34 = sub_24ABABD6C();
      v35 = sub_24ABAC0FC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_24AB6F000, v34, v35, "FileIndexer and Spotlight out of sync in persisted state, queueing scan", v36, 2u);
        MEMORY[0x24C229EC0](v36, -1, -1);
      }

      sub_24AB87704();
    }

    v37 = *(v32 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_fetchQueue);
    v38 = v50;
    sub_24AB919A0(v50, v31, type metadata accessor for IndexingState);
    v39 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v40 = swift_allocObject();
    v41 = v46;
    *(v40 + 16) = v32;
    *(v40 + 24) = v41;
    sub_24AB91CDC(v31, v40 + v39, type metadata accessor for IndexingState);
    aBlock[4] = sub_24AB93D6C;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB9AA08;
    aBlock[3] = &block_descriptor_165;
    v42 = _Block_copy(aBlock);

    sub_24ABABE0C();
    v57 = MEMORY[0x277D84F90];
    sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
    v43 = v52;
    v44 = v55;
    sub_24ABAC28C();
    MEMORY[0x24C229110](0, v26, v43, v42);
    _Block_release(v42);
    (*(v54 + 8))(v43, v44);
    (*(v51 + 8))(v26, v53);
    sub_24AB91A08(v38, type metadata accessor for IndexingState);
  }

  return result;
}

uint64_t sub_24AB93C14()
{
  v1 = *(type metadata accessor for IndexingState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  v7 = v0 + v3;
  v8 = type metadata accessor for FIRoot.State(0);
  v9 = v8[5];
  v10 = sub_24ABABD0C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = *(v7 + v8[6]);

  v13 = *(v7 + v8[7]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AB93D6C()
{
  v1 = *(type metadata accessor for IndexingState() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_24AB8E50C(v2, v3, v4);
}

uint64_t sub_24AB93DD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AB93E34()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24AB93E6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24AB93E84(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_24AB93F00()
{
  v1 = *(sub_24ABABC0C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_24AB8F524(v2, v3);
}

uint64_t sub_24AB93F64()
{
  v1 = *(type metadata accessor for IndexingState() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);

  v6 = *(v0 + 3);

  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  v9 = *(v0 + 6);

  v10 = &v0[v3];
  v11 = type metadata accessor for FIRoot.State(0);
  v12 = v11[5];
  v13 = sub_24ABABD0C();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v0[v3 + v12], 1, v13))
  {
    (*(v14 + 8))(&v10[v12], v13);
  }

  v15 = *&v10[v11[6]];

  v16 = *&v10[v11[7]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AB940D4()
{
  v1 = *(type metadata accessor for IndexingState() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_24AB8F9EC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_24AB94140()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_158Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB941C0()
{
  v1 = sub_24ABABC0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_24AB94248(void *a1)
{
  v3 = *(sub_24ABABC0C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24AB8F730(a1, v4);
}

uint64_t sub_24AB94340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AB943C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_24AB94408(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AB94484()
{
  result = qword_27EF95BB8;
  if (!qword_27EF95BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95BB8);
  }

  return result;
}

uint64_t sub_24AB944F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24AB945B8;

  return sub_24AB8BC88(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24AB945B8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t objectdestroy_231Tm(void (*a1)(void))
{
  a1(v1[2]);
  v2 = v1[4];

  v3 = v1[6];

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_24AB9472C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  sub_24AB77A9C(*(v0 + 48), *(v0 + 56));
  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_24AB947D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AB94828(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AB94890()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AB948C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AB94E38;

  return sub_24AB908F4(a1, v5);
}

uint64_t sub_24AB94980(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24AB945B8;

  return sub_24AB908F4(a1, v5);
}

uint64_t objectdestroy_170Tm()
{
  v1 = sub_24ABABC0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_24AB94AFC()
{
  v1 = *(sub_24ABABC0C() - 8);
  v2 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v3 = *(v0 + 16);
  sub_24AB85E60(v2);
}

void sub_24AB94B70()
{
  sub_24AB94BD8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_24AB94BD8()
{
  if (!qword_27EF95BD8)
  {
    type metadata accessor for FileMetadata();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95B00, &qword_24ABAED70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF95BD8);
    }
  }
}

unint64_t sub_24AB94C6C()
{
  result = qword_27EF95BE8;
  if (!qword_27EF95BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95BE8);
  }

  return result;
}

unint64_t sub_24AB94CC4()
{
  result = qword_27EF95BF0;
  if (!qword_27EF95BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95BF0);
  }

  return result;
}

unint64_t sub_24AB94D1C()
{
  result = qword_27EF95BF8;
  if (!qword_27EF95BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95BF8);
  }

  return result;
}

unint64_t sub_24AB94D74()
{
  result = qword_27EF95C00;
  if (!qword_27EF95C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95C00);
  }

  return result;
}

unint64_t sub_24AB94E84()
{
  result = qword_27EF95C10;
  if (!qword_27EF95C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95C10);
  }

  return result;
}

uint64_t sub_24AB94ED8(void *(*a1)(uint64_t *__return_ptr, uint64_t))
{
  v3 = sub_24ABABA2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = a1(&v13, v6);
  if (!v1)
  {
    result = v13;
    if ((v13 & 0x80000000) != 0)
    {
      result = MEMORY[0x24C228D50]();
      if (result)
      {
        MEMORY[0x24C228D50]();
        v10 = sub_24ABABDAC();
        v11 = (v4 + 8);
        if ((v10 & 0x100000000) != 0)
        {
          v12[2] = sub_24ABABD9C();
        }

        else
        {
          v12[1] = v10;
        }

        sub_24ABA5504(MEMORY[0x277D84F90]);
        sub_24ABA3E40(&qword_27EF95E30, MEMORY[0x277CC8658]);
        sub_24ABABB3C();
        sub_24ABABA1C();
        (*v11)(v8, v3);
        return swift_willThrow();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_24AB950BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_24ABA1534(isUniquelyReferenced_nonNull_native, v16, 1, v3, &unk_27EF95D90, &unk_24ABAF2A0, type metadata accessor for RootInfo);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for RootInfo(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24AB9520C()
{
  v0 = sub_24ABABD8C();
  __swift_allocate_value_buffer(v0, qword_27EF95FD8);
  __swift_project_value_buffer(v0, qword_27EF95FD8);
  return sub_24ABABD7C();
}

char *FIService.init(daemon:)(void *a1)
{
  v3 = OBJC_IVAR____TtC17FileIndexerDaemon9FIService_listener;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v5 = sub_24ABABE8C();
  v6 = [v4 initWithMachServiceName_];

  *&v1[v3] = v6;
  *&v1[OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon] = a1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for FIService();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v9 = OBJC_IVAR____TtC17FileIndexerDaemon9FIService_listener;
  v10 = *&v8[OBJC_IVAR____TtC17FileIndexerDaemon9FIService_listener];
  v11 = v8;
  [v10 setDelegate_];
  [*&v8[v9] resume];

  return v11;
}

uint64_t sub_24AB95460()
{
  v1[7] = v0;
  v2 = type metadata accessor for RootInfo(0);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AB95520, 0, 0);
}

uint64_t sub_24AB95520()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon);
  v2 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
  *(swift_task_alloc() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95AA0, &qword_24ABAED58);
  sub_24ABAC17C();

  v3 = *(v0 + 48);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 72);
    v35 = MEMORY[0x277D84F90];
    sub_24ABA18BC(0, v4, 0);
    v6 = v35;
    v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v34 = *(v5 + 72);
    v8 = v7;
    v9 = v4;
    do
    {
      v10 = *(v0 + 80);
      sub_24ABA3CE0(v8, v10, type metadata accessor for RootInfo);
      v11 = sub_24ABABBEC();
      v13 = v12;
      sub_24ABA4900(v10, type metadata accessor for RootInfo);
      v15 = *(v6 + 16);
      v14 = *(v6 + 24);
      v16 = v6;
      if (v15 >= v14 >> 1)
      {
        sub_24ABA18BC((v14 > 1), v15 + 1, 1);
        v16 = v6;
      }

      *(v16 + 16) = v15 + 1;
      v17 = v16 + 16 * v15;
      *(v17 + 32) = v11;
      *(v17 + 40) = v13;
      v8 += v34;
      --v9;
      v6 = v16;
    }

    while (v9);
    v18 = v16;
    v19 = *(v0 + 64);
    v36 = MEMORY[0x277D84F90];
    sub_24ABA1920(0, v4, 0);
    do
    {
      v20 = *(v0 + 80);
      sub_24ABA3CE0(v7, v20, type metadata accessor for RootInfo);
      v21 = (v20 + *(v19 + 20));
      v22 = *v21;
      v23 = v21[1];
      *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C38, &qword_24ABAF100);
      *(v0 + 16) = v22;
      *(v0 + 24) = v23;

      sub_24ABA4900(v20, type metadata accessor for RootInfo);
      v25 = *(v36 + 16);
      v24 = *(v36 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_24ABA1920((v24 > 1), v25 + 1, 1);
      }

      *(v36 + 16) = v25 + 1;
      sub_24ABA28B4((v0 + 16), (v36 + 32 * v25 + 32));
      v7 += v34;
      --v4;
    }

    while (v4);

    v26 = v18;
  }

  else
  {
    v27 = *(v0 + 48);

    v26 = MEMORY[0x277D84F90];
  }

  v28 = *(v0 + 80);
  v29 = objc_allocWithZone(MEMORY[0x277CBEA60]);
  v30 = sub_24ABABFEC();

  v31 = [v29 initWithArray_];

  v32 = *(v0 + 8);

  return v32(v26, v31);
}

uint64_t sub_24AB959F8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AB95AA0;

  return sub_24AB95460();
}

uint64_t sub_24AB95AA0(uint64_t a1, void *a2)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v10 = *v2;

  v7 = sub_24ABABFEC();
  (v5)[2](v5, v7, a2, 0);

  _Block_release(v5);

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_24AB95C18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C40, &qword_24ABAF110);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v5 = type metadata accessor for RootInfo(0);
  v2[6] = v5;
  v6 = *(v5 - 8);
  v2[7] = v6;
  v7 = *(v6 + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24AB95D14, 0, 0);
}

uint64_t sub_24AB95D14()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = *(v0[3] + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon);
  v7 = sub_24ABABBEC();
  v9 = v8;
  v10 = *(v6 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
  v11 = swift_task_alloc();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v9;
  sub_24ABAC17C();

  v12 = (*(v2 + 48))(v4, 1, v1);
  v13 = v0[8];
  v14 = v0[5];
  if (v12 == 1)
  {
    v15 = v0[2];
    sub_24AB7C4A4(v0[5], &qword_27EF95C40, &qword_24ABAF110);
    type metadata accessor for FIError(0);
    sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError);
    swift_allocError();
    v17 = v16;
    *v16 = sub_24ABABBEC();
    v17[1] = v18;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v19 = v0[1];
  }

  else
  {
    sub_24ABA3D48(v0[5], v0[8], type metadata accessor for RootInfo);
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v20 = sub_24ABABD8C();
    __swift_project_value_buffer(v20, qword_27EF95FD8);
    v21 = sub_24ABABD6C();
    v22 = sub_24ABAC0FC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24AB6F000, v21, v22, "queueing scan", v23, 2u);
      MEMORY[0x24C229EC0](v23, -1, -1);
    }

    v24 = v0[8];
    v25 = v0[5];

    v26 = *(v6 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);

    sub_24AB8701C(v24);

    sub_24ABA4900(v24, type metadata accessor for RootInfo);

    v19 = v0[1];
  }

  return v19();
}

uint64_t sub_24AB961A4(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_24ABABC0C();
  v3[3] = v6;
  v7 = *(v6 - 8);
  v3[4] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[5] = v9;
  v3[6] = _Block_copy(a2);
  sub_24ABABBCC();
  a3;
  v10 = swift_task_alloc();
  v3[7] = v10;
  *v10 = v3;
  v10[1] = sub_24AB962D0;

  return sub_24AB95C18(v9);
}

uint64_t sub_24AB962D0()
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
    v12 = sub_24ABABB4C();

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

uint64_t sub_24AB964D8()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC0FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AB6F000, v2, v3, "starting scan", v4, 2u);
    MEMORY[0x24C229EC0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(*(v5 + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);

  sub_24AB89E4C(nullsub_1, 0, sub_24AB96650, 0);

  v7 = *(v0 + 8);

  return v7();
}

void sub_24AB96650(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B10, &unk_24ABAED80);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_24ABAD4A0;
    v3 = a1;
    MEMORY[0x24C228EB0](0x727265206E616373, 0xEC000000203A726FLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C50, &qword_24ABAF140);
    sub_24ABAC3AC();
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 32) = 0;
    *(v2 + 40) = 0xE000000000000000;
    sub_24ABAC61C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B10, &unk_24ABAED80);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 16) = xmmword_24ABAD4A0;
    *(v4 + 56) = v5;
    strcpy((v4 + 32), "scan finished");
    *(v4 + 46) = -4864;
    sub_24ABAC61C();
  }
}

uint64_t sub_24AB9696C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24ABA4AA0;

  return sub_24AB964B8();
}

uint64_t sub_24AB96A34()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC0FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AB6F000, v2, v3, "stopping scan", v4, 2u);
    MEMORY[0x24C229EC0](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = *(*(v5 + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
  *(swift_task_alloc() + 16) = v6;
  *(swift_task_alloc() + 16) = v6;

  sub_24ABABD1C();

  *(v6 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop) = 1;
  *(swift_task_alloc() + 16) = v6;
  *(swift_task_alloc() + 16) = v6;
  sub_24ABABD1C();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24AB96DF0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24ABA4AA0;

  return sub_24AB96A14();
}

uint64_t sub_24AB96EB8()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;

  sub_24ABABD1C();

  v2 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_24ABABD1C();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24AB971C8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24AB97270;

  return sub_24AB96E98();
}

uint64_t sub_24AB97270(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_24ABABB4C();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_24AB97420()
{
  v1 = *(*(*(v0 + 16) + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;

  sub_24ABABD1C();

  v2 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan);
  *(swift_task_alloc() + 16) = v1;
  *(swift_task_alloc() + 16) = v1;
  sub_24ABABD1C();

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v3 = sub_24ABABD8C();
  __swift_project_value_buffer(v3, qword_27EF95FD8);
  v4 = sub_24ABABD6C();
  v5 = sub_24ABAC0FC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_24AB6F000, v4, v5, "got item delay in scan, %ld seconds", v6, 0xCu);
    MEMORY[0x24C229EC0](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7(v2);
}

uint64_t sub_24AB977F0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24ABA4A00;

  return sub_24AB97400();
}

uint64_t sub_24AB97898(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24AB978B8, 0, 0);
}

uint64_t sub_24AB978B8()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  v2 = sub_24ABABD6C();
  v3 = sub_24ABAC0FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_24AB6F000, v2, v3, "setting item delay in scan to %ld seconds", v5, 0xCu);
    MEMORY[0x24C229EC0](v5, -1, -1);
  }

  v7 = v0[2];
  v6 = v0[3];

  v8 = *(*(v6 + OBJC_IVAR____TtC17FileIndexerDaemon9FIService_daemon) + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
  *(swift_task_alloc() + 16) = v8;
  *(swift_task_alloc() + 16) = v8;

  sub_24ABABD1C();

  if ((v7 & 0x8000000000000000) == 0)
  {
    *(v8 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan) = v0[2];
  }

  *(swift_task_alloc() + 16) = v8;
  *(swift_task_alloc() + 16) = v8;
  sub_24ABABD1C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_24AB97C98(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_24AB97D54;

  return sub_24AB97898(a1);
}

uint64_t sub_24AB97D54()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_24ABABB4C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_24AB97F9C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v377 = a1;
  v380 = a3;
  v374 = a2;
  v399[8] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for IndexingState();
  v5 = *(v4 - 8);
  v382 = v4;
  v383 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v378 = v329 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v349 = v329 - v9;
  v369 = type metadata accessor for RootInfo(0);
  v344 = *(v369 - 8);
  v10 = *(v344 + 64);
  v11 = MEMORY[0x28223BE20](v369);
  v384 = v329 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v345 = v329 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v340 = v329 - v16;
  MEMORY[0x28223BE20](v15);
  v338 = v329 - v17;
  v343 = sub_24ABABD0C();
  v347 = *(v343 - 8);
  v18 = *(v347 + 64);
  MEMORY[0x28223BE20](v343);
  v339 = v329 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  v360 = *(*(v358 - 8) + 64);
  MEMORY[0x28223BE20](v358);
  v359 = v329 - v20;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DE8, &qword_24ABAF3E8);
  v21 = *(*(v342 - 8) + 64);
  MEMORY[0x28223BE20](v342);
  v346 = v329 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v341 = v329 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v361 = v329 - v27;
  v371 = type metadata accessor for FIRoot.State(0);
  v355 = *(v371 - 1);
  v28 = *(v355 + 8);
  v29 = MEMORY[0x28223BE20](v371);
  v357 = (v329 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v362 = (v329 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  *&v356 = v329 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v363 = (v329 - v36);
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  v37 = *(*(v365 - 1) + 64);
  v38 = MEMORY[0x28223BE20](v365);
  v379 = v329 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v348 = v329 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v354 = v329 - v43;
  MEMORY[0x28223BE20](v42);
  v373 = v329 - v44;
  v353 = sub_24ABAC14C();
  v45 = *(*(v353 - 1) + 64);
  MEMORY[0x28223BE20](v353);
  v352 = v329 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = sub_24ABABC0C();
  v364 = *(v381 - 8);
  v47 = *(v364 + 64);
  v48 = MEMORY[0x28223BE20](v381);
  v375 = v329 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v372 = v329 - v50;
  v370 = sub_24ABABDFC();
  v51 = *(v370 - 1);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v370);
  v54 = v329 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24ABABE1C();
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v59 = v329 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = (v3 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingTaskIdentifier);
  *v60 = 0xD000000000000024;
  v60[1] = 0x800000024ABB01F0;
  v368 = v60;
  v61 = sub_24ABABDEC();
  signal(15, v61);
  sub_24AB943C0(0, &qword_27EF95DF8, 0x277D85CA0);
  v350 = sub_24AB943C0(0, &unk_27EF95E00, 0x277D85C78);
  v62 = sub_24ABAC16C();
  v63 = sub_24ABAC19C();

  swift_getObjectType();
  *&v390 = sub_24AB9A938;
  *(&v390 + 1) = 0;
  *&v388 = MEMORY[0x277D85DD0];
  *(&v388 + 1) = 1107296256;
  *&v389 = sub_24AB9AA08;
  *(&v389 + 1) = &block_descriptor_233;
  v64 = _Block_copy(&v388);
  sub_24ABABE0C();
  sub_24AB9AA4C();
  sub_24ABAC1AC();
  v65 = v64;
  v66 = v372;
  _Block_release(v65);
  v67 = v54;
  v68 = v63;
  (*(v51 + 8))(v67, v370);
  v69 = *(v56 + 8);
  v351 = v59;
  v70 = v59;
  v72 = v376;
  v71 = v377;
  v69(v70, v55);
  v73 = v374;
  sub_24ABAC1BC();
  v74 = v380;
  v367 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_sigtermSource;
  *&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_sigtermSource] = v68;
  v75 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_metadataHandler;
  sub_24AB93DD0(v71, &v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_metadataHandler]);
  v370 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler;
  sub_24AB93DD0(v73, &v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler]);
  v366 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingStateHandler;
  sub_24AB93DD0(v74, &v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingStateHandler]);
  swift_unknownObjectRetain();
  v76 = v385;
  v77 = sub_24AB9AB24(v66);
  if (v76)
  {
    v385 = v76;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v74);
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    v78 = v367;
    v79 = v368[1];

    v80 = 0;
    goto LABEL_4;
  }

  v337 = v75;
  v395 = 0u;
  v396 = 0u;
  v393 = 0u;
  v394 = 0u;
  v391 = 0u;
  v392 = 0u;
  v389 = 0u;
  v390 = 0u;
  v388 = 0u;
  MEMORY[0x28223BE20](v77);
  v329[-2] = v66;
  v329[-1] = &v388;
  sub_24AB94ED8(sub_24ABA47E0);
  v385 = 0;
  v334 = v68;
  v86 = v364;
  v87 = v381;
  v329[0] = *(v364 + 16);
  v329[1] = v364 + 16;
  (v329[0])(&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_localRoot], v66, v381);
  v336 = v388;
  v88 = v375;
  sub_24ABABB8C();
  (*(v86 + 32))(&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appLibrariesRoot], v88, v87);
  v89 = v73;
  sub_24ABABE0C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95BA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95E10, &qword_24ABAEDE8);
  sub_24AB94408(&qword_27EF95BB0, &unk_27EF95E10, &qword_24ABAEDE8);
  sub_24ABAC28C();
  *&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue] = sub_24ABAC13C();
  v90 = sub_24AB91EE0();
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v353 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_monitor;
  *&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_monitor] = v90;
  v352 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_fetchQueue;
  *&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_fetchQueue] = v91;
  v351 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexQueue;
  *&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexQueue] = v93;
  v350 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_scanQueue;
  *&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_scanQueue] = v95;
  v97 = swift_allocBox();
  v365 = v98;
  (*(v383 + 56))(v98, 1, 1, v382);
  v333 = v90;
  v332 = v92;
  v331 = v94;
  v330 = v96;
  v99 = dispatch_group_create();
  dispatch_group_enter(v99);
  v101 = v89[3];
  v100 = v89[4];
  __swift_project_boxed_opaque_existential_1(v89, v101);
  v102 = swift_allocObject();
  v335 = v97;
  *(v102 + 16) = v97;
  *(v102 + 24) = v99;
  v103 = *(v100 + 32);

  v104 = v99;
  v103(sub_24ABA4AD4, v102, v101, v100);

  sub_24ABAC12C();

  v105 = v365;
  swift_beginAccess();
  v106 = v105;
  v107 = v373;
  sub_24AB94828(v106, v373, &unk_27EF95DA0, &unk_24ABAF2B0);

  v108 = v107;
  v109 = v354;
  sub_24AB94828(v108, v354, &unk_27EF95DA0, &unk_24ABAF2B0);
  v110 = *(v383 + 48);
  v383 += 48;
  v365 = v110;
  if ((v110)(v109, 1, v382) == 1)
  {
    sub_24AB7C4A4(v109, &unk_27EF95DA0, &unk_24ABAF2B0);
    v111 = 1;
    v112 = v380;
    v113 = v371;
    v114 = v363;
  }

  else
  {
    v114 = v363;
    sub_24ABA3CE0(v109, v363, type metadata accessor for FIRoot.State);
    sub_24ABA4900(v109, type metadata accessor for IndexingState);
    v111 = 0;
    v112 = v380;
    v113 = v371;
  }

  v115 = v355;
  (*(v355 + 7))(v114, v111, 1, v113);
  v116 = v376;
  v117 = *&v353[v376];
  v118 = *&v352[v376];
  v119 = *&v376[v351];
  v120 = *&v376[v350];
  sub_24AB93DD0(&v376[v337], aBlock);
  sub_24AB93DD0(&v370[v116], v399);
  sub_24AB93DD0(v112, v398);
  v121 = type metadata accessor for FIRoot(0);
  v122 = *(v121 + 48);
  v123 = *(v121 + 52);
  v124 = swift_allocObject();
  *(v124 + 14) = MEMORY[0x277D84F90];
  v125 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A00, &qword_24ABAEB60);
  (*(*(v126 - 8) + 56))(&v124[v125], 1, 1, v126);
  *&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanError] = 0;
  *&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus] = 0;
  v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop] = 0;
  *&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan] = 0;
  v127 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  (*(*(v128 - 8) + 56))(&v124[v127], 1, 1, v128);
  v129 = &v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState];
  *v129 = sub_24AB84F5C;
  v129[1] = 0;
  v130 = &v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning];
  *v130 = nullsub_1;
  *(v130 + 1) = 0;
  *(v124 + 4) = v336;
  v352 = v117;
  *(v124 + 13) = v117;
  v353 = v118;
  *&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_fetchQueue] = v118;
  v354 = v119;
  *&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexQueue] = v119;
  v355 = v120;
  *&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue] = v120;
  sub_24AB93DD0(aBlock, (v124 + 24));
  sub_24AB93DD0(v399, (v124 + 64));
  sub_24AB93DD0(v398, &v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler]);
  type metadata accessor for OSTransaction();
  v131 = swift_allocObject();
  v131[2] = 0;
  v131[3] = 0;
  v131[4] = 0xD000000000000010;
  v131[5] = 0x800000024ABB0270;
  *&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_eventProcessingOSTransaction] = v131;
  v132 = swift_allocObject();
  v132[2] = 0;
  v132[3] = 0;
  v132[4] = 0x676E696E6E616373;
  v132[5] = 0xE800000000000000;
  *&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanOSTransaction] = v132;
  v133 = v356;
  sub_24AB94828(v363, v356, &qword_27EF95B70, &qword_24ABAF540);
  v134 = v371;
  if ((*(v115 + 6))(v133, 1, v371) == 1)
  {
    v135 = v352;
    v136 = v353;
    v137 = v354;
    v138 = v355;
    v370 = v135;
    v139 = v136;
    v140 = v137;
    v141 = v138;
    sub_24AB7C4A4(v133, &qword_27EF95B70, &qword_24ABAF540);
    CurrentEventId = FSEventsGetCurrentEventId();
    v143 = v357;
    sub_24AB82A04(v336, v357 + v134[5]);
    *v143 = CurrentEventId;
    v144 = MEMORY[0x277D84F90];
    *(v143 + v134[6]) = MEMORY[0x277D84F90];
    *(v143 + v134[7]) = v144;
    v145 = v359;
    *v359 = 0;
    v146 = *(v358 + 28);
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E20, &qword_24ABAF400);
    bzero(&v145[v146], *(*(v147 - 8) + 64));
    sub_24ABA3D48(v143, &v145[v146], type metadata accessor for FIRoot.State);

    __swift_destroy_boxed_opaque_existential_0Tm(v398);
    __swift_destroy_boxed_opaque_existential_0Tm(v399);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    sub_24AB7C4A4(v363, &qword_27EF95B70, &qword_24ABAF540);
    memcpy(&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state], v145, v360);
    goto LABEL_32;
  }

  v148 = v133;
  v149 = v362;
  sub_24ABA3D48(v148, v362, type metadata accessor for FIRoot.State);
  v150 = v352;
  v151 = v353;
  v152 = v354;
  v153 = v355;
  v353 = v150;
  v354 = v151;
  v355 = v152;
  *&v356 = v153;
  v154 = v361;
  sub_24AB82A04(v336, v361);
  v155 = v134[5];
  v156 = *(v342 + 48);
  v157 = v346;
  sub_24AB94828(v155 + v149, v346, &unk_27EF95A20, &unk_24ABAF3F0);
  v158 = v154;
  v159 = v157;
  sub_24AB94828(v158, v157 + v156, &unk_27EF95A20, &unk_24ABAF3F0);
  v160 = *(v347 + 48);
  v161 = v157;
  v162 = v343;
  if (v160(v161, 1, v343) == 1)
  {
    v163 = v160(v159 + v156, 1, v162);
    v164 = v344;
    v165 = v357;
    if (v163 == 1)
    {
      sub_24AB7C4A4(v159, &unk_27EF95A20, &unk_24ABAF3F0);
      v166 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v352 = v155;
  v167 = v341;
  sub_24AB94828(v159, v341, &unk_27EF95A20, &unk_24ABAF3F0);
  v168 = v160(v159 + v156, 1, v162);
  v164 = v344;
  if (v168 == 1)
  {
    (*(v347 + 8))(v167, v162);
    v165 = v357;
LABEL_18:
    sub_24AB7C4A4(v159, &unk_27EF95DE8, &qword_24ABAF3E8);
    v169 = v361;
    v166 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v182 = v159;
  v183 = v347;
  v184 = v182 + v156;
  v185 = v339;
  (*(v347 + 32))(v339, v184, v162);
  sub_24ABA3E40(&qword_27EF95E28, MEMORY[0x277CC95F0]);
  v186 = sub_24ABABE7C();
  v187 = *(v183 + 8);
  v187(v185, v162);
  v187(v167, v162);
  sub_24AB7C4A4(v346, &unk_27EF95A20, &unk_24ABAF3F0);
  v169 = v361;
  v165 = v357;
  v166 = MEMORY[0x277D84F90];
  v155 = v352;
  if (v186)
  {
LABEL_26:
    v188 = v371;
    v189 = v371[5];
    v190 = *(v362 + v371[6]);
    *v165 = *v362;
    sub_24AB94828(v155 + v362, v165 + v189, &unk_27EF95A20, &unk_24ABAF3F0);
    *(v165 + v188[6]) = v190;
    *(v165 + v188[7]) = v166;
    v191 = v359;
    *v359 = 0;
    v192 = v165;
    v193 = *(v358 + 28);

    v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E20, &qword_24ABAF400);
    bzero(&v191[v193], *(*(v194 - 8) + 64));
    sub_24ABA3D48(v192, &v191[v193], type metadata accessor for FIRoot.State);
    memcpy(&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state], v191, v360);
    v195 = v188[7];
    v175 = v362;
    v196 = *(v362 + v195);
    v197 = *(v196 + 16);
    if (v197)
    {
      v198 = 0;
      v179 = v338;
      while (v198 < *(v196 + 16))
      {
        sub_24ABA3CE0(v196 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v198, v179, type metadata accessor for RootInfo);
        v199 = v385;
        v200 = sub_24AB85700(v179);
        v385 = v199;
        if (v199)
        {
          goto LABEL_69;
        }

        ++v198;
        sub_24ABA4900(v179, type metadata accessor for RootInfo);
        if (v197 == v198)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_71;
    }

LABEL_31:

    sub_24AB7C4A4(v361, &unk_27EF95A20, &unk_24ABAF3F0);
    __swift_destroy_boxed_opaque_existential_0Tm(v398);
    __swift_destroy_boxed_opaque_existential_0Tm(v399);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    sub_24AB7C4A4(v363, &qword_27EF95B70, &qword_24ABAF540);
    sub_24ABA4900(v175, type metadata accessor for FIRoot.State);
LABEL_32:
    v201 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher;
    v202 = v376;
    *&v376[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher] = v124;
    v203 = [objc_allocWithZone(MEMORY[0x277CC6390]) init];
    *&v202[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appRegistry] = v203;
    sub_24AB93DD0(v374, aBlock);
    sub_24AB93DD0(v377, v399);
    sub_24AB93DD0(v380, v398);
    v204 = *&v202[v201];
    v205 = type metadata accessor for FileIndexerSpotlightDaemonClient();
    v206 = objc_allocWithZone(v205);
    sub_24AB93DD0(aBlock, &v206[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexHandler]);
    sub_24AB93DD0(v399, &v206[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_metadataHandler]);
    sub_24AB93DD0(v398, &v206[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexingStateHandler]);
    *&v206[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_eventWatcher] = v204;
    v207 = &v206[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_resetScanningState];
    *v207 = sub_24ABA485C;
    v207[1] = v204;
    v387.receiver = v206;
    v387.super_class = v205;
    swift_retain_n();
    v208 = objc_msgSendSuper2(&v387, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v398);
    __swift_destroy_boxed_opaque_existential_0Tm(v399);
    __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
    *&v202[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_spotlightDaemonClient] = v208;
    v209 = type metadata accessor for FIDaemon(0);
    v386.receiver = v202;
    v386.super_class = v209;
    v210 = objc_msgSendSuper2(&v386, sel_init);
    v211 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher;
    v212 = *(v210 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
    v213 = swift_allocObject();
    *(v213 + 16) = v210;
    v214 = (v212 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning);
    v215 = *(v212 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning + 8);
    *v214 = sub_24ABA4898;
    v214[1] = v213;
    v216 = v210;

    v361 = v211;
    v362 = v210;
    v217 = *(v210 + v211);
    v218 = swift_allocObject();
    *(v218 + 16) = v216;
    v219 = (v217 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState);
    v220 = *(v217 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState + 8);
    *v219 = sub_24ABA48BC;
    v219[1] = v218;
    v221 = v216;

    v357 = v221;
    sub_24AB9BF78();
    v164 = v373;
    v222 = v348;
    sub_24AB94828(v373, v348, &unk_27EF95DA0, &unk_24ABAF2B0);
    v223 = (v365)(v222, 1, v382);
    v224 = v349;
    if (v223 == 1)
    {
      sub_24AB7C4A4(v222, &unk_27EF95DA0, &unk_24ABAF2B0);
      v124 = v385;
      v175 = v379;
    }

    else
    {
      v225 = sub_24ABA3D48(v222, v349, type metadata accessor for IndexingState);
      v226 = *(v224 + v371[7]);
      MEMORY[0x28223BE20](v225);
      v329[-2] = v372;

      v227 = v226;
      v228 = v385;
      v229 = sub_24AB9FAD0(sub_24ABA4A78, &v329[-4], v227);
      v124 = v228;
      sub_24ABA4900(v224, type metadata accessor for IndexingState);
      v230 = *(v229 + 16);

      v175 = v379;
      if (v230)
      {
LABEL_42:
        if (qword_27EF95308 != -1)
        {
          swift_once();
        }

        v252 = sub_24ABABD8C();
        v370 = __swift_project_value_buffer(v252, qword_27EF95FD8);
        v253 = sub_24ABABD6C();
        v254 = sub_24ABAC0FC();
        if (os_log_type_enabled(v253, v254))
        {
          v255 = swift_slowAlloc();
          *v255 = 0;
          _os_log_impl(&dword_24AB6F000, v253, v254, "Adding existing app roots", v255, 2u);
          MEMORY[0x24C229EC0](v255, -1, -1);
        }

        v355 = OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appRegistry;
        v256 = [*(v357 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appRegistry) listOfMonitoredApps];
        sub_24AB943C0(0, &unk_27EF95DC8, 0x277CC6388);
        v257 = sub_24ABABFFC();

        if (v257 >> 62)
        {
          v259 = sub_24ABAC3DC();
        }

        else
        {
          v259 = *((v257 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v260 = v378;
        if (!v259)
        {
LABEL_68:

          v319 = *&v355[v357];
          v80 = v357;
          [v319 setDelegate_];
          v320 = *(v80 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
          aBlock[4] = nullsub_1;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_24AB9B72C;
          aBlock[3] = &block_descriptor_246;
          v321 = _Block_copy(aBlock);
          v322 = v320;
          xpc_set_event_stream_handler("com.apple.fsevents.matching", v322, v321);
          _Block_release(v321);

          v323 = sub_24ABABE8C();
          v324 = *(v80 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_spotlightDaemonClient);
          SpotlightDaemonClientRegister();
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0Tm(v380);
          __swift_destroy_boxed_opaque_existential_0Tm(v377);
          sub_24AB7C4A4(v164, &unk_27EF95DA0, &unk_24ABAF2B0);
          __swift_destroy_boxed_opaque_existential_0Tm(v374);
          (*(v364 + 8))(v372, v381);

          goto LABEL_7;
        }

        if (v259 < 1)
        {
          __break(1u);
        }

        v261 = 0;
        v366 = v257 & 0xC000000000000001;
        v363 = (v364 + 8);
        *&v258 = 136315650;
        v358 = v258;
        *&v258 = 138412546;
        v356 = v258;
        v367 = v259;
        v368 = v257;
        while (1)
        {
          v263 = v366 ? MEMORY[0x24C229290](v261, v257) : *(v257 + 8 * v261 + 32);
          v264 = v263;
          sub_24AB94828(v164, v175, &unk_27EF95DA0, &unk_24ABAF2B0);
          if ((v365)(v175, 1, v382) == 1)
          {
            break;
          }

          v265 = v164;
          sub_24ABA3D48(v175, v260, type metadata accessor for IndexingState);
          v266 = v124;
          v267 = v260;
          v268 = [v264 documentsURL];
          v269 = v375;
          sub_24ABABBCC();

          v270 = *(v267 + v371[7]);
          MEMORY[0x28223BE20](v271);
          v329[-2] = v269;

          v272 = sub_24AB9FAD0(sub_24ABA48E0, &v329[-4], v270);
          sub_24ABA4900(v267, type metadata accessor for IndexingState);
          v273 = *(v272 + 16);

          (*v363)(v269, v381);
          if (!v273)
          {
            v124 = v266;
            goto LABEL_61;
          }

          v260 = v378;
          v175 = v379;
          v124 = v266;
          v164 = v265;
LABEL_52:
          v261 = (v261 + 1);
          v257 = v368;
          if (v367 == v261)
          {
            goto LABEL_68;
          }
        }

        sub_24AB7C4A4(v175, &unk_27EF95DA0, &unk_24ABAF2B0);
LABEL_61:
        v376 = v261;
        v274 = v264;
        v275 = sub_24ABABD6C();
        v276 = sub_24ABAC0FC();

        v277 = &selRef_contentsAtPath_;
        if (os_log_type_enabled(v275, v276))
        {
          v278 = swift_slowAlloc();
          v360 = swift_slowAlloc();
          aBlock[0] = v360;
          *v278 = v358;
          v279 = [v274 displayName];
          LODWORD(v359) = v276;
          v280 = v279;
          v281 = sub_24ABABEBC();
          v385 = v124;
          v283 = v282;

          v284 = sub_24AB760CC(v281, v283, aBlock);

          *(v278 + 4) = v284;
          *(v278 + 12) = 2080;
          v285 = [v274 bundleID];
          v286 = sub_24ABABEBC();
          v288 = v287;

          v289 = sub_24AB760CC(v286, v288, aBlock);
          v290 = v385;

          *(v278 + 14) = v289;
          *(v278 + 22) = 2080;
          v291 = [v274 documentsURL];
          v292 = v375;
          sub_24ABABBCC();

          v293 = sub_24ABABBEC();
          v295 = v294;
          (*v363)(v292, v381);
          v296 = v293;
          v124 = v290;
          v277 = &selRef_contentsAtPath_;
          v297 = sub_24AB760CC(v296, v295, aBlock);

          *(v278 + 24) = v297;
          _os_log_impl(&dword_24AB6F000, v275, v359, "Start monitoring app %s (%s) at %s", v278, 0x20u);
          v298 = v360;
          swift_arrayDestroy();
          MEMORY[0x24C229EC0](v298, -1, -1);
          MEMORY[0x24C229EC0](v278, -1, -1);
        }

        v299 = v369;
        v300 = [v274 documentsURL];
        sub_24ABABBCC();

        v301 = [v274 v277[29]];
        v302 = sub_24ABABEBC();
        v304 = v303;

        v305 = &v384[*(v299 + 20)];
        *v305 = v302;
        v305[1] = v304;
        v306 = v384;
        v307 = *(v362 + v361);

        v308 = sub_24AB85700(v306);
        v164 = v373;
        if (v124)
        {

          sub_24ABA4900(v306, type metadata accessor for RootInfo);
          v309 = v274;
          v310 = v124;
          v311 = sub_24ABABD6C();
          v312 = sub_24ABAC11C();

          v313 = os_log_type_enabled(v311, v312);
          v261 = v376;
          if (v313)
          {
            v314 = swift_slowAlloc();
            v315 = swift_slowAlloc();
            *v314 = v356;
            *(v314 + 4) = v309;
            *v315 = v309;
            *(v314 + 12) = 2112;
            v316 = v309;
            v317 = v124;
            v318 = _swift_stdlib_bridgeErrorToNSError();
            *(v314 + 14) = v318;
            v315[1] = v318;
            _os_log_impl(&dword_24AB6F000, v311, v312, "Failed to create listener for app %@: %@", v314, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF953F0, &unk_24ABAD6A0);
            swift_arrayDestroy();
            MEMORY[0x24C229EC0](v315, -1, -1);
            MEMORY[0x24C229EC0](v314, -1, -1);
          }

          else
          {
          }

          v124 = 0;
          v260 = v378;
          v175 = v379;
        }

        else
        {
          v262 = v308;
          sub_24AB8701C(v306);

          sub_24ABA4900(v306, type metadata accessor for RootInfo);
          v260 = v378;
          v175 = v379;
          v261 = v376;
        }

        goto LABEL_52;
      }
    }

    if (qword_27EF95308 == -1)
    {
LABEL_36:
      v231 = sub_24ABABD8C();
      __swift_project_value_buffer(v231, qword_27EF95FD8);
      v232 = v357;
      v233 = sub_24ABABD6C();
      v234 = sub_24ABAC0FC();

      v235 = os_log_type_enabled(v233, v234);
      v385 = v232;
      if (v235)
      {
        v236 = swift_slowAlloc();
        v237 = v124;
        v238 = swift_slowAlloc();
        aBlock[0] = v238;
        *v236 = 136315138;
        v239 = sub_24ABABBEC();
        v241 = sub_24AB760CC(v239, v240, aBlock);

        *(v236 + 4) = v241;
        v164 = v373;
        _os_log_impl(&dword_24AB6F000, v233, v234, "Adding local root at %s", v236, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v238);
        v242 = v238;
        v124 = v237;
        v175 = v379;
        MEMORY[0x24C229EC0](v242, -1, -1);
        v243 = v381;
        MEMORY[0x24C229EC0](v236, -1, -1);

        v244 = v345;
        v246 = v361;
        v245 = v362;
      }

      else
      {

        v244 = v345;
        v246 = v361;
        v245 = v362;
        v243 = v381;
      }

      v80 = *(v245 + v246);
      v247 = v372;
      (v329[0])(v244, v372, v243);
      v248 = (v244 + *(v369 + 20));
      *v248 = 0;
      v248[1] = 0;

      v249 = sub_24AB85700(v244);
      v250 = v377;
      if (v124)
      {
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_0Tm(v380);
        __swift_destroy_boxed_opaque_existential_0Tm(v250);
        sub_24ABA4900(v244, type metadata accessor for RootInfo);
        sub_24AB7C4A4(v164, &unk_27EF95DA0, &unk_24ABAF2B0);
        __swift_destroy_boxed_opaque_existential_0Tm(v374);
        (*(v364 + 8))(v247, v243);

        goto LABEL_7;
      }

      v251 = v249;
      sub_24AB8701C(v244);

      sub_24ABA4900(v244, type metadata accessor for RootInfo);
      goto LABEL_42;
    }

LABEL_72:
    swift_once();
    goto LABEL_36;
  }

LABEL_19:
  *v165 = FSEventsGetCurrentEventId();
  v170 = v165;
  v171 = v371;
  sub_24AB94828(v169, v170 + v371[5], &unk_27EF95A20, &unk_24ABAF3F0);
  *(v170 + v171[6]) = v166;
  *(v170 + v171[7]) = v166;
  v172 = v359;
  *v359 = 0;
  v173 = *(v358 + 28);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E20, &qword_24ABAF400);
  bzero(&v172[v173], *(*(v174 - 8) + 64));
  sub_24ABA3D48(v170, &v172[v173], type metadata accessor for FIRoot.State);
  memcpy(&v124[OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state], v172, v360);
  v175 = v362;
  v176 = *(v362 + v171[7]);
  v177 = *(v176 + 16);
  if (!v177)
  {
    goto LABEL_31;
  }

  v178 = 0;
  v179 = v340;
  while (1)
  {
    if (v178 >= *(v176 + 16))
    {
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    sub_24ABA3CE0(v176 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v178, v179, type metadata accessor for RootInfo);
    v180 = v385;
    v181 = sub_24AB85700(v179);
    v385 = v180;
    if (v180)
    {
      break;
    }

    ++v178;
    sub_24AB8701C(v179);
    sub_24ABA4900(v179, type metadata accessor for RootInfo);
    if (v177 == v178)
    {
      goto LABEL_31;
    }
  }

LABEL_69:
  v325 = v380;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v325);
  __swift_destroy_boxed_opaque_existential_0Tm(v377);
  sub_24ABA4900(v179, type metadata accessor for RootInfo);
  sub_24AB7C4A4(v361, &unk_27EF95A20, &unk_24ABAF3F0);
  __swift_destroy_boxed_opaque_existential_0Tm(v398);
  __swift_destroy_boxed_opaque_existential_0Tm(v399);
  __swift_destroy_boxed_opaque_existential_0Tm(aBlock);
  sub_24AB7C4A4(v363, &qword_27EF95B70, &qword_24ABAF540);
  sub_24AB7C4A4(v373, &unk_27EF95DA0, &unk_24ABAF2B0);
  sub_24ABA4900(v175, type metadata accessor for FIRoot.State);

  __swift_destroy_boxed_opaque_existential_0Tm(v374);
  v326 = *(v364 + 8);
  v327 = v381;
  v326(v372, v381);
  v328 = v368[1];

  v72 = v376;
  v326(&v376[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_localRoot], v327);
  v326(&v72[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_appLibrariesRoot], v327);

  v80 = 1;
  v78 = v367;
  v75 = v337;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(&v72[v75]);
  __swift_destroy_boxed_opaque_existential_0Tm(&v370[v72]);
  __swift_destroy_boxed_opaque_existential_0Tm(&v72[v366]);
  v81 = *&v72[v78];
  swift_unknownObjectRelease();
  if (v80)
  {
  }

  type metadata accessor for FIDaemon(0);
  v82 = *((*MEMORY[0x277D85000] & *v72) + 0x30);
  v83 = *((*MEMORY[0x277D85000] & *v72) + 0x34);
  swift_deallocPartialClassInstance();
LABEL_7:
  v84 = *MEMORY[0x277D85DE8];
  return v80;
}

void sub_24AB9A938()
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v0 = sub_24ABABD8C();
  __swift_project_value_buffer(v0, qword_27EF95FD8);
  v1 = sub_24ABABD6C();
  v2 = sub_24ABAC0FC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AB6F000, v1, v2, "Caught SIGTERM, exiting", v3, 2u);
    MEMORY[0x24C229EC0](v3, -1, -1);
  }

  exit(0);
}

uint64_t sub_24AB9AA08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_24AB9AA4C()
{
  sub_24ABABDFC();
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  return sub_24ABAC28C();
}

uint64_t sub_24AB9AB24@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v111 = *MEMORY[0x277D85DE8];
  v2 = sub_24ABABA2C();
  v108 = *(v2 - 8);
  v3 = *(v108 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24ABABC0C();
  v94 = *(v6 - 8);
  v7 = *(v94 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v93 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v93 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = &v93 - v17;
  result = sub_24AB9E08C();
  v100 = v1;
  if (!v1)
  {
    v21 = result;
    v22 = v20;
    v101 = v5;
    v102 = v2;
    v103 = v16;
    v104 = v10;
    v106 = v13;
    v107 = v6;
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_24ABAC2FC();

    v109 = v21;
    v110 = v22;
    MEMORY[0x24C228EB0](0xD000000000000016, 0x800000024ABB0300);
    sub_24ABABB8C();

    v105 = objc_opt_self();
    v23 = [v105 defaultManager];
    v97 = v18;
    sub_24ABABBEC();
    v24 = sub_24ABABE8C();

    v25 = [v23 fileExistsAtPath_];

    if (v25)
    {
      v26 = v94;
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v27 = sub_24ABABD8C();
      __swift_project_value_buffer(v27, qword_27EF95FD8);
      v28 = v103;
      v29 = v97;
      v30 = v107;
      (*(v26 + 16))(v103, v97, v107);
      v31 = sub_24ABABD6C();
      v32 = sub_24ABAC0FC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v109 = v34;
        *v33 = 136315138;
        v35 = sub_24ABABB9C();
        v36 = [v35 fp_shortDescription];

        v37 = sub_24ABABEBC();
        v39 = v38;

        v29 = v97;
        (*(v94 + 8))(v28, v30);
        v40 = sub_24AB760CC(v37, v39, &v109);

        *(v33 + 4) = v40;
        _os_log_impl(&dword_24AB6F000, v31, v32, "Local root at %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x24C229EC0](v34, -1, -1);
        v41 = v33;
        v26 = v94;
        MEMORY[0x24C229EC0](v41, -1, -1);
      }

      else
      {

        (*(v26 + 8))(v28, v30);
      }

      result = (*(v26 + 32))(v93, v29, v30);
    }

    else
    {
      LODWORD(v109) = 104;
      sub_24ABA5504(MEMORY[0x277D84F90]);
      sub_24ABA3E40(&qword_27EF95E30, MEMORY[0x277CC8658]);
      v42 = v101;
      v43 = v102;
      sub_24ABABB3C();
      v44 = sub_24ABABA1C();
      (*(v108 + 8))(v42, v43);
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v101 = sub_24ABABD8C();
      v102 = (v94 + 16);
      v103 = (v94 + 8);
      v108 = 1;
      *&v45 = 134218240;
      v96 = v45;
      *&v45 = 134218754;
      v95 = v45;
      v46 = v106;
      v47 = v107;
      for (i = v97; ; i = v76)
      {
        __swift_project_value_buffer(v101, qword_27EF95FD8);
        v49 = sub_24ABABD6C();
        v50 = sub_24ABAC0FC();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = v96;
          *(v51 + 4) = v108;
          *(v51 + 12) = 2048;
          *(v51 + 14) = 3;
          _os_log_impl(&dword_24AB6F000, v49, v50, "Trying to create local root [%ld/%ld]", v51, 0x16u);
          MEMORY[0x24C229EC0](v51, -1, -1);
        }

        v52 = [v105 defaultManager];
        v53 = sub_24ABABB9C();
        v109 = 0;
        v54 = [v52 createDirectoryAtURL:v53 withIntermediateDirectories:0 attributes:0 error:&v109];

        v55 = v109;
        if (v54)
        {
          break;
        }

        v56 = v109;
        v57 = sub_24ABABB5C();

        swift_willThrow();
        v58 = v104;
        v100 = *v102;
        v100(v104, i, v47);
        v59 = v57;
        v60 = v57;
        v61 = sub_24ABABD6C();
        v62 = sub_24ABAC11C();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v109 = v99;
          *v63 = v95;
          v64 = v108;
          *(v63 + 4) = v108;
          *(v63 + 12) = 2048;
          *(v63 + 14) = 3;
          *(v63 + 22) = 2080;
          v65 = sub_24ABABB9C();
          v66 = [v65 fp_shortDescription];

          v67 = sub_24ABABEBC();
          v69 = v68;

          v70 = *v103;
          (*v103)(v58, v107);
          v71 = sub_24AB760CC(v67, v69, &v109);
          v72 = v107;

          *(v63 + 24) = v71;
          *(v63 + 32) = 2112;
          v73 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 34) = v73;
          v74 = v98;
          *v98 = v73;
          _os_log_impl(&dword_24AB6F000, v61, v62, "[%ld/%ld] Failed to create local root at %s: %@", v63, 0x2Au);
          sub_24AB7C4A4(v74, &unk_27EF953F0, &unk_24ABAD6A0);
          MEMORY[0x24C229EC0](v74, -1, -1);
          v75 = v99;
          __swift_destroy_boxed_opaque_existential_0Tm(v99);
          v76 = v97;
          MEMORY[0x24C229EC0](v75, -1, -1);
          MEMORY[0x24C229EC0](v63, -1, -1);
        }

        else
        {
          v76 = i;

          v70 = *v103;
          v72 = v47;
          (*v103)(v58, v47);
          v64 = v108;
        }

        v46 = v106;
        if (v64 == 3)
        {
          type metadata accessor for FIError(0);
          sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError);
          v88 = swift_allocError();
          v90 = v89;
          v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95E38, &qword_24ABAF408) + 48);
          v100(v90, v76, v72);
          *&v90[v91] = v57;
          swift_storeEnumTagMultiPayload();
          v100 = v88;
          swift_willThrow();
          result = (v70)(v76, v72);
          goto LABEL_23;
        }

        v108 = v64 + 1;
        v44 = v57;
        v47 = v72;
      }

      (*v102)(v46, i, v47);
      v77 = v55;
      v78 = sub_24ABABD6C();
      v79 = sub_24ABAC0FC();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v109 = v106;
        *v80 = 134218498;
        *(v80 + 4) = v108;
        *(v80 + 12) = 2048;
        *(v80 + 14) = 3;
        *(v80 + 22) = 2080;
        v81 = sub_24ABABB9C();
        v82 = [v81 fp_shortDescription];

        v83 = sub_24ABABEBC();
        LODWORD(v108) = v79;
        v85 = v84;

        i = v97;
        (*v103)(v46, v107);
        v86 = sub_24AB760CC(v83, v85, &v109);

        *(v80 + 24) = v86;
        _os_log_impl(&dword_24AB6F000, v78, v108, "[%ld/%ld] Created local root at %s", v80, 0x20u);
        v87 = v106;
        __swift_destroy_boxed_opaque_existential_0Tm(v106);
        MEMORY[0x24C229EC0](v87, -1, -1);
        v47 = v107;
        MEMORY[0x24C229EC0](v80, -1, -1);
      }

      else
      {

        (*v103)(v46, v47);
      }

      result = (*(v94 + 32))(v93, i, v47);
    }
  }

LABEL_23:
  v92 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AB9B6B8@<X0>(stat *a1@<X1>, int *a2@<X8>)
{
  sub_24ABABBEC();
  v4 = sub_24ABABECC();

  v5 = lstat((v4 + 32), a1);

  *a2 = v5;
  return result;
}

uint64_t sub_24AB9B72C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_24AB9B78C()
{
  v1 = sub_24ABABDFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24ABABE1C();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24ABABE2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *&v0[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_24ABABE3C();
  v17 = (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_6;
  }

  v39 = v2;
  v18 = *&v0[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher];
  v19 = MEMORY[0x28223BE20](v17);
  *(&v38 - 2) = v18;
  MEMORY[0x28223BE20](v19);
  *(&v38 - 2) = v18;
  v20 = sub_24ABABD1C();
  v21 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus;
  v22 = *(v18 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
  v23 = MEMORY[0x28223BE20](v20);
  *(&v38 - 2) = v18;
  MEMORY[0x28223BE20](v23);
  *(&v38 - 2) = v18;
  v24 = sub_24ABABD1C();
  if (v22 == 2)
  {
    return 0;
  }

  v25 = MEMORY[0x28223BE20](v24);
  *(&v38 - 2) = v18;
  MEMORY[0x28223BE20](v25);
  *(&v38 - 2) = v18;
  v26 = sub_24ABABD1C();
  v27 = *(v18 + v21);
  v28 = MEMORY[0x28223BE20](v26);
  *(&v38 - 2) = v18;
  MEMORY[0x28223BE20](v28);
  *(&v38 - 2) = v18;
  sub_24ABABD1C();
  if (v27 == 3)
  {
    return 0;
  }

  v30 = [*&v0[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_monitor] delegationQueue];
  v31 = swift_allocObject();
  *(v31 + 16) = v0;
  aBlock[4] = sub_24ABA3F70;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_102;
  v32 = _Block_copy(aBlock);
  v33 = v0;
  sub_24ABABE0C();
  v41 = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v9, v5, v32);
  _Block_release(v32);

  (*(v39 + 8))(v5, v1);
  (*(v40 + 8))(v9, v6);

  if (qword_27EF95308 != -1)
  {
    goto LABEL_10;
  }

LABEL_6:
  v34 = sub_24ABABD8C();
  __swift_project_value_buffer(v34, qword_27EF95FD8);
  v35 = sub_24ABABD6C();
  v36 = sub_24ABAC0FC();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_24AB6F000, v35, v36, "All scans completed", v37, 2u);
    MEMORY[0x24C229EC0](v37, -1, -1);
  }

  return 1;
}

void sub_24AB9BE74(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_monitor) setPlannedRescan_];
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v1 = sub_24ABABD8C();
  __swift_project_value_buffer(v1, qword_27EF95FD8);
  oslog = sub_24ABABD6C();
  v2 = sub_24ABAC10C();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24AB6F000, oslog, v2, "no planned rescans", v3, 2u);
    MEMORY[0x24C229EC0](v3, -1, -1);
  }
}

void sub_24AB9BF78()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = [objc_opt_self() sharedScheduler];
  v4 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingTaskIdentifier);
  v5 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingTaskIdentifier + 8);
  v6 = sub_24ABABE8C();
  v7 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
  v9[4] = sub_24ABA3EC0;
  v9[5] = v2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24AB9D48C;
  v9[3] = &block_descriptor_50;
  v8 = _Block_copy(v9);

  [v3 registerForTaskWithIdentifier:v6 usingQueue:v7 launchHandler:v8];
  _Block_release(v8);
}

uint64_t sub_24AB9C0C8(void *a1, uint64_t a2)
{
  v4 = sub_24ABABDFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24ABABE1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = a2;
    *(v17 + 24) = v16;
    v28 = v8;
    v36 = sub_24ABA3F08;
    v37 = v17;
    v30 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v27 = v4;
    v29 = v5;
    v34 = sub_24AB9AA08;
    v35 = &block_descriptor_59;
    v18 = v10;
    v19 = _Block_copy(&aBlock);

    [a1 setExpirationHandler_];
    _Block_release(v19);
    v26[1] = *&v15[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    *(v20 + 24) = a1;
    v36 = sub_24ABA3F50;
    v37 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_24AB9AA08;
    v35 = &block_descriptor_65;
    v21 = _Block_copy(&aBlock);
    v22 = v15;
    v23 = a1;
    sub_24ABABE0C();
    v31 = MEMORY[0x277D84F90];
    sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
    v25 = v27;
    v24 = v28;
    sub_24ABAC28C();
    MEMORY[0x24C229110](0, v13, v24, v21);
    _Block_release(v21);
    (*(v29 + 8))(v24, v25);
    (*(v18 + 8))(v13, v30);
  }

  return result;
}

uint64_t sub_24AB9C4BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24ABABDFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24ABABE1C();
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v12 = sub_24ABABD8C();
  __swift_project_value_buffer(v12, qword_27EF95FD8);
  v13 = sub_24ABABD6C();
  v14 = sub_24ABAC0FC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24AB6F000, v13, v14, "running DAS task expiration handler", v15, 2u);
    MEMORY[0x24C229EC0](v15, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = *(result + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
    v17 = result;
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = v17;
    aBlock[4] = sub_24ABA3F68;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AB9AA08;
    aBlock[3] = &block_descriptor_80;
    v19 = _Block_copy(aBlock);

    v21 = v17;
    sub_24ABABE0C();
    v24 = MEMORY[0x277D84F90];
    sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
    sub_24ABAC28C();
    MEMORY[0x24C229110](0, v11, v7, v19);
    _Block_release(v19);
    (*(v4 + 8))(v7, v3);
    (*(v23 + 8))(v11, v8);
  }

  return result;
}

void sub_24AB9C878(uint64_t a1, uint64_t a2)
{
  v31[4] = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_24AB9B78C();
    if (v5)
    {
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v6 = sub_24ABABD8C();
      __swift_project_value_buffer(v6, qword_27EF95FD8);
      v7 = sub_24ABABD6C();
      v8 = sub_24ABAC0FC();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_24AB6F000, v7, v8, "DAS task expiration handler, all roots completed", v9, 2u);
        MEMORY[0x24C229EC0](v9, -1, -1);
      }

      [v4 setTaskCompleted];
    }

    else
    {
      v10 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
      v11 = MEMORY[0x28223BE20](v5);
      MEMORY[0x28223BE20](v11);
      v12 = sub_24ABABD1C();
      v13 = *(v10 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus);
      v14 = MEMORY[0x28223BE20](v12);
      MEMORY[0x28223BE20](v14);
      sub_24ABABD1C();
      if (v13 == 2)
      {
        if (qword_27EF95308 != -1)
        {
          swift_once();
        }

        v15 = sub_24ABABD8C();
        __swift_project_value_buffer(v15, qword_27EF95FD8);
        v16 = sub_24ABABD6C();
        v17 = sub_24ABAC0FC();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_24AB6F000, v16, v17, "DAS task expiration handler, stopping scans", v18, 2u);
          MEMORY[0x24C229EC0](v18, -1, -1);
        }

        v20 = MEMORY[0x28223BE20](v19);
        MEMORY[0x28223BE20](v20);
        v21 = sub_24ABABD1C();
        *(v10 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop) = 1;
        v22 = MEMORY[0x28223BE20](v21);
        MEMORY[0x28223BE20](v22);
        sub_24ABABD1C();
      }

      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v23 = sub_24ABABD8C();
      __swift_project_value_buffer(v23, qword_27EF95FD8);
      v24 = sub_24ABABD6C();
      v25 = sub_24ABAC0FC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_24AB6F000, v24, v25, "DAS task expiration handler, setting retry", v26, 2u);
        MEMORY[0x24C229EC0](v26, -1, -1);
      }

      v31[0] = 0;
      if (![v4 setTaskExpiredWithRetryAfter:v31 error:0.0])
      {
        v28 = v31[0];
        v29 = sub_24ABABB5C();

        swift_willThrow();
        goto LABEL_22;
      }

      v27 = v31[0];
    }
  }

LABEL_22:
  v30 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24AB9CE0C(char *a1, void *a2)
{
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v4 = sub_24ABABD8C();
  __swift_project_value_buffer(v4, qword_27EF95FD8);
  v5 = sub_24ABABD6C();
  v6 = sub_24ABAC0FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24AB6F000, v5, v6, "DAS handler starting scan", v7, 2u);
    MEMORY[0x24C229EC0](v7, -1, -1);
  }

  v8 = *&a1[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher];
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = a1;
  v11 = a2;
  sub_24AB89E4C(nullsub_1, 0, sub_24ABA3F58, v9);
}

uint64_t sub_24AB9CF6C(void *a1, char *a2, void *a3)
{
  v6 = sub_24ABABDFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24ABABE1C();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v16 = sub_24ABABD8C();
    __swift_project_value_buffer(v16, qword_27EF95FD8);
    v17 = a1;
    v18 = sub_24ABABD6C();
    v19 = sub_24ABAC11C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v32 = v7;
      v21 = v20;
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_24AB6F000, v18, v19, "DAS handler failed to scan: %@", v21, 0xCu);
      sub_24AB7C4A4(v22, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v22, -1, -1);
      v25 = v21;
      v7 = v32;
      MEMORY[0x24C229EC0](v25, -1, -1);
    }

    else
    {
    }
  }

  v26 = *&a2[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  aBlock[4] = sub_24ABA3F60;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_74;
  v28 = _Block_copy(aBlock);
  v29 = a2;
  v30 = a3;
  sub_24ABABE0C();
  v35 = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v14, v10, v28);
  _Block_release(v28);
  (*(v7 + 8))(v10, v6);
  (*(v33 + 8))(v14, v34);
}

uint64_t sub_24AB9D378(uint64_t a1, void *a2)
{
  result = sub_24AB9B78C();
  if (result)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v4 = sub_24ABABD8C();
    __swift_project_value_buffer(v4, qword_27EF95FD8);
    v5 = sub_24ABABD6C();
    v6 = sub_24ABAC0FC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_24AB6F000, v5, v6, "DAS handler: all roots completed", v7, 2u);
      MEMORY[0x24C229EC0](v7, -1, -1);
    }

    return [a2 setTaskCompleted];
  }

  return result;
}

void sub_24AB9D48C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_24AB9D4F4()
{
  v1 = sub_24ABABDFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24ABABE1C();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v15);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_24ABA3E20;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_0;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_24ABABE0C();
  v16 = MEMORY[0x277D84F90];
  sub_24ABA3E40(&unk_27EF95DB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

void sub_24AB9D7B0(uint64_t a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 sharedScheduler];
  v4 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingTaskIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexingTaskIdentifier + 8);
  v6 = sub_24ABABE8C();
  v7 = [v3 taskRequestForIdentifier_];

  if (v7)
  {

    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v8 = sub_24ABABD8C();
    __swift_project_value_buffer(v8, qword_27EF95FD8);
    oslog = sub_24ABABD6C();
    v9 = sub_24ABAC11C();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24AB6F000, oslog, v9, "Found outstanding request to run scanning task, bailing", v10, 2u);
      MEMORY[0x24C229EC0](v10, -1, -1);
    }

    v11 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v12 = sub_24ABABD8C();
    __swift_project_value_buffer(v12, qword_27EF95FD8);
    v13 = sub_24ABABD6C();
    v14 = sub_24ABAC0FC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24AB6F000, v13, v14, "submitted DAS task request", v15, 2u);
      MEMORY[0x24C229EC0](v15, -1, -1);
    }

    v16 = objc_allocWithZone(MEMORY[0x277CF07C8]);
    v17 = sub_24ABABE8C();
    v18 = [v16 initWithIdentifier_];

    v19 = v18;
    [v19 setPriority_];
    [v19 setScheduleAfter_];
    [v19 setTrySchedulingBefore_];
    [v19 setRequiresProtectionClass_];

    v20 = [v2 sharedScheduler];
    v32[0] = 0;
    LODWORD(v17) = [v20 submitTaskRequest:v19 error:v32];

    if (v17)
    {
      v21 = v32[0];
    }

    else
    {
      v22 = v32[0];
      v23 = sub_24ABABB5C();

      swift_willThrow();
      v24 = v23;
      v25 = sub_24ABABD6C();
      v26 = sub_24ABAC11C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        swift_getErrorValue();
        v29 = sub_24ABAC5CC();
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&dword_24AB6F000, v25, v26, "Failed to submit task request: %@", v27, 0xCu);
        sub_24AB7C4A4(v28, &unk_27EF953F0, &unk_24ABAD6A0);
        MEMORY[0x24C229EC0](v28, -1, -1);
        MEMORY[0x24C229EC0](v27, -1, -1);
      }

      else
      {
      }
    }

    v30 = *MEMORY[0x277D85DE8];
  }
}

id FIDaemon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FIDaemon.init()()
{
  v1 = v0;
  v2 = sub_24ABABC0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  sub_24AB9E08C();
  sub_24ABABB8C();

  (*(v3 + 16))(v7, v9, v2);
  v10 = type metadata accessor for DiskIndexingStateHandler(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_24AB7C7D4(v7);
  v14 = type metadata accessor for CoreSpotlightIndexHandler();
  v15 = swift_allocObject();

  v16 = sub_24ABA294C(0xD000000000000023, 0x800000024ABAF7E0, 0, v13, v15);
  v27[3] = &type metadata for FileHandler;
  v27[4] = &off_285E1BE28;
  v26[3] = v14;
  v26[4] = &off_285E1D688;
  v26[0] = v16;
  v25[3] = v10;
  v25[4] = &off_285E1C278;
  v25[0] = v13;
  v17 = objc_allocWithZone(type metadata accessor for FIDaemon(0));

  v18 = sub_24AB97F9C(v27, v26, v25);
  swift_getObjectType();
  v19 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v20 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  sub_24AB943C0(0, &unk_27EF95C58, 0x277CCA9A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = v18;
  v23 = [ObjCClassFromMetadata defaultCenter];
  if (qword_27EF95310 != -1)
  {
    swift_once();
  }

  [v23 postNotificationName:qword_27EF96060 object:0];

  (*(v3 + 8))(v9, v2);
  return v22;
}

uint64_t sub_24AB9E08C()
{
  if (container_query_create())
  {
    container_query_set_class();
    xpc_string_create("group.com.apple.FileProvider.LocalStorage");
    container_query_set_group_identifiers();
    swift_unknownObjectRelease();
    container_query_set_transient();
    container_query_operation_set_flags();
    v1 = *MEMORY[0x277D85ED0];
    container_query_set_persona_unique_string();
    if (container_query_get_single_result() && container_get_path())
    {
      v2 = container_copy_sandbox_token();
      v3 = sandbox_extension_consume();
      if (v2 && (v0 = v3, v3 < 0))
      {
        type metadata accessor for FIError(0);
        sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError);
        swift_allocError();
        v5 = v4;
        *v4 = MEMORY[0x24C228D50]();
        *(v5 + 1) = v0;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        MEMORY[0x24C229EC0](v2, -1, -1);
      }

      else
      {
        v0 = sub_24ABABF3C();
        if (v2)
        {
          MEMORY[0x24C229EC0](v2, -1, -1);
        }
      }
    }

    else
    {
      container_query_get_last_error();
      v6 = container_error_copy_unlocalized_description();
      if (v6)
      {
        v7 = v6;
        v0 = sub_24ABABF3C();
        v9 = v8;
        free(v7);
      }

      else
      {
        v9 = 0xEF3E726F72726520;
        v0 = 0x6E776F6E6B6E753CLL;
      }

      type metadata accessor for FIError(0);
      sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError);
      swift_allocError();
      *v10 = v0;
      v10[1] = v9;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    container_query_free();
  }

  else
  {
    type metadata accessor for FIError(0);
    sub_24ABA3E40(&qword_27EF95C48, type metadata accessor for FIError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v0;
}

void sub_24AB9E388(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher) + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock(v3);
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v5 = *&v4[*(type metadata accessor for FIRoot.State(0) + 28)];

  os_unfair_lock_unlock(v3);
  *a2 = v5;
}

void sub_24AB9E41C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(a1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher) + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  sub_24AB9E4CC(v8 + *(v9 + 28), a2, a3, a4);
  os_unfair_lock_unlock(v8);
  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_24AB9E4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = type metadata accessor for RootInfo(0);
  v9 = *(v21 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v21);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FIRoot.State(0);
  v14 = *(a1 + *(result + 28));
  v15 = *(v14 + 16);
  if (v15)
  {
    v20[0] = a4;
    v20[1] = v4;
    v16 = 0;
    while (v16 < *(v14 + 16))
    {
      sub_24ABA3CE0(v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v12, type metadata accessor for RootInfo);
      if (sub_24ABABBEC() == a2 && v17 == a3)
      {

LABEL_11:
        a4 = v20[0];
        sub_24ABA3D48(v12, v20[0], type metadata accessor for RootInfo);
        v19 = 0;
        return (*(v9 + 56))(a4, v19, 1, v21);
      }

      v18 = sub_24ABAC58C();

      if (v18)
      {
        goto LABEL_11;
      }

      ++v16;
      result = sub_24ABA4900(v12, type metadata accessor for RootInfo);
      if (v15 == v16)
      {
        v19 = 1;
        a4 = v20[0];
        return (*(v9 + 56))(a4, v19, 1, v21);
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 1;
    return (*(v9 + 56))(a4, v19, 1, v21);
  }

  return result;
}

void sub_24AB9E6CC(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B68, &unk_24ABAEDD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v24 - v11);
  v13 = swift_projectBox();
  sub_24AB94828(a1, v12, &qword_27EF95B68, &unk_24ABAEDD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v15 = sub_24ABABD8C();
    __swift_project_value_buffer(v15, qword_27EF95FD8);
    v16 = v14;
    v17 = sub_24ABABD6C();
    v18 = sub_24ABAC11C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_24AB6F000, v17, v18, "failed to retrieve persisted indexing state: %@", v19, 0xCu);
      sub_24AB7C4A4(v20, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v20, -1, -1);
      MEMORY[0x24C229EC0](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_24ABA3D48(v12, v8, type metadata accessor for IndexingState);
    v23 = type metadata accessor for IndexingState();
    (*(*(v23 - 8) + 56))(v8, 0, 1, v23);
    swift_beginAccess();
    sub_24ABA3DB0(v8, v13);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_24AB9E9B4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v45 = type metadata accessor for FIRoot.State(0);
  v43 = *(v45 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v47 = &v40 - v11;
  v41 = v1;
  v12 = (v1 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = type metadata accessor for IndexingState();
  v46 = *(v16 - 8);
  (*(v46 + 56))(v15, 1, 1, v16);
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v19 = v12[3];
  v18 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v17;
  v21 = *(v18 + 32);

  v22 = v17;
  v23 = v19;
  v24 = v16;
  v21(sub_24ABA3CD8, v20, v23, v18);
  v25 = v47;

  sub_24ABAC12C();

  v26 = v46;
  swift_beginAccess();
  sub_24AB94828(v15, v25, &unk_27EF95DA0, &unk_24ABAF2B0);

  v27 = *(v26 + 48);
  if (v27(v25, 1, v16) != 1)
  {
    return sub_24ABA3D48(v25, v48, type metadata accessor for IndexingState);
  }

  v28 = v48;
  v29 = (*(v41 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher) + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  v31 = v44;
  sub_24ABA3CE0(v29 + *(v30 + 28), v44, type metadata accessor for FIRoot.State);
  os_unfair_lock_unlock(v29);
  v32 = v43;
  v33 = v45;
  (*(v43 + 56))(v31, 0, 1, v45);
  v34 = v42;
  sub_24AB94828(v31, v42, &qword_27EF95B70, &qword_24ABAF540);
  if ((*(v32 + 48))(v34, 1, v33) == 1)
  {
    sub_24AB7C4A4(v34, &qword_27EF95B70, &qword_24ABAF540);
    v35 = v33[5];
    v36 = sub_24ABABD0C();
    (*(*(v36 - 8) + 56))(&v28[v35], 1, 1, v36);
    sub_24AB7C4A4(v31, &qword_27EF95B70, &qword_24ABAF540);
    *v28 = -1;
    v37 = MEMORY[0x277D84F90];
    *&v28[v33[6]] = MEMORY[0x277D84F90];
    *&v28[v33[7]] = v37;
  }

  else
  {
    sub_24AB7C4A4(v31, &qword_27EF95B70, &qword_24ABAF540);
    v39 = v40;
    sub_24ABA3D48(v34, v40, type metadata accessor for FIRoot.State);
    sub_24ABA3D48(v39, v28, type metadata accessor for FIRoot.State);
  }

  result = (v27)(v25, 1, v24);
  if (result != 1)
  {
    return sub_24AB7C4A4(v25, &unk_27EF95DA0, &unk_24ABAF2B0);
  }

  return result;
}

void sub_24AB9EF18(unint64_t a1, unint64_t a2)
{
  v103 = sub_24ABABC0C();
  v4 = *(v103 - 8);
  isa = v4[8].isa;
  MEMORY[0x28223BE20](v103);
  v102 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RootInfo(0);
  v113 = *(v7 - 8);
  v114 = v7;
  v8 = *(v113 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v112 = &v94 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v94 - v15);
  MEMORY[0x28223BE20](v14);
  v117 = &v94 - v17;
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24ABAC3DC())
  {
    v100 = *(a2 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher);
    v19 = (v100 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
    v104 = i;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
    v21 = type metadata accessor for FIRoot.State(0);
    a2 = 0;
    v111 = 0;
    v109 = v20 + *(v21 + 28);
    v107 = a1 & 0xC000000000000001;
    v97 = a1 & 0xFFFFFFFFFFFFFF8;
    v96 = a1 + 32;
    v22 = MEMORY[0x277D84F90];
    v101 = v4 + 1;
    *&v23 = 136315650;
    v95 = v23;
    v24 = &selRef_contentsAtPath_;
    *&v23 = 138412546;
    v94 = v23;
    v105 = a1;
    v106 = v11;
    v98 = v16;
    v108 = v19;
    while (!v107)
    {
      v25 = v109;
      if (a2 >= *(v97 + 16))
      {
        goto LABEL_51;
      }

      v116 = *(v96 + 8 * a2);
      v26 = __OFADD__(a2++, 1);
      if (v26)
      {
        goto LABEL_50;
      }

LABEL_10:
      v110 = a2;
      v119 = v22;
      os_unfair_lock_lock(v19);
      v27 = *(&v19->_os_unfair_lock_opaque + v25);

      sub_24AB950BC(v28);
      os_unfair_lock_unlock(v19);
      v29 = v119;
      v115 = v119[2].isa;
      v4 = v22;
      if (v115)
      {
        for (j = 0; v115 != j; ++j)
        {
          if (j >= v29[2])
          {
            __break(1u);
            goto LABEL_50;
          }

          v11 = ((*(v113 + 80) + 32) & ~*(v113 + 80));
          v31 = *(v113 + 72);
          v16 = v29;
          v32 = v117;
          sub_24ABA3CE0(&v11[v29 + v31 * j], v117, type metadata accessor for RootInfo);
          v33 = (v32 + *(v114 + 20));
          a2 = *v33;
          a1 = v33[1];
          v34 = [v116 v24[29]];
          v35 = sub_24ABABEBC();
          v37 = v36;

          if (a1)
          {
            if (a2 == v35 && a1 == v37)
            {

              v24 = &selRef_contentsAtPath_;
LABEL_24:
              sub_24ABA3D48(v117, v112, type metadata accessor for RootInfo);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v118 = v4;
              v29 = v16;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_24ABA1940(0, v4[2].isa + 1, 1);
                v4 = v118;
              }

              a1 = v4[2].isa;
              v40 = v4[3].isa;
              a2 = a1 + 1;
              if (a1 >= v40 >> 1)
              {
                sub_24ABA1940(v40 > 1, a1 + 1, 1);
                v4 = v118;
              }

              v4[2].isa = a2;
              sub_24ABA3D48(v112, &v11[v4 + a1 * v31], type metadata accessor for RootInfo);
              continue;
            }

            a2 = sub_24ABAC58C();

            v24 = &selRef_contentsAtPath_;
            if (a2)
            {
              goto LABEL_24;
            }
          }

          else
          {

            v24 = &selRef_contentsAtPath_;
          }

          sub_24ABA4900(v117, type metadata accessor for RootInfo);
          v29 = v16;
        }
      }

      if (!v4[2].isa)
      {

        v11 = v106;
        v43 = v116;
LABEL_35:
        if (qword_27EF95308 != -1)
        {
          swift_once();
        }

        v51 = sub_24ABABD8C();
        v52 = __swift_project_value_buffer(v51, qword_27EF95FD8);
        v53 = v43;
        v54 = sub_24ABABD6C();
        v55 = sub_24ABAC0FC();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v116 = v29;
          v57 = v56;
          v99 = swift_slowAlloc();
          v118 = v99;
          *v57 = v95;
          v58 = [v53 displayName];
          v59 = sub_24ABABEBC();
          v115 = v52;
          v60 = v59;
          v62 = v61;

          v63 = sub_24AB760CC(v60, v62, &v118);

          *(v57 + 4) = v63;
          *(v57 + 12) = 2080;
          v64 = [v53 bundleID];
          v65 = sub_24ABABEBC();
          v67 = v66;

          v68 = sub_24AB760CC(v65, v67, &v118);
          v24 = &selRef_contentsAtPath_;

          *(v57 + 14) = v68;
          *(v57 + 22) = 2080;
          v16 = &selRef_contentsAtPath_;
          v69 = [v53 documentsURL];
          v70 = v102;
          sub_24ABABBCC();

          v71 = sub_24ABABBEC();
          v73 = v72;
          (v101->isa)(v70, v103);
          v74 = sub_24AB760CC(v71, v73, &v118);

          *(v57 + 24) = v74;
          _os_log_impl(&dword_24AB6F000, v54, v55, "Start monitoring app %s (%s) at %s", v57, 0x20u);
          v75 = v99;
          swift_arrayDestroy();
          MEMORY[0x24C229EC0](v75, -1, -1);
          MEMORY[0x24C229EC0](v57, -1, -1);
        }

        else
        {

          v16 = &selRef_contentsAtPath_;
        }

        v76 = v111;
        v77 = [v53 documentsURL];
        sub_24ABABBCC();

        v78 = [v53 v24[29]];
        v79 = sub_24ABABEBC();
        v81 = v80;

        v82 = &v11[*(v114 + 20)];
        *v82 = v79;
        v82[1] = v81;
        v4 = v100;
        v83 = sub_24AB85700(v11);
        v84 = v76;
        if (v76)
        {
          sub_24ABA4900(v11, type metadata accessor for RootInfo);
          v85 = v53;
          v86 = v84;
          v4 = sub_24ABABD6C();
          v87 = sub_24ABAC11C();

          if (os_log_type_enabled(v4, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            *v88 = v94;
            *(v88 + 4) = v85;
            *v89 = v85;
            *(v88 + 12) = 2112;
            v90 = v85;
            v91 = v84;
            v92 = _swift_stdlib_bridgeErrorToNSError();
            *(v88 + 14) = v92;
            v89[1] = v92;
            _os_log_impl(&dword_24AB6F000, v4, v87, "Failed to create listener for app %@: %@", v88, 0x16u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF953F0, &unk_24ABAD6A0);
            swift_arrayDestroy();
            MEMORY[0x24C229EC0](v89, -1, -1);
            MEMORY[0x24C229EC0](v88, -1, -1);
          }

          else
          {
          }

          v111 = 0;
        }

        else
        {
          v111 = 0;
          v93 = v83;
          sub_24AB8701C(v11);

          sub_24ABA4900(v11, type metadata accessor for RootInfo);
        }

        a1 = v105;
        v19 = v108;
        goto LABEL_47;
      }

      v16 = v98;
      v41 = sub_24ABA3CE0(v4 + ((*(v113 + 80) + 32) & ~*(v113 + 80)), v98, type metadata accessor for RootInfo);
      v42 = MEMORY[0x28223BE20](v41);
      *(&v94 - 2) = v4;
      MEMORY[0x28223BE20](v42);
      v43 = v116;
      *(&v94 - 2) = v116;
      sub_24ABABD1C();

      v44 = sub_24ABABB9C();
      v45 = [v43 documentsURL];
      v46 = v102;
      sub_24ABABBCC();

      v4 = sub_24ABABB9C();
      (v101->isa)(v46, v103);
      v47 = [v44 fp:v4 relationshipToItemAtURL:?];

      v11 = v106;
      v19 = v108;
      if (v47 != 1)
      {
        os_unfair_lock_lock(v108);
        MEMORY[0x28223BE20](v48);
        *(&v94 - 2) = v16;
        a1 = v109;
        v4 = (v19 + v109);
        a2 = v111;
        v49 = sub_24ABA1D7C(sub_24ABA4A5C, (&v94 - 2));
        v111 = a2;
        v50 = *(*(&v19->_os_unfair_lock_opaque + a1) + 16);
        if (v50 < v49)
        {
          goto LABEL_52;
        }

        sub_24ABA2430(v49, v50);
        os_unfair_lock_unlock(v19);
        sub_24ABA4900(v16, type metadata accessor for RootInfo);
        goto LABEL_35;
      }

      sub_24ABA4900(v16, type metadata accessor for RootInfo);
      a1 = v105;
LABEL_47:
      a2 = v110;
      v22 = MEMORY[0x277D84F90];
      if (v110 == v104)
      {
        return;
      }
    }

    v116 = MEMORY[0x24C229290](a2, a1);
    v25 = v109;
    v26 = __OFADD__(a2++, 1);
    if (!v26)
    {
      goto LABEL_10;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }
}

uint64_t sub_24AB9FAD0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for RootInfo(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v25 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_24ABA3CE0(a3 + v16 + v17 * v14, v13, type metadata accessor for RootInfo);
      v18 = a1(v13);
      if (v3)
      {
        sub_24ABA4900(v13, type metadata accessor for RootInfo);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_24ABA3D48(v13, v25, type metadata accessor for RootInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24ABA1940(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24ABA1940(v20 > 1, v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        result = sub_24ABA3D48(v25, v15 + v16 + v21 * v17, type metadata accessor for RootInfo);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        result = sub_24ABA4900(v13, type metadata accessor for RootInfo);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
LABEL_15:

    return v15;
  }

  return result;
}

unint64_t sub_24AB9FD5C(void *a1)
{
  sub_24ABAC2FC();

  v2 = [a1 bundleID];
  v3 = sub_24ABABEBC();
  v5 = v4;

  MEMORY[0x24C228EB0](v3, v5);

  return 0xD000000000000043;
}

int64_t sub_24AB9FEBC(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v68 = type metadata accessor for RootInfo(0);
  v5 = *(v68 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v68);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v69 = &v62 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v66 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - v13;
  v15 = sub_24ABABE2C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  v22 = sub_24ABABE3C();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_22;
  }

  v23 = MEMORY[0x277D84F90];
  v74 = MEMORY[0x277D84F90];
  v62 = v2;
  v24 = (*(v2 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_eventWatcher) + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock(v24);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v63 = v25 + *(type metadata accessor for FIRoot.State(0) + 28);
  v26 = *(&v24->_os_unfair_lock_opaque + v63);

  sub_24AB950BC(v27);
  v64 = v24;
  os_unfair_lock_unlock(v24);
  v28 = v74;
  v4 = *(v74 + 16);
  v67 = v74;
  if (v4)
  {
    v29 = 0;
    v30 = v68;
    while (v29 < *(v28 + 16))
    {
      v3 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v31 = *(v5 + 72);
      sub_24ABA3CE0(v28 + v3 + v31 * v29, v14, type metadata accessor for RootInfo);
      v32 = &v14[*(v30 + 20)];
      v33 = *(v32 + 1);
      if (v33 && (*v32 == v70 ? (v34 = v33 == v71) : (v34 = 0), v34 || (sub_24ABAC58C() & 1) != 0))
      {
        sub_24ABA3D48(v14, v69, type metadata accessor for RootInfo);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24ABA1940(0, *(v23 + 16) + 1, 1);
          v28 = v67;
          v23 = v72;
        }

        v22 = *(v23 + 16);
        v36 = *(v23 + 24);
        if (v22 >= v36 >> 1)
        {
          sub_24ABA1940(v36 > 1, v22 + 1, 1);
          v28 = v67;
          v23 = v72;
        }

        *(v23 + 16) = v22 + 1;
        sub_24ABA3D48(v69, v23 + v3 + v22 * v31, type metadata accessor for RootInfo);
        v30 = v68;
      }

      else
      {
        sub_24ABA4900(v14, type metadata accessor for RootInfo);
      }

      if (v4 == ++v29)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v30 = v68;
LABEL_19:
  if (!*(v23 + 16))
  {
  }

  v22 = v66;
  v37 = sub_24ABA3CE0(v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v66, type metadata accessor for RootInfo);
  v38 = (v22 + *(v30 + 20));
  v3 = v38[1];
  if (!v3)
  {

LABEL_29:

    return sub_24ABA4900(v22, type metadata accessor for RootInfo);
  }

  v4 = *v38;
  v39 = MEMORY[0x28223BE20](v37);
  *(&v62 - 2) = v23;
  MEMORY[0x28223BE20](v39);
  *(&v62 - 2) = v4;
  *(&v62 - 1) = v3;

  sub_24ABABD1C();

  if (qword_27EF95308 != -1)
  {
    goto LABEL_32;
  }

LABEL_22:
  v40 = sub_24ABABD8C();
  __swift_project_value_buffer(v40, qword_27EF95FD8);
  v41 = v65;
  sub_24ABA3CE0(v22, v65, type metadata accessor for RootInfo);

  v42 = sub_24ABABD6C();
  v43 = sub_24ABAC0FC();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v72 = v45;
    *v44 = 136315394;
    *(v44 + 4) = sub_24AB760CC(v4, v3, &v72);
    *(v44 + 12) = 2080;
    v46 = sub_24ABABBEC();
    v48 = v47;
    sub_24ABA4900(v41, type metadata accessor for RootInfo);
    v49 = sub_24AB760CC(v46, v48, &v72);

    *(v44 + 14) = v49;
    _os_log_impl(&dword_24AB6F000, v42, v43, "Stopped monitoring app %s at %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C229EC0](v45, -1, -1);
    MEMORY[0x24C229EC0](v44, -1, -1);
  }

  else
  {

    sub_24ABA4900(v41, type metadata accessor for RootInfo);
  }

  v52 = v63;
  v51 = v64;
  os_unfair_lock_lock(v64);
  MEMORY[0x28223BE20](v53);
  *(&v62 - 2) = v22;
  result = sub_24ABA1D7C(sub_24ABA3C14, (&v62 - 4));
  v54 = *(*(&v51->_os_unfair_lock_opaque + v52) + 16);
  if (v54 >= result)
  {
    sub_24ABA2430(result, v54);
    os_unfair_lock_unlock(v51);
    v55 = *MEMORY[0x277CC62F8];
    v72 = sub_24ABABEBC();
    v73 = v56;
    MEMORY[0x24C228EB0](46, 0xE100000000000000);
    MEMORY[0x24C228EB0](v4, v3);
    v57 = v72;
    v58 = v73;
    v59 = *(v62 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler + 24);
    v60 = *(v62 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler + 32);
    __swift_project_boxed_opaque_existential_1((v62 + OBJC_IVAR____TtC17FileIndexerDaemon8FIDaemon_indexHandler), v59);
    v61 = swift_allocObject();
    *(v61 + 16) = v4;
    *(v61 + 24) = v3;
    (*(v60 + 24))(v57, v58, sub_24ABA3C6C, v61, v59, v60);

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_24ABA06E4(uint64_t a1, uint64_t a2)
{
  sub_24ABAC2FC();

  MEMORY[0x24C228EB0](a1, a2);
  return 0xD00000000000003ALL;
}

void sub_24ABA0764(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v6 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v7 = sub_24ABABD8C();
    __swift_project_value_buffer(v7, qword_27EF95FD8);
    v8 = a1;

    v9 = sub_24ABABD6C();
    v10 = sub_24ABAC11C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_24AB760CC(a2, a3, &v16);
      *(v11 + 12) = 2112;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      *v12 = v15;
      _os_log_impl(&dword_24AB6F000, v9, v10, "%s | failed to remove items from index: %@", v11, 0x16u);
      sub_24AB7C4A4(v12, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x24C229EC0](v13, -1, -1);
      MEMORY[0x24C229EC0](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24ABA09A4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_24AB9FEBC(v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id sub_24ABA0AC0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void ignoreVFSPermissions(logger:)()
{
  if (setiopolicy_np(7, 0, 1) < 0)
  {
    oslog = sub_24ABABD6C();
    v0 = sub_24ABAC11C();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      *v1 = 67109120;
      *(v1 + 4) = MEMORY[0x24C228D50]();
      _os_log_impl(&dword_24AB6F000, oslog, v0, "failed to set VFS ignore permissions i/o policy: %{darwin.errno}d", v1, 8u);
      MEMORY[0x24C229EC0](v1, -1, -1);
    }
  }
}

uint64_t sub_24ABA0D60()
{
  sub_24ABAC2FC();
  MEMORY[0x24C228EB0](0xD000000000000019, 0x800000024ABB03B0);
  sub_24ABAC3AC();
  return 0;
}

uint64_t sub_24ABA0E10()
{
  sub_24ABAC2FC();
  MEMORY[0x24C228EB0](0xD000000000000019, 0x800000024ABB0390);
  sub_24ABAC3AC();
  return 0;
}

uint64_t sub_24ABA0EA0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24ABA0EEC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24AB94E38;

  return v7();
}

uint64_t sub_24ABA0FD4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_24AB945B8;

  return v8();
}

uint64_t sub_24ABA10BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95BC0, &qword_24ABAEDF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_24AB94828(a3, v25 - v11, &qword_27EF95BC0, &qword_24ABAEDF0);
  v13 = sub_24ABAC09C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_24AB7C4A4(v12, &qword_27EF95BC0, &qword_24ABAEDF0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_24ABAC08C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_24ABAC04C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_24ABABECC() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_24AB7C4A4(a3, &qword_27EF95BC0, &qword_24ABAEDF0);

    return v23;
  }

LABEL_8:
  sub_24AB7C4A4(a3, &qword_27EF95BC0, &qword_24ABAEDF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *sub_24ABA1408(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B20, &unk_24ABAED90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_24ABA1534(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_24ABA1710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95DE0, &qword_24ABAF3E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24ABA182C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_24ABA184C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_24ABA185C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24ABA188C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

char *sub_24ABA18BC(char *a1, int64_t a2, char a3)
{
  result = sub_24ABA1984(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24ABA18DC(size_t a1, int64_t a2, char a3)
{
  result = sub_24ABA1BA0(a1, a2, a3, *v3, &qword_27EF95540, &qword_24ABAD750, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

char *sub_24ABA1920(char *a1, int64_t a2, char a3)
{
  result = sub_24ABA1A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24ABA1940(size_t a1, int64_t a2, char a3)
{
  result = sub_24ABA1BA0(a1, a2, a3, *v3, &unk_27EF95D90, &unk_24ABAF2A0, type metadata accessor for RootInfo);
  *v3 = result;
  return result;
}

char *sub_24ABA1984(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E48, &qword_24ABAF4B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24ABA1A90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B10, &unk_24ABAED80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_24ABA1BA0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_24ABA1D7C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for RootInfo(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = *v2;
  result = sub_24ABA20AC(a1, a2, *v2);
  if (!v3)
  {
    v45 = 0;
    if (v19)
    {
      return *(v17 + 16);
    }

    v40 = v16;
    v41 = a1;
    v37 = v14;
    v38 = v11;
    v36 = v2;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v44;
      }

      v39 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v42;
        v25 = *(v7 + 72);
        v43 = v25 * v20;
        v26 = v40;
        sub_24ABA3CE0(v24 + v25 * v20, v40, type metadata accessor for RootInfo);
        v27 = a2;
        v28 = v45;
        v29 = v41(v26);
        result = sub_24ABA4900(v26, type metadata accessor for RootInfo);
        v45 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          a2 = v27;
          v7 = v39;
          v17 = v23;
        }

        else
        {
          v30 = v44;
          if (v20 == v44)
          {
            a2 = v27;
            v7 = v39;
            v17 = v23;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v32 = v25 * v44;
            result = sub_24ABA3CE0(v24 + v25 * v44, v37, type metadata accessor for RootInfo);
            if (v20 >= v31)
            {
              goto LABEL_28;
            }

            v33 = v43;
            sub_24ABA3CE0(v24 + v43, v38, type metadata accessor for RootInfo);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_24ABA229C(v23);
            }

            a2 = v27;
            v34 = v17 + v42;
            result = sub_24ABA3C74(v38, v17 + v42 + v32);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_29;
            }

            result = sub_24ABA3C74(v37, v34 + v33);
            *v36 = v17;
            v7 = v39;
            v30 = v44;
          }

          v44 = v30 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v44;
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
  }

  return result;
}

uint64_t sub_24ABA20AC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for RootInfo(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_24ABA2198(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_24ABAC3DC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_24ABAC31C();
  *v1 = result;
  return result;
}

uint64_t sub_24ABA2238(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_24ABAC3DC();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_24ABAC31C();
}

unint64_t sub_24ABA22E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for RootInfo(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_24ABA2430(unint64_t result, uint64_t a2)
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

    v4 = sub_24ABA1534(isUniquelyReferenced_nonNull_native, v11, 1, v4, &unk_27EF95D90, &unk_24ABAF2A0, type metadata accessor for RootInfo);
    *v2 = v4;
  }

  result = sub_24ABA22E8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_24ABA2514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for TreeLister(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_24ABAC3DC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_24ABAC3DC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}