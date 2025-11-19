uint64_t sub_1BCF10358(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = *(v6 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1BCF104CC, 0, 0);
  }

  else
  {
    v10 = *(v6 + 24);

    v11 = *(v8 + 8);

    return v11(a1, a2);
  }
}

uint64_t sub_1BCF104E4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 48);
  v9 = *(*v3 + 40);
  v10 = *(*v3 + 32);
  v11 = *(*v3 + 16);
  v12 = *v3;

  sub_1BCF05424(v10, v9);
  if (v4)
  {
    v13 = sub_1BCF2159C();

    v14 = v13;
    v15 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v14 = 0;
    v15 = 0;
    v13 = 0;
  }

  else
  {
    v16 = sub_1BCF215AC();
    sub_1BCF05424(a1, a2);
    v15 = v16;
    v14 = 0;
    v13 = v16;
  }

  v17 = *(v7 + 24);
  (v17)[2](v17, v15, v14);

  _Block_release(v17);
  v18 = *(v12 + 8);

  return v18();
}

uint64_t sub_1BCF106D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BCF10714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v24 - v10;
  sub_1BCF0E6FC(a3, v24 - v10);
  v12 = sub_1BCF21C5C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BCEFAC9C(v11);
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

  sub_1BCF21C4C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1BCF21BDC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1BCF21AAC() + 32;
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

    sub_1BCEFAC9C(a3);

    return v22;
  }

LABEL_8:
  sub_1BCEFAC9C(a3);
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

uint64_t sub_1BCF109D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1BCF099D4;

  return sub_1BCEF91F4(a1, v5);
}

uint64_t DarwinDispatchListener.__allocating_init()()
{
  v0 = swift_allocObject();
  DarwinDispatchListener.init()();
  return v0;
}

void *DarwinDispatchListener.init()()
{
  v1 = v0;
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 96);
  type metadata accessor for DispatchClientTable();
  v0[2] = DispatchClientTable.__allocating_init()();
  v2 = MEMORY[0x1E69E72F0];
  swift_getTupleTypeMetadata2();
  v3 = sub_1BCF21B5C();
  v4 = sub_1BCF0408C(v3, v6, v2, v7);

  v1[3] = v4;
  return v1;
}

void sub_1BCF10BCC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v46 = *(v4 - 8);
  v5 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v42 - v6;
  v8 = sub_1BCF21D4C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v50 = &v42 - v10;
  v11 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v42 - v14;
  v45 = *(swift_getAssociatedConformanceWitness() + 8);
  v49 = AssociatedTypeWitness;
  v15 = swift_getAssociatedTypeWitness();
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  swift_beginAccess();
  v19 = *(v1 + 3);
  v20 = *(v2 + 96);

  LOBYTE(v2) = MEMORY[0x1BFB321D0](v21, v4, MEMORY[0x1E69E72F0], v20);

  if (v2)
  {
    v42 = v20;
    v44 = v3;
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v22 = v1;
    v23 = sub_1BCF2170C();
    __swift_project_value_buffer(v23, qword_1EDDD2780);
    v24 = sub_1BCF216EC();
    v25 = sub_1BCF21CAC();
    v26 = v15;
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1BCEF6000, v24, v25, "Darwin listener starting", v27, 2u);
      MEMORY[0x1BFB32D20](v27, -1, -1);
    }

    v43 = v11;
    sub_1BCF21E4C();
    sub_1BCF21AEC();
    swift_getAssociatedConformanceWitness();
    v28 = v50;
    v49 = v18;
    sub_1BCF21D5C();
    v29 = v28;
    v30 = v46;
    v31 = *(v46 + 48);
    v32 = v31(v29, 1, v4);
    v48 = v22;
    v33 = v30;
    v34 = v26;
    if (v32 != 1)
    {
      v35 = *(v33 + 32);
      do
      {
        v35(v7, v29, v4);
        sub_1BCF11BE4(v7);
        (*(v33 + 8))(v7, v4);
        sub_1BCF21D5C();
        v29 = v50;
      }

      while (v31(v50, 1, v4) != 1);
    }

    (*(v47 + 8))(v49, v34);
    sub_1BCF12F90();
    v36 = sub_1BCF21CDC();
    v37 = swift_allocObject();
    swift_weakInit();
    v38 = swift_allocObject();
    v39 = v42;
    v40 = v43;
    v38[2] = v4;
    v38[3] = v40;
    v38[4] = v39;
    v38[5] = *(v44 + 104);
    v38[6] = v37;
    aBlock[4] = sub_1BCF12FDC;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BCF11834;
    aBlock[3] = &block_descriptor_2;
    v41 = _Block_copy(aBlock);

    xpc_set_event_stream_handler("com.apple.notifyd.matching", v36, v41);
    _Block_release(v41);
  }
}

void sub_1BCF11184(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v5 = sub_1BCF21D4C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39[-v9];
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v14 = sub_1BCF2170C();
  __swift_project_value_buffer(v14, qword_1EDDD2780);
  swift_unknownObjectRetain();
  v15 = sub_1BCF216EC();
  v16 = sub_1BCF21CCC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44 = v11;
    v18 = v17;
    v41 = swift_slowAlloc();
    v47[0] = v41;
    *v18 = 136315138;
    v19 = [a1 description];
    v43 = a1;
    v20 = v19;
    v21 = sub_1BCF21A8C();
    v40 = v16;
    v22 = v10;
    v23 = a3;
    v24 = v5;
    v25 = v21;
    v42 = v6;
    v27 = v26;

    v28 = v25;
    v5 = v24;
    a3 = v23;
    v10 = v22;
    v29 = sub_1BCEF84F4(v28, v27, v47);
    v6 = v42;

    *(v18 + 4) = v29;
    a1 = v43;
    _os_log_impl(&dword_1BCEF6000, v15, v40, "Handling xpc stream event %s", v18, 0xCu);
    v30 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1BFB32D20](v30, -1, -1);
    v31 = v18;
    v11 = v44;
    MEMORY[0x1BFB32D20](v31, -1, -1);
  }

  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E40]))
  {
    v47[0] = sub_1BCF21ACC();
    v47[1] = v32;
    sub_1BCF21B1C();
    if ((*(v11 + 48))(v10, 1, a3) == 1)
    {
      (*(v6 + 8))(v10, v5);
      v33 = sub_1BCF216EC();
      v34 = sub_1BCF21CBC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1BCEF6000, v33, v34, "Event name didn't match any message code", v35, 2u);
        MEMORY[0x1BFB32D20](v35, -1, -1);
      }
    }

    else
    {
      (*(v11 + 32))(v46, v10, a3);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1BCF12410(v46);
      }

      (*(v11 + 8))(v46, a3);
    }
  }

  else
  {
    v36 = sub_1BCF216EC();
    v37 = sub_1BCF21CBC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1BCEF6000, v36, v37, "Stream event missing name", v38, 2u);
      MEMORY[0x1BFB32D20](v38, -1, -1);
    }
  }

  sub_1BCF1165C(a1);
}

void sub_1BCF1165C(void *a1)
{
  if (xpc_dictionary_create_reply(a1))
  {
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1BCF2170C();
    __swift_project_value_buffer(v1, qword_1EDDD2780);
    v2 = sub_1BCF216EC();
    v3 = sub_1BCF21CCC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BCEF6000, v2, v3, "Sending xpc stream reply", v4, 2u);
      MEMORY[0x1BFB32D20](v4, -1, -1);
    }

    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v5 = sub_1BCF2170C();
    __swift_project_value_buffer(v5, qword_1EDDD2780);
    oslog = sub_1BCF216EC();
    v6 = sub_1BCF21CCC();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BCEF6000, oslog, v6, "No xpc stream reply required", v7, 2u);
      MEMORY[0x1BFB32D20](v7, -1, -1);
    }
  }
}

uint64_t sub_1BCF11834(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BCF11894(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v23 - v5;
  v7 = sub_1BCF21D4C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - v9;
  v26 = v1;
  v11 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = swift_getAssociatedTypeWitness();
  v25 = *(v15 - 8);
  v16 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  sub_1BCF21E4C();
  sub_1BCF21AEC();
  swift_getAssociatedConformanceWitness();
  v27 = v18;
  v28 = v15;
  sub_1BCF21D5C();
  v19 = v24;
  v20 = *(v24 + 48);
  if (v20(v10, 1, v3) != 1)
  {
    v21 = *(v19 + 32);
    do
    {
      v21(v6, v10, v3);
      sub_1BCF12BF0(v6);
      (*(v19 + 8))(v6, v3);
      sub_1BCF21D5C();
    }

    while (v20(v10, 1, v3) != 1);
  }

  return (*(v25 + 8))(v27, v28);
}

uint64_t sub_1BCF11BE4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v50[2] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v38 = v9;
  v39 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v36 - v10;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v12 = sub_1BCF2170C();
  __swift_project_value_buffer(v12, qword_1EDDD2780);
  v41 = *(v6 + 16);
  v42 = v6 + 16;
  v41(v11, v3, v5);
  v13 = sub_1BCF216EC();
  v14 = sub_1BCF21CCC();
  v15 = os_log_type_enabled(v13, v14);
  v40 = v3;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = v4;
    v36[0] = v4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v50[0] = v19;
    *v18 = 136315138;
    v20 = *(v17 + 104);
    sub_1BCF21B0C();
    (*(v6 + 8))(v11, v5);
    v21 = sub_1BCEF84F4(aBlock, v45, v50);

    *(v18 + 4) = v21;
    v22 = v36[0];
    _os_log_impl(&dword_1BCEF6000, v13, v14, "Registering darwin notification %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v23 = v19;
    v3 = v40;
    MEMORY[0x1BFB32D20](v23, -1, -1);
    MEMORY[0x1BFB32D20](v18, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v11, v5);
    v20 = *(v4 + 104);
    v22 = v4;
  }

  out_token = -1;
  sub_1BCF21B0C();
  v36[1] = v50[1];
  v36[2] = v50[0];
  sub_1BCF12F90();
  v37 = sub_1BCF21CDC();
  v24 = v3;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v39;
  v41(v39, v24, v5);
  v27 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v28 = v38 + v27 + 7;
  v38 = v2;
  v29 = v28 & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = v5;
  *(v30 + 3) = *(v22 + 88);
  *(v30 + 4) = *(v22 + 96);
  *(v30 + 5) = v20;
  (*(v6 + 32))(&v30[v27], v26, v5);
  *&v30[v29] = v25;
  v48 = sub_1BCF131C4;
  v49 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v45 = 1107296256;
  v46 = sub_1BCF123BC;
  v47 = &block_descriptor_15;
  v31 = _Block_copy(&aBlock);

  v32 = sub_1BCF21AAC();

  v33 = v37;
  notify_register_dispatch((v32 + 32), &out_token, v37, v31);

  _Block_release(v31);

  v41(v26, v40, v5);
  LODWORD(v50[0]) = out_token;
  BYTE4(v50[0]) = 0;
  swift_beginAccess();
  sub_1BCF21A1C();
  sub_1BCF21A4C();
  result = swift_endAccess();
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BCF120DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCF21C3C();
  sub_1BCF21C2C();
  sub_1BCF21BDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BCF2170C();
  __swift_project_value_buffer(v10, qword_1EDDD2780);
  (*(v6 + 16))(v9, v19, a4);
  v11 = sub_1BCF216EC();
  v12 = sub_1BCF21CCC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18 = a3;
    v15 = v14;
    v20[0] = v14;
    *v13 = 136315138;
    sub_1BCF21B0C();
    (*(v6 + 8))(v9, a4);
    v16 = sub_1BCEF84F4(v20[1], v20[2], v20);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_1BCEF6000, v11, v12, "Received darwin message: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFB32D20](v15, -1, -1);
    MEMORY[0x1BFB32D20](v13, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, a4);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BCF12410(v19);
  }
}

uint64_t sub_1BCF123BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1BCF12410(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - v12;
  v14 = sub_1BCF21C5C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v6 + 16))(v9, a1, v5);
  v15 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v5;
  *(v16 + 40) = *(v4 + 88);
  *(v16 + 56) = *(v3 + 104);
  *(v16 + 64) = v1;
  (*(v6 + 32))(v16 + v15, v9, v5);

  sub_1BCF0E794(0, 0, v13, &unk_1BCF23468, v16);
}

uint64_t sub_1BCF12648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *a4;
  v5[10] = *a4;
  v7 = *(v6 + 80);
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF12740, 0, 0);
}

