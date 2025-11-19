uint64_t sub_25C453530()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0AAB8);
  __swift_project_value_buffer(v0, qword_27FC0AAB8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

void *sub_25C4535A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v19 = *(v11 + 48);
  v20 = *(v11 + 52);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon_needsNetwork) = 0;
  v22 = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredOperationNames) = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers) = MEMORY[0x277D84F98];
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredRequestNames) = v22;
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a8;
  v21[5] = a9;
  v23 = *(a9 + 16);
  v21[6] = v23;
  v21[7] = a1;
  v21[8] = a2;
  v24 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__mode;
  v25 = sub_25C4C7D10();
  (*(*(v25 - 8) + 32))(v21 + v24, a3, v25);
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationNames) = a5;
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__requestNames) = a4;
  *(v21 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) = a10;
  v26 = v23;
  return v21;
}

void sub_25C4536F0()
{
  v1 = v0;
  v55 = sub_25C4C7DB0();
  v57 = *(v55 - 8);
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  v4 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_25C4C7D10();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v10 = sub_25C4C7BD0();
    __swift_project_value_buffer(v10, qword_27FC0AAB8);

    v11 = sub_25C4C7BB0();
    v12 = sub_25C4C8720();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v59 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_25C458990(v1[3], v1[4], &v59);
      _os_log_impl(&dword_25C452000, v11, v12, "Activate: client=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x25F888630](v14, -1, -1);
      MEMORY[0x25F888630](v13, -1, -1);
    }

    (*(v6 + 16))(v9, v1 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__mode, v5);
    v15 = (*(v6 + 88))(v9, v5);
    if (v15 != *MEMORY[0x277D35668])
    {
      if (v15 == *MEMORY[0x277D35660])
      {
        v16 = v1[5];
        v17 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager;
        swift_beginAccess();
        if (*(v16 + v17))
        {

          sub_25C4C58B0();
        }
      }

      else if (v15 != *MEMORY[0x277D35670])
      {
        v18 = *(v6 + 8);
        v6 += 8;
        v18(v9, v5);
      }
    }

    v19 = v1;
    v9 = *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__requestNames);
    v54 = *(v9 + 2);
    if (v54)
    {
      break;
    }

    v4 = v1;
LABEL_21:
    v34 = *(v4 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationNames);
    v56 = *(v34 + 16);
    if (!v56)
    {
LABEL_30:
      v45 = v4[8];
      if (v45)
      {
        v46 = v4[7];
        v47 = v4[5];
        v48 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
        swift_beginAccess();
        v49 = *(v47 + v48);
        if (v49)
        {
          v50 = v49;
          sub_25C490F34(v46, v45, v4);
        }
      }

      return;
    }

    v6 = 0;
    v1 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredOperationNames;
    v5 = (v34 + 40);
    v55 = v34;
    while (v6 < *(v34 + 16))
    {
      v36 = *(v5 - 1);
      v35 = *v5;
      v37 = v4[4];
      v58 = v4[5];
      v38 = v4[3];
      v39 = swift_allocObject();
      swift_weakInit();

      v57 = v36;
      v40 = v60;
      sub_25C487570(v36, v35, v38, v37, sub_25C458974, v39);
      if (v40)
      {
        goto LABEL_35;
      }

      v60 = 0;

      swift_beginAccess();
      v41 = *(v1 + v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v4) = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_25C458868(0, *(v41 + 2) + 1, 1, v41);
        *(v1 + v4) = v41;
      }

      v9 = *(v41 + 2);
      v43 = *(v41 + 3);
      if (v9 >= v43 >> 1)
      {
        v41 = sub_25C458868((v43 > 1), (v9 + 1), 1, v41);
      }

      ++v6;
      *(v41 + 2) = v9 + 1;
      v44 = &v41[16 * v9];
      *(v44 + 4) = v57;
      *(v44 + 5) = v35;
      *(v1 + v4) = v41;
      swift_endAccess();
      v5 += 2;
      v34 = v55;
      if (v56 == v6)
      {
        goto LABEL_30;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v1 = 0;
  v58 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredRequestNames;
  v52 = v4;
  v53 = (v57 + 8);
  v5 = (v9 + 40);
  v4 = v19;
  v51 = v9;
  while (1)
  {
    if (v1 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_37;
    }

    v20 = *(v5 - 1);
    v21 = *v5;
    v22 = v4[5];
    v56 = v4[4];
    v57 = v22;
    v23 = v4[3];
    v24 = swift_allocObject();
    swift_weakInit();

    v25 = v4;
    v26 = v52;
    sub_25C488944();
    v27 = v20;
    v28 = v60;
    sub_25C488948(v20, v21, v26, v23, v56, sub_25C453E74, v24);
    if (v28)
    {
      break;
    }

    v60 = 0;
    (*v53)(v26, v55);

    v29 = v58;
    swift_beginAccess();
    v30 = *(v25 + v29);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + v29) = v30;
    v4 = v25;
    if ((v31 & 1) == 0)
    {
      v30 = sub_25C458868(0, *(v30 + 2) + 1, 1, v30);
      *(v25 + v58) = v30;
    }

    v9 = v51;
    v6 = *(v30 + 2);
    v32 = *(v30 + 3);
    if (v6 >= v32 >> 1)
    {
      v30 = sub_25C458868((v32 > 1), v6 + 1, 1, v30);
    }

    v1 = (v1 + 1);
    *(v30 + 2) = v6 + 1;
    v33 = &v30[16 * v6];
    *(v33 + 4) = v27;
    *(v33 + 5) = v21;
    *(v4 + v58) = v30;
    swift_endAccess();
    v5 += 2;
    if (v54 == v1)
    {
      goto LABEL_21;
    }
  }

  (*v53)(v26, v55);
LABEL_35:
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25C453E3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C453E74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_25C453FB8(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    sub_25C4C88F0();

    MEMORY[0x25F887A50](a1, a2);
    v14 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    return swift_willThrow();
  }
}

uint64_t sub_25C453FB8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a5;
  v77 = a1;
  v12 = sub_25C4C7D60();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25C4C80B0();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v65 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v19 = sub_25C4C7BD0();
  __swift_project_value_buffer(v19, qword_27FC0AAB8);

  sub_25C459FB0(a3, a4);
  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C86F0();

  v22 = os_log_type_enabled(v20, v21);
  v61 = a7;
  v60 = a6;
  v71 = a2;
  v66 = a3;
  v67 = a4;
  if (v22)
  {
    v23 = a3;
    v75 = v16;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315394;
    result = sub_25C458990(v77, a2, aBlock);
    *(v24 + 4) = result;
    *(v24 + 12) = 2048;
    v27 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v27 != 2)
      {
        v28 = 0;
        goto LABEL_15;
      }

      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      v31 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (!v31)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v27)
    {
      v28 = BYTE6(a4);
LABEL_15:
      *(v24 + 14) = v28;
      sub_25C45A004(v23, a4);
      _os_log_impl(&dword_25C452000, v20, v21, "Report request: name=%s, size=%ld", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x25F888630](v25, -1, -1);
      MEMORY[0x25F888630](v24, -1, -1);

      v16 = v75;
      goto LABEL_16;
    }

    LODWORD(v28) = HIDWORD(v23) - v23;
    if (__OFSUB__(HIDWORD(v23), v23))
    {
      __break(1u);
      return result;
    }

    v28 = v28;
    goto LABEL_15;
  }

  sub_25C45A004(a3, a4);

LABEL_16:
  empty = xpc_dictionary_create_empty();
  v32 = *MEMORY[0x277D35858];
  v64 = v16[13];
  v33 = v65;
  v64(v65, v32, v15);
  v63 = sub_25C4C80A0();
  v75 = v16[1];
  (v75)(v33, v15);
  v34 = v68;
  v35 = v69;
  v36 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x277D356F8], v70);
  v62 = sub_25C4C7D50();
  (*(v35 + 8))(v34, v36);
  v37 = v64;
  v38 = sub_25C4C8570();
  v39 = empty;

  v40 = sub_25C4C8570();

  xpc_dictionary_set_string(v39, (v38 + 32), (v40 + 32));

  v37(v33, *MEMORY[0x277D35850], v15);
  sub_25C4C80A0();
  v41 = v75;
  (v75)(v33, v15);
  v42 = sub_25C4C8570();

  v43 = sub_25C4C8570();
  xpc_dictionary_set_string(v39, (v42 + 32), (v43 + 32));

  v37(v33, *MEMORY[0x277D35848], v15);
  sub_25C4C80A0();
  v41(v33, v15);
  v44 = sub_25C4C7AC0();
  v45 = sub_25C4C8570();

  xpc_dictionary_set_value(v39, (v45 + 32), v44);
  swift_unknownObjectRelease();

  v46 = v73;
  v47 = sub_25C4C7DF0();
  if (!v46)
  {
    v49 = v47;
    v50 = v48;
    v51 = sub_25C4C7AC0();
    sub_25C45A004(v49, v50);
    v37(v33, *MEMORY[0x277D35890], v15);
    sub_25C4C80A0();
    (v75)(v33, v15);
    v52 = sub_25C4C8570();
    swift_unknownObjectRetain();

    v53 = empty;
    xpc_dictionary_set_value(empty, (v52 + 32), v51);
    swift_unknownObjectRelease();

    v54 = *(*(v59 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88);
    v55 = *(v59 + 48);
    v56 = swift_allocObject();
    v57 = v61;
    *(v56 + 16) = v60;
    *(v56 + 24) = v57;
    aBlock[4] = sub_25C45A5B0;
    aBlock[5] = v56;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C456294;
    aBlock[3] = &block_descriptor_36;
    v58 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    xpc_connection_send_message_with_reply(v54, v53, v55, v58);
    _Block_release(v58);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_25C4546B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v7 + 16))(v10, a3, v6);
    v11 = type metadata accessor for NXServerDaemonOperationHandler(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_25C459DDC(a1, a2, v10);

    sub_25C459F68(&qword_27FC0A168, type metadata accessor for NXServerDaemonOperationHandler);
  }

  else
  {
    v14 = objc_allocWithZone(sub_25C4C7B80());
    sub_25C4C7B90();
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_25C454880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  swift_allocObject();
  v9 = sub_25C459DDC(a1, a2, a3);

  return v9;
}

void sub_25C4548F4()
{
  v1 = v0;
  v122 = sub_25C4C7D00();
  v2 = *(v122 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v122);
  v121 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_25C4C7E50();
  v5 = *(v120 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v120);
  v119 = (&v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = sub_25C4C7B20();
  v107 = *(v108 - 1);
  v8 = *(v107 + 64);
  v9 = MEMORY[0x28223BE20](v108);
  v124 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v129 = &v102 - v12;
  MEMORY[0x28223BE20](v11);
  v105 = &v102 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A150, &qword_25C4C9810);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v125 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v123 = &v102 - v18;
  v19 = sub_25C4C7D10();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v24 = sub_25C4C7BD0();
  v25 = __swift_project_value_buffer(v24, qword_27FC0AAB8);

  v118 = v25;
  v26 = sub_25C4C7BB0();
  v27 = sub_25C4C8720();

  v28 = os_log_type_enabled(v26, v27);
  v126 = v1;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v131 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_25C458990(v126[3], v126[4], &v131);
    _os_log_impl(&dword_25C452000, v26, v27, "Invalidate: client=%s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x25F888630](v30, -1, -1);
    v1 = v126;
    MEMORY[0x25F888630](v29, -1, -1);
  }

  (*(v20 + 16))(v23, v1 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__mode, v19);
  v31 = (*(v20 + 88))(v23, v19);
  if (v31 != *MEMORY[0x277D35668])
  {
    if (v31 == *MEMORY[0x277D35660])
    {
      v32 = v1[5];
      v33 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_networkManager;
      swift_beginAccess();
      if (*(v32 + v33))
      {

        sub_25C4C5AE4();
      }
    }

    else if (v31 != *MEMORY[0x277D35670])
    {
      (*(v20 + 8))(v23, v19);
    }
  }

  v34 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredRequestNames;
  swift_beginAccess();
  v35 = *(*(v1 + v34) + 16);
  if (v35)
  {
    v128 = v5;
    v36 = v2;
    v38 = v1[4];
    v37 = v1[5];
    v23 = v1[3];
    v39 = ( + 40);
    do
    {
      v41 = *(v39 - 1);
      v40 = *v39;

      sub_25C488F90(v41, v40, v23, v38);

      v39 += 2;
      --v35;
    }

    while (v35);

    v1 = v126;
    v42 = *(v126 + v34);
    v2 = v36;
    v5 = v128;
  }

  *(v1 + v34) = MEMORY[0x277D84F90];

  v43 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers;
  swift_beginAccess();
  v44 = *(v1 + v43);
  v45 = v44 + 64;
  v46 = 1 << *(v44 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v19 = v47 & *(v44 + 64);
  v116 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection;
  v103 = (v46 + 63) >> 6;
  v127 = (v107 + 32);
  v128 = (v107 + 16);
  v115 = (v107 + 8);
  v114 = *MEMORY[0x277D35650];
  v113 = (v2 + 104);
  v112 = "Needs NAN scanner stop";
  v111 = *MEMORY[0x277D35788];
  v110 = (v5 + 13);
  v109 = (v5 + 1);
  v106 = v44;

  v2 = 0;
  v1 = &qword_25C4C9818;
  *&v48 = 136315138;
  v104 = v48;
  v5 = v108;
  v117 = v45;
  while (1)
  {
    v56 = v125;
    if (!v19)
    {
      if (v103 <= v2 + 1)
      {
        v58 = v2 + 1;
      }

      else
      {
        v58 = v103;
      }

      v20 = v58 - 1;
      while (1)
      {
        v57 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v57 >= v103)
        {
          v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A158, &qword_25C4C9818);
          (*(*(v84 - 8) + 56))(v56, 1, 1, v84);
          v19 = 0;
          v2 = v20;
          goto LABEL_30;
        }

        v19 = *(v45 + 8 * v57);
        ++v2;
        if (v19)
        {
          v2 = v57;
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    v57 = v2;
LABEL_29:
    v59 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v60 = v59 | (v57 << 6);
    v61 = v106;
    v62 = v107;
    v63 = v105;
    (*(v107 + 16))(v105, *(v106 + 48) + *(v107 + 72) * v60, v5);
    v64 = *(*(v61 + 56) + 8 * v60);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A158, &qword_25C4C9818);
    v66 = *(v65 + 48);
    (*(v62 + 32))(v56, v63, v5);
    *(v56 + v66) = v64;
    (*(*(v65 - 8) + 56))(v56, 0, 1, v65);

LABEL_30:
    v67 = v123;
    sub_25C459EF8(v56, v123);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A158, &qword_25C4C9818);
    v69 = (*(*(v68 - 8) + 48))(v67, 1, v68);
    v70 = v124;
    if (v69 == 1)
    {
      break;
    }

    v71 = *(v67 + *(v68 + 48));

    v72 = v129;
    (*v127)(v129, v67, v5);
    (*v128)(v70, v72, v5);
    v73 = sub_25C4C7BB0();
    v74 = sub_25C4C86F0();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v130 = v108;
      *v75 = v104;
      sub_25C459F68(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
      v76 = sub_25C4C89A0();
      v77 = v70;
      v50 = v5;
      v79 = v78;
      v80 = *v115;
      (*v115)(v77, v50);
      v81 = sub_25C458990(v76, v79, &v130);

      *(v75 + 4) = v81;
      _os_log_impl(&dword_25C452000, v73, v74, "Operation server invalidate: uuid=%s", v75, 0xCu);
      v82 = v108;
      __swift_destroy_boxed_opaque_existential_0(v108);
      MEMORY[0x25F888630](v82, -1, -1);
      v83 = v75;
      v49 = v80;
      v51 = v126;
      MEMORY[0x25F888630](v83, -1, -1);
    }

    else
    {

      v49 = *v115;
      (*v115)(v70, v5);
      v50 = v5;
      v51 = v126;
    }

    v52 = *(v51 + v116);
    sub_25C4C80C0();
    (*v113)(v121, v114, v122);
    v53 = sub_25C4C80E0();
    v54 = v119;
    *v119 = v53;
    v23 = v120;
    (*v110)(v54, v111, v120);
    v55 = v129;
    sub_25C475F88(v54, v129);
    (*v109)(v54, v23);
    v49(v55, v50);
    v5 = v50;
    v45 = v117;
    v1 = &qword_25C4C9818;
  }

  v85 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredOperationNames;
  v86 = v126;
  swift_beginAccess();
  v87 = *(v86 + v85);
  v88 = *(v87 + 16);
  if (v88)
  {
    v89 = v86[5];
    v90 = *(v86 + v85);

    v91 = (v87 + 40);
    do
    {
      v92 = *(v91 - 1);
      v93 = *v91;

      sub_25C487BCC(v92, v93);

      v91 += 2;
      --v88;
    }

    while (v88);

    v86 = v126;
    v94 = *(v126 + v85);
  }

  *(v86 + v85) = MEMORY[0x277D84F90];

  v95 = v86[8];
  if (v95)
  {
    v96 = v86[7];
    v97 = v86[5];
    v98 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
    swift_beginAccess();
    v99 = *(v97 + v98);
    v100 = v126;
    if (v99)
    {
      v101 = v99;
      sub_25C491524(v96, v95, v100);
    }
  }
}