uint64_t sub_1BCF12740()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = *(v0[8] + 16);
  v0[14] = *(v0[10] + 104);
  sub_1BCF21B0C();
  v4 = v0[2];
  v5 = v0[3];
  v0[15] = v5;
  v0[4] = v4;
  v0[5] = v5;
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_1BCF1280C;

  return sub_1BCF14BE8((v0 + 4), 0, 0xF000000000000000);
}

uint64_t sub_1BCF1280C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *v1;
  v4[17] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BCF12970, 0, 0);
  }

  else
  {
    v5 = v4[13];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1BCF12970()
{
  v29 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  v6 = sub_1BCF2170C();
  __swift_project_value_buffer(v6, qword_1EDDD2780);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_1BCF216EC();
  v9 = sub_1BCF21CBC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[17];
  if (v10)
  {
    v12 = v0[13];
    v27 = v0[14];
    v14 = v0[11];
    v13 = v0[12];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v15 = 136315394;
    sub_1BCF21B0C();
    (*(v13 + 8))(v12, v14);
    v18 = sub_1BCEF84F4(v0[6], v0[7], &v28);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v16 = v20;
    _os_log_impl(&dword_1BCEF6000, v8, v9, "Failed to execute handler for darwin notification: %s: %@", v15, 0x16u);
    sub_1BCF05050(v16);
    MEMORY[0x1BFB32D20](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB32D20](v17, -1, -1);
    MEMORY[0x1BFB32D20](v15, -1, -1);
  }

  else
  {
    v22 = v0[12];
    v21 = v0[13];
    v23 = v0[11];

    (*(v22 + 8))(v21, v23);
  }

  v24 = v0[13];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1BCF12BF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - v7;
  swift_beginAccess();
  v9 = v1[3];
  v10 = *(v3 + 96);

  sub_1BCF21A3C();

  if ((v27 & 0x100000000) == 0)
  {
    v25 = v3;
    v12 = v27;
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1BCF2170C();
    __swift_project_value_buffer(v13, qword_1EDDD2780);
    (*(v5 + 16))(v8, a1, v4);
    v14 = sub_1BCF216EC();
    v15 = sub_1BCF21CCC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      HIDWORD(v23) = v12;
      v17 = v16;
      v18 = swift_slowAlloc();
      v24 = a1;
      v19 = v18;
      v26 = v18;
      *v17 = 136315138;
      v20 = *(v25 + 104);
      sub_1BCF21B0C();
      (*(v5 + 8))(v8, v4);
      v21 = sub_1BCEF84F4(v27, v28, &v26);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1BCEF6000, v14, v15, "Unregistering darwin notification %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFB32D20](v19, -1, -1);
      v22 = v17;
      v12 = HIDWORD(v23);
      MEMORY[0x1BFB32D20](v22, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    notify_cancel(v12);
    swift_beginAccess();
    sub_1BCF21A1C();
    sub_1BCF219FC();
    return swift_endAccess();
  }

  return result;
}

uint64_t DarwinDispatchListener.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t DarwinDispatchListener.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

unint64_t sub_1BCF12F90()
{
  result = qword_1EDDD1CC8[0];
  if (!qword_1EDDD1CC8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDDD1CC8);
  }

  return result;
}

void sub_1BCF12FDC(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  sub_1BCF11184(a1, v1[6], v1[2]);
}

uint64_t sub_1BCF130D4(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF099D4;

  return sub_1BCF12648(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_1BCF131C4(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = (*(*(v1[2] - 8) + 80) + 48) & ~*(*(v1[2] - 8) + 80);
  return sub_1BCF120DC(a1, v1 + v5, *(v1 + ((*(*(v1[2] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)), v1[2]);
}

uint64_t sub_1BCF13238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = v23 - v9;
  sub_1BCF0E6FC(a3, v23 - v9);
  v11 = sub_1BCF21C5C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1BCEFAC9C(v10);
  }

  else
  {
    sub_1BCF21C4C();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BCF21BDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BCF21AAC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1BCEFAC9C(a3);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BCEFAC9C(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BCF134B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1BCF0E6FC(a3, v24 - v10);
  v12 = sub_1BCF21C5C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BCEFAC9C(v11);
  }

  else
  {
    sub_1BCF21C4C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1BCF21BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1BCF21AAC() + 32;

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

      sub_1BCEFAC9C(a3);

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

  sub_1BCEFAC9C(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t DispatchClientTable.__allocating_init()()
{
  v0 = swift_allocObject();
  DispatchClientTable.init()();
  return v0;
}

uint64_t sub_1BCF13758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DispatchClientTable.Priority();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for DispatchClientTable.Registration();
  v10 = (a4 + *(result + 52));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t *DispatchClientTable.init()()
{
  v1 = *v0;
  v2 = *v0;
  swift_defaultActor_initialize();
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v10 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for DispatchClientTable.Registration();
  v6 = sub_1BCF21BCC();
  swift_getTupleTypeMetadata2();
  v7 = sub_1BCF21B5C();
  v8 = sub_1BCF0408C(v7, AssociatedTypeWitness, v6, v4);

  v0[14] = v8;
  return v0;
}

uint64_t sub_1BCF139A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v32 = a2;
  v33 = a3;
  v5 = *(*v4 + 88);
  v6 = *(*v4 + 96);
  v7 = *(*v4 + 104);
  v37 = *(*v4 + 80);
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v30 = type metadata accessor for DispatchClientTable.Priority();
  v27 = *(v30 - 8);
  v8 = *(v27 + 8);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v26 - v9;
  v38 = v5;
  v34 = v5;
  v39 = v6;
  v40 = v7;
  v10 = type metadata accessor for DispatchClientTable.Registration();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v26 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v26 - v16;
  sub_1BCF16A54();
  sub_1BCF21B0C();
  v18 = sub_1BCF1381C();
  sub_1BCF21BCC();
  v28 = v7;
  sub_1BCF21A1C();
  v19 = sub_1BCF21A2C();
  if (*v20)
  {
    v26 = v19;
    v21 = *(v27 + 2);
    v27 = v18;
    v22 = v31;
    v21(v31, v32, v30);
    v23 = swift_allocObject();
    v24 = v35;
    *(v23 + 16) = v33;
    *(v23 + 24) = v24;
    sub_1BCF13758(v22, &unk_1BCF23478, v23, v29);

    sub_1BCF21B9C();
    v26(v36, 0);
    (*(v14 + 8))(v17, AssociatedTypeWitness);
    return (v27)(&v37, 0);
  }

  else
  {
    v19(v36, 0);
    (*(v14 + 8))(v17, AssociatedTypeWitness);
    return (v18)(&v37, 0);
  }
}

uint64_t sub_1BCF13D54(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1BCF099D4;

  return v7();
}

uint64_t sub_1BCF13E3C(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v53 = a5;
  v54 = a6;
  v52 = a4;
  v55 = a3;
  v49 = a2;
  v8 = *(*v6 + 80);
  v51 = *(v8 - 8);
  v48 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v50 = &v41 - v9;
  v11 = *(v10 + 104);
  v58 = *(v12 + 88);
  *&v13 = vdupq_laneq_s64(v58, 1).u64[0];
  v14.i64[0] = v8;
  *(&v13 + 1) = v11;
  *v60 = vzip1q_s64(v14, v58);
  *&v60[16] = v13;
  v44 = type metadata accessor for DispatchClientTable.Priority();
  v43 = *(v44 - 8);
  v15 = v43[8];
  MEMORY[0x1EEE9AC00](v44);
  v61 = &v41 - v16;
  *v60 = v8;
  *&v60[8] = v58;
  *&v60[24] = v11;
  v17 = type metadata accessor for DispatchClientTable.Registration();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v41 - v19;
  v20 = v58.i64[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v22 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v41 - v23;
  sub_1BCF16A54();
  v46 = a1;
  v45 = v20;
  sub_1BCF21B0C();
  v25 = sub_1BCF1381C();
  v26 = sub_1BCF21BCC();
  v57 = AssociatedTypeWitness;
  sub_1BCF21A1C();
  v27 = sub_1BCF21A2C();
  if (*v28)
  {
    v42 = v27;
    v29 = v43[2];
    v43 = v28;
    v29(v61, v49, v44);
    v30 = v50;
    v31 = v51;
    (*(v51 + 16))(v50, v46, v8);
    v32 = *(v31 + 80);
    v46 = v26;
    v33 = (v32 + 64) & ~v32;
    v49 = v25;
    v34 = (v48 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v53;
    *(v35 + 2) = v8;
    *(v35 + 3) = v36;
    v53 = v58.i64[0];
    *(v35 + 4) = v58.i64[0];
    v37 = v54;
    *(v35 + 5) = v45;
    *(v35 + 6) = v37;
    *(v35 + 7) = v11;
    (*(v31 + 32))(&v35[v33], v30, v8);
    v38 = &v35[v34];
    v39 = v52;
    *v38 = v55;
    *(v38 + 1) = v39;
    sub_1BCF13758(v61, &unk_1BCF23488, v35, v47);

    sub_1BCF21B9C();
    v42(v59, 0);
    (*(v56 + 8))(v24, v57);
    return (v49)(v60, 0);
  }

  else
  {
    v27(v59, 0);
    (*(v56 + 8))(v24, v57);
    return (v25)(v60, 0);
  }
}

uint64_t sub_1BCF14380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a7;
  v7[9] = v15;
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v9 = *(a6 - 8);
  v7[10] = v9;
  v10 = *(v9 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v11 = *(a7 - 8);
  v7[14] = v11;
  v12 = *(v11 + 64) + 15;
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF144B4, 0, 0);
}

uint64_t sub_1BCF144B4()
{
  v40 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v2 = v0[13];
    v3 = v0[10];
    v4 = v0[7];
    v5 = v0[4];
    v6 = sub_1BCF2170C();
    __swift_project_value_buffer(v6, qword_1EDDD2780);
    v7 = *(v3 + 16);
    v7(v2, v5, v4);
    v8 = sub_1BCF216EC();
    v9 = sub_1BCF21CBC();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[13];
    if (v10)
    {
      v12 = v0[12];
      v13 = v0[10];
      v14 = v0[7];
      v15 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v39 = v37;
      *v15 = 136315138;
      v7(v12, v11, v14);
      v16 = sub_1BCF21A9C();
      v18 = v17;
      (*(v13 + 8))(v11, v14);
      v19 = sub_1BCEF84F4(v16, v18, &v39);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1BCEF6000, v8, v9, "Unexpected missing data for code: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFB32D20](v37, -1, -1);
      MEMORY[0x1BFB32D20](v15, -1, -1);
    }

    else
    {
      v25 = v0[10];
      v26 = v0[7];

      (*(v25 + 8))(v11, v26);
    }

    v32 = v0[15];
    v33 = v0[12];
    v34 = v0[13];
    v35 = v0[11];

    v36 = v0[1];

    return v36();
  }

  else
  {
    v20 = v0[15];
    v22 = v0[8];
    v21 = v0[9];
    v23 = v0[2];
    v24 = *(v21 + 16);
    sub_1BCEFC5E0(v23, v0[3]);
    sub_1BCF050B8(v23, v1);
    v24(v23, v1, v22, v21);
    v38 = (v0[5] + *v0[5]);
    v27 = *(v0[5] + 4);
    v28 = swift_task_alloc();
    v0[16] = v28;
    *v28 = v0;
    v28[1] = sub_1BCF14A38;
    v29 = v0[15];
    v30 = v0[6];

    return v38(v29);
  }
}

uint64_t sub_1BCF14A38()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1BCF14B34, 0, 0);
}

uint64_t sub_1BCF14B34()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  sub_1BCF05424(v0[2], v0[3]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1BCF14BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 152) = a1;
  *(v4 + 160) = a2;
  v5 = *v3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0) - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v7 = sub_1BCF21C5C();
  *(v4 + 200) = v7;
  v8 = *(v7 - 8);
  *(v4 + 208) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  v10 = v5[10];
  *(v4 + 224) = v10;
  v11 = v5[11];
  *(v4 + 232) = v11;
  v12 = v5[12];
  *(v4 + 240) = v12;
  v13 = v5[13];
  *(v4 + 248) = v13;
  *&v14 = v10;
  *(&v14 + 1) = v11;
  *&v15 = v12;
  *(&v15 + 1) = v13;
  v25 = v15;
  v26 = v14;
  *(v4 + 32) = v15;
  *(v4 + 16) = v14;
  v16 = type metadata accessor for DispatchClientTable.Priority();
  *(v4 + 256) = v16;
  v17 = *(v16 - 8);
  *(v4 + 264) = v17;
  v18 = *(v17 + 64) + 15;
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 64) = v25;
  *(v4 + 48) = v26;
  v19 = type metadata accessor for DispatchClientTable.Registration();
  *(v4 + 280) = v19;
  v20 = *(v19 - 8);
  *(v4 + 288) = v20;
  *(v4 + 296) = *(v20 + 64);
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v4 + 328) = AssociatedTypeWitness;
  v22 = *(AssociatedTypeWitness - 8);
  *(v4 + 336) = v22;
  v23 = *(v22 + 64) + 15;
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF14EEC, v3, 0);
}

uint64_t sub_1BCF14EEC()
{
  v108 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v4 = *(v0 + 152);
  v5 = sub_1BCF2170C();
  __swift_project_value_buffer(v5, qword_1EDDD2780);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_1BCF216EC();
  v8 = sub_1BCF21CCC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 352);
  if (v9)
  {
    v11 = *(v0 + 336);
    v12 = *(v0 + 344);
    v13 = *(v0 + 328);
    v14 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v107 = v103;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_1BCF21A9C();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1BCEF84F4(v15, v17, &v107);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1BCEF6000, v7, v8, "Dispatching: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v103);
    MEMORY[0x1BFB32D20](v103, -1, -1);
    MEMORY[0x1BFB32D20](v14, -1, -1);
  }

  else
  {
    v19 = *(v0 + 328);
    v20 = *(v0 + 336);

    (*(v20 + 8))(v10, v19);
  }

  v21 = *(v0 + 328);
  v22 = *(v0 + 280);
  v23 = *(v0 + 248);
  v24 = *(v0 + 176);
  v25 = *(v0 + 152);
  swift_beginAccess();
  v26 = *(v24 + 112);
  sub_1BCF21BCC();

  sub_1BCF21A3C();

  v27 = *(v0 + 136);
  *(v0 + 360) = v27;
  if (v27)
  {
    v28 = *(v0 + 280);
    if (sub_1BCF21B8C())
    {
      v29 = *(v0 + 280);
      v30 = *(v0 + 360);
      v31 = sub_1BCF21B6C();
      sub_1BCF21B3C();
      if (v31)
      {
        v32 = *(v0 + 288);
        v33 = *(v32 + 16);
        v33(*(v0 + 320), *(v0 + 360) + ((*(v32 + 80) + 32) & ~*(v32 + 80)), *(v0 + 280));
      }

      else
      {
        v90 = *(v0 + 296);
        v91 = *(v0 + 280);
        v85 = sub_1BCF21E5C();
        if (v90 != 8)
        {
          __break(1u);
          return MEMORY[0x1EEE6DA10](v85, v88, v87, v89, v86);
        }

        v92 = *(v0 + 320);
        v93 = *(v0 + 280);
        v94 = *(v0 + 288);
        *(v0 + 144) = v85;
        v33 = *(v94 + 16);
        v33(v92, v0 + 144, v93);
        swift_unknownObjectRelease();
      }

      *(v0 + 368) = 1;
      v34 = *(v0 + 312);
      v36 = *(v0 + 264);
      v35 = *(v0 + 272);
      v37 = *(v0 + 256);
      v38 = *(v0 + 200);
      v39 = *(v0 + 208);
      v40 = *(*(v0 + 288) + 32);
      v40(v34, *(v0 + 320), *(v0 + 280));
      (*(v36 + 16))(v35, v34, v37);
      v41 = *(v39 + 48);
      v42 = v41(v35, 1, v38);
      v43 = *(v0 + 312);
      if (v42 == 1)
      {
        v44 = (v43 + *(*(v0 + 280) + 52));
        v45 = v44[1];
        v105 = (*v44 + **v44);
        v46 = (*v44)[1];
        v47 = swift_task_alloc();
        *(v0 + 376) = v47;
        *v47 = v0;
        v47[1] = sub_1BCF15764;
        v49 = *(v0 + 160);
        v48 = *(v0 + 168);

        return v105(v49, v48);
      }

      v96 = *(v0 + 304);
      v97 = *(v0 + 296);
      v102 = v40;
      v104 = v41;
      v65 = *(v0 + 280);
      v64 = *(v0 + 288);
      v95 = v33;
      v66 = *(v0 + 208);
      v67 = *(v0 + 216);
      v69 = *(v0 + 192);
      v68 = *(v0 + 200);
      v106 = *(v0 + 184);
      v100 = *(v0 + 160);
      v101 = *(v0 + 168);
      v98 = *(v0 + 240);
      v99 = *(v0 + 224);
      (*(v66 + 32))(v67, *(v0 + 272), v68);
      (*(v66 + 16))(v69, v67, v68);
      (*(v66 + 56))(v69, 0, 1, v68);
      v95(v96, v43, v65);
      v70 = (*(v64 + 80) + 64) & ~*(v64 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      *(v71 + 32) = v99;
      *(v71 + 48) = v98;
      v102(v71 + v70, v96, v65);
      v72 = (v71 + ((v97 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v72 = v100;
      v72[1] = v101;
      sub_1BCF0E6FC(v69, v106);
      LODWORD(v68) = v104(v106, 1, v68);
      sub_1BCEFC5E0(v100, v101);

      if (v68 == 1)
      {
        sub_1BCEFAC9C(*(v0 + 184));
      }

      else
      {
        v73 = *(v0 + 200);
        v74 = *(v0 + 208);
        v75 = *(v0 + 184);
        sub_1BCF21C4C();
        (*(v74 + 8))(v75, v73);
      }

      v76 = *(v71 + 16);
      v77 = *(v71 + 24);
      swift_unknownObjectRetain();

      if (v76)
      {
        swift_getObjectType();
        v78 = sub_1BCF21BDC();
        v80 = v79;
        swift_unknownObjectRelease();
      }

      else
      {
        v78 = 0;
        v80 = 0;
      }

      sub_1BCEFAC9C(*(v0 + 192));
      if (v80 | v78)
      {
        *(v0 + 80) = 0;
        *(v0 + 88) = 0;
        *(v0 + 96) = v78;
        *(v0 + 104) = v80;
      }

      v81 = MEMORY[0x1E69E7CA8];
      v82 = swift_task_create();
      *(v0 + 392) = v82;
      v83 = *(MEMORY[0x1E69E86A8] + 4);
      v84 = swift_task_alloc();
      *(v0 + 400) = v84;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
      *v84 = v0;
      v84[1] = sub_1BCF15E9C;
      v86 = MEMORY[0x1E69E7288];
      v87 = v81 + 8;
      v88 = v82;
      v89 = v85;

      return MEMORY[0x1EEE6DA10](v85, v88, v87, v89, v86);
    }
  }

  else
  {
    v51 = sub_1BCF216EC();
    v52 = sub_1BCF21CCC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1BCEF6000, v51, v52, "No handlers registered", v53, 2u);
      MEMORY[0x1BFB32D20](v53, -1, -1);
    }
  }

  v55 = *(v0 + 344);
  v54 = *(v0 + 352);
  v57 = *(v0 + 312);
  v56 = *(v0 + 320);
  v58 = *(v0 + 304);
  v59 = *(v0 + 272);
  v60 = *(v0 + 216);
  v62 = *(v0 + 184);
  v61 = *(v0 + 192);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1BCF15764()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v9 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = *(v2 + 360);
    v5 = *(v2 + 176);

    v6 = sub_1BCF16604;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 176);
    v6 = sub_1BCF1588C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1BCF1588C()
{
  (*(*(v0 + 288) + 8))(*(v0 + 312), *(v0 + 280));
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 280);
  if (v2 == sub_1BCF21B8C())
  {
    v4 = *(v0 + 360);

    v6 = *(v0 + 344);
    v5 = *(v0 + 352);
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 304);
    v10 = *(v0 + 272);
    v11 = *(v0 + 216);
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);

    v14 = *(v0 + 8);

    return v14();
  }

  v16 = *(v0 + 360);
  v17 = *(v0 + 368);
  v18 = *(v0 + 280);
  v19 = sub_1BCF21B6C();
  sub_1BCF21B3C();
  if (v19)
  {
    v20 = *(v0 + 288);
    v21 = *(v20 + 16);
    v22 = v21(*(v0 + 320), *(v0 + 360) + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, *(v0 + 280));
  }

  else
  {
    v64 = *(v0 + 296);
    v65 = *(v0 + 280);
    v22 = sub_1BCF21E5C();
    if (v64 != 8)
    {
LABEL_26:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v22, v23, v24, v25, v26);
    }

    v66 = *(v0 + 320);
    v67 = *(v0 + 280);
    v68 = *(v0 + 288);
    *(v0 + 144) = v22;
    v21 = *(v68 + 16);
    v21(v66, v0 + 144, v67);
    v22 = swift_unknownObjectRelease();
  }

  *(v0 + 368) = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = *(v0 + 312);
  v29 = *(v0 + 264);
  v28 = *(v0 + 272);
  v30 = *(v0 + 256);
  v31 = *(v0 + 200);
  v32 = *(v0 + 208);
  v33 = *(*(v0 + 288) + 32);
  v33(v27, *(v0 + 320), *(v0 + 280));
  (*(v29 + 16))(v28, v27, v30);
  v34 = *(v32 + 48);
  v35 = v34(v28, 1, v31);
  v36 = *(v0 + 312);
  if (v35 != 1)
  {
    v70 = *(v0 + 304);
    v71 = *(v0 + 296);
    v76 = v33;
    v77 = v34;
    v44 = *(v0 + 280);
    v43 = *(v0 + 288);
    v69 = v21;
    v45 = *(v0 + 208);
    v46 = *(v0 + 216);
    v48 = *(v0 + 192);
    v47 = *(v0 + 200);
    v79 = *(v0 + 184);
    v74 = *(v0 + 160);
    v75 = *(v0 + 168);
    v72 = *(v0 + 240);
    v73 = *(v0 + 224);
    (*(v45 + 32))(v46, *(v0 + 272), v47);
    (*(v45 + 16))(v48, v46, v47);
    (*(v45 + 56))(v48, 0, 1, v47);
    v69(v70, v36, v44);
    v49 = (*(v43 + 80) + 64) & ~*(v43 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = v73;
    *(v50 + 48) = v72;
    v76(v50 + v49, v70, v44);
    v51 = (v50 + ((v71 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v51 = v74;
    v51[1] = v75;
    sub_1BCF0E6FC(v48, v79);
    LODWORD(v47) = v77(v79, 1, v47);
    sub_1BCEFC5E0(v74, v75);

    if (v47 == 1)
    {
      sub_1BCEFAC9C(*(v0 + 184));
    }

    else
    {
      v52 = *(v0 + 200);
      v53 = *(v0 + 208);
      v54 = *(v0 + 184);
      sub_1BCF21C4C();
      (*(v53 + 8))(v54, v52);
    }

    v55 = *(v50 + 16);
    v56 = *(v50 + 24);
    swift_unknownObjectRetain();

    if (v55)
    {
      swift_getObjectType();
      v57 = sub_1BCF21BDC();
      v59 = v58;
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0;
      v59 = 0;
    }

    sub_1BCEFAC9C(*(v0 + 192));
    if (v59 | v57)
    {
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = v57;
      *(v0 + 104) = v59;
    }

    v60 = MEMORY[0x1E69E7CA8];
    v61 = swift_task_create();
    *(v0 + 392) = v61;
    v62 = *(MEMORY[0x1E69E86A8] + 4);
    v63 = swift_task_alloc();
    *(v0 + 400) = v63;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    *v63 = v0;
    v63[1] = sub_1BCF15E9C;
    v26 = MEMORY[0x1E69E7288];
    v24 = v60 + 8;
    v23 = v61;
    v25 = v22;

    return MEMORY[0x1EEE6DA10](v22, v23, v24, v25, v26);
  }

  v37 = (v36 + *(*(v0 + 280) + 52));
  v38 = v37[1];
  v78 = (*v37 + **v37);
  v39 = (*v37)[1];
  v40 = swift_task_alloc();
  *(v0 + 376) = v40;
  *v40 = v0;
  v40[1] = sub_1BCF15764;
  v42 = *(v0 + 160);
  v41 = *(v0 + 168);

  return v78(v42, v41);
}

uint64_t sub_1BCF15E9C()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v9 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = *(v2 + 360);
    v5 = *(v2 + 176);

    v6 = sub_1BCF166F4;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 176);
    v6 = sub_1BCF15FC4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, 0);
}