uint64_t sub_25C45558C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25C4C7D60();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v4);
  v80 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25C4C80B0();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v84 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v83 = v72 - v11;
  v12 = sub_25C4C7D10();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v87 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C4C7D80();
  v89 = *(v16 - 8);
  v17 = v89[8];
  v18 = MEMORY[0x28223BE20](v16);
  v78 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v72 - v20;
  v22 = sub_25C4C84C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v2 + 48);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x277D85200], v22);
  v28 = v27;
  LOBYTE(v27) = sub_25C4C84E0();
  (*(v23 + 8))(v26, v22);
  if (v27)
  {
    if (qword_27FC0AAB0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v29 = sub_25C4C7BD0();
  v30 = __swift_project_value_buffer(v29, qword_27FC0AAB8);
  v31 = v89;
  v32 = v89[2];
  v79 = a1;
  v75 = v89 + 2;
  v74 = v32;
  v32(v21, a1, v16);

  v76 = v30;
  v33 = sub_25C4C7BB0();
  v34 = sub_25C4C8720();

  v35 = os_log_type_enabled(v33, v34);
  v36 = 0x27FC0A000uLL;
  v88 = v2;
  v77 = v16;
  if (v35)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v90[0] = v38;
    *v37 = 136315394;
    sub_25C459F68(&qword_27FC0A4D0, MEMORY[0x277D35678]);
    v39 = sub_25C4C89A0();
    v41 = sub_25C458990(v39, v40, v90);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    sub_25C459F68(&qword_27FC0A160, MEMORY[0x277D35758]);
    v42 = sub_25C4C89A0();
    v44 = v43;
    v73 = v89[1];
    v73(v21, v16);
    v45 = sub_25C458990(v42, v44, v90);
    v36 = 0x27FC0A000;

    *(v37 + 14) = v45;
    _os_log_impl(&dword_25C452000, v33, v34, "Server event: mode=%s, event=%s", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v38, -1, -1);
    v46 = v37;
    v2 = v88;
    MEMORY[0x25F888630](v46, -1, -1);
  }

  else
  {

    v73 = v31[1];
    v73(v21, v16);
  }

  v47 = v87;
  (*(v13 + 16))(v87, v2 + *(v36 + 2784), v12);
  v48 = (*(v13 + 88))(v47, v12);
  v49 = *MEMORY[0x277D35670];
  result = (*(v13 + 8))(v47, v12);
  if (v48 == v49)
  {
    v72[0] = xpc_dictionary_create_empty();
    v51 = *MEMORY[0x277D35858];
    v52 = v85;
    v53 = *(v85 + 104);
    v72[1] = (v85 + 104);
    v87 = v53;
    v54 = v83;
    v55 = v86;
    (v53)(v83, v51, v86);
    sub_25C4C80A0();
    v85 = *(v52 + 8);
    (v85)(v54, v55);
    v56 = v80;
    v57 = v81;
    v58 = v82;
    (*(v81 + 104))(v80, *MEMORY[0x277D356D8], v82);
    sub_25C4C7D50();
    (*(v57 + 8))(v56, v58);
    v59 = v88;
    v60 = sub_25C4C8570();

    v61 = sub_25C4C8570();

    v62 = v72[0];
    xpc_dictionary_set_string(v72[0], (v60 + 32), (v61 + 32));

    v63 = v87;
    (v87)(v54, *MEMORY[0x277D358C8], v55);
    sub_25C4C80A0();
    v64 = v54;
    v65 = v62;
    v66 = v85;
    (v85)(v64, v55);
    v67 = *(v59 + 16);
    v68 = sub_25C4C8570();

    xpc_dictionary_set_uint64(v65, (v68 + 32), v67);

    v69 = v84;
    (v63)(v84, *MEMORY[0x277D358C0], v55);
    sub_25C4C80A0();
    v66(v69, v55);
    v70 = sub_25C4C7D70();
    v71 = sub_25C4C8570();

    xpc_dictionary_set_value(v65, (v71 + 32), v70);
    swift_unknownObjectRelease();

    xpc_connection_send_message(*(*(v59 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88), v65);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_25C456040(uint64_t a1, void (*a2)(id, unint64_t, uint64_t))
{
  v3 = sub_25C4C80B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = CUXPCDecodeNSErrorIfNeeded();
  if (v8)
  {
    v9 = v8;
    v17 = v8;
    a2(v9, 0, 1);

    v10 = v17;
  }

  else
  {
    swift_getObjectType();
    (*(v4 + 104))(v7, *MEMORY[0x277D35878], v3);
    sub_25C4C80A0();
    (*(v4 + 8))(v7, v3);
    v11 = sub_25C4C86A0();
    v13 = v12;

    if (v13 >> 60 == 15)
    {
      v14 = objc_allocWithZone(sub_25C4C7B80());
      v15 = sub_25C4C7B90();
      a2(v15, 0, 1);
    }

    else
    {
      sub_25C459FB0(v11, v13);
      a2(v11, v13, 0);
      sub_25C45A5B8(v11, v13);
      sub_25C45A5B8(v11, v13);
    }
  }
}

uint64_t sub_25C456294(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_25C4562F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v75 = a6;
  v76 = a7;
  v77 = a1;
  v11 = sub_25C4C7D60();
  v69 = *(v11 - 8);
  v70 = v11;
  v12 = *(v69 + 64);
  MEMORY[0x28223BE20]();
  v68 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_25C4C80B0();
  v14 = *(v72 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_25C4C7B20();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20]();
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v23 = sub_25C4C7BD0();
  __swift_project_value_buffer(v23, qword_27FC0AAB8);
  v24 = *(v19 + 16);
  v73 = a3;
  v24(v22, a3, v18);
  sub_25C459FB0(a4, a5);
  sub_25C459FB0(a4, a5);

  v25 = a2;
  v26 = sub_25C4C7BB0();
  v27 = sub_25C4C86F0();

  v28 = os_log_type_enabled(v26, v27);
  v78 = a4;
  v71 = v25;
  v67 = a5;
  if (!v28)
  {
    sub_25C45A004(a4, a5);
    sub_25C45A004(a4, a5);

    (*(v19 + 8))(v22, v18);
LABEL_16:
    empty = xpc_dictionary_create_empty();
    v42 = *MEMORY[0x277D35858];
    v66 = *(v14 + 104);
    v43 = v14;
    v44 = v72;
    v66(v17, v42, v72);
    sub_25C4C80A0();
    v45 = *(v43 + 8);
    v79 = v43 + 8;
    v65 = v45;
    v45(v17, v44);
    v46 = v68;
    v47 = v69;
    v48 = v70;
    (*(v69 + 104))(v68, *MEMORY[0x277D35718], v70);
    sub_25C4C7D50();
    (*(v47 + 8))(v46, v48);
    v49 = sub_25C4C8570();

    v50 = sub_25C4C8570();

    v51 = empty;
    xpc_dictionary_set_string(empty, (v49 + 32), (v50 + 32));

    v52 = v66;
    v66(v17, *MEMORY[0x277D35880], v44);
    sub_25C4C80A0();
    v53 = v65;
    v65(v17, v44);
    v54 = sub_25C4C8570();

    v55 = sub_25C4C8570();
    xpc_dictionary_set_string(v51, (v54 + 32), (v55 + 32));

    swift_getObjectType();
    v52(v17, *MEMORY[0x277D35888], v44);
    sub_25C4C80A0();
    v53(v17, v44);
    sub_25C4C86E0();

    v52(v17, *MEMORY[0x277D358A8], v44);
    sub_25C4C80A0();
    v53(v17, v44);
    v56 = sub_25C4C7AC0();
    v57 = sub_25C4C8570();

    xpc_dictionary_set_value(v51, (v57 + 32), v56);
    swift_unknownObjectRelease();

    v58 = *(*(v74 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88);
    v59 = *(v74 + 48);
    v60 = swift_allocObject();
    v61 = v76;
    *(v60 + 16) = v75;
    *(v60 + 24) = v61;
    aBlock[4] = sub_25C45A058;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C456294;
    aBlock[3] = &block_descriptor;
    v62 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    xpc_connection_send_message_with_reply(v58, v51, v59, v62);
    _Block_release(v62);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v79 = v14;
  v29 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  aBlock[0] = v66;
  *v29 = 136315650;
  *(v29 + 4) = sub_25C458990(v77, v25, aBlock);
  *(v29 + 12) = 2080;
  sub_25C459F68(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
  v30 = sub_25C4C89A0();
  v31 = a5;
  v33 = v32;
  (*(v19 + 8))(v22, v18);
  v34 = sub_25C458990(v30, v33, aBlock);

  *(v29 + 14) = v34;
  *(v29 + 22) = 2048;
  v35 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    v36 = v78;
    if (v35 != 2)
    {
      sub_25C45A004(v78, v31);
      v37 = 0;
      goto LABEL_15;
    }

    v39 = *(v78 + 16);
    v38 = *(v78 + 24);
    sub_25C45A004(v78, v31);
    v37 = v38 - v39;
    if (!__OFSUB__(v38, v39))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v36 = v78;
    if (!v35)
    {
      sub_25C45A004(v78, v31);
      v37 = BYTE6(v31);
LABEL_15:
      *(v29 + 24) = v37;
      sub_25C45A004(v36, v31);
      _os_log_impl(&dword_25C452000, v26, v27, "Report operation start: name=%s, uuid=%s, size=%ld", v29, 0x20u);
      v41 = v66;
      swift_arrayDestroy();
      MEMORY[0x25F888630](v41, -1, -1);
      MEMORY[0x25F888630](v29, -1, -1);

      v14 = v79;
      goto LABEL_16;
    }
  }

  result = sub_25C45A004(v36, v31);
  LODWORD(v37) = HIDWORD(v36) - v36;
  if (!__OFSUB__(HIDWORD(v36), v36))
  {
    v37 = v37;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_25C456B2C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v70 = a4;
  v71 = a5;
  v8 = sub_25C4C7D60();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20]();
  v65 = &empty - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25C4C80B0();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20]();
  v15 = &empty - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25C4C7B20();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20]();
  v20 = &empty - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v21 = sub_25C4C7BD0();
  __swift_project_value_buffer(v21, qword_27FC0AAB8);
  v22 = *(v17 + 16);
  v68 = a1;
  v22(v20, a1, v16);
  sub_25C459FB0(a2, a3);
  sub_25C459FB0(a2, a3);
  v23 = sub_25C4C7BB0();
  v24 = sub_25C4C86F0();
  v25 = os_log_type_enabled(v23, v24);
  v72 = a2;
  v64 = a3;
  if (!v25)
  {
    v35 = v15;
    v37 = v11;
    sub_25C45A004(a2, a3);
    sub_25C45A004(a2, a3);

    (*(v17 + 8))(v20, v16);
LABEL_15:
    empty = xpc_dictionary_create_empty();
    v42 = *MEMORY[0x277D35858];
    v43 = v12[13];
    v62 = v12 + 13;
    v63 = v43;
    v44 = v35;
    v43(v35, v42, v37);
    sub_25C4C80A0();
    v61 = v12[1];
    v61(v35, v37);
    v45 = v65;
    v46 = v66;
    v47 = v67;
    (*(v66 + 104))(v65, *MEMORY[0x277D35728], v67);
    sub_25C4C7D50();
    (*(v46 + 8))(v45, v47);
    v48 = sub_25C4C8570();

    v49 = sub_25C4C8570();

    v50 = empty;
    xpc_dictionary_set_string(empty, (v48 + 32), (v49 + 32));

    swift_getObjectType();
    v51 = v63;
    v63(v44, *MEMORY[0x277D35888], v37);
    sub_25C4C80A0();
    v52 = v61;
    v61(v44, v37);
    sub_25C4C86E0();

    v51(v44, *MEMORY[0x277D358A8], v37);
    sub_25C4C80A0();
    (v52)(v44, v37);
    v53 = sub_25C4C7AC0();
    v54 = sub_25C4C8570();

    xpc_dictionary_set_value(v50, (v54 + 32), v53);
    swift_unknownObjectRelease();

    v55 = *(*(v69 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88);
    v56 = *(v69 + 48);
    v57 = swift_allocObject();
    v58 = v71;
    *(v57 + 16) = v70;
    *(v57 + 24) = v58;
    aBlock[4] = sub_25C45A65C;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C456294;
    aBlock[3] = &block_descriptor_10;
    v59 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    xpc_connection_send_message_with_reply(v55, v50, v56, v59);
    _Block_release(v59);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  LODWORD(v62) = v24;
  v63 = v12;
  v26 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  aBlock[0] = v61;
  *v26 = 136315394;
  sub_25C459F68(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
  v27 = sub_25C4C89A0();
  v28 = a3;
  v30 = v29;
  (*(v17 + 8))(v20, v16);
  v31 = sub_25C458990(v27, v30, aBlock);
  v32 = v28;

  *(v26 + 4) = v31;
  *(v26 + 12) = 2048;
  v33 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    v34 = v72;
    if (v33 != 2)
    {
      v35 = v15;
      sub_25C45A004(v72, v32);
      v36 = 0;
      goto LABEL_14;
    }

    v39 = *(v72 + 16);
    v38 = *(v72 + 24);
    result = sub_25C45A004(v72, v32);
    v36 = v38 - v39;
    if (!__OFSUB__(v38, v39))
    {
      v35 = v15;
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    v34 = v72;
    if (!v33)
    {
      v35 = v15;
      sub_25C45A004(v72, v32);
      v36 = BYTE6(v32);
LABEL_14:
      v37 = v11;
      *(v26 + 14) = v36;
      sub_25C45A004(v34, v32);
      _os_log_impl(&dword_25C452000, v23, v62, "Report operation update: uuid=%s, size=%ld", v26, 0x16u);
      v41 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x25F888630](v41, -1, -1);
      MEMORY[0x25F888630](v26, -1, -1);

      v12 = v63;
      goto LABEL_15;
    }

    result = sub_25C45A004(v72, v32);
    LODWORD(v36) = HIDWORD(v34) - v34;
    if (!__OFSUB__(HIDWORD(v34), v34))
    {
      v35 = v15;
      v36 = v36;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C457298(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v55 = a5;
  v8 = sub_25C4C7D60();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20]();
  v47 = &empty - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_25C4C80B0();
  v51 = *(v56 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20]();
  v50 = &empty - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25C4C7B20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20]();
  v17 = &empty - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v18 = sub_25C4C7BD0();
  __swift_project_value_buffer(v18, qword_27FC0AAB8);
  v19 = *(v14 + 16);
  v52 = a3;
  v19(v17, a3, v13);

  v20 = sub_25C4C7BB0();
  v21 = sub_25C4C86F0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315394;
    *(v22 + 4) = sub_25C458990(a1, a2, aBlock);
    *(v22 + 12) = 2080;
    sub_25C459F68(&unk_27FC0A3E0, MEMORY[0x277CC95F0]);
    v24 = sub_25C4C89A0();
    v26 = v25;
    (*(v14 + 8))(v17, v13);
    v27 = sub_25C458990(v24, v26, aBlock);

    *(v22 + 14) = v27;
    _os_log_impl(&dword_25C452000, v20, v21, "Report operation cancel: name=%s, uuid=%s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v23, -1, -1);
    MEMORY[0x25F888630](v22, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v17, v13);
  }

  empty = xpc_dictionary_create_empty();
  v28 = *MEMORY[0x277D35858];
  v30 = v50;
  v29 = v51;
  v46 = *(v51 + 104);
  v31 = v56;
  v46(v50, v28, v56);
  sub_25C4C80A0();
  v51 = *(v29 + 8);
  (v51)(v30, v31);
  v32 = v47;
  v33 = v48;
  v34 = v49;
  (*(v48 + 104))(v47, *MEMORY[0x277D35720], v49);
  sub_25C4C7D50();
  (*(v33 + 8))(v32, v34);
  v35 = sub_25C4C8570();

  v36 = sub_25C4C8570();

  v37 = empty;
  xpc_dictionary_set_string(empty, (v35 + 32), (v36 + 32));

  swift_getObjectType();
  v38 = v56;
  v46(v30, *MEMORY[0x277D35888], v56);
  sub_25C4C80A0();
  (v51)(v30, v38);
  sub_25C4C86E0();

  v39 = *(*(v53 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection) + 88);
  v40 = *(v53 + 48);
  v41 = swift_allocObject();
  v42 = v55;
  *(v41 + 16) = v54;
  *(v41 + 24) = v42;
  aBlock[4] = sub_25C45A100;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C456294;
  aBlock[3] = &block_descriptor_16;
  v43 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  xpc_connection_send_message_with_reply(v39, v37, v40, v43);
  _Block_release(v43);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_25C4578B4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__mode;
  v5 = sub_25C4C7D10();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationNames);

  v7 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredOperationNames);

  v8 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers);

  v9 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__requestNames);

  v10 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__registeredRequestNames);

  v11 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection);

  return v0;
}