uint64_t sub_1BCF15FC4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 208);
  v5 = *(v0 + 216);
  v7 = *(v0 + 200);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = *(v0 + 360);
  v9 = *(v0 + 368);
  v10 = *(v0 + 280);
  if (v9 == sub_1BCF21B8C())
  {
    v11 = *(v0 + 360);

    v13 = *(v0 + 344);
    v12 = *(v0 + 352);
    v15 = *(v0 + 312);
    v14 = *(v0 + 320);
    v16 = *(v0 + 304);
    v17 = *(v0 + 272);
    v18 = *(v0 + 216);
    v20 = *(v0 + 184);
    v19 = *(v0 + 192);

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = *(v0 + 360);
  v24 = *(v0 + 368);
  v25 = *(v0 + 280);
  v26 = sub_1BCF21B6C();
  sub_1BCF21B3C();
  if (v26)
  {
    v27 = *(v0 + 288);
    v28 = *(v27 + 16);
    v29 = v28(*(v0 + 320), *(v0 + 360) + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, *(v0 + 280));
  }

  else
  {
    v71 = *(v0 + 296);
    v72 = *(v0 + 280);
    v29 = sub_1BCF21E5C();
    if (v71 != 8)
    {
LABEL_26:
      __break(1u);
      return MEMORY[0x1EEE6DA10](v29, v30, v31, v32, v33);
    }

    v73 = *(v0 + 320);
    v74 = *(v0 + 280);
    v75 = *(v0 + 288);
    *(v0 + 144) = v29;
    v28 = *(v75 + 16);
    v28(v73, v0 + 144, v74);
    v29 = swift_unknownObjectRelease();
  }

  *(v0 + 368) = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
    goto LABEL_26;
  }

  v34 = *(v0 + 312);
  v36 = *(v0 + 264);
  v35 = *(v0 + 272);
  v37 = *(v0 + 256);
  v38 = *(v0 + 200);
  v39 = *(v0 + 208);
  v40 = *(*(v0 + 288) + 32);
  v40(v34, *(v0 + 320), *(v0 + 280));
  (*(v36 + 16))(v35, v34, v37);
  v41 = *(v39 + 48);
  v42 = v41(v35, 1, v38);
  v43 = *(v0 + 312);
  if (v42 != 1)
  {
    v77 = *(v0 + 304);
    v78 = *(v0 + 296);
    v83 = v40;
    v84 = v41;
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v76 = v28;
    v52 = *(v0 + 208);
    v53 = *(v0 + 216);
    v55 = *(v0 + 192);
    v54 = *(v0 + 200);
    v86 = *(v0 + 184);
    v81 = *(v0 + 160);
    v82 = *(v0 + 168);
    v79 = *(v0 + 240);
    v80 = *(v0 + 224);
    (*(v52 + 32))(v53, *(v0 + 272), v54);
    (*(v52 + 16))(v55, v53, v54);
    (*(v52 + 56))(v55, 0, 1, v54);
    v76(v77, v43, v51);
    v56 = (*(v50 + 80) + 64) & ~*(v50 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    *(v57 + 24) = 0;
    *(v57 + 32) = v80;
    *(v57 + 48) = v79;
    v83(v57 + v56, v77, v51);
    v58 = (v57 + ((v78 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v58 = v81;
    v58[1] = v82;
    sub_1BCF0E6FC(v55, v86);
    LODWORD(v54) = v84(v86, 1, v54);
    sub_1BCEFC5E0(v81, v82);

    if (v54 == 1)
    {
      sub_1BCEFAC9C(*(v0 + 184));
    }

    else
    {
      v59 = *(v0 + 200);
      v60 = *(v0 + 208);
      v61 = *(v0 + 184);
      sub_1BCF21C4C();
      (*(v60 + 8))(v61, v59);
    }

    v62 = *(v57 + 16);
    v63 = *(v57 + 24);
    swift_unknownObjectRetain();

    if (v62)
    {
      swift_getObjectType();
      v64 = sub_1BCF21BDC();
      v66 = v65;
      swift_unknownObjectRelease();
    }

    else
    {
      v64 = 0;
      v66 = 0;
    }

    sub_1BCEFAC9C(*(v0 + 192));
    if (v66 | v64)
    {
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = v64;
      *(v0 + 104) = v66;
    }

    v67 = MEMORY[0x1E69E7CA8];
    v68 = swift_task_create();
    *(v0 + 392) = v68;
    v69 = *(MEMORY[0x1E69E86A8] + 4);
    v70 = swift_task_alloc();
    *(v0 + 400) = v70;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    *v70 = v0;
    v70[1] = sub_1BCF15E9C;
    v33 = MEMORY[0x1E69E7288];
    v31 = v67 + 8;
    v30 = v68;
    v32 = v29;

    return MEMORY[0x1EEE6DA10](v29, v30, v31, v32, v33);
  }

  v44 = (v43 + *(*(v0 + 280) + 52));
  v45 = v44[1];
  v85 = (*v44 + **v44);
  v46 = (*v44)[1];
  v47 = swift_task_alloc();
  *(v0 + 376) = v47;
  *v47 = v0;
  v47[1] = sub_1BCF15764;
  v49 = *(v0 + 160);
  v48 = *(v0 + 168);

  return v85(v49, v48);
}

uint64_t sub_1BCF16604()
{
  (*(v0[36] + 8))(v0[39], v0[35]);
  v1 = v0[48];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v7 = v0[34];
  v8 = v0[27];
  v10 = v0[23];
  v9 = v0[24];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BCF166F4()
{
  v1 = v0[49];
  v2 = v0[39];
  v3 = v0[35];
  v4 = v0[36];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v8 = v0[51];
  v10 = v0[43];
  v9 = v0[44];
  v12 = v0[39];
  v11 = v0[40];
  v13 = v0[38];
  v14 = v0[34];
  v15 = v0[27];
  v17 = v0[23];
  v16 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1BCF16814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v10;
  v8[12] = v11;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BCF16848, 0, 0);
}

uint64_t sub_1BCF16848()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = *(v0 + 88);
  v2 = (v1 + *(type metadata accessor for DispatchClientTable.Registration() + 52));
  v3 = v2[1];
  v9 = (*v2 + **v2);
  v4 = (*v2)[1];
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1BCF16960;
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);

  return v9(v7, v6);
}

uint64_t sub_1BCF16960()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BCF16A54()
{
  v1 = *v0;
  v2 = (*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17[1] = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - v10;
  sub_1BCF21B0C();
  swift_beginAccess();
  v12 = v0[14];
  v13 = *(v1 + 104);
  *&v14 = v4;
  *(&v14 + 1) = *v2;
  v18 = v14;

  *&v15 = v3;
  *(&v15 + 1) = v13;
  v20 = v15;
  v19 = v18;
  type metadata accessor for DispatchClientTable.Registration();
  *&v18 = sub_1BCF21BCC();
  sub_1BCF21A3C();

  (*(v6 + 8))(v11, AssociatedTypeWitness);
  if (v21)
  {
  }

  sub_1BCF21B0C();
  v21 = sub_1BCF21B5C();
  swift_beginAccess();
  sub_1BCF21A1C();
  sub_1BCF21A4C();
  return swift_endAccess();
}

uint64_t DispatchClientTable.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DispatchClientTable.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t DispatchClientTable<>.addReverseForwardingRoutes(to:priority:messageCodes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v51 = a1;
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 96);
  *&v67 = *(*v3 + 80);
  v5 = v67;
  *(&v67 + 1) = v6;
  v8 = MEMORY[0x1E69E7678];
  v68 = v7;
  v69 = MEMORY[0x1E69E7678];
  v49 = type metadata accessor for DispatchClientTable.Priority();
  v9 = *(v49 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v61 = &v43 - v11;
  *(&v67 + 1) = v6;
  v50 = v6;
  v68 = v7;
  v69 = v8;
  v56 = type metadata accessor for DispatchClientTable.Registration();
  v12 = *(*(v56 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v56);
  v48 = &v43 - v14;
  v66 = *(v5 - 8);
  v15 = *(v66 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v47 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - v19;
  v44 = v21;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v43 - v22;
  result = sub_1BCF21B8C();
  if (result)
  {
    v25 = 0;
    v63 = (v66 + 32);
    v64 = (v66 + 16);
    v46 = (v9 + 16);
    v45 = v44 + 7;
    v53 = (v66 + 8);
    v55 = a3;
    v54 = v23;
    while (1)
    {
      v36 = sub_1BCF21B6C();
      sub_1BCF21B3C();
      if (v36)
      {
        v37 = *(v66 + 16);
        result = (v37)(v23, a3 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v25, v5);
      }

      else
      {
        result = sub_1BCF21E5C();
        if (v44 != 8)
        {
          goto LABEL_14;
        }

        *&v67 = result;
        v37 = *v64;
        (*v64)(v23, &v67, v5);
        result = swift_unknownObjectRelease();
      }

      if (__OFADD__(v25, 1))
      {
        break;
      }

      v65 = v25 + 1;
      v62 = *v63;
      v62(v20, v23, v5);
      sub_1BCF16A54();
      sub_1BCF21B0C();
      v38 = v73;
      v39 = sub_1BCF1381C();
      v72 = v38;
      v40 = sub_1BCF21BCC();
      sub_1BCF21A1C();
      v41 = sub_1BCF21A2C();
      if (*v42)
      {
        v60 = v41;
        v26 = *v46;
        v59 = v42;
        v26(v61, v52, v49);
        v27 = v20;
        v28 = v47;
        v37(v47, v27, v5);
        sub_1BCF049CC(v51, &v67);
        v29 = *(v66 + 80);
        v58 = v39;
        v30 = (v29 + 40) & ~v29;
        v57 = v40;
        v31 = (v45 + v30) & 0xFFFFFFFFFFFFFFF8;
        v32 = swift_allocObject();
        v33 = v7;
        v34 = v50;
        *(v32 + 2) = v5;
        *(v32 + 3) = v34;
        *(v32 + 4) = v33;
        v35 = v28;
        v20 = v27;
        v62(&v32[v30], v35, v5);
        sub_1BCF0543C(&v67, &v32[v31]);
        v7 = v33;
        sub_1BCF13758(v61, &unk_1BCF23498, v32, v48);
        sub_1BCF21B9C();
        v60(v70, 0);
        (v58)(v71, 0);
        (*(v66 + 8))(v27, v5);
      }

      else
      {
        v41(v70, 0);
        (v39)(v71, 0);
        (*v53)(v20, v5);
      }

      a3 = v55;
      result = sub_1BCF21B8C();
      ++v25;
      v23 = v54;
      if (v65 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BCF173D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = *(a5 - 8);
  v7[8] = v8;
  v9 = *(v8 + 64) + 15;
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF17498, 0, 0);
}

uint64_t sub_1BCF17498()
{
  v37 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = sub_1BCF2170C();
  __swift_project_value_buffer(v5, qword_1EDDD2780);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1BCF216EC();
  v8 = sub_1BCF21CCC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 80);
  if (v9)
  {
    v11 = *(v0 + 64);
    v12 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_1BCF21A9C();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_1BCEF84F4(v15, v17, &v36);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1BCEF6000, v7, v8, "Reverse forwarding message: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1BFB32D20](v34, -1, -1);
    MEMORY[0x1BFB32D20](v14, -1, -1);
  }

  else
  {
    v19 = *(v0 + 64);
    v20 = *(v0 + 48);

    (*(v19 + 8))(v10, v20);
  }

  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v24 = *(v0 + 32);
  v23 = *(v0 + 40);
  v25 = v23[3];
  v26 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v25);
  sub_1BCF21B0C();
  v27 = *(v0 + 96);
  v28 = *(v26 + 8);
  v35 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 88) = v30;
  *v30 = v0;
  v30[1] = sub_1BCF177A8;
  v31 = *(v0 + 16);
  v32 = *(v0 + 24);

  return v35(v27, v31, v32, v25, v26);
}

uint64_t sub_1BCF177A8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1BCF17908(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1BCF0A158;

  return sub_1BCF13D54(a1, a2, v7);
}

uint64_t sub_1BCF179B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v17 = *(v2 + 24);
  v7 = *(v2 + 32);
  v15 = *(v2 + 40);
  v8 = *(v2 + 56);
  v9 = (*(*(v6 - 8) + 80) + 64) & ~*(*(v6 - 8) + 80);
  v10 = (v2 + ((*(*(v6 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1BCF099D4;

  return sub_1BCF14380(a1, a2, v2 + v9, v11, v12, v6, v17);
}

uint64_t sub_1BCF17B14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v10 = (*(*(v6 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BCF0A158;

  return sub_1BCF173D0(a1, a2, v2 + v9, v2 + v10, v6, v7, v8);
}

unint64_t sub_1BCF17D5C(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  result = type metadata accessor for DispatchClientTable.Priority();
  if (v2 <= 0x3F)
  {
    result = sub_1BCF05000();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BCF17E14(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v16 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  v3[2] = v4;
  v3[3] = v16;
  v3[4] = v6;
  v3[5] = v5;
  v7 = *(type metadata accessor for DispatchClientTable.Registration() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = (v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  v3[6] = v14;
  *v14 = v3;
  v14[1] = sub_1BCF17F74;

  return sub_1BCF16814(a1, v9, v10, v1 + v8, v12, v13, v4, v16);
}

uint64_t sub_1BCF17F74()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1BCF18068@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  *a3 = a1;
  v6 = v5[10];
  v7 = v5[11];
  v8 = v5[12];
  v9 = *(type metadata accessor for NetworkDispatchClient.Connection() + 44);
  v10 = sub_1BCF215FC();
  v11 = *(*(v10 - 8) + 32);

  return v11(&a3[v9], a2, v10);
}

uint64_t NetworkDispatchClient.__allocating_init(serviceName:protocolVersion:requestTimeout:connectionTimeout:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  NetworkDispatchClient.init(serviceName:protocolVersion:requestTimeout:connectionTimeout:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t NetworkDispatchClient.init(serviceName:protocolVersion:requestTimeout:connectionTimeout:)(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  v11 = *v5;
  swift_defaultActor_initialize();
  v12 = *(*v5 + 144);
  v13 = v11[10];
  v14 = v11[11];
  v15 = v11[12];
  v16 = type metadata accessor for NetworkDispatchClient.Connection();
  (*(*(v16 - 8) + 56))(v5 + v12, 1, 1, v16);
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  *(v5 + 136) = a3;
  *(v5 + 128) = a4;
  *(v5 + 144) = a5;
  return v5;
}

uint64_t NetworkDispatchClient.send(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF182F4, v1, 0);
}

uint64_t sub_1BCF182F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = *(v1 + 80);
  v4 = *(v1 + 96);
  sub_1BCF21B0C();
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1BCF183AC;
  v7 = *(v0 + 24);

  return sub_1BCF18514(v5, 0, 0xF000000000000000);
}

uint64_t sub_1BCF183AC(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = *(v6 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1BCF0A36C, v9, 0);
  }

  else
  {
    sub_1BCF05424(a1, a2);
    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1BCF18514(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF1853C, v3, 0);
}

uint64_t sub_1BCF1853C()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "NetworkDispatchClient sending %u", v5, 8u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_1BCF18698;
  v7 = *(v0 + 32);

  return sub_1BCF19A7C();
}

uint64_t sub_1BCF18698(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v5 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v3 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1BCF187E0, v8, 0);
  }
}

uint64_t sub_1BCF187E0()
{
  v1 = *(*(v0 + 32) + 136);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1BCF18888;
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 88);

  return sub_1BCF1C738(v6, v1, v4, v5);
}

uint64_t sub_1BCF18888(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  v6[8] = v2;

  v9 = v6[4];
  if (v2)
  {
    v10 = sub_1BCF18A30;
  }

  else
  {
    v6[9] = a2;
    v6[10] = a1;
    v10 = sub_1BCF189C8;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1BCF189C8()
{
  v1 = v0[6];

  v2 = v0[1];
  v4 = v0[9];
  v3 = v0[10];

  return v2(v3, v4);
}

uint64_t sub_1BCF18A30()
{
  v1 = v0[6];

  v2 = v0[8];
  v3 = v0[1];

  return v3();
}

uint64_t NetworkDispatchClient.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1BCF18AE4, v4, 0);
}

uint64_t sub_1BCF18AE4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  *(v0 + 64) = *(v1 + 80);
  *(v0 + 72) = *(v1 + 96);
  sub_1BCF21B0C();
  v3 = *(v0 + 112);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1BCF18BA4;
  v5 = *(v0 + 48);

  return sub_1BCF18514(v3, 0, 0xF000000000000000);
}

uint64_t sub_1BCF18BA4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v9 = *v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = v2;

  v6 = v4[6];
  if (v2)
  {
    v7 = sub_1BCF18DB4;
  }

  else
  {
    v7 = sub_1BCF18CC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1BCF18CC0()
{
  if (v0[12] >> 60 == 15)
  {
    v1 = v0[8];
    v2 = v0[9];
    v3 = *(v0[7] + 88);
    type metadata accessor for NetworkDispatchClient.Failure();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = v0[13];
    v5 = v0[4];
    v6 = v0[2];
    (*(v0[5] + 16))(v0[11]);
  }

  v7 = v0[1];

  return v7();
}

uint64_t NetworkDispatchClient.send<A>(_:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1BCF18E34, v4, 0);
}

uint64_t sub_1BCF18E34()
{
  v1 = *(v0 + 24);
  v2 = (*(*(v0 + 40) + 8))(*(v0 + 32));
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  v4 = v2;
  v5 = v3;
  v6 = *(v0 + 56);
  v7 = *(v0 + 16);
  v8 = *(v6 + 80);
  v9 = *(v6 + 96);
  sub_1BCF21B0C();
  v10 = *(v0 + 96);
  sub_1BCF050B8(v4, v5);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1BCF18F74;
  v12 = *(v0 + 48);

  return sub_1BCF18514(v10, v4, v5);
}

uint64_t sub_1BCF18F74(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v14 = *v3;
  *(*v3 + 88) = v2;

  if (v2)
  {
    v8 = v6[6];
    v9 = sub_1BCF1912C;
  }

  else
  {
    v11 = v6[8];
    v10 = v6[9];
    v12 = v6[6];
    sub_1BCF05424(a1, a2);
    sub_1BCF0510C(v11, v10);
    v9 = sub_1BCF190C8;
    v8 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1BCF190C8()
{
  sub_1BCF0510C(v0[8], v0[9]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1BCF1912C()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1BCF0510C(v1, v2);
  sub_1BCF0510C(v1, v2);
  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t NetworkDispatchClient.send<A, B>(_:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = *v7;
  return MEMORY[0x1EEE6DFA0](sub_1BCF191F8, v7, 0);
}

uint64_t sub_1BCF191F8()
{
  v1 = *(v0 + 32);
  v2 = (*(*(v0 + 56) + 8))(*(v0 + 40));
  *(v0 + 88) = v2;
  *(v0 + 96) = v3;
  v4 = v2;
  v5 = v3;
  v6 = *(v0 + 80);
  v7 = *(v0 + 24);
  *(v0 + 104) = *(v6 + 80);
  *(v0 + 112) = *(v6 + 96);
  sub_1BCF21B0C();
  v8 = *(v0 + 152);
  sub_1BCF050B8(v4, v5);
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_1BCF19340;
  v10 = *(v0 + 72);

  return sub_1BCF18514(v8, v4, v5);
}

uint64_t sub_1BCF19340(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v10 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v6 = v4[9];
    v7 = sub_1BCF19580;
  }

  else
  {
    v8 = v4[9];
    sub_1BCF0510C(v4[11], v4[12]);
    v7 = sub_1BCF1946C;
    v6 = v8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1BCF1946C()
{
  if (v0[17] >> 60 == 15)
  {
    v1 = v0[13];
    v2 = v0[14];
    v4 = v0[11];
    v3 = v0[12];
    v5 = *(v0[10] + 88);
    type metadata accessor for NetworkDispatchClient.Failure();
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    v6 = v4;
    v7 = v3;
  }

  else
  {
    v8 = v0[18];
    v9 = v0[6];
    v10 = v0[2];
    (*(v0[8] + 16))(v0[16]);
    v6 = v0[11];
    v7 = v0[12];
  }

  sub_1BCF0510C(v6, v7);
  v11 = v0[1];

  return v11();
}

uint64_t sub_1BCF19580()
{
  v1 = v0[11];
  v2 = v0[12];
  sub_1BCF0510C(v1, v2);
  sub_1BCF0510C(v1, v2);
  v3 = v0[18];
  v4 = v0[1];

  return v4();
}

uint64_t NetworkDispatchClient.forward(messageCode:messageData:originatingProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF0903C;

  return (sub_1BCF1AAB8)(a1, a2, a3);
}

uint64_t NetworkDispatchClient.reverseForward(messageCode:messageData:)(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = v3;
  *(v4 + 40) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1BCF19770;

  return sub_1BCF18514(a1, a2, a3);
}

uint64_t sub_1BCF19770(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;
  *(*v3 + 32) = v2;

  if (v2)
  {
    v9 = *(v6 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1BCF198D8, v9, 0);
  }

  else
  {
    sub_1BCF05424(a1, a2);
    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_1BCF198D8()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = v1;
  v4 = sub_1BCF216EC();
  v5 = sub_1BCF21CBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 10) = v12;
    *v10 = v12;
    _os_log_impl(&dword_1BCEF6000, v4, v5, "Error reverse forwarding message %u: %@", v9, 0x12u);
    sub_1BCF05050(v10);
    MEMORY[0x1BFB32D20](v10, -1, -1);
    MEMORY[0x1BFB32D20](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1BCF19A7C()
{
  v1[8] = v0;
  v2 = *v0;
  v3 = sub_1BCF2173C();
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = sub_1BCF215FC();
  v1[12] = v6;
  v7 = *(v6 - 8);
  v1[13] = v7;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = v2[10];
  v1[17] = v2[11];
  v1[18] = v2[12];
  v9 = type metadata accessor for NetworkDispatchClient.Connection();
  v1[19] = v9;
  v10 = sub_1BCF21D4C();
  v1[20] = v10;
  v11 = *(v10 - 8);
  v1[21] = v11;
  v12 = *(v11 + 64) + 15;
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v13 = *(v9 - 8);
  v1[24] = v13;
  v14 = *(v13 + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF19CC4, v0, 0);
}

uint64_t sub_1BCF19CC4()
{
  v1 = v0 + 24;
  v2 = v0[24];
  v4 = v0 + 23;
  v3 = v0[23];
  v5 = v0 + 21;
  v6 = v0[21];
  v8 = v0 + 20;
  v7 = v0[20];
  v9 = v0[19];
  v51 = v0 + 19;
  v10 = v0[8];
  v11 = *(*v10 + 144);
  v1[2] = v11;
  swift_beginAccess();
  (*(v6 + 16))(v3, v10 + v11, v7);
  if ((*(v2 + 48))(v3, 1) == 1)
  {
    v12 = v52;
LABEL_12:
    (*(*v5 + 8))(*v4, *v8);
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v40 = sub_1BCF2170C();
    v12[27] = __swift_project_value_buffer(v40, qword_1EDDD2780);
    v41 = sub_1BCF216EC();
    v42 = sub_1BCF21CCC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1BCEF6000, v41, v42, "NetworkDispatchClient starting device discovery", v43, 2u);
      MEMORY[0x1BFB32D20](v43, -1, -1);
    }

    v44 = v12[8];

    v46 = v44[14];
    v45 = v44[15];
    v47 = v44[16];
    type metadata accessor for NetworkDispatchBrowser();
    v48 = swift_allocObject();
    v12[28] = v48;

    swift_defaultActor_initialize();
    v48[14] = v46;
    v48[15] = v45;
    v48[16] = v47;
    v48[17] = 0;
    v49 = swift_task_alloc();
    v12[29] = v49;
    *v49 = v12;
    v49[1] = sub_1BCF1A150;
    v50 = v12[11];

    return sub_1BCF1EBF4(v50);
  }

  v4 = v52 + 25;
  v13 = v52[25];
  v14 = v52[19];
  v16 = v52[14];
  v15 = v52[15];
  v18 = v52[12];
  v17 = v52[13];
  v19 = v52[8];
  (*(v52[24] + 32))(v13, v52[23], v14);
  v20 = *(v19 + 144);
  v21 = v13 + *(v14 + 44);
  sub_1BCF215CC();
  sub_1BCF215EC();
  LOBYTE(v21) = sub_1BCF215DC();
  v22 = *(v17 + 8);
  v22(v16, v18);
  v22(v15, v18);
  v12 = v52;
  if ((v21 & 1) == 0)
  {
    v5 = v1;
    v8 = v51;
    goto LABEL_12;
  }

  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v23 = sub_1BCF2170C();
  __swift_project_value_buffer(v23, qword_1EDDD2780);
  v24 = sub_1BCF216EC();
  v25 = sub_1BCF21CCC();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1BCEF6000, v24, v25, "NetworkDispatchClient reusing discovered device", v26, 2u);
    MEMORY[0x1BFB32D20](v26, -1, -1);
  }

  v28 = v52[24];
  v27 = v52[25];
  v29 = v52[19];

  v30 = *v27;
  v31 = *(v28 + 8);

  v31(v27, v29);
  v32 = v52[25];
  v34 = v52[22];
  v33 = v52[23];
  v36 = v52[14];
  v35 = v52[15];
  v37 = v52[11];

  v38 = v52[1];

  return v38(v30);
}

uint64_t sub_1BCF1A150()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1BCF1A60C;
  }

  else
  {
    v6 = sub_1BCF1A27C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1BCF1A27C()
{
  v1 = v0[30];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[11];
  type metadata accessor for NetworkDispatchInterface();
  sub_1BCF0FEB4(0, 60.0);
  sub_1BCF2186C();
  sub_1BCF2183C();
  swift_getWitnessTable();
  v6 = sub_1BCF2165C();
  if (v1)
  {
    v7 = v0[28];
    (*(v0[10] + 8))(v0[11], v0[9]);

    v8 = v0[25];
    v9 = v0[22];
    v10 = v0[23];
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[11];

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v6;
    v17 = v0[26];
    v18 = v0[24];
    v20 = v0[21];
    v19 = v0[22];
    v42 = v0[20];
    v43 = v0[27];
    v41 = v0[19];
    v21 = v0[15];
    v22 = v0[8];

    v23 = v16;
    v24 = *(v16 + qword_1EDDD2778);

    sub_1BCF2181C();

    sub_1BCF215EC();
    v44 = v23;
    sub_1BCF18068(v23, v21, v19);
    (*(v18 + 56))(v19, 0, 1, v41);
    swift_beginAccess();
    (*(v20 + 40))(v22 + v17, v19, v42);
    swift_endAccess();
    v25 = sub_1BCF216EC();
    v26 = sub_1BCF21CCC();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[28];
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[9];
    if (v27)
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1BCEF6000, v25, v26, "NetworkDispatchClient device found", v32, 2u);
      MEMORY[0x1BFB32D20](v32, -1, -1);
    }

    else
    {
      v33 = v0[28];
    }

    (*(v30 + 8))(v29, v31);
    v34 = v0[25];
    v36 = v0[22];
    v35 = v0[23];
    v38 = v0[14];
    v37 = v0[15];
    v39 = v0[11];

    v40 = v0[1];

    return v40(v44);
  }
}

uint64_t sub_1BCF1A60C()
{
  v1 = v0[28];

  v2 = v0[30];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

void sub_1BCF1A6BC(void *a1)
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = a1;
  oslog = sub_1BCF216EC();
  v4 = sub_1BCF21CBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&dword_1BCEF6000, oslog, v4, "NetworkDispatchClient actor connection invalidated: %@", v5, 0xCu);
    sub_1BCF05050(v6);
    MEMORY[0x1BFB32D20](v6, -1, -1);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }
}

char *NetworkDispatchClient.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 15);

  v3 = *(*v0 + 144);
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  type metadata accessor for NetworkDispatchClient.Connection();
  v7 = sub_1BCF21D4C();
  (*(*(v7 - 8) + 8))(&v0[v3], v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t NetworkDispatchClient.__deallocating_deinit()
{
  NetworkDispatchClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BCF1A940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BCF10A88;

  return (sub_1BCF1AAB8)(a1, a2, a3);
}

uint64_t sub_1BCF1AA08(int a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BCF099D4;

  return NetworkDispatchClient.reverseForward(messageCode:messageData:)(a1, a2, a3);
}

uint64_t sub_1BCF1AAB8(int a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF10A88;

  return sub_1BCF18514(a1, a2, a3);
}

uint64_t sub_1BCF1AB64(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  type metadata accessor for NetworkDispatchClient.Connection();
  result = sub_1BCF21D4C();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BCF1AC80(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  result = type metadata accessor for NetworkDispatchInterface();
  if (v5 <= 0x3F)
  {
    result = sub_1BCF215FC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t DuetDispatchListener.__allocating_init()()
{
  v0 = swift_allocObject();
  DuetDispatchListener.init()();
  return v0;
}

void *DuetDispatchListener.init()()
{
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 96);
  type metadata accessor for DispatchClientTable();
  v0[2] = DispatchClientTable.__allocating_init()();
  return v0;
}

uint64_t sub_1BCF1AE44(uint64_t a1)
{
  sub_1BCF21C3C();
  sub_1BCF21C2C();
  sub_1BCF21BDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BCF1B170(a1);
}

uint64_t sub_1BCF1AF24()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v10 - v6;
  sub_1BCF21E4C();
  v8 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1BCF21AFC();
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_1BCF1B084(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  sub_1BCF21C3C();
  sub_1BCF21C2C();
  sub_1BCF21BDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = v3[11];
  v5 = v3[12];
  v6 = v3[13];
  sub_1BCF1C44C(a1, v3[10]);
}

void sub_1BCF1B170(uint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1;
  v34 = v1;
  v5 = v3[10];
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BCF2170C();
  __swift_project_value_buffer(v11, qword_1EDDD2780);
  v33 = *(v6 + 16);
  v33(v10, v2, v5);
  v12 = sub_1BCF216EC();
  v13 = sub_1BCF21CCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = v4;
    v17 = v16;
    v36 = v16;
    *v15 = 136315138;
    v18 = v32[13];
    sub_1BCF21B0C();
    (*(v6 + 8))(v10, v5);
    v19 = sub_1BCEF84F4(aBlock, v38, &v36);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1BCEF6000, v12, v13, "Registering scheduled task %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v20 = v17;
    v4 = v32;
    MEMORY[0x1BFB32D20](v20, -1, -1);
    v21 = v15;
    v2 = v31;
    MEMORY[0x1BFB32D20](v21, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v32 = [objc_opt_self() sharedScheduler];
  v22 = v4[13];
  sub_1BCF21B0C();
  v23 = v4;
  v24 = sub_1BCF21A7C();

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = v35;
  v33(v35, v2, v5);
  v27 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v5;
  *(v28 + 3) = v23[11];
  *(v28 + 4) = v23[12];
  *(v28 + 5) = v22;
  (*(v6 + 32))(&v28[v27], v26, v5);
  *&v28[(v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8] = v25;
  v41 = sub_1BCF1C1A0;
  v42 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = sub_1BCF1C00C;
  v40 = &block_descriptor_3;
  v29 = _Block_copy(&aBlock);

  v30 = v32;
  [v32 registerForTaskWithIdentifier:v24 usingQueue:0 launchHandler:v29];
  _Block_release(v29);
}

uint64_t sub_1BCF1B5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a5;
  v44 = a6;
  v46 = a3;
  v47 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v45 = &v40 - v13;
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v48 = a7;
  v19 = sub_1BCF2170C();
  __swift_project_value_buffer(v19, qword_1EDDD2780);
  v20 = *(v14 + 16);
  v42 = a2;
  v20(v18, a2, a4);
  v21 = sub_1BCF216EC();
  v22 = sub_1BCF21CCC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v40 = v20;
    v24 = v23;
    v25 = swift_slowAlloc();
    v51 = v25;
    *v24 = 136315138;
    sub_1BCF21B0C();
    (*(v14 + 8))(v18, a4);
    v26 = sub_1BCEF84F4(v49, v50, &v51);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_1BCEF6000, v21, v22, "Received scheduled task %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1BFB32D20](v25, -1, -1);
    v27 = v24;
    v20 = v40;
    MEMORY[0x1BFB32D20](v27, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v18, a4);
  }

  v28 = v48;
  v29 = sub_1BCF21C5C();
  v30 = v45;
  (*(*(v29 - 8) + 56))(v45, 1, 1, v29);
  v31 = v41;
  v20(v41, v42, a4);
  v32 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v33 = (v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 2) = 0;
  *(v34 + 3) = 0;
  v36 = v43;
  v35 = v44;
  *(v34 + 4) = a4;
  *(v34 + 5) = v36;
  *(v34 + 6) = v35;
  *(v34 + 7) = v28;
  *(v34 + 8) = v46;
  (*(v14 + 32))(&v34[v32], v31, a4);
  v37 = v47;
  *&v34[v33] = v47;

  v38 = v37;
  sub_1BCF0E794(0, 0, v30, &unk_1BCF237F0, v34);
}

uint64_t sub_1BCF1B984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a7;
  v7[15] = v12;
  v7[12] = a5;
  v7[13] = a6;
  v7[11] = a4;
  v8 = *(a7 - 8);
  v7[16] = v8;
  v9 = *(v8 + 64) + 15;
  v7[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF1BA48, 0, 0);
}

uint64_t sub_1BCF1BA48()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v5 = *(v0 + 96);
    *(v0 + 144) = *(Strong + 16);

    sub_1BCF21B0C();
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    *(v0 + 152) = v7;
    *(v0 + 56) = v6;
    *(v0 + 64) = v7;
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_1BCF1BBB4;

    return sub_1BCF14BE8(v0 + 56, 0, 0xF000000000000000);
  }

  else
  {
    v10 = *(v0 + 136);
    [*(v0 + 104) setTaskCompleted];

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1BCF1BBB4()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v5 = sub_1BCF1BD7C;
  }

  else
  {
    v5 = sub_1BCF1BD08;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BCF1BD08()
{
  v1 = *(v0 + 136);
  [*(v0 + 104) setTaskCompleted];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BCF1BD7C()
{
  v27 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = sub_1BCF2170C();
  __swift_project_value_buffer(v6, qword_1EDDD2780);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_1BCF216EC();
  v9 = sub_1BCF21CBC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 168);
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  if (v10)
  {
    v14 = *(v0 + 112);
    v25 = *(v0 + 120);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v15 = 136315394;
    sub_1BCF21B0C();
    (*(v13 + 8))(v12, v14);
    v18 = sub_1BCEF84F4(*(v0 + 72), *(v0 + 80), &v26);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v20;
    *v16 = v20;
    _os_log_impl(&dword_1BCEF6000, v8, v9, "Failed to execute handler for duet task: %s: %@", v15, 0x16u);
    sub_1BCF05050(v16);
    MEMORY[0x1BFB32D20](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFB32D20](v17, -1, -1);
    MEMORY[0x1BFB32D20](v15, -1, -1);
  }

  else
  {
    v21 = *(v0 + 112);

    (*(v13 + 8))(v12, v21);
  }

  v22 = *(v0 + 136);
  [*(v0 + 104) setTaskCompleted];

  v23 = *(v0 + 8);

  return v23();
}

void sub_1BCF1C00C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t DuetDispatchListener.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DuetDispatchListener.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

char *sub_1BCF1C214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A870, &unk_1BCF237D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1BCF1C308(uint64_t a1)
{
  v3 = v1[4];
  v14 = v1[5];
  v5 = v1[6];
  v4 = v1[7];
  v6 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[8];
  v10 = *(v1 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BCF099D4;

  return sub_1BCF1B984(a1, v7, v8, v9, v1 + v6, v10, v3);
}

void sub_1BCF1C44C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1BCF2170C();
  __swift_project_value_buffer(v8, qword_1EDDD2780);
  (*(v4 + 16))(v7, a1, a2);
  v9 = sub_1BCF216EC();
  v10 = sub_1BCF21CCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136315138;
    sub_1BCF21B0C();
    (*(v4 + 8))(v7, a2);
    v13 = sub_1BCEF84F4(v17[1], v17[2], v17);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_1BCEF6000, v9, v10, "Unregistering scheduled task %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFB32D20](v12, -1, -1);
    MEMORY[0x1BFB32D20](v11, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, a2);
  }

  v14 = [objc_opt_self() sharedScheduler];
  sub_1BCF21B0C();
  v15 = sub_1BCF21A7C();

  [v14 deregisterTaskWithIdentifier_];
}

uint64_t sub_1BCF1C6E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_1BCF1DAC8(a1, a2);
  return v7;
}

uint64_t sub_1BCF1C738(int a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 48) = a3;
  *(v5 + 216) = a1;
  *(v5 + 220) = a2;
  *(v5 + 72) = *v4;
  v6 = sub_1BCF216BC();
  *(v5 + 80) = v6;
  v7 = *(v6 - 8);
  *(v5 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A878, &qword_1BCF23810);
  *(v5 + 104) = v9;
  v10 = *(v9 - 8);
  *(v5 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A880, &qword_1BCF23818);
  *(v5 + 128) = v12;
  v13 = *(v12 - 8);
  *(v5 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  v15 = sub_1BCF218FC();
  *(v5 + 160) = v15;
  v16 = *(v15 - 8);
  *(v5 + 168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF1C960, 0, 0);
}

uint64_t sub_1BCF1C960()
{
  v1 = *(v0 + 64);
  if (swift_distributed_actor_is_remote())
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 72);
    v4 = *(*(v0 + 64) + qword_1EDDD2778);
    sub_1BCF2182C();
    v5 = *(v3 + 80);
    sub_1BCF218EC();
    v13 = *(v0 + 152);
    *(v0 + 208) = *(v0 + 216);
    sub_1BCF216DC();
    sub_1BCF218BC();
    v14 = *(v0 + 176);
    v15 = *(v0 + 144);
    *(v0 + 212) = *(v0 + 220);
    sub_1BCF216DC();
    sub_1BCF218BC();
    v16 = *(v0 + 176);
    v17 = *(v0 + 120);
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    *(v0 + 16) = v18;
    *(v0 + 24) = v19;
    sub_1BCEFC5E0(v18, v19);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
    sub_1BCF216DC();
    sub_1BCF1E12C(&qword_1EBD2A888, sub_1BCF1E0D8);
    sub_1BCF1E12C(&qword_1EBD2A898, sub_1BCF1E1A4);
    sub_1BCF218BC();
    v21 = *(v0 + 176);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    sub_1BCF218CC();
    v23 = *(v0 + 176);
    sub_1BCF218DC();
    v24 = *(v0 + 176);
    sub_1BCF218AC();
    v25 = *(v0 + 96);
    v26 = *(v0 + 72);
    sub_1BCF216CC();
    v27 = *(MEMORY[0x1E6977C50] + 4);
    v28 = swift_task_alloc();
    *(v0 + 184) = v28;
    v29 = *(v26 + 88);
    v30 = *(v26 + 96);
    v31 = type metadata accessor for NetworkDispatchInterface();
    swift_getWitnessTable();
    *v28 = v0;
    v28[1] = sub_1BCF1CF0C;
    v32 = *(v0 + 176);
    v33 = *(v0 + 96);
    v34 = *(v0 + 64);

    return MEMORY[0x1EEDD27A0](v0 + 32, v34, v33, v32, v22, v20, v31, v22);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_1BCF1D168;
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v11 = *(v0 + 216);
    v10 = *(v0 + 220);

    return sub_1BCF1DD00(v11, v10, v9, v7);
  }
}

uint64_t sub_1BCF1CF0C()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_1BCF1D31C;
  }

  else
  {
    v3 = sub_1BCF1D020;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1BCF1D020()
{
  v1 = v0[21];
  v20 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  (*(v1 + 8))(v20, v2);
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[22];
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[15];
  v17 = v0[12];

  v18 = v0[1];

  return v18(v12, v11);
}

uint64_t sub_1BCF1D168(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 200);
  v8 = *v3;

  v9 = v6[22];
  v10 = v6[19];
  v11 = v6[18];
  v12 = v6[15];
  v13 = v6[12];

  v16 = *(v8 + 8);
  if (!v2)
  {
    v14 = a1;
    v15 = a2;
  }

  return v16(v14, v15);
}

uint64_t sub_1BCF1D31C()
{
  v1 = v0[21];
  v19 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v8 + 8))(v7, v9);
  v10 = *(v5 + 8);
  v10(v4, v6);
  v10(v3, v6);
  (*(v1 + 8))(v19, v2);
  v11 = v0[24];
  v12 = v0[22];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[15];
  v16 = v0[12];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BCF1D458(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1BCF2189C();
  v22 = *v8;
  v10 = a2[1];
  v3[6] = v10;
  v11 = *(v10 - 8);
  v3[7] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v3[8] = v13;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1BCF2189C();
  v20 = *v13;
  v14 = a2[2];
  v3[9] = v14;
  v15 = *(v14 - 8);
  v3[10] = v15;
  v16 = *(v15 + 64) + 15;
  v21 = swift_task_alloc();
  v3[11] = v21;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1BCF2189C();
  v18 = *v21;
  v17 = v21[1];
  v19 = swift_task_alloc();
  v3[12] = v19;
  *v19 = v3;
  v19[1] = sub_1BCF1D824;

  return sub_1BCF1C738(v22, v20, v18, v17);
}

uint64_t sub_1BCF1D824(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 96);
  v15 = *(*v2 + 88);
  v14 = *(*v2 + 80);
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 64);
  v13 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 32);
  v9 = *(*v2 + 24);
  v10 = *(*v2 + 16);
  v16 = *v2;
  *v10 = a1;
  v10[1] = a2;

  (*(v8 + 8))(v7, v9);
  (*(v13 + 8))(v5, v6);
  (*(v14 + 8))(v15, v4);

  v11 = *(v16 + 8);

  return v11();
}