uint64_t *sub_25C4579AC()
{
  v1 = v0;
  v2 = sub_25C4C7B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27FC0AAB0 != -1)
  {
    swift_once();
  }

  v7 = sub_25C4C7BD0();
  __swift_project_value_buffer(v7, qword_27FC0AAB8);
  v8 = sub_25C4C7BB0();
  v9 = sub_25C4C8700();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_25C452000, v8, v9, "deinit", v10, 2u);
    MEMORY[0x25F888630](v10, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, v2);
    swift_beginAccess();
    sub_25C457C6C(0, v6);
    swift_endAccess();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection);

    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, v2);
    sub_25C475DA4(v6);

    (*(v3 + 8))(v6, v2);
  }

  v13 = v1[3];
  sub_25C45A2C8(v1[2]);
  v14 = v1[5];
  sub_25C45A2C8(v1[4]);
  v15 = v1[7];
  sub_25C45A2C8(v1[6]);
  v16 = v1[9];

  (*(v3 + 8))(v1 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, v2);
  swift_weakDestroy();
  return v1;
}

uint64_t sub_25C457C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_25C459718(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_25C4C7B20();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_25C458F84(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_25C459B5C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_25C4C7B20();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_25C4593F8(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_25C4C7B20();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_25C457E44(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_25C457EA0(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection);
    v13 = OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID;
    v14 = sub_25C459F68(&qword_27FC0A168, type metadata accessor for NXServerDaemonOperationHandler);

    sub_25C475AFC(v5 + v13, v5, v14);

    v17 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers;
    swift_beginAccess();

    v18 = *(v11 + v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v11 + v17);
    *(v11 + v17) = 0x8000000000000000;
    sub_25C459718(v5, v5 + v13, isUniquelyReferenced_nonNull_native);
    *(v11 + v17) = v20;
    swift_endAccess();
    sub_25C4562F4(*(v5 + 64), *(v5 + 72), v5 + v13, a1, a2, a3, a4);
  }

  else
  {
    v15 = objc_allocWithZone(sub_25C4C7B80());
    v16 = sub_25C4C7B90();
    a3();
  }
}

void sub_25C458094(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__operationHandlers;
    swift_beginAccess();
    if (*(*(v11 + v12) + 16) && (v13 = OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, sub_25C458F84(v5 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID), (v14 & 1) != 0))
    {
      swift_endAccess();
      sub_25C456B2C(v5 + v13, a1, a2, a3, a4);
    }

    else
    {
      swift_endAccess();
      v15 = objc_allocWithZone(sub_25C4C7B80());
      v16 = sub_25C4C7B90();
      a3();
    }
  }

  else
  {
    v17 = objc_allocWithZone(sub_25C4C7B80());
    v18 = sub_25C4C7B90();
    a3();
  }
}

uint64_t sub_25C458224(uint64_t (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a1();
  }

  v6 = *(Strong + OBJC_IVAR____TtC11NexusDaemon14NXServerDaemon__xpcConnection);
  v7 = OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID;

  v8 = v2;
  sub_25C475DA4(v2 + v7);

  v9 = *(v2 + 64);
  v10 = *(v8 + 72);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = a1;
  v13[5] = a2;

  sub_25C457298(v9, v10, v8 + v7, sub_25C45A340, v13);
}

uint64_t sub_25C4583B0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      (*(v7 + 16))(v10, v12 + OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID, v6);
      swift_beginAccess();
      sub_25C457C6C(0, v10);
      swift_endAccess();
    }

    a4(a1);
  }

  return result;
}

uint64_t sub_25C45858C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_25C45A2B8(v1);
  return v1;
}

uint64_t sub_25C4585DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_25C45A2C8(v5);
}

uint64_t sub_25C458680()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25C45A2B8(v1);
  return v1;
}

uint64_t sub_25C4586D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_25C45A2C8(v5);
}

uint64_t sub_25C458774()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_25C45A2B8(v1);
  return v1;
}

uint64_t sub_25C4587C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_25C45A2C8(v5);
}

char *sub_25C458868(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A760, &qword_25C4C9998);
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

uint64_t sub_25C458990(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25C458A5C(v11, 0, 0, 1, a1, a2);
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
    sub_25C45A550(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_25C458A5C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25C458B68(a5, a6);
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
    result = sub_25C4C8910();
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

uint64_t sub_25C458B68(uint64_t a1, unint64_t a2)
{
  v4 = sub_25C458BB4(a1, a2);
  sub_25C458CE4(&unk_286E22050);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25C458BB4(uint64_t a1, unint64_t a2)
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

  v6 = sub_25C458DD0(v5, 0);
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

  result = sub_25C4C8910();
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
        v10 = sub_25C4C85B0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25C458DD0(v10, 0);
        result = sub_25C4C88E0();
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

uint64_t sub_25C458CE4(uint64_t result)
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

  result = sub_25C458E44(result, v12, 1, v3);
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

void *sub_25C458DD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A290, &qword_25C4C9990);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25C458E44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A290, &qword_25C4C9990);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25C458F84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25C4C7B20();
  sub_25C459F68(&unk_27FC0A960, MEMORY[0x277CC95F0]);
  v5 = sub_25C4C8510();

  return sub_25C45999C(a1, v5);
}

uint64_t sub_25C45901C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25C4C7B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A170, &qword_25C4C9988);
  v43 = a2;
  result = sub_25C4C8970();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_25C459F68(&unk_27FC0A960, MEMORY[0x277CC95F0]);
      result = sub_25C4C8510();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_25C4593F8(int64_t a1, uint64_t a2)
{
  v43 = sub_25C4C7B20();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20]();
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_25C4C8810();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_25C459F68(&unk_27FC0A960, MEMORY[0x277CC95F0]);
      v26 = sub_25C4C8510();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_25C459718(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C4C7B20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_25C458F84(a2);
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
      sub_25C459B5C();
      goto LABEL_7;
    }

    sub_25C45901C(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_25C458F84(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_25C4598E4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_25C4C8A20();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_25C4598E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25C4C7B20();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_25C45999C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25C4C7B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
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
      sub_25C459F68(&qword_27FC0A470, MEMORY[0x277CC95F0]);
      v16 = sub_25C4C8530();
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

char *sub_25C459B5C()
{
  v1 = v0;
  v34 = sub_25C4C7B20();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20]();
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A170, &qword_25C4C9988);
  v4 = *v0;
  v5 = sub_25C4C8960();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

uint64_t sub_25C459DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 16) = 0u;
  swift_weakInit();
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  v7 = OBJC_IVAR____TtC11NexusDaemon30NXServerDaemonOperationHandler__operationUUID;
  v8 = sub_25C4C7B20();
  (*(*(v8 - 8) + 32))(v3 + v7, a3, v8);
  swift_beginAccess();
  swift_weakAssign();
  return v3;
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

uint64_t sub_25C459EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A150, &qword_25C4C9810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C459F68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C459FB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25C45A004(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25C45A074()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  v1();
}

uint64_t sub_25C45A0C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C45A100()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  if (v3)
  {
    v4 = v3;
    if (qword_27FC0AAB0 != -1)
    {
      swift_once();
    }

    v5 = sub_25C4C7BD0();
    __swift_project_value_buffer(v5, qword_27FC0AAB8);
    v6 = v4;
    v7 = sub_25C4C7BB0();
    v8 = sub_25C4C8710();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_25C4C8A30();
      v13 = sub_25C458990(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_25C452000, v7, v8, "### Operation cancel failed: error=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x25F888630](v10, -1, -1);
      MEMORY[0x25F888630](v9, -1, -1);
    }

    v14 = v6;
    (v2)(v4);
  }

  else
  {
    v2();
  }
}

uint64_t sub_25C45A2B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25C45A2C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25C45A2F8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25C45A374(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C45A3AC()
{
  result = sub_25C4C7D10();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_25C45A4A0()
{
  result = sub_25C4C7B20();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25C45A550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25C45A5B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25C45A004(a1, a2);
  }

  return a1;
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

uint64_t sub_25C45A660()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0ABA8);
  __swift_project_value_buffer(v0, qword_27FC0ABA8);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t NXNANEndpoint.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NXNANEndpoint.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25C45A734@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_25C45A740@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C5C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4);
}

uint64_t sub_25C45A7D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C604;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_25C45A2B8(v3);
  return sub_25C45A2C8(v8);
}

uint64_t NXNANSubscriberDarwin.endpointFoundOrChangedHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_25C45A2B8(v1);
  return v1;
}

uint64_t NXNANSubscriberDarwin.endpointFoundOrChangedHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_25C45A2C8(v5);
}

uint64_t sub_25C45A984@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C58C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4);
}

uint64_t sub_25C45AA18(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C564;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_25C45A2B8(v3);
  return sub_25C45A2C8(v8);
}

uint64_t NXNANSubscriberDarwin.endpointLostHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_25C45A2B8(v1);
  return v1;
}

uint64_t NXNANSubscriberDarwin.endpointLostHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_25C45A2C8(v5);
}

uint64_t sub_25C45ABC8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_25C45C53C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_25C45A2B8(v4);
}

uint64_t sub_25C45AC5C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_25C45C514;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_25C45A2B8(v3);
  return sub_25C45A2C8(v8);
}

uint64_t NXNANSubscriberDarwin.invalidationHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_25C45A2B8(v1);
  return v1;
}

uint64_t NXNANSubscriberDarwin.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_25C45A2C8(v5);
}

uint64_t NXNANSubscriberDarwin.serviceType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t NXNANSubscriberDarwin.serviceType.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

double NXNANSubscriberDarwin.__allocating_init(dispatchQueue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 16) = 0;
  *(v2 + 24) = a1;
  return result;
}

uint64_t NXNANSubscriberDarwin.init(dispatchQueue:)(uint64_t a1)
{
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 16) = 0;
  *(v1 + 24) = a1;
  return v1;
}

Swift::Void __swiftcall NXNANSubscriberDarwin.activate()()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = (&aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v0[3];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  v8 = sub_25C4C84E0();
  (*(v2 + 8))(v5, v1);
  if (v8)
  {
    swift_beginAccess();
    if (!v0[2])
    {
      v9 = [objc_allocWithZone(MEMORY[0x277D028A8]) init];
      v10 = v0[2];
      v0[2] = v9;
      v11 = v9;

      [v11 setDispatchQueue_];
      [v11 setControlFlags_];
      swift_beginAccess();
      if (v0[12])
      {
        v12 = v0[11];
        v13 = v0[12];

        v14 = sub_25C4C8540();
      }

      else
      {
        v14 = 0;
      }

      [v11 setServiceType_];

      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      v39 = sub_25C45B600;
      v40 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_25C45B768;
      v38 = &block_descriptor_0;
      v18 = _Block_copy(&aBlock);

      [v11 setInvalidationHandler_];
      _Block_release(v18);
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      v39 = sub_25C45B7C8;
      v40 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_25C45B97C;
      v38 = &block_descriptor_15;
      v22 = _Block_copy(&aBlock);

      [v11 setEndpointFoundHandler_];
      _Block_release(v22);
      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = v24;
      v39 = sub_25C45B9E4;
      v40 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_25C45B97C;
      v38 = &block_descriptor_23;
      v26 = _Block_copy(&aBlock);

      [v11 setEndpointLostHandler_];
      _Block_release(v26);
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = v28;
      v39 = sub_25C45B7C8;
      v40 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_25C45BB98;
      v38 = &block_descriptor_31;
      v30 = _Block_copy(&aBlock);

      [v11 setEndpointChangedHandler_];
      _Block_release(v30);
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      v39 = sub_25C45BC4C;
      v40 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_25C45BE80;
      v38 = &block_descriptor_39;
      v34 = _Block_copy(&aBlock);

      [v11 activateWithCompletion_];
      _Block_release(v34);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C45B590()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C45B5C8()
{
  MEMORY[0x25F8886B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C45B600()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_beginAccess();
      v7 = *(v4 + 16);
      if (v7)
      {
        v8 = v6 == v7;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        *(v4 + 16) = 0;

        sub_25C45B6B4();
      }
    }
  }

  return result;
}

void sub_25C45B6B4()
{
  if (*(v0 + 64) == 1)
  {
    swift_beginAccess();
    if (!*(v0 + 16))
    {
      swift_beginAccess();
      v1 = *(v0 + 72);
      if (v1)
      {
        v2 = *(v0 + 80);

        v1(v3);
        sub_25C45A2C8(v1);
        v4 = *(v0 + 72);
      }

      else
      {
        v4 = 0;
      }

      v5 = *(v0 + 80);
      *(v0 + 72) = 0;
      *(v0 + 80) = 0;
      sub_25C45A2C8(v4);
    }
  }
}

uint64_t sub_25C45B768(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C45B7C8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_beginAccess();
      v9 = v6[2];
      if (v9 && v8 == v9 && (v10 = [a1 identifier]) != 0)
      {
        v11 = v10;
        v12 = sub_25C4C8550();
        v14 = v13;

        v15 = [a1 name];
        if (v15)
        {
          v16 = v15;
          v17 = sub_25C4C8550();
          v19 = v18;
        }

        else
        {

          v17 = v12;
          v19 = v14;
        }

        swift_beginAccess();
        v20 = v6[4];
        if (v20)
        {
          v21 = v6[5];
          v22[0] = v12;
          v22[1] = v14;
          v22[2] = v17;
          v22[3] = v19;

          v20(v22);

          sub_25C45A2C8(v20);
        }
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_25C45B97C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_25C45B9E4(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_beginAccess();
      v9 = v6[2];
      if (v9 && v8 == v9 && (v10 = [a1 identifier]) != 0)
      {
        v11 = v10;
        v12 = sub_25C4C8550();
        v14 = v13;

        v15 = [a1 name];
        if (v15)
        {
          v16 = v15;
          v17 = sub_25C4C8550();
          v19 = v18;
        }

        else
        {

          v17 = v12;
          v19 = v14;
        }

        swift_beginAccess();
        v20 = v6[6];
        if (v20)
        {
          v21 = v6[7];
          v22[0] = v12;
          v22[1] = v14;
          v22[2] = v17;
          v22[3] = v19;

          v20(v22);

          sub_25C45A2C8(v20);
        }
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_25C45BB98(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_25C45BC4C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_6:

    return;
  }

  v8 = v7;
  swift_beginAccess();
  v9 = *(v6 + 16);
  if (!v9 || v8 != v9 || !a1)
  {

    goto LABEL_6;
  }

  v10 = a1;
  if (qword_27FC0ABA0 != -1)
  {
    swift_once();
  }

  v11 = sub_25C4C7BD0();
  __swift_project_value_buffer(v11, qword_27FC0ABA8);
  v12 = a1;
  v13 = sub_25C4C7BB0();
  v14 = sub_25C4C8710();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_25C4C8A30();
    v19 = sub_25C458990(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_25C452000, v13, v14, "### NAN setup subscriber start failed: error=%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x25F888630](v16, -1, -1);
    MEMORY[0x25F888630](v15, -1, -1);
  }

  [v8 invalidate];
  v20 = *(v6 + 16);
  *(v6 + 16) = 0;
}

void sub_25C45BE80(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

Swift::Void __swiftcall NXNANSubscriberDarwin.invalidate()()
{
  v1 = sub_25C4C84C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 24);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_25C4C84E0();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if ((*(v0 + 64) & 1) == 0)
    {
      *(v0 + 64) = 1;
      swift_beginAccess();
      [*(v0 + 16) invalidate];
      sub_25C45B6B4();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t NXNANSubscriberDarwin.deinit()
{
  v1 = *(v0 + 40);
  sub_25C45A2C8(*(v0 + 32));
  v2 = *(v0 + 56);
  sub_25C45A2C8(*(v0 + 48));
  v3 = *(v0 + 80);
  sub_25C45A2C8(*(v0 + 72));
  v4 = *(v0 + 96);

  return v0;
}

uint64_t NXNANSubscriberDarwin.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  sub_25C45A2C8(*(v0 + 32));
  v2 = *(v0 + 56);
  sub_25C45A2C8(*(v0 + 48));
  v3 = *(v0 + 80);
  sub_25C45A2C8(*(v0 + 72));
  v4 = *(v0 + 96);

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_25C45C0E4()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_25C45A2B8(v1);
  return v1;
}

uint64_t sub_25C45C134(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_25C45A2C8(v5);
}

uint64_t sub_25C45C1D8()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t sub_25C45C224(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C45C3F4(uint64_t a1, int a2)
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

uint64_t sub_25C45C43C(uint64_t result, int a2, int a3)
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

uint64_t sub_25C45C4DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C45C514()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25C45C53C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25C45C564()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25C45C58C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25C45C608()
{
  v0 = sub_25C4C7BD0();
  __swift_allocate_value_buffer(v0, qword_27FC0AC48);
  __swift_project_value_buffer(v0, qword_27FC0AC48);
  sub_25C4C7C80();
  return sub_25C4C7BC0();
}

uint64_t sub_25C45C67C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_25C4651B0(a1);

  return v5;
}

uint64_t sub_25C45C6C8()
{
  v1 = v0;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_25C4C88F0();
  v50 = 0;
  v51 = 0xE000000000000000;
  MEMORY[0x25F887A50](0xD00000000000001ELL, 0x800000025C4D0260);
  v2 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers;
  swift_beginAccess();
  v47 = *(*(v0 + v2) + 16);
  v3 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v3);

  MEMORY[0x25F887A50](0xD00000000000001ALL, 0x800000025C4D0280);
  v4 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
  swift_beginAccess();
  v46 = *(*(v1 + v4) + 16);
  v5 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v5);

  MEMORY[0x25F887A50](0x6E69646E6570202CLL, 0xEA00000000003D67);
  v6 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations;
  swift_beginAccess();
  v45 = *(*(v1 + v6) + 16);
  v7 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v7);

  MEMORY[0x25F887A50](0xD000000000000019, 0x800000025C4D02A0);
  v8 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
  swift_beginAccess();
  v44 = *(*(v1 + v8) + 16);
  v9 = sub_25C4C89A0();
  MEMORY[0x25F887A50](v9);

  MEMORY[0x25F887A50](0x6E69646E6570202CLL, 0xEA00000000003D67);
  v10 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests;
  swift_beginAccess();
  v42 = *(*(v1 + v10) + 16);
  v11 = sub_25C4C89A0();
  v13 = v12;
  MEMORY[0x25F887A50](v11);

  MEMORY[0x25F887A50](0xA3D3D207DLL, 0xE500000000000000);
  v14 = *(v1 + v2);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v41 = v14;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  if (v18)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      do
      {
LABEL_8:
        v13 = *(*(v41 + 56) + ((v20 << 9) | (8 * __clz(__rbit64(v18)))));
        v42 = 0;
        v43 = 0xE000000000000000;

        sub_25C4C88F0();
        v24 = v13[2];
        v23 = v13[3];

        v42 = v24;
        v43 = v23;
        MEMORY[0x25F887A50](0x3D736469203ALL, 0xE600000000000000);
        if (v13[5])
        {
          v25 = v13[4];
          v26 = v13[5];
        }

        else
        {
          v26 = 0xE300000000000000;
          v25 = 7104878;
        }

        MEMORY[0x25F887A50](v25, v26);

        MEMORY[0x25F887A50](0x74617265706F202CLL, 0xED00003D736E6F69);
        v27 = v13[7];
        v28 = sub_25C4C8620();
        MEMORY[0x25F887A50](v28);

        MEMORY[0x25F887A50](0x736575716572202CLL, 0xEB000000003D7374);
        v29 = v13[8];
        v30 = sub_25C4C8620();
        MEMORY[0x25F887A50](v30);

        MEMORY[0x25F887A50](10, 0xE100000000000000);
        v31 = v42;
        v32 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_25C458868(0, *(v21 + 2) + 1, 1, v21);
        }

        v34 = *(v21 + 2);
        v33 = *(v21 + 3);
        if (v34 >= v33 >> 1)
        {
          v21 = sub_25C458868((v33 > 1), v34 + 1, 1, v21);
        }

        v18 &= v18 - 1;

        *(v21 + 2) = v34 + 1;
        v35 = &v21[16 * v34];
        *(v35 + 4) = v31;
        *(v35 + 5) = v32;
      }

      while (v18);
    }
  }

  v42 = v21;

  sub_25C4623E8(&v42);

  v36 = *(v42 + 2);
  if (v36)
  {
    v37 = v42 + 40;
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;

      MEMORY[0x25F887A50](v38, v39);

      v37 += 16;
      --v36;
    }

    while (v36);
  }

  return v50;
}

BOOL sub_25C45CC38()
{
  v1 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
  swift_beginAccess();
  return *(*(v0 + v3) + 16) != 0;
}

uint64_t sub_25C45CCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_25C45CD38(int a1)
{
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0AC48);
  oslog = sub_25C4C7BB0();
  v3 = sub_25C4C8710();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_25C452000, oslog, v3, "### XPC publisher error: %d", v4, 8u);
    MEMORY[0x25F888630](v4, -1, -1);
  }
}