void *sub_1BCF1DAC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = a2;
  v5 = *v2;
  v16 = sub_1BCF2190C();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v10 = qword_1EDDD2778;
  *(v3 + qword_1EDDD2778) = a1;
  v11 = v5[10];
  v12 = v5[11];
  v13 = v5[12];
  type metadata accessor for NetworkDispatchInterface();
  v18 = a1;
  sub_1BCF2186C();
  sub_1BCF1EBAC(qword_1EDDD1A38, MEMORY[0x1E6977C68]);

  swift_getWitnessTable();
  sub_1BCF2163C();
  (*(v6 + 32))(v3 + qword_1EDDD2770, v9, v16);
  *(v3 + qword_1EDDD1AC0) = v17;
  v18 = *(v3 + v10);

  sub_1BCF2161C();

  return v3;
}

uint64_t sub_1BCF1DD00(int a1, int a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 56) = a3;
  *(v5 + 120) = a2;
  *(v5 + 52) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF1DD2C, v4, 0);
}

uint64_t sub_1BCF1DD2C()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 52);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "NetworkDispatchInterface received message: %u", v5, 8u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 120);

  *(v0 + 80) = os_transaction_create();
  v8 = *(v6 + qword_1EDDD1AC0);
  *(v0 + 16) = v7;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1BCF1DED4;
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  v12 = *(v0 + 52);

  return sub_1BCEFB608(v12, v0 + 16, v10, v11);
}