uint64_t sub_25C45CE38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_25C45CE8C(uint64_t a1, uint64_t a2)
{
  v5 = sub_25C4C8470();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25C4C8490();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 24);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C4676B4;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_25C4C8480();
  v18 = MEMORY[0x277D84F90];
  sub_25C4657D0(&unk_27FC0A180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C465818(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C4C8800();
  MEMORY[0x25F887C10](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_25C45D11C()
{
  v1 = type metadata accessor for NXXPCPendingRequest(0);
  v89 = *(v1 - 8);
  v2 = *(v89 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v88 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E0, &qword_25C4C9B18);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v95 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v90 = (&v86 - v8);
  v9 = type metadata accessor for NXXPCPendingOperation(0);
  v93 = *(v9 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A0, &qword_25C4C9AF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = (&v86 - v17);
  v18 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher);
  *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher) = 0;

  v19 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations;
  swift_beginAccess();
  v87 = v19;
  v97 = v0;
  v20 = *(v0 + v19);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v24 = 1 << *(*(v0 + v19) + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v94 = *(v0 + v19);

  v29 = 0;
  v91 = v16;
  v30 = &unk_27FC0A1A8;
  if (!v26)
  {
LABEL_5:
    if (v27 <= v29 + 1)
    {
      v32 = v29 + 1;
    }

    else
    {
      v32 = v27;
    }

    v33 = v32 - 1;
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v27)
      {
        v42 = v30;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, &qword_25C4C9AF8);
        (*(*(v46 - 8) + 56))(v16, 1, 1, v46);
        v26 = 0;
        goto LABEL_13;
      }

      v26 = *(v22 + 8 * v31);
      ++v29;
      if (v26)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  while (1)
  {
    v31 = v29;
LABEL_12:
    v34 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v35 = v34 | (v31 << 6);
    v36 = *(*(v94 + 48) + 8 * v35);
    v37 = v92;
    sub_25C465CD4(*(v94 + 56) + *(v93 + 72) * v35, v92, type metadata accessor for NXXPCPendingOperation);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(v30, &qword_25C4C9AF8);
    v39 = *(v38 + 48);
    v40 = v91;
    *v91 = v36;
    v41 = v37;
    v16 = v40;
    sub_25C465D3C(v41, &v40[v39], type metadata accessor for NXXPCPendingOperation);
    (*(*(v38 - 8) + 56))(v16, 0, 1, v38);
    v33 = v31;
    v42 = v30;
LABEL_13:
    v43 = v96;
    sub_25C465DA4(v16, v96, &qword_27FC0A1A0, &qword_25C4C9AF0);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, &qword_25C4C9AF8);
    if ((*(*(v44 - 8) + 48))(v43, 1, v44) == 1)
    {
      break;
    }

    v45 = *(v44 + 48);
    sub_25C45D990(*v43, 0x6164696C61766E69, 0xEA00000000006574);
    result = sub_25C465E0C(v43 + v45, type metadata accessor for NXXPCPendingOperation);
    v29 = v33;
    v30 = v42;
    if (!v26)
    {
      goto LABEL_5;
    }
  }

  v47 = v97;
  v48 = *(v97 + v87);
  *(v97 + v87) = MEMORY[0x277D84F98];

  v49 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests;
  swift_beginAccess();
  v50 = *(v47 + v49);
  v51 = *(v50 + 64);
  v94 = v50 + 64;
  v52 = 1 << *(v50 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v51;
  v92 = v49;
  v93 = (v52 + 63) >> 6;
  v96 = v50;

  v55 = 0;
  v56 = &unk_27FC0A1E8;
  v57 = v90;
  if (!v54)
  {
LABEL_21:
    if (v93 <= v55 + 1)
    {
      v59 = v55 + 1;
    }

    else
    {
      v59 = v93;
    }

    v60 = v59 - 1;
    while (1)
    {
      v58 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_45;
      }

      if (v58 >= v93)
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, &qword_25C4C9B20);
        v73 = v95;
        (*(*(v72 - 8) + 56))(v95, 1, 1, v72);
        v69 = v73;
        v54 = 0;
        goto LABEL_29;
      }

      v54 = *(v94 + 8 * v58);
      ++v55;
      if (v54)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v58 = v55;
LABEL_28:
    v61 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v62 = v61 | (v58 << 6);
    v63 = *(v96[6] + 8 * v62);
    v64 = v88;
    sub_25C465CD4(v96[7] + *(v89 + 72) * v62, v88, type metadata accessor for NXXPCPendingRequest);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, &qword_25C4C9B20);
    v66 = *(v65 + 48);
    v67 = v56;
    v68 = v95;
    *v95 = v63;
    sub_25C465D3C(v64, v68 + v66, type metadata accessor for NXXPCPendingRequest);
    (*(*(v65 - 8) + 56))(v68, 0, 1, v65);
    v60 = v58;
    v69 = v68;
    v56 = v67;
    v57 = v90;
LABEL_29:
    sub_25C465DA4(v69, v57, &qword_27FC0A1E0, &qword_25C4C9B18);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, &qword_25C4C9B20);
    if ((*(*(v70 - 8) + 48))(v57, 1, v70) == 1)
    {
      break;
    }

    v71 = *(v70 + 48);
    sub_25C45DEA4(*v57, 0x6164696C61766E69, 0xEA00000000006574);
    result = sub_25C465E0C(v57 + v71, type metadata accessor for NXXPCPendingRequest);
    v55 = v60;
    if (!v54)
    {
      goto LABEL_21;
    }
  }

  v74 = v97;
  v75 = *(v97 + v92);
  *(v97 + v92) = MEMORY[0x277D84F98];

  v76 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers;
  swift_beginAccess();
  v77 = *(v74 + v76);
  v78 = 1 << *(v77 + 32);
  v79 = -1;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  v80 = v79 & *(v77 + 64);
  v81 = (v78 + 63) >> 6;

  for (i = 0; v80; result = )
  {
    v83 = i;
LABEL_41:
    v84 = __clz(__rbit64(v80));
    v80 &= v80 - 1;
    v85 = *(*(*(v77 + 56) + ((v83 << 9) | (8 * v84))) + 48);

    sub_25C45E3B8(v85);
  }

  while (1)
  {
    v83 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v83 >= v81)
    {
    }

    v80 = *(v77 + 64 + 8 * v83);
    ++i;
    if (v80)
    {
      i = v83;
      goto LABEL_41;
    }
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_25C45D990(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v53 = a2;
  v55 = a1;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A198, &qword_25C4C9AE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v47 - v6;
  v8 = type metadata accessor for NXXPCPendingOperation(0);
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  v10 = (MEMORY[0x28223BE20])();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v47 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v47 - v19;
  v21 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations;
  swift_beginAccess();
  v22 = *(v3 + v21);
  if (!*(v22 + 16))
  {
    return swift_endAccess();
  }

  v23 = sub_25C462F38(v55);
  if ((v24 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_25C465CD4(*(v22 + 56) + *(v54 + 72) * v23, v18, type metadata accessor for NXXPCPendingOperation);
  sub_25C465D3C(v18, v20, type metadata accessor for NXXPCPendingOperation);
  swift_endAccess();
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v25 = sub_25C4C7BD0();
  __swift_project_value_buffer(v25, qword_27FC0AC48);
  sub_25C465CD4(v20, v15, type metadata accessor for NXXPCPendingOperation);
  sub_25C465CD4(v20, v12, type metadata accessor for NXXPCPendingOperation);
  v26 = a3;

  v27 = sub_25C4C7BB0();
  v28 = sub_25C4C8710();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v52 = v7;
    v30 = v29;
    v51 = swift_slowAlloc();
    v56[0] = v51;
    *v30 = 136315650;
    v50 = v28;
    v48 = v26;
    v32 = *v15;
    v31 = v15[1];

    v49 = v27;
    sub_25C465E0C(v15, type metadata accessor for NXXPCPendingOperation);
    v33 = sub_25C458990(v32, v31, v56);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    v34 = *(v12 + 2);
    v35 = *(v12 + 3);

    sub_25C465E0C(v12, type metadata accessor for NXXPCPendingOperation);
    v36 = sub_25C458990(v34, v35, v56);

    *(v30 + 14) = v36;
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_25C458990(v53, v48, v56);
    v37 = v49;
    _os_log_impl(&dword_25C452000, v49, v50, "### Subscriber operation failed: id=%s, operation=%s, reason=%s", v30, 0x20u);
    v38 = v51;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v38, -1, -1);
    v39 = v30;
    v7 = v52;
    MEMORY[0x25F888630](v39, -1, -1);
  }

  else
  {

    sub_25C465E0C(v12, type metadata accessor for NXXPCPendingOperation);
    sub_25C465E0C(v15, type metadata accessor for NXXPCPendingOperation);
  }

  (*(v54 + 56))(v7, 1, 1, v8);
  swift_beginAccess();
  sub_25C45F6B0(v7, v55);
  swift_endAccess();
  v41 = *&v20[*(v8 + 32)];
  swift_getObjectType();
  sub_25C4C8790();
  v42 = &v20[*(v8 + 28)];
  v44 = *v42;
  v43 = *(v42 + 1);
  v45 = objc_allocWithZone(sub_25C4C7B80());
  v46 = sub_25C4C7B90();
  v44(v46, 0, 1);

  return sub_25C465E0C(v20, type metadata accessor for NXXPCPendingOperation);
}

uint64_t sub_25C45DEA4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v54 = a2;
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B8, &qword_25C4C9B08);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v48 - v7;
  v9 = type metadata accessor for NXXPCPendingRequest(0);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v48 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v48 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  v22 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests;
  swift_beginAccess();
  v23 = *(v3 + v22);
  if (!*(v23 + 16))
  {
    return swift_endAccess();
  }

  v24 = sub_25C462F38(v56);
  if ((v25 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_25C465CD4(*(v23 + 56) + *(v55 + 72) * v24, v19, type metadata accessor for NXXPCPendingRequest);
  sub_25C465D3C(v19, v21, type metadata accessor for NXXPCPendingRequest);
  swift_endAccess();
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v26 = sub_25C4C7BD0();
  __swift_project_value_buffer(v26, qword_27FC0AC48);
  sub_25C465CD4(v21, v16, type metadata accessor for NXXPCPendingRequest);
  sub_25C465CD4(v21, v13, type metadata accessor for NXXPCPendingRequest);
  v27 = a3;

  v28 = sub_25C4C7BB0();
  v29 = sub_25C4C8710();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v53 = v8;
    v31 = v30;
    v52 = swift_slowAlloc();
    v57[0] = v52;
    *v31 = 136315650;
    v51 = v29;
    v49 = v27;
    v33 = *v16;
    v32 = v16[1];

    v50 = v28;
    sub_25C465E0C(v16, type metadata accessor for NXXPCPendingRequest);
    v34 = sub_25C458990(v33, v32, v57);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    v35 = *(v13 + 2);
    v36 = *(v13 + 3);

    sub_25C465E0C(v13, type metadata accessor for NXXPCPendingRequest);
    v37 = sub_25C458990(v35, v36, v57);

    *(v31 + 14) = v37;
    *(v31 + 22) = 2080;
    *(v31 + 24) = sub_25C458990(v54, v49, v57);
    v38 = v50;
    _os_log_impl(&dword_25C452000, v50, v51, "### Subscriber request failed: id=%s, request=%s, reason=%s", v31, 0x20u);
    v39 = v52;
    swift_arrayDestroy();
    MEMORY[0x25F888630](v39, -1, -1);
    v40 = v31;
    v8 = v53;
    MEMORY[0x25F888630](v40, -1, -1);
  }

  else
  {

    sub_25C465E0C(v13, type metadata accessor for NXXPCPendingRequest);
    sub_25C465E0C(v16, type metadata accessor for NXXPCPendingRequest);
  }

  (*(v55 + 56))(v8, 1, 1, v9);
  swift_beginAccess();
  sub_25C45F934(v8, v56);
  swift_endAccess();
  v42 = *&v21[*(v9 + 36)];
  swift_getObjectType();
  sub_25C4C8790();
  v43 = &v21[*(v9 + 32)];
  v45 = *v43;
  v44 = *(v43 + 1);
  v46 = objc_allocWithZone(sub_25C4C7B80());
  v47 = sub_25C4C7B90();
  v45(v47, 0, 1);

  return sub_25C465E0C(v21, type metadata accessor for NXXPCPendingRequest);
}

void sub_25C45E3B8(int64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (*(v5 + 16))
  {
    v6 = sub_25C462F38(a1);
    if (v7)
    {
      v66 = a1;
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
      v9 = qword_27FC0AC40;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = sub_25C4C7BD0();
      __swift_project_value_buffer(v10, qword_27FC0AC48);

      v11 = sub_25C4C7BB0();
      v12 = sub_25C4C8720();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v68 = v14;
        *v13 = 136315138;
        v15 = v8[2];
        v16 = v8[3];

        v17 = sub_25C458990(v15, v16, &v68);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_25C452000, v11, v12, "Remove subscriber: id=%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x25F888630](v14, -1, -1);
        MEMORY[0x25F888630](v13, -1, -1);
      }

      v18 = v8[5];
      if (v18)
      {
        v19 = v8[4];
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v21 = Strong;
          v22 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_cloudServer;
          swift_beginAccess();
          v23 = *(v21 + v22);
          if (v23)
          {

            v24 = v23;

            sub_25C491524(v19, v18, v8);
          }

          else
          {
          }
        }
      }

      v67 = v8;
      v29 = v8[7];
      v30 = 1 << *(v29 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & *(v29 + 56);
      v33 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
      a1 = (v30 + 63) >> 6;

      v34 = 0;
      while (v32)
      {
LABEL_26:
        v38 = (*(v29 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v32)))));
        v39 = *v38;
        v40 = v38[1];
        swift_beginAccess();
        v41 = *(v2 + v33);

        v42 = sub_25C462EC0(v39, v40);
        LOBYTE(v41) = v43;

        if (v41)
        {
          v44 = *(v2 + v33);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(v2 + v33);
          *(v2 + v33) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_25C4642D4();
          }

          v35 = *(*(v46 + 48) + 16 * v42 + 8);

          v36 = *(*(v46 + 56) + 8 * v42);

          sub_25C4637B0(v42, v46);
          *(v2 + v33) = v46;
        }

        v32 &= v32 - 1;
        swift_endAccess();
      }

      while (1)
      {
        v37 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v37 >= a1)
        {
          break;
        }

        v32 = *(v29 + 56 + 8 * v37);
        ++v34;
        if (v32)
        {
          v34 = v37;
          goto LABEL_26;
        }
      }

      v47 = v67[8];
      v48 = 1 << *(v47 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v47 + 56);
      v51 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
      a1 = (v48 + 63) >> 6;
      v52 = v67[8];

      v53 = 0;
      while (v50)
      {
LABEL_39:
        v57 = (*(v47 + 48) + ((v53 << 10) | (16 * __clz(__rbit64(v50)))));
        v58 = *v57;
        v59 = v57[1];
        swift_beginAccess();
        v60 = *(v2 + v51);

        v61 = sub_25C462EC0(v58, v59);
        LOBYTE(v60) = v62;

        if (v60)
        {
          v63 = *(v2 + v51);
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v65 = *(v2 + v51);
          *(v2 + v51) = 0x8000000000000000;
          if (!v64)
          {
            sub_25C4642D4();
          }

          v54 = *(*(v65 + 48) + 16 * v61 + 8);

          v55 = *(*(v65 + 56) + 8 * v61);

          sub_25C4637B0(v61, v65);
          *(v2 + v51) = v65;
        }

        v50 &= v50 - 1;
        swift_endAccess();
      }

      while (1)
      {
        v56 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          break;
        }

        if (v56 >= a1)
        {

          swift_beginAccess();
          sub_25C45F5F0(0, v66);
          swift_endAccess();

          return;
        }

        v50 = *(v47 + 56 + 8 * v56);
        ++v53;
        if (v50)
        {
          v53 = v56;
          goto LABEL_39;
        }
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }
  }

  swift_endAccess();
  if (qword_27FC0AC40 != -1)
  {
LABEL_45:
    swift_once();
  }

  v25 = sub_25C4C7BD0();
  __swift_project_value_buffer(v25, qword_27FC0AC48);
  v26 = sub_25C4C7BB0();
  v27 = sub_25C4C8710();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = a1;
    _os_log_impl(&dword_25C452000, v26, v27, "### Remove subscriber not found: token=%llu", v28, 0xCu);
    MEMORY[0x25F888630](v28, -1, -1);
  }
}