uint64_t sub_1BCF1DED4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  v9 = v6[9];
  if (v2)
  {
    v10 = sub_1BCF1E074;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v10 = sub_1BCF1E00C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1BCF1E00C()
{
  v1 = v0[10];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v4 = v0[13];
  v3 = v0[14];

  return v2(v3, v4);
}

uint64_t sub_1BCF1E074()
{
  v1 = v0[10];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

unint64_t sub_1BCF1E0D8()
{
  result = qword_1EBD2A890;
  if (!qword_1EBD2A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A890);
  }

  return result;
}

uint64_t sub_1BCF1E12C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BCF1E1A4()
{
  result = qword_1EBD2A8A0;
  if (!qword_1EBD2A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A8A0);
  }

  return result;
}

uint64_t sub_1BCF1E210()
{
  result = sub_1BCF2190C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BCF1E2BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[10];
  v7 = v2[11];
  v8 = v2[12];
  type metadata accessor for NetworkDispatchInterface();
  sub_1BCF2186C();
  sub_1BCF1EBAC(qword_1EDDD1A38, MEMORY[0x1E6977C68]);
  swift_getWitnessTable();
  result = sub_1BCF2162C();
  if (!v3 && !result)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = qword_1EDDD2770;
    v12 = sub_1BCF2190C();
    (*(*(v12 - 8) + 16))(v10 + v11, a1, v12);
    *(v10 + qword_1EDDD2778) = a2;

    return v10;
  }

  return result;
}

uint64_t sub_1BCF1E410()
{
  v1 = qword_1EDDD2770;
  v2 = qword_1EDDD2778;
  sub_1BCF2186C();
  sub_1BCF1EBAC(qword_1EDDD1A38, MEMORY[0x1E6977C68]);
  sub_1BCF2164C();
  v3 = sub_1BCF2190C();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + v2);

  v5 = *(v0 + qword_1EDDD1AC0);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1BCF1E500()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = qword_1EDDD2770;
    v2 = sub_1BCF2190C();
    (*(*(v2 - 8) + 8))(v0 + v1, v2);
    v3 = *(v0 + qword_1EDDD2778);

    swift_defaultActor_destroy();
  }

  else
  {
    sub_1BCF1E410();
  }

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BCF1E59C()
{
  v1 = *v0;
  sub_1BCF21F4C();
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  type metadata accessor for NetworkDispatchInterface();
  swift_getWitnessTable();
  sub_1BCF2167C();
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF1E64C()
{
  v1 = *v0;
  if ((sub_1BCF216AC() & 1) == 0)
  {
    v2 = v1[10];
    v3 = v1[11];
    v4 = v1[12];
    type metadata accessor for NetworkDispatchInterface();
    swift_getWitnessTable();
    return sub_1BCF2160C();
  }

  return v0;
}

uint64_t sub_1BCF1E744(uint64_t a1, void *a2)
{
  v3 = *v2;
  v5 = a2[10];
  v4 = a2[11];
  v6 = a2[12];
  type metadata accessor for NetworkDispatchInterface();
  swift_getWitnessTable();
  return sub_1BCF2167C();
}

uint64_t sub_1BCF1E7B4(uint64_t a1, void *a2)
{
  sub_1BCF21F4C();
  v4 = *v2;
  v5 = a2[10];
  v6 = a2[11];
  v7 = a2[12];
  type metadata accessor for NetworkDispatchInterface();
  swift_getWitnessTable();
  sub_1BCF2167C();
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF1E830@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_1EDDD2770;
  v5 = sub_1BCF2190C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1BCF1E8AC(uint64_t *a1, uint64_t *a2, void *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a3[10];
  v6 = a3[11];
  v7 = a3[12];
  v8 = type metadata accessor for NetworkDispatchInterface();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6CC98](v3, v4, v8, WitnessTable);
}

uint64_t sub_1BCF1E92C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = a1[10];
  v4 = a1[11];
  v6 = a1[12];
  type metadata accessor for NetworkDispatchInterface();
  swift_getWitnessTable();
  sub_1BCF1EBAC(&qword_1EBD2A8B0, MEMORY[0x1E6977D90]);
  result = sub_1BCF2169C();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BCF1E9F0(uint64_t a1, void *a2)
{
  v3 = *v2;
  v5 = a2[10];
  v4 = a2[11];
  v6 = a2[12];
  type metadata accessor for NetworkDispatchInterface();
  swift_getWitnessTable();
  sub_1BCF1EBAC(&qword_1EBD2A8B8, MEMORY[0x1E6977D90]);
  return sub_1BCF2168C();
}

uint64_t sub_1BCF1EBAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BCF1EBF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1BCF2191C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF1ECB4, v1, 0);
}

uint64_t sub_1BCF1ECB4()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "NetworkDispatchBrowser looking for terminus endpoint", v4, 2u);
    MEMORY[0x1BFB32D20](v4, -1, -1);
  }

  v5 = v0[3];

  if (*(v5 + 136))
  {
    sub_1BCF20068();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    v7 = v0[6];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[5];
    v11 = v0[6];
    v13 = v0[3];
    v12 = v0[4];
    v14 = *(v13 + 120);
    *v11 = *(v13 + 112);
    v11[1] = v14;
    (*(v10 + 104))(v11, *MEMORY[0x1E6977DB0], v12);

    sub_1BCF0FEB4(0, 60.0);
    v15 = sub_1BCF2199C();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_1BCF2193C();
    v0[7] = v18;
    v19 = *(v5 + 136);
    *(v5 + 136) = v18;

    sub_1BCF20058(v19);
    v20 = sub_1BCF200BC();
    v21 = swift_task_alloc();
    v0[8] = v21;
    *(v21 + 16) = v18;
    *(v21 + 24) = v13;
    v22 = *(MEMORY[0x1E69E8920] + 4);
    v23 = swift_task_alloc();
    v0[9] = v23;
    v24 = sub_1BCF2173C();
    *v23 = v0;
    v23[1] = sub_1BCF1EF78;
    v25 = v0[2];

    return MEMORY[0x1EEE6DE38](v25, v13, v20, 0xD000000000000016, 0x80000001BCF26510, sub_1BCF20110, v21, v24);
  }
}