BOOL sub_25C45E990(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher);
  if (v6)
  {
    v7 = v5;
    v13 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations;
    swift_beginAccess();
    v14 = *(v5 + v13);
    v15 = *(v14 + 16);
    v16 = v6;
    if (v15 && (v17 = sub_25C462EC0(a1, a2), (v18 & 1) != 0))
    {
      v32 = v16;
      v19 = *(*(v14 + 56) + 8 * v17);
      swift_endAccess();
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v33 = v19;

      sub_25C45ED20(v20, v21, a1, a2, a3, a4, a5);
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v22 = sub_25C4C7BD0();
      __swift_project_value_buffer(v22, qword_27FC0AC48);

      v23 = sub_25C4C7BB0();
      v24 = sub_25C4C8720();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        aBlock[0] = v26;
        *v25 = 136315394;
        *(v25 + 4) = sub_25C458990(v20, v21, aBlock);
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_25C458990(a1, a2, aBlock);
        _os_log_impl(&dword_25C452000, v23, v24, "Subscriber launch: id=%s, operation=%s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F888630](v26, -1, -1);
        MEMORY[0x25F888630](v25, -1, -1);
      }

      else
      {
      }

      xpc_dictionary_create_empty();
      v27 = *(v33 + 48);
      v28 = *(v7 + 24);
      v29 = swift_allocObject();
      v29[2] = v20;
      v29[3] = v21;
      v29[4] = a1;
      v29[5] = a2;
      aBlock[4] = sub_25C465750;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_25C456294;
      aBlock[3] = &block_descriptor_7;
      v30 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      xpc_event_publisher_fire_with_reply();

      _Block_release(v30);

      swift_unknownObjectRelease_n();
    }

    else
    {
      swift_endAccess();
      sub_25C45ED20(0x746365726964, 0xE600000000000000, a1, a2, a3, a4, a5);
    }
  }

  return v6 != 0;
}

uint64_t sub_25C45ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a6;
  v82 = a7;
  v76 = a5;
  v77 = a1;
  v79 = a3;
  v80 = a4;
  v78 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A198, &qword_25C4C9AE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = &v60 - v10;
  v11 = sub_25C4C8460();
  v73 = *(v11 - 8);
  v74 = v11;
  v12 = *(v73 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v60 - v15;
  v70 = sub_25C4C84B0();
  v84 = *(v70 - 8);
  v16 = *(v84 + 64);
  v17 = MEMORY[0x28223BE20](v70);
  v68 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v69 = &v60 - v19;
  v67 = sub_25C4C8470();
  v66 = *(v67 - 1);
  v20 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v62 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_25C4C8490();
  v63 = *(v64 - 8);
  v22 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v61 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25C4C8760();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = CUNextID64();
  sub_25C465784();
  v29 = *(v7 + 24);
  v65 = v7;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25C4657D0(&unk_27FC0A9C0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A1D0, &qword_25C4C9B10);
  sub_25C465818(&qword_27FC0A9D0, &unk_27FC0A1D0, &qword_25C4C9B10);
  sub_25C4C8800();
  v30 = sub_25C4C8770();
  (*(v25 + 8))(v28, v24);
  v60 = v30;
  ObjectType = swift_getObjectType();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v34 = v83;
  *(v33 + 16) = v32;
  *(v33 + 24) = v34;
  aBlock[4] = sub_25C4667C0;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25C45B768;
  aBlock[3] = &block_descriptor_49;
  v35 = _Block_copy(aBlock);

  v36 = v61;
  sub_25C4C8480();
  v37 = v62;
  sub_25C45F518();
  sub_25C4C8780();
  _Block_release(v35);
  (*(v66 + 8))(v37, v67);
  (*(v63 + 8))(v36, v64);

  v38 = v68;
  sub_25C4C84A0();
  v39 = v69;
  sub_25C4C84D0();
  v40 = *(v84 + 8);
  v84 += 8;
  v67 = v40;
  v41 = v70;
  v40(v38, v70);
  v43 = v73;
  v42 = v74;
  v44 = *(v73 + 104);
  v45 = v71;
  v44(v71, *MEMORY[0x277D85180], v74);
  v46 = v72;
  *v72 = 0;
  v44(v46, *MEMORY[0x277D85168], v42);
  v47 = v39;
  v48 = v39;
  v49 = v60;
  MEMORY[0x25F887C70](v47, v45, v46, ObjectType);
  v50 = *(v43 + 8);
  v50(v46, v42);
  v50(v45, v42);
  v67(v48, v41);
  sub_25C4C87A0();
  v51 = type metadata accessor for NXXPCPendingOperation(0);
  v52 = v51[6];
  v53 = sub_25C4C7B20();
  v54 = v75;
  (*(*(v53 - 8) + 16))(&v75[v52], v76, v53);
  v55 = v78;
  *v54 = v77;
  v54[1] = v55;
  v56 = v80;
  v54[2] = v79;
  v54[3] = v56;
  v57 = (v54 + v51[7]);
  v58 = v82;
  *v57 = v81;
  v57[1] = v58;
  *(v54 + v51[8]) = v49;
  (*(*(v51 - 1) + 56))(v54, 0, 1, v51);
  swift_beginAccess();

  swift_unknownObjectRetain();

  sub_25C45F6B0(v54, v83);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_25C45F518()
{
  sub_25C4C8470();
  sub_25C4657D0(&unk_27FC0A180, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A7B0, &qword_25C4C9AE0);
  sub_25C465818(&qword_27FC0A190, &unk_27FC0A7B0, &qword_25C4C9AE0);
  return sub_25C4C8800();
}

unint64_t sub_25C45F5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_25C463C84(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
  }

  else
  {
    v9 = *v2;
    result = sub_25C462F38(a2);
    if (v10)
    {
      v11 = result;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v17 = *v3;
      if (!v13)
      {
        sub_25C464444();
        v14 = v17;
      }

      v15 = *(*(v14 + 56) + 8 * v11);

      result = sub_25C463960(v11, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_25C45F6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A198, &qword_25C4C9AE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  v9 = type metadata accessor for NXXPCPendingOperation(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_25C4666F8(a1, &qword_27FC0A198, &qword_25C4C9AE8);
    v14 = *v3;
    v15 = sub_25C462F38(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25C4645A0(type metadata accessor for NXXPCPendingOperation, &qword_27FC0A288, &unk_25C4C9D00, type metadata accessor for NXXPCPendingOperation);
        v20 = v25;
      }

      sub_25C465D3C(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for NXXPCPendingOperation);
      sub_25C463AD0(v17, v20, type metadata accessor for NXXPCPendingOperation);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_25C4666F8(v8, &qword_27FC0A198, &qword_25C4C9AE8);
  }

  else
  {
    sub_25C465D3C(a1, v13, type metadata accessor for NXXPCPendingOperation);
    v21 = *v3;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    result = sub_25C463DD0(v13, a2, v22);
    *v3 = v25;
  }

  return result;
}

uint64_t sub_25C45F934(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B8, &qword_25C4C9B08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for NXXPCPendingRequest(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_25C4666F8(a1, &qword_27FC0A1B8, &qword_25C4C9B08);
    v15 = *v3;
    v16 = sub_25C462F38(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25C4645A0(type metadata accessor for NXXPCPendingRequest, &qword_27FC0A280, &qword_25C4C9CF8, type metadata accessor for NXXPCPendingRequest);
        v21 = v26;
      }

      sub_25C465D3C(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for NXXPCPendingRequest);
      sub_25C463AD0(v18, v21, type metadata accessor for NXXPCPendingRequest);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_25C4666F8(v9, &qword_27FC0A1B8, &qword_25C4C9B08);
  }

  else
  {
    sub_25C465D3C(a1, v14, type metadata accessor for NXXPCPendingRequest);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_25C463F6C(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

uint64_t sub_25C45FBB8(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v87 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A198, &qword_25C4C9AE8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v69 - v5;
  v82 = type metadata accessor for NXXPCPendingOperation(0);
  v6 = *(v82 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v82);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v69 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v69 - v14;
  MEMORY[0x28223BE20](v13);
  v77 = &v69 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A0, &qword_25C4C9AF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v81 = (&v69 - v22);
  v23 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations;
  swift_beginAccess();
  v74 = v23;
  v86 = v2;
  v24 = *(v2 + v23);
  v25 = v24 + 64;
  v26 = 1 << *(v24 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v24 + 64);
  v70 = (v26 + 63) >> 6;
  v78 = v6;
  v73 = (v6 + 56);
  v79 = v24;

  v30 = 0;
  *&v31 = 136315394;
  v69 = v31;
  v88 = v21;
  v80 = v25;
  v75 = v15;
  while (v28)
  {
    v32 = v30;
LABEL_15:
    v35 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v36 = v35 | (v32 << 6);
    v37 = *(*(v79 + 48) + 8 * v36);
    v38 = v77;
    sub_25C465CD4(*(v79 + 56) + *(v78 + 72) * v36, v77, type metadata accessor for NXXPCPendingOperation);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A8, &qword_25C4C9AF8);
    v40 = *(v39 + 48);
    v41 = v88;
    *v88 = v37;
    v21 = v41;
    sub_25C465D3C(v38, &v41[v40], type metadata accessor for NXXPCPendingOperation);
    (*(*(v39 - 8) + 56))(v21, 0, 1, v39);
LABEL_16:
    v42 = v81;
    sub_25C465DA4(v21, v81, &qword_27FC0A1A0, &qword_25C4C9AF0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A8, &qword_25C4C9AF8);
    if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
    {
    }

    v44 = v42;
    v45 = *v42;
    sub_25C465D3C(v44 + *(v43 + 48), v15, type metadata accessor for NXXPCPendingOperation);
    v46 = *(v15 + 2);
    v47 = *(v15 + 3);
    if (v46 == v87 && v47 == v83 || (v48 = *(v15 + 2), v49 = *(v15 + 3), (sub_25C4C89E0() & 1) != 0))
    {
      v84 = v47;
      v85 = v46;
      v50 = v76;
      v51 = v82;
      (*v73)(v76, 1, 1, v82);
      swift_beginAccess();
      sub_25C45F6B0(v50, v45);
      swift_endAccess();
      v52 = *&v15[*(v51 + 32)];
      swift_getObjectType();
      sub_25C4C8790();
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v53 = sub_25C4C7BD0();
      __swift_project_value_buffer(v53, qword_27FC0AC48);
      sub_25C465CD4(v15, v12, type metadata accessor for NXXPCPendingOperation);
      v54 = v72;
      sub_25C465CD4(v15, v72, type metadata accessor for NXXPCPendingOperation);
      v55 = sub_25C4C7BB0();
      v56 = sub_25C4C8720();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v89[0] = v71;
        *v57 = v69;
        v59 = *v12;
        v58 = v12[1];

        sub_25C465E0C(v12, type metadata accessor for NXXPCPendingOperation);
        v60 = sub_25C458990(v59, v58, v89);

        *(v57 + 4) = v60;
        *(v57 + 12) = 2080;
        v61 = *(v54 + 16);
        v62 = *(v54 + 24);

        sub_25C465E0C(v54, type metadata accessor for NXXPCPendingOperation);
        v63 = sub_25C458990(v61, v62, v89);

        *(v57 + 14) = v63;
        _os_log_impl(&dword_25C452000, v55, v56, "Subscriber operation handle: id=%s, operation=%s", v57, 0x16u);
        v64 = v71;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v64, -1, -1);
        MEMORY[0x25F888630](v57, -1, -1);
      }

      else
      {

        sub_25C465E0C(v54, type metadata accessor for NXXPCPendingOperation);
        sub_25C465E0C(v12, type metadata accessor for NXXPCPendingOperation);
      }

      v21 = v88;
      v66 = v84;
      v65 = v85;
      Strong = swift_weakLoadStrong();
      v15 = v75;
      if (Strong)
      {
        sub_25C4880C0(v65, v66, &v75[*(v82 + 24)], 0, *&v75[*(v82 + 28)], *&v75[*(v82 + 28) + 8]);
      }
    }

    result = sub_25C465E0C(v15, type metadata accessor for NXXPCPendingOperation);
    v25 = v80;
  }

  if (v70 <= v30 + 1)
  {
    v33 = v30 + 1;
  }

  else
  {
    v33 = v70;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v70)
    {
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1A8, &qword_25C4C9AF8);
      (*(*(v68 - 8) + 56))(v21, 1, 1, v68);
      v28 = 0;
      v30 = v34;
      goto LABEL_16;
    }

    v28 = *(v25 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_25C460380(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v118 = a5;
  v119 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B8, &qword_25C4C9B08);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v113 = (v89 - v15);
  v16 = sub_25C4C8460();
  v116 = *(v16 - 8);
  v117 = v16;
  v17 = *(v116 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v115 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v114 = v89 - v20;
  v21 = sub_25C4C84B0();
  v111 = *(v21 - 8);
  v112 = v21;
  v22 = *(v111 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v110 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v109 = v89 - v25;
  v108 = sub_25C4C8470();
  v26 = *(v108 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v108);
  v106 = v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25C4C8490();
  v105 = *(v107 - 8);
  v29 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v104 = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25C4C8760();
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v35 = v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v7 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher);
  if (v36)
  {
    v91 = v33;
    v98 = a3;
    v99 = a4;
    v37 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests;
    swift_beginAccess();
    v38 = v7;
    v39 = *(v7 + v37);
    v40 = *(v39 + 16);
    v100 = v36;
    v103 = a2;
    v102 = a1;
    v101 = v36;
    v97 = a6;
    v94 = v26;
    if (v40 && (v41 = sub_25C462EC0(a1, a2), (v42 & 1) != 0))
    {
      v43 = *(*(v39 + 56) + 8 * v41);
      swift_endAccess();
      v44 = *(v43 + 24);
      v120 = *(v43 + 16);
      v96 = v43;

      v95 = v44;
    }

    else
    {
      swift_endAccess();
      v96 = 0;
      v95 = 0xE600000000000000;
      v120 = 0x746365726964;
    }

    v45 = CUNextID64();
    v93 = v45;
    sub_25C465784();
    v46 = *(v38 + 24);
    v92 = v38;
    aBlock = MEMORY[0x277D84F90];
    sub_25C4657D0(&unk_27FC0A9C0, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C465818(&qword_27FC0A9D0, &unk_27FC0A1D0, &qword_25C4C9B10);
    sub_25C4C8800();
    v89[1] = v46;
    v47 = sub_25C4C8770();
    (*(v91 + 8))(v35, v31);
    v90 = v47;
    ObjectType = swift_getObjectType();
    v49 = swift_allocObject();
    swift_weakInit();
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v45;
    v125 = sub_25C4658DC;
    v126 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_25C45B768;
    v124 = &block_descriptor_16_0;
    v51 = _Block_copy(&aBlock);

    v52 = v104;
    sub_25C4C8480();
    v53 = v106;
    v91 = ObjectType;
    sub_25C45F518();
    sub_25C4C8780();
    _Block_release(v51);
    (*(v94 + 8))(v53, v108);
    (*(v105 + 8))(v52, v107);

    v54 = v110;
    sub_25C4C84A0();
    v55 = v109;
    sub_25C4C84D0();
    v56 = v112;
    v111 = *(v111 + 8);
    (v111)(v54, v112);
    v58 = v116;
    v57 = v117;
    v59 = *(v116 + 104);
    v60 = v114;
    v59(v114, *MEMORY[0x277D85180], v117);
    v61 = v115;
    *v115 = 0;
    v59(v61, *MEMORY[0x277D85168], v57);
    v62 = v90;
    MEMORY[0x25F887C70](v55, v60, v61, v91);
    v63 = *(v58 + 8);
    v63(v61, v57);
    v63(v60, v57);
    (v111)(v55, v56);
    v64 = v62;
    sub_25C4C87A0();
    v65 = type metadata accessor for NXXPCPendingRequest(0);
    v66 = v65[7];
    v67 = sub_25C4C7E00();
    v68 = v113;
    (*(*(v67 - 8) + 16))(v113 + v66, v118, v67);
    v69 = v95;
    *v68 = v120;
    v68[1] = v69;
    v70 = v102;
    v71 = v103;
    v68[2] = v102;
    v68[3] = v71;
    v72 = v98;
    v73 = v99;
    v68[4] = v98;
    v68[5] = v73;
    v74 = (v68 + v65[8]);
    v75 = v119;
    *v74 = v97;
    v74[1] = v75;
    *(v68 + v65[9]) = v64;
    (*(*(v65 - 1) + 56))(v68, 0, 1, v65);
    swift_beginAccess();

    swift_unknownObjectRetain();

    sub_25C459FB0(v72, v73);
    sub_25C45F934(v68, v93);
    swift_endAccess();
    swift_unknownObjectRelease();
    v76 = v96;
    if (v96)
    {
      v36 = v101;
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v77 = sub_25C4C7BD0();
      __swift_project_value_buffer(v77, qword_27FC0AC48);

      v78 = sub_25C4C7BB0();
      v79 = sub_25C4C8720();

      v80 = os_log_type_enabled(v78, v79);
      v81 = v120;
      if (v80)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        aBlock = v83;
        *v82 = 136315394;
        *(v82 + 4) = sub_25C458990(v81, v69, &aBlock);
        *(v82 + 12) = 2080;
        *(v82 + 14) = sub_25C458990(v70, v71, &aBlock);
        _os_log_impl(&dword_25C452000, v78, v79, "Subscriber launch: id=%s, request=%s", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x25F888630](v83, -1, -1);
        MEMORY[0x25F888630](v82, -1, -1);
      }

      xpc_dictionary_create_empty();
      v84 = *(v76 + 48);
      v85 = swift_allocObject();
      v85[2] = v81;
      v85[3] = v69;
      v85[4] = v70;
      v85[5] = v71;
      v125 = sub_25C465954;
      v126 = v85;
      aBlock = MEMORY[0x277D85DD0];
      v122 = 1107296256;
      v123 = sub_25C456294;
      v124 = &block_descriptor_22;
      v86 = _Block_copy(&aBlock);

      swift_unknownObjectRetain();

      v87 = v100;
      xpc_event_publisher_fire_with_reply();

      _Block_release(v86);

      swift_unknownObjectRelease_n();
    }

    else
    {

      v36 = v101;
    }
  }

  return v36 != 0;
}

uint64_t sub_25C460F14(void (*a1)(void, void, void), uint64_t a2)
{
  v121 = a2;
  v124 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1B8, &qword_25C4C9B08);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v113 = &v103 - v5;
  v120 = type metadata accessor for NXXPCPendingRequest(0);
  v6 = *(v120 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v120);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v103 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v112 = &v103 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = (&v103 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v103 - v19);
  MEMORY[0x28223BE20](v18);
  v114 = &v103 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E0, &qword_25C4C9B18);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v103 - v27);
  v29 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests;
  swift_beginAccess();
  v110 = v29;
  v30 = *(v2 + v29);
  v31 = *(v30 + 64);
  v119 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v105 = (v32 + 63) >> 6;
  v115 = v6;
  v109 = (v6 + 56);
  v116 = v30;

  v36 = 0;
  v117 = 0;
  *&v37 = 136315394;
  v104 = v37;
  *&v37 = 136315650;
  v103 = v37;
  v125 = v2;
  v126 = v28;
  v127 = v26;
  v108 = v10;
  v106 = v13;
  v122 = v20;
  v38 = v119;
  if (!v34)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v39 = v36;
LABEL_17:
      v42 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v43 = v42 | (v39 << 6);
      v44 = *(*(v116 + 48) + 8 * v43);
      v45 = v114;
      sub_25C465CD4(*(v116 + 56) + *(v115 + 72) * v43, v114, type metadata accessor for NXXPCPendingRequest);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E8, &qword_25C4C9B20);
      v47 = *(v46 + 48);
      v48 = v127;
      *v127 = v44;
      v26 = v48;
      sub_25C465D3C(v45, &v48[v47], type metadata accessor for NXXPCPendingRequest);
      (*(*(v46 - 8) + 56))(v26, 0, 1, v46);
      v28 = v126;
LABEL_18:
      sub_25C465DA4(v26, v28, &qword_27FC0A1E0, &qword_25C4C9B18);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E8, &qword_25C4C9B20);
      if ((*(*(v49 - 8) + 48))(v28, 1, v49) == 1)
      {
      }

      v50 = *v28;
      sub_25C465D3C(v28 + *(v49 + 48), v20, type metadata accessor for NXXPCPendingRequest);
      v51 = v20[3];
      v128 = v20[2];
      if ((v128 != v124 || v51 != v121) && (sub_25C4C89E0() & 1) == 0)
      {
        break;
      }

      v123 = v51;
      v52 = v113;
      v53 = v120;
      (*v109)(v113, 1, 1, v120);
      swift_beginAccess();
      sub_25C45F934(v52, v50);
      swift_endAccess();
      v54 = *(v53 + 36);
      v20 = v122;
      v55 = *(v122 + v54);
      swift_getObjectType();
      sub_25C4C8790();
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      v56 = sub_25C4C7BD0();
      v57 = __swift_project_value_buffer(v56, qword_27FC0AC48);
      v58 = v111;
      sub_25C465CD4(v20, v111, type metadata accessor for NXXPCPendingRequest);
      v59 = v112;
      sub_25C465CD4(v20, v112, type metadata accessor for NXXPCPendingRequest);
      v118 = v57;
      v60 = sub_25C4C7BB0();
      v61 = sub_25C4C8720();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = v59;
        v107 = swift_slowAlloc();
        v129 = v107;
        *v62 = v104;
        v64 = *v58;
        v65 = v58[1];

        sub_25C465E0C(v58, type metadata accessor for NXXPCPendingRequest);
        v66 = sub_25C458990(v64, v65, &v129);

        *(v62 + 4) = v66;
        *(v62 + 12) = 2080;
        v67 = *(v63 + 16);
        v68 = *(v63 + 24);

        sub_25C465E0C(v63, type metadata accessor for NXXPCPendingRequest);
        v69 = sub_25C458990(v67, v68, &v129);

        *(v62 + 14) = v69;
        _os_log_impl(&dword_25C452000, v60, v61, "Subscriber request handle: id=%s, request=%s", v62, 0x16u);
        v70 = v107;
        swift_arrayDestroy();
        MEMORY[0x25F888630](v70, -1, -1);
        v71 = v62;
        v20 = v122;
        MEMORY[0x25F888630](v71, -1, -1);
      }

      else
      {

        sub_25C465E0C(v59, type metadata accessor for NXXPCPendingRequest);
        sub_25C465E0C(v58, type metadata accessor for NXXPCPendingRequest);
      }

      Strong = swift_weakLoadStrong();
      v73 = v123;
      if (Strong)
      {
        v74 = v20[4];
        v75 = v20[5];
        v76 = *(v120 + 28);
        v77 = v20 + *(v120 + 32);
        v78 = *v77;
        v79 = *(v77 + 1);

        sub_25C459FB0(v74, v75);

        v80 = v20 + v76;
        v81 = v117;
        sub_25C4892D0(v128, v73, v74, v75, v80, 0, v78, v79);
        if (v81)
        {

          sub_25C45A004(v74, v75);

          v82 = v106;
          sub_25C465CD4(v20, v106, type metadata accessor for NXXPCPendingRequest);
          v83 = v108;
          sub_25C465CD4(v20, v108, type metadata accessor for NXXPCPendingRequest);
          v84 = v81;
          v85 = sub_25C4C7BB0();
          v86 = sub_25C4C8710();

          v87 = v81;
          if (os_log_type_enabled(v85, v86))
          {
            v88 = swift_slowAlloc();
            v128 = v78;
            v89 = v88;
            v90 = swift_slowAlloc();
            v129 = v90;
            *v89 = v103;
            LODWORD(v123) = v86;
            v91 = *v82;
            v92 = v82[1];

            sub_25C465E0C(v106, type metadata accessor for NXXPCPendingRequest);
            v93 = sub_25C458990(v91, v92, &v129);

            *(v89 + 4) = v93;
            *(v89 + 12) = 2080;
            v94 = *(v108 + 2);
            v95 = *(v108 + 3);

            sub_25C465E0C(v108, type metadata accessor for NXXPCPendingRequest);
            v96 = sub_25C458990(v94, v95, &v129);

            *(v89 + 14) = v96;
            *(v89 + 22) = 2080;
            swift_getErrorValue();
            v97 = sub_25C4C8A30();
            v99 = sub_25C458990(v97, v98, &v129);

            *(v89 + 24) = v99;
            _os_log_impl(&dword_25C452000, v85, v123, "### Subscriber request handle failed: id=%s, request=%s, error=%s", v89, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x25F888630](v90, -1, -1);
            v100 = v89;
            v78 = v128;
            MEMORY[0x25F888630](v100, -1, -1);
          }

          else
          {

            sub_25C465E0C(v83, type metadata accessor for NXXPCPendingRequest);
            sub_25C465E0C(v82, type metadata accessor for NXXPCPendingRequest);
          }

          v26 = v127;
          v102 = v87;
          v78(v87, 0, 1);

          v20 = v122;
          result = sub_25C465E0C(v122, type metadata accessor for NXXPCPendingRequest);
          v117 = 0;
          goto LABEL_7;
        }

        v117 = 0;
        sub_25C465E0C(v20, type metadata accessor for NXXPCPendingRequest);

        sub_25C45A004(v74, v75);
      }

      else
      {
        result = sub_25C465E0C(v20, type metadata accessor for NXXPCPendingRequest);
      }

      v26 = v127;
LABEL_7:
      v28 = v126;
      v38 = v119;
      if (!v34)
      {
        goto LABEL_9;
      }
    }

    result = sub_25C465E0C(v20, type metadata accessor for NXXPCPendingRequest);
    v38 = v119;
  }

  while (v34);
LABEL_9:
  if (v105 <= v36 + 1)
  {
    v40 = v36 + 1;
  }

  else
  {
    v40 = v105;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v39 >= v105)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A1E8, &qword_25C4C9B20);
      (*(*(v101 - 8) + 56))(v26, 1, 1, v101);
      v34 = 0;
      v36 = v41;
      goto LABEL_18;
    }

    v34 = *(v38 + 8 * v39);
    ++v36;
    if (v34)
    {
      v36 = v39;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25C461B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  swift_unknownObjectRetain();
  LOBYTE(v5) = v6(a2, a3);
  swift_unknownObjectRelease();
  return v5 & 1;
}

void *sub_25C461B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

uint64_t sub_25C461BDC()
{
  swift_weakDestroy();

  v1 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__environment;
  v2 = sub_25C4C7B30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations);

  v4 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations);

  v5 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests);

  v6 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests);

  v7 = *(v0 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers);

  return v0;
}

uint64_t sub_25C461CAC()
{
  sub_25C461BDC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25C461DB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 25705;
    }

    else
    {
      v3 = 0x6769666E6F63;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6976726553736469;
    v4 = 0xEC00000044496563;
  }

  else if (a1 == 3)
  {
    v3 = 0x6F6974617265706FLL;
    v4 = 0xEA0000000000736ELL;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x7374736575716572;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 25705;
    }

    else
    {
      v9 = 0x6769666E6F63;
    }

    if (a2)
    {
      v8 = 0xE200000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6F6974617265706FLL;
    v6 = 0xEA0000000000736ELL;
    if (a2 != 3)
    {
      v5 = 0x7374736575716572;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6976726553736469;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEC00000044496563;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_25C4C89E0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_25C461F40()
{
  v1 = *v0;
  sub_25C4C8A60();
  sub_25C4C8580();

  return sub_25C4C8A90();
}

uint64_t sub_25C462020()
{
  *v0;
  *v0;
  *v0;
  sub_25C4C8580();
}

uint64_t sub_25C4620EC()
{
  v1 = *v0;
  sub_25C4C8A60();
  sub_25C4C8580();

  return sub_25C4C8A90();
}

uint64_t sub_25C4621C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25C465E6C();
  *a2 = result;
  return result;
}

void sub_25C4621F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6769666E6F63;
  v5 = 0xEC00000044496563;
  v6 = 0x6976726553736469;
  v7 = 0xEA0000000000736ELL;
  v8 = 0x6F6974617265706FLL;
  if (v2 != 3)
  {
    v8 = 0x7374736575716572;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 25705;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25C462294()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

char *sub_25C4622E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A2B0, &unk_25C4C9D30);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_25C4623E8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25C465090(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25C462454(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_25C462454(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C4C8990();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_25C4C85F0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25C46261C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25C46254C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25C46254C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_25C4C89E0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25C46261C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_25C462EAC(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_25C462BF8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_25C4C89E0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_25C4C89E0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25C4622E4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25C4622E4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_25C462BF8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25C462EAC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_25C462E20(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_25C4C89E0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_25C462BF8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_25C4C89E0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_25C4C89E0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_25C462E20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25C462EAC(v3);
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

unint64_t sub_25C462EC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25C4C8A60();
  sub_25C4C8580();
  v6 = sub_25C4C8A90();

  return sub_25C4641B0(a1, a2, v6);
}

unint64_t sub_25C462F38(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25C4C8A50();

  return sub_25C464268(a1, v4);
}

uint64_t sub_25C462F7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A0, &unk_25C4C9D18);
  v38 = a2;
  result = sub_25C4C8970();
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
      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
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

uint64_t sub_25C463224(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A298, &qword_25C4C9D10);
  result = sub_25C4C8970();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_25C4C8A50();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25C463494(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v46 = a6;
  v9 = v6;
  v44 = *(a3(0) - 8);
  v12 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v43 - v13;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v45 = a2;
  result = sub_25C4C8970();
  v18 = result;
  if (*(v15 + 16))
  {
    v43 = v9;
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
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(*(v15 + 48) + 8 * v30);
      v32 = *(v44 + 72);
      v33 = *(v15 + 56) + v32 * v30;
      if (v45)
      {
        sub_25C465D3C(v33, v14, v46);
      }

      else
      {
        sub_25C465CD4(v33, v14, v46);
      }

      v34 = *(v18 + 40);
      result = sub_25C4C8A50();
      v35 = -1 << *(v18 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v25 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v25 + 8 * v37);
          if (v41 != -1)
          {
            v26 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v36) & ~*(v25 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v18 + 48) + 8 * v26) = v31;
      result = sub_25C465D3C(v14, *(v18 + 56) + v32 * v26, v46);
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v9 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v15 + 32);
    v9 = v43;
    if (v42 >= 64)
    {
      bzero((v15 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v42;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_25C4637B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C4C8810() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25C4C8A60();

      sub_25C4C8580();
      v13 = sub_25C4C8A90();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25C463960(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C4C8810() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = sub_25C4C8A50();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C463AD0(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_25C4C8810() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v7);
      v14 = *v13;
      result = sub_25C4C8A50();
      v15 = result & v9;
      if (v4 >= v10)
      {
        if (v15 < v10 || v4 < v15)
        {
          goto LABEL_5;
        }
      }

      else if (v15 < v10 && v4 < v15)
      {
        goto LABEL_5;
      }

      v18 = (v12 + 8 * v4);
      if (v4 != v7 || v18 >= v13 + 1)
      {
        *v18 = *v13;
      }

      v19 = *(a2 + 56);
      v20 = *(*(a3(0) - 8) + 72);
      v21 = v20 * v4;
      result = v19 + v20 * v4;
      v22 = v20 * v7;
      v23 = v19 + v20 * v7 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C463C84(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_25C462F38(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_25C463224(v14, a3 & 1);
      v18 = *v4;
      result = sub_25C462F38(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_25C4C8A20();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_25C464444();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_25C463DD0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25C462F38(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for NXXPCPendingOperation(0);
        return sub_25C466758(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NXXPCPendingOperation);
      }

      return sub_25C464108(v10, a2, a1, v16, type metadata accessor for NXXPCPendingOperation, type metadata accessor for NXXPCPendingOperation);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25C4645A0(type metadata accessor for NXXPCPendingOperation, &qword_27FC0A288, &unk_25C4C9D00, type metadata accessor for NXXPCPendingOperation);
      goto LABEL_7;
    }

    sub_25C463494(v13, a3 & 1, type metadata accessor for NXXPCPendingOperation, &qword_27FC0A288, &unk_25C4C9D00, type metadata accessor for NXXPCPendingOperation);
    v20 = *v4;
    v21 = sub_25C462F38(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_25C464108(v10, a2, a1, v16, type metadata accessor for NXXPCPendingOperation, type metadata accessor for NXXPCPendingOperation);
    }
  }

  result = sub_25C4C8A20();
  __break(1u);
  return result;
}

uint64_t sub_25C463F6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_25C462F38(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  else
  {
    v14 = v9;
    v15 = v8[3];
    if (v15 >= v13 && (a3 & 1) != 0)
    {
LABEL_7:
      v16 = *v4;
      if (v14)
      {
LABEL_8:
        v17 = v16[7];
        v18 = type metadata accessor for NXXPCPendingRequest(0);
        return sub_25C466758(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NXXPCPendingRequest);
      }

      return sub_25C464108(v10, a2, a1, v16, type metadata accessor for NXXPCPendingRequest, type metadata accessor for NXXPCPendingRequest);
    }

    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_25C4645A0(type metadata accessor for NXXPCPendingRequest, &qword_27FC0A280, &qword_25C4C9CF8, type metadata accessor for NXXPCPendingRequest);
      goto LABEL_7;
    }

    sub_25C463494(v13, a3 & 1, type metadata accessor for NXXPCPendingRequest, &qword_27FC0A280, &qword_25C4C9CF8, type metadata accessor for NXXPCPendingRequest);
    v20 = *v4;
    v21 = sub_25C462F38(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      return sub_25C464108(v10, a2, a1, v16, type metadata accessor for NXXPCPendingRequest, type metadata accessor for NXXPCPendingRequest);
    }
  }

  result = sub_25C4C8A20();
  __break(1u);
  return result;
}

uint64_t sub_25C464108(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v10 = a4[7];
  v11 = a5(0);
  result = sub_25C465D3C(a3, v10 + *(*(v11 - 8) + 72) * a1, a6);
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

unint64_t sub_25C4641B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_25C4C89E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25C464268(uint64_t a1, uint64_t a2)
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

void *sub_25C4642D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A0, &unk_25C4C9D18);
  v2 = *v0;
  v3 = sub_25C4C8960();
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

void *sub_25C464444()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A298, &qword_25C4C9D10);
  v2 = *v0;
  v3 = sub_25C4C8960();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_25C4645A0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v36 = a4;
  v7 = v4;
  v35 = *(a1(0) - 8);
  v8 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v34 = &v32 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v4;
  v11 = sub_25C4C8960();
  v12 = v11;
  if (*(v10 + 16))
  {
    v33 = v7;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v10 + 16);
    v37 = v12;
    *(v12 + 16) = v17;
    v18 = 1 << *(v10 + 32);
    v19 = *(v10 + 64);
    v20 = -1;
    if (v18 < 64)
    {
      v20 = ~(-1 << v18);
    }

    v21 = v20 & v19;
    v22 = (v18 + 63) >> 6;
    if ((v20 & v19) != 0)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_17:
        v26 = v23 | (v16 << 6);
        v27 = *(*(v10 + 48) + 8 * v26);
        v28 = v34;
        v29 = *(v35 + 72) * v26;
        v30 = v36;
        sub_25C465CD4(*(v10 + 56) + v29, v34, v36);
        v31 = v37;
        *(*(v37 + 48) + 8 * v26) = v27;
        result = sub_25C465D3C(v28, *(v31 + 56) + v29, v30);
      }

      while (v21);
    }

    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v16 >= v22)
      {

        v7 = v33;
        v12 = v37;
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v16);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
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

uint64_t sub_25C4647CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25C4C8A60();
  sub_25C4C8580();
  v9 = sub_25C4C8A90();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25C4C89E0() & 1) != 0)
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

    sub_25C464B7C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25C46491C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A8, &qword_25C4C9D28);
  result = sub_25C4C88C0();
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
      sub_25C4C8A60();
      sub_25C4C8580();
      result = sub_25C4C8A90();
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