uint64_t sub_1BCF1EF78()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1BCF1F10C;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_1BCF1F0A0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1BCF1F0A0()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BCF1F10C()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1BCF1F198()
{
  v1 = *v0;
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](v1);
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF1F20C()
{
  v1 = *v0;
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](v1);
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF1F250()
{
  v1 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = sub_1BCF216EC();
  v4 = sub_1BCF21CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BCEF6000, v3, v4, "NetworkDispatchBrowser deinit", v5, 2u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = *(v1 + 136);
  if (v6 >= 2)
  {
    v7 = *(v1 + 136);

    sub_1BCF2198C();
    sub_1BCF20058(v6);
  }

  v8 = *(v1 + 120);

  sub_1BCF20058(*(v1 + 136));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1BCF1F368()
{
  sub_1BCF1F250();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t get_enum_tag_for_layout_string_15FitnessDispatch07NetworkB7BrowserC5State33_075526CA0CCBF12FC5A9790C70E57C9ELLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BCF1F3D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCF1F424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1BCF1F480(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1BCF1F4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v5 = sub_1BCF219BC();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v32 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v29 - v14;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = swift_allocObject();
  swift_weakInit();
  v30 = *(v12 + 16);
  v30(v15, a1, v11);
  v17 = *(v12 + 80);
  v29[0] = a1;
  v18 = swift_allocObject();
  v29[1] = v13;
  v19 = a3;
  *(v18 + 16) = v16;
  v20 = *(v12 + 32);
  v20(v18 + ((v17 + 24) & ~v17), v15, v11);

  sub_1BCF2192C();

  v21 = sub_1BCF21C5C();
  v22 = v31;
  (*(*(v21 - 8) + 56))(v31, 1, 1, v21);
  v30(v15, v29[0], v11);
  v23 = sub_1BCF200BC();
  v24 = swift_allocObject();
  v24[2] = v19;
  v24[3] = v23;
  v24[4] = v19;
  v20(v24 + ((v17 + 40) & ~v17), v15, v11);
  swift_retain_n();
  sub_1BCF134B4(0, 0, v22, &unk_1BCF23B68, v24);

  sub_1BCF12F90();
  v26 = v32;
  v25 = v33;
  v27 = v34;
  (*(v33 + 104))(v32, *MEMORY[0x1E69E7F98], v34);
  v28 = sub_1BCF21CEC();
  (*(v25 + 8))(v26, v27);
  sub_1BCF2194C();
}

uint64_t sub_1BCF1F898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v21 - v15;
  v17 = sub_1BCF21C5C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a4, v8);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a3;
  *(v19 + 5) = a1;
  *(v19 + 6) = a2;
  (*(v9 + 32))(&v19[v18], v12, v8);

  sub_1BCF0EA84(0, 0, v16, &unk_1BCF23B78, v19);
}

uint64_t sub_1BCF1FAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a1;
  v7[6] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BCF1FACC, 0, 0);
}

uint64_t sub_1BCF1FACC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BCF1FB90, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1BCF1FB90()
{
  v1 = *(v0 + 72);
  sub_1BCF203C4(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1BCF1FC04, 0, 0);
}

uint64_t sub_1BCF1FC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BCF1FC4C, a4, 0);
}

uint64_t sub_1BCF1FC4C(unint64_t a1)
{
  v3 = *(*(v1 + 16) + 128);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = 1000000000 * v3;
  v5 = *(MEMORY[0x1E69E86C8] + 4);
  v6 = swift_task_alloc();
  *(v1 + 32) = v6;
  *v6 = v1;
  v6[1] = sub_1BCF1FD44;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1BCF1FD44()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1BCF1FE88, v7, 0);
  }
}

uint64_t sub_1BCF1FE88()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_1BCF1FEEC();
  v3 = v0[1];

  return v3();
}

unint64_t sub_1BCF1FEEC()
{
  v1 = *(v0 + 136);
  if (v1 >= 2)
  {
    v2 = v0;
    v3 = qword_1EDDD22E0;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1BCF2170C();
    __swift_project_value_buffer(v4, qword_1EDDD2780);
    v5 = sub_1BCF216EC();
    v6 = sub_1BCF21CCC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BCEF6000, v5, v6, "NetworkDispatchBrowser timed out", v7, 2u);
      MEMORY[0x1BFB32D20](v7, -1, -1);
    }

    sub_1BCF2198C();
    v8 = *(v2 + 136);
    *(v2 + 136) = 1;
    sub_1BCF20058(v8);
    sub_1BCF20068();
    swift_allocError();
    *v9 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
    sub_1BCF21BFC();
    return sub_1BCF20058(v1);
  }

  return result;
}

unint64_t sub_1BCF20058(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1BCF20068()
{
  result = qword_1EBD2A8C0;
  if (!qword_1EBD2A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A8C0);
  }

  return result;
}

unint64_t sub_1BCF200BC()
{
  result = qword_1EBD2A8C8;
  if (!qword_1EBD2A8C8)
  {
    type metadata accessor for NetworkDispatchBrowser();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A8C8);
  }

  return result;
}

uint64_t sub_1BCF20118(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BCF1F898(a1, a2, v6, v7);
}

uint64_t sub_1BCF201A8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BCF099D4;

  return sub_1BCF1FC2C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1BCF202AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BCF099D4;

  return sub_1BCF1FAA8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1BCF203C4(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  v80 = a2;
  v97 = a1;
  v74 = sub_1BCF2173C();
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = sub_1BCF2197C();
  v8 = *(v86 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v86);
  v12 = &v67[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v67[-v13];
  v98 = sub_1BCF2195C();
  v95 = *(v98 - 8);
  v14 = v95[8];
  v15 = MEMORY[0x1EEE9AC00](v98);
  v17 = &v67[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v67[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v93 = &v67[-v21];
  if (qword_1EDDD22E0 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v96 = v20;
    v90 = v17;
    v85 = v12;
    v79 = v7;
    v22 = sub_1BCF2170C();
    v82 = __swift_project_value_buffer(v22, qword_1EDDD2780);
    v23 = sub_1BCF216EC();
    v12 = sub_1BCF21CCC();
    if (os_log_type_enabled(v23, v12))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1BCEF6000, v23, v12, "NetworkDispatchBrowser results changed", v20, 2u);
      MEMORY[0x1BFB32D20](v20, -1, -1);
    }

    v24 = v97 + 56;
    v25 = 1 << *(v97 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v17 = v26 & *(v97 + 56);
    v27 = (v25 + 63) >> 6;
    v28 = v95 + 2;
    v92 = v95 + 4;
    v88 = (v95 + 11);
    v87 = *MEMORY[0x1E6977DD0];
    v94 = (v95 + 1);
    v78 = (v95 + 12);
    v77 = (v8 + 32);
    v76 = (v8 + 16);
    v75 = v8 + 8;
    v73 = (v4 + 8);

    v7 = 0;
    *&v29 = 136315138;
    v72 = v29;
    v81 = v3;
    v89 = v28;
    if (v17)
    {
      break;
    }

LABEL_9:
    while (1)
    {
      v31 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v31 >= v27)
      {
      }

      v17 = *(v24 + 8 * v31);
      ++v7;
      if (v17)
      {
        v7 = v31;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_13:
  while (1)
  {
    v32 = v98;
    v33 = v95;
    v34 = v95[2];
    v35 = v93;
    v34(v93, *(v97 + 48) + v95[9] * (__clz(__rbit64(v17)) | (v7 << 6)), v98);
    v36 = v33[4];
    v37 = v96;
    v36(v96, v35, v32);
    v8 = *(v3 + 17);
    if (v8 < 2)
    {
      break;
    }

    v38 = v3;
    v17 &= v17 - 1;
    v4 = v90;
    v39 = v98;
    v34(v90, v37, v98);
    v40 = (*v88)(v4, v39);
    if (v40 == v87)
    {
      (*v78)(v4, v98);
      v41 = v91;
      v42 = v86;
      (*v77)(v91, v4, v86);
      v43 = v85;
      (*v76)(v85, v41, v42);

      v44 = sub_1BCF216EC();
      v45 = sub_1BCF21CCC();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v75;
      v84 = v75 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v46)
      {
        v48 = swift_slowAlloc();
        v69 = v48;
        v71 = swift_slowAlloc();
        v99 = v71;
        *v48 = v72;
        v49 = v79;
        v70 = v44;
        v50 = v85;
        sub_1BCF2196C();
        v51 = sub_1BCF2172C();
        v68 = v45;
        v53 = v52;
        (*v73)(v49, v74);
        v54 = v50;
        v4 = v86;
        v83 = *v47;
        v83(v54, v86);
        v55 = sub_1BCEF84F4(v51, v53, &v99);

        v56 = v69;
        *(v69 + 1) = v55;
        v57 = v70;
        v58 = v56;
        _os_log_impl(&dword_1BCEF6000, v70, v68, "Connection added %s", v56, 0xCu);
        v59 = v71;
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1BFB32D20](v59, -1, -1);
        MEMORY[0x1BFB32D20](v58, -1, -1);
      }

      else
      {

        v83 = *v47;
        v83(v43, v42);
        v4 = v42;
      }

      sub_1BCF2198C();
      v20 = v81;
      v60 = *(v81 + 17);
      *(v81 + 17) = 1;
      sub_1BCF20058(v60);
      v61 = v91;
      sub_1BCF2196C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
      v12 = v80;
      sub_1BCF21C0C();
      sub_1BCF20058(v8);
      v62 = v61;
      v3 = v20;
      v83(v62, v4);
      (*v94)(v96, v98);
      if (!v17)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = v94;
      v12 = *v94;
      v30 = v37;
      v20 = v98;
      (*v94)(v30, v98);
      (v12)(v4, v20);
      v3 = v38;
      if (!v17)
      {
        goto LABEL_9;
      }
    }
  }

  v64 = sub_1BCF216EC();
  v65 = sub_1BCF21CCC();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1BCEF6000, v64, v65, "Ignoring, state is no longer browsing", v66, 2u);
    MEMORY[0x1BFB32D20](v66, -1, -1);
  }

  return (*v94)(v96, v98);
}

uint64_t getEnumTagSinglePayload for NetworkDispatchBrowser.Failure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkDispatchBrowser.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BCF20D58()
{
  result = qword_1EBD2A8D8;
  if (!qword_1EBD2A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A8D8);
  }

  return result;
}

id sub_1BCF20E14(uint64_t a1)
{
  sub_1BCF210F4(a1);
  v2 = sub_1BCF20F94(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8E0, &qword_1BCF23C40);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7470697263736544;
  *(inited + 16) = xmmword_1BCF232E0;
  *(inited + 40) = 0xEB000000006E6F69;
  sub_1BCF21ECC();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_1BCF213A4(inited);
  swift_setDeallocating();
  sub_1BCF214B4(inited + 32);
  v4 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v5 = sub_1BCF21A7C();

  v6 = sub_1BCF219EC();

  v7 = [v4 initWithDomain:v5 code:v2 userInfo:v6];

  return v7;
}

id sub_1BCF20F94(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1BCF21EBC();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1BCF2159C();

  v11 = [v10 code];
  return v11;
}

uint64_t sub_1BCF210F4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_1BCF21EBC();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_1BCF2159C();

  v11 = [v10 domain];
  v12 = sub_1BCF21A8C();

  return v12;
}

unint64_t sub_1BCF21274(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BCF21F4C();
  sub_1BCF21ABC();
  v6 = sub_1BCF21F6C();

  return sub_1BCF212EC(a1, a2, v6);
}

unint64_t sub_1BCF212EC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1BCF21EDC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1BCF213A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD2A8F0, &qword_1BCF23C50);
    v3 = sub_1BCF21E9C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1BCF2151C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1BCF21274(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1BCF2158C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BCF214B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8E8, &qword_1BCF23C48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCF2151C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8E8, &qword_1BCF23C48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1BCF2158C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}