uint64_t sub_25C464B7C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25C46491C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25C464CFC();
      goto LABEL_16;
    }

    sub_25C464E58(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_25C4C8A60();
  sub_25C4C8580();
  result = sub_25C4C8A90();
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

      result = sub_25C4C89E0();
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
  result = sub_25C4C8A10();
  __break(1u);
  return result;
}

void *sub_25C464CFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A8, &qword_25C4C9D28);
  v2 = *v0;
  v3 = sub_25C4C88B0();
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

uint64_t sub_25C464E58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC0A2A8, &qword_25C4C9D28);
  result = sub_25C4C88C0();
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
      sub_25C4C8A60();

      sub_25C4C8580();
      result = sub_25C4C8A90();
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

char *sub_25C4650A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC0A760, &qword_25C4C9998);
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

uint64_t sub_25C4651B0(uint64_t a1)
{
  swift_weakInit();
  v3 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingOperations) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredOperations) = v3;
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__pendingRequests) = v3;
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__registeredRequests) = v3;
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__subscribers) = v3;
  *(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher) = 0;
  swift_weakAssign();
  v4 = *(a1 + 16);
  *(v1 + 24) = v4;
  v5 = OBJC_IVAR____TtC11NexusDaemon8NXDaemon_environment;
  v6 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__environment;
  v7 = sub_25C4C7B30();
  (*(*(v7 - 8) + 16))(v1 + v6, a1 + v5, v7);
  v8 = v4;
  return v1;
}

void sub_25C4652A8()
{
  v1 = v0;
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v2 = sub_25C4C7BD0();
  __swift_project_value_buffer(v2, qword_27FC0AC48);
  v3 = sub_25C4C7BB0();
  v4 = sub_25C4C8720();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25C452000, v3, v4, "Activate", v5, 2u);
    MEMORY[0x25F888630](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher;
  if (!*(v1 + OBJC_IVAR____TtC11NexusDaemon14NXXPCPublisher__xpcPublisher))
  {
    sub_25C4C7CD0();
    v7 = *(v1 + 24);
    sub_25C4C8570();

    v8 = xpc_event_publisher_create();

    if (v8)
    {
      v9 = *(v1 + v6);
      *(v1 + v6) = v8;
      v10 = v8;

      v11 = swift_allocObject();
      swift_weakInit();
      v21 = sub_25C46685C;
      v22 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_25C45CCB8;
      v20 = &block_descriptor_53;
      v12 = _Block_copy(&aBlock);

      xpc_event_publisher_set_handler();
      _Block_release(v12);
      v21 = sub_25C45CD38;
      v22 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v18 = 1107296256;
      v19 = sub_25C45CE38;
      v20 = &block_descriptor_56;
      v13 = _Block_copy(&aBlock);
      xpc_event_publisher_set_error_handler();
      _Block_release(v13);
      xpc_event_publisher_activate();
    }

    else
    {
      if (qword_27FC0AC40 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_27FC0AC48);
      oslog = sub_25C4C7BB0();
      v14 = sub_25C4C8710();
      if (os_log_type_enabled(oslog, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25C452000, oslog, v14, "### XPC publisher create failed", v15, 2u);
        MEMORY[0x25F888630](v15, -1, -1);
      }
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_25C465660()
{
  if (qword_27FC0AC40 != -1)
  {
    swift_once();
  }

  v0 = sub_25C4C7BD0();
  __swift_project_value_buffer(v0, qword_27FC0AC48);
  v1 = sub_25C4C7BB0();
  v2 = sub_25C4C8720();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_25C452000, v1, v2, "Invalidate", v3, 2u);
    MEMORY[0x25F888630](v3, -1, -1);
  }

  return sub_25C45D11C();
}

unint64_t sub_25C465784()
{
  result = qword_27FC0A1C0;
  if (!qword_27FC0A1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC0A1C0);
  }

  return result;
}

uint64_t sub_25C4657D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C465818(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25C46586C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C4658A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_25C465968(uint64_t a1, char *a2, const char *a3)
{
  v7 = v3[2];
  v6 = v3[3];
  v9 = v3[4];
  v8 = v3[5];
  v10 = CUXPCDecodeNSErrorIfNeeded();
  v11 = 0x27FC0A000uLL;
  if (v10)
  {
    v12 = v10;
    format = a2;
    v33 = a3;
    if (qword_27FC0AC40 != -1)
    {
      swift_once();
    }

    v13 = sub_25C4C7BD0();
    __swift_project_value_buffer(v13, qword_27FC0AC48);

    v14 = v12;
    v15 = sub_25C4C7BB0();
    v16 = sub_25C4C8710();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v17 = 136315650;
      *(v17 + 4) = sub_25C458990(v7, v6, &v34);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_25C458990(v9, v8, &v34);
      *(v17 + 22) = 2080;
      swift_getErrorValue();
      v18 = sub_25C4C8A30();
      v20 = v7;
      v21 = v9;
      v22 = sub_25C458990(v18, v19, &v34);

      *(v17 + 24) = v22;
      v9 = v21;
      v7 = v20;
      v11 = 0x27FC0A000;
      _os_log_impl(&dword_25C452000, v15, v16, format, v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x25F888630](v31, -1, -1);
      MEMORY[0x25F888630](v17, -1, -1);
    }

    else
    {
    }

    a3 = v33;
  }

  if (*(v11 + 3136) != -1)
  {
    swift_once();
  }

  v23 = sub_25C4C7BD0();
  __swift_project_value_buffer(v23, qword_27FC0AC48);

  v24 = sub_25C4C7BB0();
  v25 = sub_25C4C8720();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v7;
    v29 = v9;
    v30 = v27;
    v34 = v27;
    *v26 = 136315394;
    *(v26 + 4) = sub_25C458990(v28, v6, &v34);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_25C458990(v29, v8, &v34);
    _os_log_impl(&dword_25C452000, v24, v25, a3, v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F888630](v30, -1, -1);
    MEMORY[0x25F888630](v26, -1, -1);
  }
}

uint64_t sub_25C465CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C465D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C465DA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C465E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25C465E6C()
{
  v0 = sub_25C4C8980();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25C465EB8(uint64_t a1)
{
  result = sub_25C4657D0(&qword_27FC0A1F0, type metadata accessor for NXXPCPublisher);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25C465F34()
{
  result = qword_27FC0A1F8;
  if (!qword_27FC0A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC0A1F8);
  }

  return result;
}

uint64_t sub_25C465F90()
{
  result = sub_25C4C7B30();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NXXPCEventKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NXXPCEventKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25C4661DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25C4C7B20();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25C46629C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25C4C7B20();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_25C466340()
{
  result = sub_25C4C7B20();
  if (v1 <= 0x3F)
  {
    result = sub_25C4663EC();
    if (v2 <= 0x3F)
    {
      result = sub_25C46643C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_25C4663EC()
{
  result = qword_27FC0A208;
  if (!qword_27FC0A208)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FC0A208);
  }

  return result;
}

unint64_t sub_25C46643C()
{
  result = qword_27FC0A270;
  if (!qword_27FC0A270)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FC0A270);
  }

  return result;
}

uint64_t sub_25C4664B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25C4C7E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25C466574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25C4C7E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}