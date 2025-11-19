uint64_t sub_2490849C8()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EED8208);
  __swift_project_value_buffer(v0, qword_27EED8208);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTDaemon.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_249084AB0(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t DTDaemon.__allocating_init(environment:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DTDaemon.init(environment:)(a1);
  return v5;
}

uint64_t DTDaemon.init(environment:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler) = 0;
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__startTicks;
  *(v1 + v3) = sub_24910C4AC();
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon) = 0;
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon) = 0;
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon) = 0;
  *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer) = 0;
  v4 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  v5 = sub_24910C3BC();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t DTDaemon.summary.getter()
{
  v1[10] = v0;
  v2 = *v0;
  v3 = sub_24910D51C();
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  sub_249088660(&unk_27EED7F50, type metadata accessor for DTDaemon);
  v7 = sub_24910CDAC();
  v1[14] = v7;
  v1[15] = v6;

  return MEMORY[0x2822009F8](sub_249084D34, v7, v6);
}

uint64_t sub_249084D34()
{
  v1 = v0[10];
  v2 = sub_24910C4AC();
  v3 = *(v1 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__startTicks);
  v4 = v2 >= v3;
  result = v2 - v3;
  if (v4)
  {
    v7 = v0[12];
    v6 = v0[13];
    v9 = v0[10];
    v8 = v0[11];
    v10 = sub_24910C31C();
    sub_24910D25C();
    MEMORY[0x24C1F1710](0xD000000000000012, 0x8000000249110E40);
    v0[9] = v10;
    (*(v7 + 104))(v6, *MEMORY[0x277D02A60], v8);
    sub_249085378();
    sub_24910D53C();
    (*(v7 + 8))(v6, v8);
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    MEMORY[0x24C1F1710](10, 0xE100000000000000);
    v11 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
    swift_beginAccess();
    v12 = *(v9 + v11);
    v0[16] = v12;
    v13 = v12[2];
    v0[17] = v13;
    if (v13)
    {
      v0[18] = 0;
      v0[19] = v12[4];
      v14 = v12[5];

      ObjectType = swift_getObjectType();
      v16 = *(v14 + 16);
      swift_unknownObjectRetain();
      v23 = (v16 + *v16);
      v17 = v16[1];
      v18 = swift_task_alloc();
      v0[20] = v18;
      *v18 = v0;
      v18[1] = sub_249084FF0;

      return v23(ObjectType, v14);
    }

    else
    {
      v19 = v0[13];
      v21 = v0[5];
      v20 = v0[6];

      v22 = v0[1];

      return v22(v21, v20);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_249084FF0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 160);
  v9 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;

  v6 = *(v3 + 120);
  v7 = *(v3 + 112);

  return MEMORY[0x2822009F8](sub_249085118, v7, v6);
}

uint64_t sub_249085118()
{
  v1 = v0[22];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[21] & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v0[7] = 10;
    v0[8] = 0xE100000000000000;
    MEMORY[0x24C1F1710]();

    MEMORY[0x24C1F1710](v0[7], v0[8]);
  }

  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];

  swift_unknownObjectRelease();
  if (v4 + 1 == v5)
  {
    v6 = v0[16];

    v7 = v0[13];
    v9 = v0[5];
    v8 = v0[6];

    v10 = v0[1];

    return v10(v9, v8);
  }

  else
  {
    v12 = v0[18] + 1;
    v0[18] = v12;
    v13 = v0[16] + 16 * v12;
    v0[19] = *(v13 + 32);
    v14 = *(v13 + 40);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 16);
    swift_unknownObjectRetain();
    v19 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[20] = v18;
    *v18 = v0;
    v18[1] = sub_249084FF0;

    return v19(ObjectType, v14);
  }
}

uint64_t type metadata accessor for DTDaemon()
{
  result = qword_27EED82C0;
  if (!qword_27EED82C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_249085378()
{
  result = qword_27EED7540;
  if (!qword_27EED7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7540);
  }

  return result;
}

uint64_t DTDaemon.activate()()
{
  v1[33] = v0;
  v2 = *v0;
  v3 = sub_24910C3BC();
  v1[34] = v3;
  v4 = *(v3 - 8);
  v1[35] = v4;
  v5 = *(v4 + 64) + 15;
  v1[36] = swift_task_alloc();
  v6 = sub_24910D00C();
  v1[37] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v8 = *(*(sub_24910CBAC() - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v9 = sub_24910CFAC();
  v1[40] = v9;
  v10 = *(v9 - 8);
  v1[41] = v10;
  v11 = *(v10 + 64) + 15;
  v1[42] = swift_task_alloc();
  sub_249088660(&unk_27EED7F50, type metadata accessor for DTDaemon);
  v13 = sub_24910CDAC();
  v1[43] = v13;
  v1[44] = v12;

  return MEMORY[0x2822009F8](sub_2490855B4, v13, v12);
}

uint64_t sub_2490855B4()
{
  if (qword_27EED8200 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EED8208);
  v2 = sub_24910C87C();
  v3 = sub_24910CF5C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "Activate", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  v5 = v0[33];

  v6 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler;
  if (!*(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler))
  {
    v8 = v0[41];
    v7 = v0[42];
    v9 = v0[39];
    v10 = v0[40];
    v12 = v0[37];
    v11 = v0[38];
    v73 = v0[33];
    sub_249086D6C();
    (*(v8 + 104))(v7, *MEMORY[0x277D85268], v10);
    sub_24910CB9C();
    v0[32] = MEMORY[0x277D84F90];
    sub_249088660(&qword_27EED7548, MEMORY[0x277D852D8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7550, &qword_24910E740);
    sub_249086E00();
    sub_24910D14C();
    v13 = sub_24910D01C();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = objc_allocWithZone(MEMORY[0x277D028D0]);

    v16 = sub_24910CC8C();
    v0[6] = sub_2490872FC;
    v0[7] = v14;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_249087EDC;
    v0[5] = &block_descriptor;
    v17 = _Block_copy(v0 + 2);
    v18 = [v15 initWithTitle:v16 dispatchQueue:v13 handler:v17];

    _Block_release(v17);
    v19 = v0[7];

    v20 = *(v5 + v6);
    *(v5 + v6) = v18;
  }

  v21 = v0[33];
  v22 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  v0[45] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  if ((sub_24910C36C() & 1) != 0 && (v23 = v0[33], v24 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon, swift_beginAccess(), !*(v23 + v24)))
  {
    v56 = v0[35];
    v55 = v0[36];
    v58 = v0[33];
    v57 = v0[34];
    type metadata accessor for DTSyncDaemon();
    (*(v56 + 16))(v55, v21 + v22, v57);

    v60 = DTSyncDaemon.__allocating_init(daemon:environment:)(v59, v55);
    v0[46] = v60;
    v61 = *(v23 + v24);
    *(v23 + v24) = v60;

    sub_249088660(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
    v63 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_249085D68, v63, v62);
  }

  else
  {
    v25 = v0[33];
    v26 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    swift_beginAccess();
    if (*(v25 + v26))
    {
      v27 = v0[33];
      v28 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
      swift_beginAccess();
      if (*(v27 + v28))
      {
        v29 = v0[33];
        v30 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
        swift_beginAccess();
        if (*(v29 + v30))
        {
          v31 = v0[42];
          v32 = v0[38];
          v33 = v0[39];
          v34 = v0[36];

          v35 = v0[1];

          return v35();
        }

        else
        {
          v64 = v0[45];
          v66 = v0[35];
          v65 = v0[36];
          v68 = v0[33];
          v67 = v0[34];
          type metadata accessor for DTXPCServer();
          (*(v66 + 16))(v65, v68 + v64, v67);

          v70 = DTXPCServer.__allocating_init(daemon:environment:)(v69, v65);
          v0[51] = v70;
          v71 = *(v29 + v30);
          *(v29 + v30) = v70;

          v72 = swift_task_alloc();
          v0[52] = v72;
          *v72 = v0;
          v72[1] = sub_249086A98;

          return DTXPCServer.activate()();
        }
      }

      else
      {
        v46 = v0[45];
        v48 = v0[35];
        v47 = v0[36];
        v50 = v0[33];
        v49 = v0[34];
        type metadata accessor for DTTransportDaemon(0);
        (*(v48 + 16))(v47, v50 + v46, v49);

        v52 = DTTransportDaemon.__allocating_init(daemon:environment:)(v51, v47);
        v0[49] = v52;
        v53 = *(v27 + v28);
        *(v27 + v28) = v52;

        v54 = swift_task_alloc();
        v0[50] = v54;
        *v54 = v0;
        v54[1] = sub_2490866F4;

        return DTTransportDaemon.activate()();
      }
    }

    else
    {
      v37 = v0[45];
      v39 = v0[35];
      v38 = v0[36];
      v41 = v0[33];
      v40 = v0[34];
      type metadata accessor for DTTimerDaemon();
      (*(v39 + 16))(v38, v41 + v37, v40);

      v43 = DTTimerDaemon.__allocating_init(daemon:environment:)(v42, v38);
      v0[47] = v43;
      v44 = *(v25 + v26);
      *(v25 + v26) = v43;

      v45 = swift_task_alloc();
      v0[48] = v45;
      *v45 = v0;
      v45[1] = sub_249086250;

      return DTTimerDaemon.activate()();
    }
  }
}

uint64_t sub_249085D68()
{
  v1 = v0[46];
  DTSyncDaemon.activate()();
  v2 = v0[43];
  v3 = v0[44];

  return MEMORY[0x2822009F8](sub_249085DCC, v2, v3);
}

uint64_t sub_249085DCC()
{
  v1 = v0[46];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v4 = *(v2 + v3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_249088158(0, v4[2] + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_249088158((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = v0[46];
  v9 = sub_249088660(&qword_27EED7580, type metadata accessor for DTSyncDaemon);
  v4[2] = v7 + 1;
  v10 = &v4[2 * v7];
  v10[4] = v8;
  v10[5] = v9;
  *(v2 + v3) = v4;
  swift_endAccess();

  v11 = v0[33];
  v12 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
  swift_beginAccess();
  if (*(v11 + v12))
  {
    v13 = v0[33];
    v14 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
    swift_beginAccess();
    if (*(v13 + v14))
    {
      v15 = v0[33];
      v16 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
      swift_beginAccess();
      if (*(v15 + v16))
      {
        v17 = v0[42];
        v18 = v0[38];
        v19 = v0[39];
        v20 = v0[36];

        v21 = v0[1];

        return v21();
      }

      else
      {
        v41 = v0[45];
        v43 = v0[35];
        v42 = v0[36];
        v45 = v0[33];
        v44 = v0[34];
        type metadata accessor for DTXPCServer();
        (*(v43 + 16))(v42, v45 + v41, v44);

        v47 = DTXPCServer.__allocating_init(daemon:environment:)(v46, v42);
        v0[51] = v47;
        v48 = *(v15 + v16);
        *(v15 + v16) = v47;

        v49 = swift_task_alloc();
        v0[52] = v49;
        *v49 = v0;
        v49[1] = sub_249086A98;

        return DTXPCServer.activate()();
      }
    }

    else
    {
      v32 = v0[45];
      v34 = v0[35];
      v33 = v0[36];
      v36 = v0[33];
      v35 = v0[34];
      type metadata accessor for DTTransportDaemon(0);
      (*(v34 + 16))(v33, v36 + v32, v35);

      v38 = DTTransportDaemon.__allocating_init(daemon:environment:)(v37, v33);
      v0[49] = v38;
      v39 = *(v13 + v14);
      *(v13 + v14) = v38;

      v40 = swift_task_alloc();
      v0[50] = v40;
      *v40 = v0;
      v40[1] = sub_2490866F4;

      return DTTransportDaemon.activate()();
    }
  }

  else
  {
    v23 = v0[45];
    v25 = v0[35];
    v24 = v0[36];
    v27 = v0[33];
    v26 = v0[34];
    type metadata accessor for DTTimerDaemon();
    (*(v25 + 16))(v24, v27 + v23, v26);

    v29 = DTTimerDaemon.__allocating_init(daemon:environment:)(v28, v24);
    v0[47] = v29;
    v30 = *(v11 + v12);
    *(v11 + v12) = v29;

    v31 = swift_task_alloc();
    v0[48] = v31;
    *v31 = v0;
    v31[1] = sub_249086250;

    return DTTimerDaemon.activate()();
  }
}

uint64_t sub_249086250()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v6 = *v0;

  v3 = *(v1 + 352);
  v4 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_249086370, v4, v3);
}

uint64_t sub_249086370()
{
  v1 = v0[47];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v4 = *(v2 + v3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_249088158(0, v4[2] + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_249088158((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = v0[47];
  v9 = sub_249088660(&qword_27EED7560, type metadata accessor for DTTimerDaemon);
  v4[2] = v7 + 1;
  v10 = &v4[2 * v7];
  v10[4] = v8;
  v10[5] = v9;
  *(v2 + v3) = v4;
  swift_endAccess();

  v11 = v0[33];
  v12 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
  swift_beginAccess();
  if (*(v11 + v12))
  {
    v13 = v0[33];
    v14 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
    swift_beginAccess();
    if (*(v13 + v14))
    {
      v15 = v0[42];
      v16 = v0[38];
      v17 = v0[39];
      v18 = v0[36];

      v19 = v0[1];

      return v19();
    }

    else
    {
      v30 = v0[45];
      v32 = v0[35];
      v31 = v0[36];
      v34 = v0[33];
      v33 = v0[34];
      type metadata accessor for DTXPCServer();
      (*(v32 + 16))(v31, v34 + v30, v33);

      v36 = DTXPCServer.__allocating_init(daemon:environment:)(v35, v31);
      v0[51] = v36;
      v37 = *(v13 + v14);
      *(v13 + v14) = v36;

      v38 = swift_task_alloc();
      v0[52] = v38;
      *v38 = v0;
      v38[1] = sub_249086A98;

      return DTXPCServer.activate()();
    }
  }

  else
  {
    v21 = v0[45];
    v23 = v0[35];
    v22 = v0[36];
    v25 = v0[33];
    v24 = v0[34];
    type metadata accessor for DTTransportDaemon(0);
    (*(v23 + 16))(v22, v25 + v21, v24);

    v27 = DTTransportDaemon.__allocating_init(daemon:environment:)(v26, v22);
    v0[49] = v27;
    v28 = *(v11 + v12);
    *(v11 + v12) = v27;

    v29 = swift_task_alloc();
    v0[50] = v29;
    *v29 = v0;
    v29[1] = sub_2490866F4;

    return DTTransportDaemon.activate()();
  }
}

uint64_t sub_2490866F4()
{
  v1 = *v0;
  v2 = *(*v0 + 400);
  v6 = *v0;

  v3 = *(v1 + 352);
  v4 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_249086814, v4, v3);
}

uint64_t sub_249086814()
{
  v1 = v0[49];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v4 = *(v2 + v3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_249088158(0, v4[2] + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_249088158((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = v0[49];
  v9 = sub_249088660(&qword_27EED7568, type metadata accessor for DTTransportDaemon);
  v4[2] = v7 + 1;
  v10 = &v4[2 * v7];
  v10[4] = v8;
  v10[5] = v9;
  *(v2 + v3) = v4;
  swift_endAccess();

  v11 = v0[33];
  v12 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
  swift_beginAccess();
  if (*(v11 + v12))
  {
    v13 = v0[42];
    v14 = v0[38];
    v15 = v0[39];
    v16 = v0[36];

    v17 = v0[1];

    return v17();
  }

  else
  {
    v19 = v0[45];
    v21 = v0[35];
    v20 = v0[36];
    v23 = v0[33];
    v22 = v0[34];
    type metadata accessor for DTXPCServer();
    (*(v21 + 16))(v20, v23 + v19, v22);

    v25 = DTXPCServer.__allocating_init(daemon:environment:)(v24, v20);
    v0[51] = v25;
    v26 = *(v11 + v12);
    *(v11 + v12) = v25;

    v27 = swift_task_alloc();
    v0[52] = v27;
    *v27 = v0;
    v27[1] = sub_249086A98;

    return DTXPCServer.activate()();
  }
}

uint64_t sub_249086A98()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v6 = *v0;

  v3 = *(v1 + 352);
  v4 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_249086BB8, v4, v3);
}

uint64_t sub_249086BB8()
{
  v1 = v0[51];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v4 = *(v2 + v3);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_249088158(0, v4[2] + 1, 1, v4);
    *(v2 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_249088158((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = v0[51];
  v9 = sub_249088660(&qword_27EED7570, type metadata accessor for DTXPCServer);
  v4[2] = v7 + 1;
  v10 = &v4[2 * v7];
  v10[4] = v8;
  v10[5] = v9;
  *(v2 + v3) = v4;
  swift_endAccess();

  v11 = v0[42];
  v12 = v0[38];
  v13 = v0[39];
  v14 = v0[36];

  v15 = v0[1];

  return v15();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_249086D6C()
{
  result = qword_27EED7B60;
  if (!qword_27EED7B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EED7B60);
  }

  return result;
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

unint64_t sub_249086E00()
{
  result = qword_27EED7558;
  if (!qword_27EED7558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7550, &qword_24910E740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7558);
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

uint64_t sub_249086EAC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249086EE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v27 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 63;
  }

  v8 = Strong;
  if (qword_27EED8200 != -1)
  {
    swift_once();
  }

  v9 = sub_24910C89C();
  __swift_project_value_buffer(v9, qword_27EED8208);
  v10 = sub_24910C87C();
  v11 = sub_24910CF5C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_249083000, v10, v11, "Generating state dump", v12, 2u);
    MEMORY[0x24C1F26F0](v12, -1, -1);
  }

  type metadata accessor for DTDaemon.OutputWrapper();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = dispatch_semaphore_create(0);
  v28 = sub_24910C34C();
  v15 = sub_24910CDEC();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v6, 1, 1, v15);
  v17 = swift_allocObject();
  v17[2] = v13;
  v17[3] = v8;
  v17[4] = v14;
  sub_249088588(v6, v4);
  v18 = (*(v16 + 48))(v4, 1, v15);

  v19 = v14;
  if (v18 == 1)
  {
    sub_2490885F8(v4);
  }

  else
  {
    sub_24910CDDC();
    v27[1] = v8;
    (*(v16 + 8))(v4, v15);
  }

  v21 = sub_249088660(&qword_27EED8180, sub_249086D6C);
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_24910E820;
  *(v22 + 24) = v17;
  v29 = 6;
  v30 = 0;
  v23 = v28;
  v31 = v28;
  v32 = v21;

  v24 = v23;
  swift_task_create();
  sub_2490885F8(v6);

  sub_24910CFBC();
  if (*(v13 + 24))
  {
    v20 = *(v13 + 16);
    v25 = *(v13 + 24);
  }

  else
  {
    v20 = 63;
  }

  return v20;
}

uint64_t sub_249087304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_249087398;

  return DTDaemon.summary.getter();
}

uint64_t sub_249087398(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v6 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;

  return MEMORY[0x2822009F8](sub_249087498, 0, 0);
}

uint64_t sub_249087498()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v2 + 24);
  *(v2 + 16) = v0[5];
  *(v2 + 24) = v1;

  sub_24910CFCC();
  v5 = v0[1];

  return v5();
}

uint64_t DTDaemon.invalidate()()
{
  v1[17] = v0;
  v2 = *v0;
  sub_249088660(&unk_27EED7F50, type metadata accessor for DTDaemon);
  v4 = sub_24910CDAC();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x2822009F8](sub_2490875DC, v4, v3);
}

uint64_t sub_2490875DC()
{
  if (qword_27EED8200 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EED8208);
  v2 = sub_24910C87C();
  v3 = sub_24910CF5C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "Invalidate", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  v5 = v0[17];

  v6 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler;
  v7 = *(v5 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__osStateHandler);
  if (v7)
  {
    [v7 remove];
    v8 = *(v5 + v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[17];
  *(v5 + v6) = 0;

  v10 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v0[20] = v11;
  *(v9 + v10) = MEMORY[0x277D84F90];
  v12 = *(v11 + 16);
  v0[21] = v12;
  if (v12)
  {
    v0[22] = 0;
    v13 = v0[20];
    v0[23] = *(v13 + 32);
    v14 = *(v13 + 40);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 32);
    swift_unknownObjectRetain();
    v31 = (v16 + *v16);
    v17 = v16[1];
    v18 = swift_task_alloc();
    v0[24] = v18;
    *v18 = v0;
    v18[1] = sub_24908792C;

    return v31(ObjectType, v14);
  }

  else
  {
    v20 = v0[20];
    v21 = v0[17];

    v22 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    swift_beginAccess();
    v23 = *(v21 + v22);
    *(v21 + v22) = 0;

    v24 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    swift_beginAccess();
    v25 = *(v21 + v24);
    *(v21 + v24) = 0;

    v26 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
    swift_beginAccess();
    v27 = *(v21 + v26);
    *(v21 + v26) = 0;

    v28 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
    swift_beginAccess();
    v29 = *(v21 + v28);
    *(v21 + v28) = 0;

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_24908792C()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 152);
  v4 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_249087A4C, v4, v3);
}

uint64_t sub_249087A4C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v4 = v0[20];
    v5 = v0[17];

    v6 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon;
    swift_beginAccess();
    v7 = *(v5 + v6);
    *(v5 + v6) = 0;

    v8 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    swift_beginAccess();
    v9 = *(v5 + v8);
    *(v5 + v8) = 0;

    v10 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon;
    swift_beginAccess();
    v11 = *(v5 + v10);
    *(v5 + v10) = 0;

    v12 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer;
    swift_beginAccess();
    v13 = *(v5 + v12);
    *(v5 + v12) = 0;

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[22] + 1;
    v0[22] = v16;
    v17 = v0[20] + 16 * v16;
    v0[23] = *(v17 + 32);
    v18 = *(v17 + 40);
    ObjectType = swift_getObjectType();
    v20 = *(v18 + 32);
    swift_unknownObjectRetain();
    v23 = (v20 + *v20);
    v21 = v20[1];
    v22 = swift_task_alloc();
    v0[24] = v22;
    *v22 = v0;
    v22[1] = sub_24908792C;

    return v23(ObjectType, v18);
  }
}

uint64_t DTDaemon.deinit()
{
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons);

  v4 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon);

  v5 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon);

  v6 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon);

  v7 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer);

  return v0;
}

uint64_t DTDaemon.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__environment;
  v2 = sub_24910C3BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon__subDaemons);

  v4 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_syncDaemon);

  v5 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon);

  v6 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_transportDaemon);

  v7 = *(v0 + OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_xpcServer);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

uint64_t sub_249087E54()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_249087EA4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id sub_249087EDC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);

  v4 = sub_24910CC8C();

  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249087F68(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_249088060;

  return v7(a1);
}

uint64_t sub_249088060()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_249088158(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7588, "\b:");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7590, &qword_24910E808);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_249088294()
{
  result = sub_24910C3BC();
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

uint64_t sub_24908837C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_249088498()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2490884E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2490887FC;

  return sub_249087304(v5, v2, v3, v4);
}

uint64_t sub_249088588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2490885F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249088660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2490886A8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490886E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24908837C;

  return sub_249087F68(a1, v5);
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

uint64_t sub_249088800()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EED82D8);
  __swift_project_value_buffer(v0, qword_27EED82D8);
  sub_24910C58C();
  return sub_24910C88C();
}

uint64_t DTSyncDaemon._persistentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  return sub_2490A3010(v1 + v3, a1, type metadata accessor for DTSyncDaemon.PersistentData);
}

uint64_t DTSyncDaemon._persistentData.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  sub_2490A4480(a1, v1 + v3, type metadata accessor for DTSyncDaemon.PersistentData);
  return swift_endAccess();
}

uint64_t DTSyncDaemon.unownedExecutor.getter()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t DTSyncDaemon.__allocating_init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_2490A2D24(a1, a2);

  return v7;
}

uint64_t DTSyncDaemon.init(daemon:environment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_2490A2D24(a1, a2);

  return v2;
}

uint64_t DTSyncDaemon.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A0, &qword_24910E898);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v42 - v10;
  v11 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__eventContinuations;
  swift_beginAccess();
  v42 = v11;
  v43 = v0;
  v12 = *(v0 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v44 = v2 + 16;
  v45 = v2;
  v50 = (v2 + 32);
  v46 = v12;
  v47 = (v2 + 8);

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v25 = v24 | (v20 << 6);
      v26 = v45;
      v27 = *(*(v46 + 48) + 8 * v25);
      (*(v45 + 16))(v5, *(v46 + 56) + *(v45 + 72) * v25, v1);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
      v29 = *(v28 + 48);
      v30 = v49;
      *v49 = v27;
      v31 = *(v26 + 32);
      v23 = v30;
      v31(&v30[v29], v5, v1);
      (*(*(v28 - 8) + 56))(v23, 0, 1, v28);
      v22 = v20;
LABEL_13:
      v32 = v48;
      sub_2490A2F0C(v23, v48);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        break;
      }

      (*v50)(v5, v32 + *(v33 + 48), v1);
      sub_24910CE2C();
      result = (*v47)(v5, v1);
      v19 = v22;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v36 = v42;
    v35 = v43;
    v37 = *(v43 + v42);
    *(v43 + v42) = MEMORY[0x277D84F98];

    swift_weakDestroy();

    v38 = *(v35 + 32);

    v39 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__environment;
    v40 = sub_24910C3BC();
    (*(*(v40 - 8) + 8))(v35 + v39, v40);
    sub_2490A4414(v35 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData, type metadata accessor for DTSyncDaemon.PersistentData);
    sub_2490A487C(v35 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime, &unk_27EED7B70, &qword_249110300);
    v41 = *(v35 + v36);

    return v35;
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    v23 = v49;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
        (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DTSyncDaemon.__deallocating_deinit()
{
  DTSyncDaemon.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DTSyncDaemon.summary.getter()
{
  v1[11] = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75B0, &qword_24910E8B8);
  v1[12] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75B8, &qword_24910E8C0);
  v1[14] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v7 = sub_24910D51C();
  v1[16] = v7;
  v8 = *(v7 - 8);
  v1[17] = v8;
  v9 = *(v8 + 64) + 15;
  v1[18] = swift_task_alloc();
  v10 = sub_24910C49C();
  v1[19] = v10;
  v11 = *(v10 - 8);
  v1[20] = v11;
  v12 = *(v11 + 64) + 15;
  v1[21] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B70, &qword_249110300) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v14 = sub_24910C48C();
  v1[23] = v14;
  v15 = *(v14 - 8);
  v1[24] = v15;
  v16 = *(v15 + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8) - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v18 = sub_24910C3EC();
  v1[28] = v18;
  v19 = *(v18 - 8);
  v1[29] = v19;
  v20 = *(v19 + 64) + 15;
  v1[30] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v22 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490892D8, v22, v21);
}

uint64_t sub_2490892D8()
{
  v117 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 88);
  sub_24910C3DC();
  sub_24910CCBC();
  strcpy(v116, "ckEngine=");
  WORD1(v116[1]) = 0;
  HIDWORD(v116[1]) = -385875968;
  v3 = *(v2 + 32);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C1F1710](v4, v5);

  sub_24910CCBC();

  strcpy(v116, "ckContainer=");
  BYTE5(v116[1]) = 0;
  HIWORD(v116[1]) = -5120;
  v6 = [*(v2 + 24) containerIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_24910CC9C();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 7104878;
  }

  v11 = v109[30];
  v12 = v109[27];
  v13 = v109[11];
  v111 = v13;
  MEMORY[0x24C1F1710](v8, v10);

  sub_24910CCBC();

  strcpy(v116, "ckState=");
  BYTE1(v116[1]) = 0;
  WORD1(v116[1]) = 0;
  HIDWORD(v116[1]) = -402653184;
  v14 = (v13 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
  swift_beginAccess();
  v15 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  sub_2490A4674(v14 + *(v15 + 20), v12, &qword_27EED7710, &qword_24910E8C8);
  v16 = sub_24910CACC();
  v17 = (*(*(v16 - 8) + 48))(v12, 1, v16);
  sub_2490A487C(v12, &qword_27EED7710, &qword_24910E8C8);
  if (v17 == 1)
  {
    v18 = 0x65736C6166;
  }

  else
  {
    v18 = 1702195828;
  }

  if (v17 == 1)
  {
    v19 = 0xE500000000000000;
  }

  else
  {
    v19 = 0xE400000000000000;
  }

  MEMORY[0x24C1F1710](v18, v19);

  sub_24910CCBC();

  strcpy(v116, "alarms=");
  v116[1] = 0xE700000000000000;
  v109[8] = *(*v14 + 16);
  v20 = sub_24910D50C();
  MEMORY[0x24C1F1710](v20);

  sub_24910CCBC();

  strcpy(v116, "timers=");
  v116[1] = 0xE700000000000000;
  v97 = v14;
  v109[9] = *(v14[1] + 16);
  v21 = sub_24910D50C();
  MEMORY[0x24C1F1710](v21);

  sub_24910CCBC();

  if ((*(v111 + 40) & 1) == 0)
  {
    v22 = v109[30];
    sub_24910CCBC();
  }

  v23 = v109[23];
  v24 = v109[24];
  v25 = v109[22];
  v26 = v109[11];
  v27 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
  swift_beginAccess();
  sub_2490A4674(v26 + v27, v25, &unk_27EED7B70, &qword_249110300);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    sub_2490A487C(v109[22], &unk_27EED7B70, &qword_249110300);
  }

  else
  {
    v112 = v109[30];
    v29 = v109[25];
    v28 = v109[26];
    v31 = v109[23];
    v30 = v109[24];
    v32 = v109[21];
    v34 = v109[19];
    v33 = v109[20];
    v35 = v109[17];
    v101 = v109[16];
    v105 = v109[18];
    v36 = v109[11];
    (*(v30 + 32))(v28, v109[22], v31);
    sub_24910C39C();
    sub_24910C44C();
    (*(v33 + 8))(v32, v34);
    sub_24910C47C();
    v37 = *(v30 + 8);
    v37(v29, v31);
    v116[0] = 0;
    v116[1] = 0xE000000000000000;
    MEMORY[0x24C1F1710](0x3D6574617267696DLL, 0xE800000000000000);
    v109[10] = sub_24910D65C();
    (*(v35 + 104))(v105, *MEMORY[0x277D02A60], v101);
    sub_2490A3078();
    sub_24910D53C();
    (*(v35 + 8))(v105, v101);
    sub_24910CCBC();

    v37(v28, v31);
  }

  v38 = v109;
  v98 = v109[14];
  v102 = v109[15];
  MEMORY[0x24C1F1710](10, 0xE100000000000000);
  v39 = *v97 + 64;
  v40 = -1;
  v41 = -1 << *(*v97 + 32);
  if (-v41 < 64)
  {
    v40 = ~(-1 << -v41);
  }

  v42 = v40 & *(*v97 + 64);
  v43 = (63 - v41) >> 6;
  v106 = *v97;
  result = swift_bridgeObjectRetain_n();
  v45 = 0;
  v46 = MEMORY[0x277D84F90];
  if (v42)
  {
    while (1)
    {
      v113 = v46;
LABEL_29:
      v48 = v38[15];
      v49 = __clz(__rbit64(v42)) | (v45 << 6);
      v50 = *(v106 + 56);
      v51 = (*(v106 + 48) + 16 * v49);
      v53 = *v51;
      v52 = v51[1];
      v54 = type metadata accessor for DTSyncedAlarm(0);
      sub_2490A3010(v50 + *(*(v54 - 8) + 72) * v49, v48 + *(v98 + 48), type metadata accessor for DTSyncedAlarm);
      *v48 = v53;
      *(v102 + 8) = v52;

      sub_24910D25C();

      strcpy(v116, "SyncedAlarm: ");
      HIWORD(v116[1]) = -4864;
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
      v55 = sub_24910D50C();
      MEMORY[0x24C1F1710](v55);

      MEMORY[0x24C1F1710](10, 0xE100000000000000);
      v56 = v116[0];
      v57 = v116[1];
      v58 = v113;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_24909F648(0, *(v113 + 2) + 1, 1, v113);
      }

      v60 = *(v58 + 2);
      v59 = *(v58 + 3);
      v61 = v58;
      v38 = v109;
      if (v60 >= v59 >> 1)
      {
        v61 = sub_24909F648((v59 > 1), v60 + 1, 1, v58);
      }

      v42 &= v42 - 1;
      v62 = v109[15];
      *(v61 + 2) = v60 + 1;
      v46 = v61;
      v63 = &v61[16 * v60];
      *(v63 + 4) = v56;
      *(v63 + 5) = v57;
      result = sub_2490A487C(v62, &qword_27EED75B8, &qword_24910E8C0);
      if (!v42)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
LABEL_25:
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v47 >= v43)
    {
      break;
    }

    v42 = *(v39 + 8 * v47);
    ++v45;
    if (v42)
    {
      v113 = v46;
      v45 = v47;
      goto LABEL_29;
    }
  }

  v99 = v38[12];
  v103 = v38[13];

  v64 = v97[1];
  v67 = *(v64 + 64);
  v66 = v64 + 64;
  v65 = v67;
  v68 = -1;
  v69 = -1 << *(v97[1] + 32);
  if (-v69 < 64)
  {
    v68 = ~(-1 << -v69);
  }

  v70 = v68 & v65;
  v71 = (63 - v69) >> 6;
  v107 = v97[1];
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v70; result = sub_2490A487C(v88, &qword_27EED75B0, &qword_24910E8B8))
  {
    v114 = v46;
LABEL_43:
    v74 = v38[13];
    v75 = __clz(__rbit64(v70)) | (i << 6);
    v76 = *(v107 + 56);
    v77 = (*(v107 + 48) + 16 * v75);
    v79 = *v77;
    v78 = v77[1];
    v80 = type metadata accessor for DTSyncedTimer(0);
    sub_2490A3010(v76 + *(*(v80 - 8) + 72) * v75, v74 + *(v99 + 48), type metadata accessor for DTSyncedTimer);
    *v74 = v79;
    *(v103 + 8) = v78;

    sub_24910D25C();

    strcpy(v116, "SyncedTimer: ");
    HIWORD(v116[1]) = -4864;
    sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
    v81 = sub_24910D50C();
    MEMORY[0x24C1F1710](v81);

    MEMORY[0x24C1F1710](10, 0xE100000000000000);
    v82 = v116[0];
    v83 = v116[1];
    v84 = v114;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_24909F648(0, *(v114 + 2) + 1, 1, v114);
    }

    v86 = *(v84 + 2);
    v85 = *(v84 + 3);
    v87 = v84;
    v38 = v109;
    if (v86 >= v85 >> 1)
    {
      v87 = sub_24909F648((v85 > 1), v86 + 1, 1, v84);
    }

    v70 &= v70 - 1;
    v88 = v109[13];
    *(v87 + 2) = v86 + 1;
    v46 = v87;
    v89 = &v87[16 * v86];
    *(v89 + 4) = v82;
    *(v89 + 5) = v83;
  }

  while (1)
  {
    v73 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v73 >= v71)
    {

      v116[0] = v46;

      sub_24909FED8(v116);
      v91 = v38[29];
      v90 = v38[30];
      v93 = v38[27];
      v92 = v38[28];
      v95 = v38[25];
      v94 = v38[26];
      v100 = v38[22];
      v104 = v38[21];
      v108 = v38[18];
      v110 = v38[15];
      v115 = v38[13];
      sub_249089EB4(v116[0]);

      (*(v91 + 8))(v90, v92);

      v96 = v38[1];

      return v96(0, 0xE000000000000000);
    }

    v70 = *(v66 + 8 * v73);
    ++i;
    if (v70)
    {
      v114 = v46;
      i = v73;
      goto LABEL_43;
    }
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_249089EB4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      MEMORY[0x24C1F1710](v3, v4);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

Swift::Void __swiftcall DTSyncDaemon.activate()()
{
  v1 = v0;
  v2 = sub_24910C80C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C58C();
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_24910CC8C();

  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D05770], v2);
    sub_24910C7FC();
    (*(v3 + 8))(v6, v2);
    v10 = sub_24910CF7C();

    *(v1 + 40) = (v10 == 2) | v10 & 1;
  }

  sub_24908A0C0();
  sub_24908AAB8();
  sub_24908AF98();
}

void sub_24908A0C0()
{
  v99 = *MEMORY[0x277D85DE8];
  v88 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  v1 = *(*(v88 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v88);
  v94 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v92 = &v83 - v4;
  v91 = sub_24910C12C();
  v5 = *(v91 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v91);
  v90 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F0, &qword_24910EB70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v83 - v10;
  v12 = sub_24910C1AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v93 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v83 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v83 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v89 = &v83 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v83 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v83 - v28;
  v96 = v0;
  sub_24910C35C();
  v30 = (*(v13 + 48))(v11, 1, v12);
  v31 = &qword_27EED8000;
  v95 = v13;
  if (v30 != 1)
  {
    v45 = *(v13 + 32);
    v45(v27, v11, v12);
    v45(v29, v27, v12);
    v44 = v29;
    goto LABEL_5;
  }

  v86 = v12;
  v87 = v29;
  sub_2490A487C(v11, &qword_27EED78F0, &qword_24910EB70);
  v32 = [objc_opt_self() defaultManager];
  v97 = 0;
  v33 = [v32 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:0 error:&v97];

  v34 = v97;
  if (v33)
  {
    sub_24910C17C();
    v35 = v34;

    v97 = sub_24910C58C();
    v98 = v36;
    v85 = *MEMORY[0x277CC91D8];
    v84 = v5[13];
    v37 = v90;
    v38 = v91;
    v84(v90);
    sub_2490A44E8();
    sub_24910C19C();
    v39 = v5[1];
    v39(v37, v38);

    v83 = *(v95 + 8);
    v40 = v19;
    v41 = v86;
    v83(v40, v86);
    v97 = 0xD000000000000010;
    v98 = 0x80000002491110F0;
    (v84)(v37, v85, v38);
    v42 = v89;
    v13 = v95;
    sub_24910C19C();
    v43 = v37;
    v12 = v41;
    v39(v43, v38);
    v31 = &qword_27EED8000;
    v83(v22, v41);
    v44 = v87;
    (*(v13 + 32))(v87, v42, v41);
LABEL_5:
    v46 = v93;
    if (v31[90] != -1)
    {
      swift_once();
    }

    v47 = sub_24910C89C();
    __swift_project_value_buffer(v47, qword_27EED82D8);
    (*(v13 + 16))(v46, v44, v12);
    v48 = sub_24910C87C();
    v49 = sub_24910CF5C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = v13;
      v52 = swift_slowAlloc();
      v97 = v52;
      *v50 = 136315138;
      v53 = sub_24910C18C();
      v55 = v54;
      v56 = *(v51 + 8);
      v56(v46, v12);
      v57 = sub_24909F930(v53, v55, &v97);

      *(v50 + 4) = v57;
      _os_log_impl(&dword_249083000, v48, v49, "Persistent data load: path=%s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x24C1F26F0](v52, -1, -1);
      MEMORY[0x24C1F26F0](v50, -1, -1);
    }

    else
    {

      v56 = *(v13 + 8);
      v56(v46, v12);
    }

    v58 = sub_24910C1BC();
    v60 = v59;
    v61 = sub_24910BFAC();
    v62 = *(v61 + 48);
    v63 = *(v61 + 52);
    swift_allocObject();
    sub_24910BF9C();
    sub_2490A2FC8(&qword_27EED76B8, type metadata accessor for DTSyncDaemon.PersistentData);
    sub_24910BF8C();
    v56(v44, v12);

    sub_2490A453C(v58, v60);
    v79 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    v80 = v96;
    swift_beginAccess();
    v81 = v80 + v79;
    v82 = v92;
    goto LABEL_16;
  }

  v64 = v97;
  v65 = sub_24910C11C();

  swift_willThrow();
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v66 = sub_24910C89C();
  __swift_project_value_buffer(v66, qword_27EED82D8);
  v67 = v65;
  v68 = sub_24910C87C();
  v69 = sub_24910CF5C();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v97 = v71;
    *v70 = 136315138;
    swift_getErrorValue();
    v72 = sub_24910D5DC();
    v74 = sub_24909F930(v72, v73, &v97);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_249083000, v68, v69, "Persistent data load failed: error=%s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x24C1F26F0](v71, -1, -1);
    MEMORY[0x24C1F26F0](v70, -1, -1);
  }

  v75 = v94;
  sub_2490A561C(v94);

  v76 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  v77 = v96;
  swift_beginAccess();
  v81 = v77 + v76;
  v82 = v75;
LABEL_16:
  sub_2490A4480(v82, v81, type metadata accessor for DTSyncDaemon.PersistentData);
  swift_endAccess();
  LOBYTE(v97) = 1;
  DTSyncDaemon._report(event:)(&v97);
  v78 = *MEMORY[0x277D85DE8];
}

void sub_24908AAB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37 - v4;
  v6 = sub_24910C90C();
  v7 = *(v6 - 8);
  isa = v7[8].isa;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  if (*(v0 + 32))
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v14 = sub_24910C89C();
    __swift_project_value_buffer(v14, qword_27EED82D8);
    v39 = sub_24910C87C();
    v15 = sub_24910CF5C();
    if (os_log_type_enabled(v39, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_249083000, v39, v15, "SyncEngine start: already started", v16, 2u);
      MEMORY[0x24C1F26F0](v16, -1, -1);
    }

    v17 = v39;
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v18 = sub_24910C89C();
    __swift_project_value_buffer(v18, qword_27EED82D8);

    v19 = sub_24910C87C();
    v20 = sub_24910CF5C();

    if (os_log_type_enabled(v19, v20))
    {
      v38 = v20;
      v39 = v7;
      v21 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v40 = v37;
      *v21 = 136315138;
      v22 = [*(v1 + 24) containerIdentifier];
      if (v22)
      {
        v23 = v22;
        v24 = sub_24910CC9C();
        v26 = v25;
      }

      else
      {
        v26 = 0xE300000000000000;
        v24 = 7104878;
      }

      v27 = sub_24909F930(v24, v26, &v40);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_249083000, v19, v38, "SyncEngine start: container=%s", v21, 0xCu);
      v28 = v37;
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x24C1F26F0](v28, -1, -1);
      MEMORY[0x24C1F26F0](v21, -1, -1);

      v7 = v39;
    }

    else
    {
    }

    v29 = [*(v1 + 24) privateCloudDatabase];
    v30 = v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v31 = type metadata accessor for DTSyncDaemon.PersistentData(0);
    sub_2490A4674(v30 + *(v31 + 20), v5, &qword_27EED7710, &qword_24910E8C8);
    sub_2490A2FC8(&qword_27EED76B0, type metadata accessor for DTSyncDaemon);
    swift_unknownObjectRetain();
    sub_24910C8FC();
    sub_24910C8EC();
    sub_24910C38C();
    sub_24910C8DC();
    (v7[2].isa)(v11, v13, v6);
    v32 = sub_24910CB2C();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v35 = sub_24910CB3C();
    (v7[1].isa)(v13, v6);
    v36 = *(v1 + 32);
    *(v1 + 32) = v35;
  }
}

void sub_24908AF98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v57 = &v50 - v2;
  v3 = sub_24910C49C();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24910C48C();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v9;
  MEMORY[0x28223BE20](v8);
  v56 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B70, &qword_249110300);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v52 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v18 = sub_24910C80C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C58C();
  v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v24 = sub_24910CC8C();

  v25 = [v23 initWithSuiteName_];

  if (v25 && ((*(v19 + 104))(v22, *MEMORY[0x277D05760], v18), sub_24910C7FC(), (*(v19 + 8))(v22, v18), v26 = sub_24910CF7C(), , v25, v26 != 2) && (v26 & 1) != 0)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v27 = sub_24910C89C();
    __swift_project_value_buffer(v27, qword_27EED82D8);
    v28 = sub_24910C87C();
    v29 = sub_24910CF3C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_249083000, v28, v29, "migrate: skip already migrated", v30, 2u);
      MEMORY[0x24C1F26F0](v30, -1, -1);
    }
  }

  else
  {
    v31 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
    v32 = v58;
    swift_beginAccess();
    sub_2490A4674(v32 + v31, v17, &unk_27EED7B70, &qword_249110300);
    v33 = (*(v59 + 48))(v17, 1, v6);
    sub_2490A487C(v17, &unk_27EED7B70, &qword_249110300);
    if (v33 == 1)
    {
      v34 = sub_2490A09B0(0x20000000000001uLL);
      v35 = vcvtd_n_f64_u64(v34, 0x35uLL) * 10.0 + 5.0;
      if (v34 == 0x20000000000000)
      {
        v36 = 15.0;
      }

      else
      {
        v36 = v35;
      }

      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v37 = sub_24910C89C();
      __swift_project_value_buffer(v37, qword_27EED82D8);
      v38 = sub_24910C87C();
      v39 = sub_24910CF5C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v36;
        _os_log_impl(&dword_249083000, v38, v39, "migrate: waiting %f minutes", v40, 0xCu);
        MEMORY[0x24C1F26F0](v40, -1, -1);
      }

      v41 = v51;
      sub_24910C39C();
      sub_24910C44C();
      (*(v53 + 8))(v41, v54);
      sub_24910D67C();
      v42 = v56;
      sub_24910C46C();
      v43 = v59;
      v54 = *(v59 + 8);
      v54(v10, v6);
      v53 = *(v43 + 16);
      v44 = v52;
      (v53)(v52, v42, v6);
      (*(v43 + 56))(v44, 0, 1, v6);
      swift_beginAccess();
      sub_2490A48DC(v44, v32 + v31, &unk_27EED7B70, &qword_249110300);
      swift_endAccess();
      v45 = sub_24910CDEC();
      v46 = v57;
      (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
      v47 = swift_allocObject();
      swift_weakInit();
      (v53)(v10, v42, v6);
      v48 = (*(v43 + 80) + 40) & ~*(v43 + 80);
      v49 = swift_allocObject();
      *(v49 + 2) = 0;
      *(v49 + 3) = 0;
      *(v49 + 4) = v47;
      (*(v43 + 32))(&v49[v48], v10, v6);
      sub_249094614(0, 0, v46, &unk_24910EBC8, v49);

      v54(v42, v6);
    }
  }
}

Swift::Void __swiftcall DTSyncDaemon.invalidate()()
{
  v1 = v0;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v57 = *(v61 - 8);
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A0, &qword_24910E898);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  if (!*(v0 + 32))
  {
    goto LABEL_9;
  }

  if (qword_27EED82D0 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v10 = sub_24910C89C();
    __swift_project_value_buffer(v10, qword_27EED82D8);

    v11 = sub_24910C87C();
    v12 = sub_24910CF5C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v62 = v14;
      *v13 = 136315138;
      v15 = [*(v1 + 24) containerIdentifier];
      if (v15)
      {
        v16 = v15;
        v17 = sub_24910CC9C();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = sub_24909F930(v17, v19, &v62);

      *(v13 + 4) = v20;
      _os_log_impl(&dword_249083000, v11, v12, "SyncEngine stop: container=%s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1F26F0](v14, -1, -1);
      MEMORY[0x24C1F26F0](v13, -1, -1);
    }

    v21 = *(v1 + 32);
    *(v1 + 32) = 0;

LABEL_9:
    v22 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__eventContinuations;
    v59 = v9;
    swift_beginAccess();
    v51 = v22;
    v52 = v1;
    v23 = *(v1 + v22);
    v24 = v23 + 64;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 64);
    v28 = (v25 + 63) >> 6;
    v54 = v57 + 16;
    v55 = v23;
    v29 = (v57 + 32);
    v58 = (v57 + 8);

    v30 = 0;
    v1 = v56;
    v53 = v29;
    v31 = v60;
    if (v27)
    {
      break;
    }

LABEL_13:
    if (v28 <= v30 + 1)
    {
      v32 = v30 + 1;
    }

    else
    {
      v32 = v28;
    }

    v33 = v32 - 1;
    while (1)
    {
      v9 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v9 >= v28)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
        (*(*(v49 - 8) + 56))(v1, 1, 1, v49);
        v27 = 0;
        goto LABEL_21;
      }

      v27 = *(v24 + 8 * v9);
      ++v30;
      if (v27)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  while (1)
  {
    v9 = v30;
LABEL_20:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v9 << 6);
    v36 = *(*(v55 + 48) + 8 * v35);
    v37 = v57;
    v38 = v61;
    (*(v57 + 16))(v31, *(v55 + 56) + *(v57 + 72) * v35, v61);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
    v40 = *(v39 + 48);
    v41 = v56;
    *v56 = v36;
    v42 = *(v37 + 32);
    v1 = v41;
    v43 = v38;
    v29 = v53;
    v42(&v41[v40], v31, v43);
    (*(*(v39 - 8) + 56))(v1, 0, 1, v39);
    v33 = v9;
LABEL_21:
    v44 = v59;
    sub_2490A2F0C(v1, v59);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A8, &unk_24910E8A0);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
    {
      break;
    }

    v46 = v44 + *(v45 + 48);
    v48 = v60;
    v47 = v61;
    (*v29)(v60, v46, v61);
    sub_24910CE2C();
    (*v58)(v48, v47);
    v30 = v33;
    if (!v27)
    {
      goto LABEL_13;
    }
  }

  v50 = *(v52 + v51);
  *(v52 + v51) = MEMORY[0x277D84F98];
}

uint64_t DTSyncDaemon.handleDiagnosticsRequest(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_24910C80C();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = sub_24910C76C();
  v3[8] = v8;
  v9 = *(v8 - 8);
  v3[9] = v9;
  v10 = *(v9 + 64) + 15;
  v3[10] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v12 = sub_24910CDAC();
  v3[11] = v12;
  v3[12] = v11;

  return MEMORY[0x2822009F8](sub_24908BE64, v12, v11);
}

uint64_t sub_24908BE64()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D05718])
  {
LABEL_2:
    sub_24910C7DC();
    sub_24910C7EC();
    v5 = v0[10];
    v6 = v0[7];
    swift_willThrow();

    v7 = v0[1];
LABEL_24:

    return v7();
  }

  if (v4 == *MEMORY[0x277D05728])
  {
    v8 = v0[10];
    (*(v0[9] + 96))(v8, v0[8]);
    v9 = *v8;
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v10 = sub_24910C89C();
    __swift_project_value_buffer(v10, qword_27EED82D8);
    v11 = sub_24910C87C();
    v12 = sub_24910CF5C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v9;
      _os_log_impl(&dword_249083000, v11, v12, "syncConfigure: %{BOOL}d", v13, 8u);
      MEMORY[0x24C1F26F0](v13, -1, -1);
    }

    v14 = v0[4];

    *(v14 + 40) = v9;
    sub_24910C58C();
    v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v16 = sub_24910CC8C();

    v17 = [v15 initWithSuiteName_];

    if (v17)
    {
      v19 = v0[6];
      v18 = v0[7];
      v20 = v0[5];
      (*(v19 + 104))(v18, *MEMORY[0x277D05770], v20);
      sub_24910C7FC();
      (*(v19 + 8))(v18, v20);
      v21 = sub_24910CC8C();

      [v17 setBool:v9 forKey:v21];
    }

    goto LABEL_23;
  }

  if (v4 != *MEMORY[0x277D05710])
  {
    if (v4 != *MEMORY[0x277D05720] && v4 != *MEMORY[0x277D05730])
    {
      (*(v0[9] + 8))(v0[10], v0[8]);
    }

    goto LABEL_2;
  }

  v22 = v0[10];
  (*(v0[9] + 96))(v22, v0[8]);
  v23 = *v22;
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v24 = sub_24910C89C();
  __swift_project_value_buffer(v24, qword_27EED82D8);
  v25 = sub_24910C87C();
  v26 = sub_24910CF5C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v23;
    _os_log_impl(&dword_249083000, v25, v26, "syncMigrate: force=%{BOOL}d", v27, 8u);
    MEMORY[0x24C1F26F0](v27, -1, -1);
  }

  if (!v23)
  {
    v31 = v0[4];
    sub_24908AF98();
LABEL_23:
    v32 = v0[10];
    v33 = v0[7];
    v34 = v0[2];
    v34[3] = sub_24910C6AC();
    v34[4] = sub_2490A2FC8(&unk_27EED7B20, MEMORY[0x277D056D0]);
    __swift_allocate_boxed_opaque_existential_1(v34);
    sub_24910C64C();
    v35 = *MEMORY[0x277D05700];
    v36 = sub_24910C74C();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v34, v35, v36);
    (*(v37 + 56))(v34, 0, 1, v36);

    v7 = v0[1];
    goto LABEL_24;
  }

  v28 = swift_task_alloc();
  v0[13] = v28;
  *v28 = v0;
  v28[1] = sub_24908C450;
  v29 = v0[4];

  return sub_24908C6D4();
}

uint64_t sub_24908C450()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_24908C570, v4, v3);
}

uint64_t sub_24908C570()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[2];
  v3[3] = sub_24910C6AC();
  v3[4] = sub_2490A2FC8(&unk_27EED7B20, MEMORY[0x277D056D0]);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_24910C64C();
  v4 = *MEMORY[0x277D05700];
  v5 = sub_24910C74C();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24908C6D4()
{
  v1[18] = v0;
  v2 = *v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B70, &qword_249110300) - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v4 = sub_24910C80C();
  v1[20] = v4;
  v5 = *(v4 - 8);
  v1[21] = v5;
  v6 = *(v5 + 64) + 15;
  v1[22] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v10 = sub_24910CDAC();
  v1[25] = v10;
  v1[26] = v9;

  return MEMORY[0x2822009F8](sub_24908C8AC, v10, v9);
}

uint64_t sub_24908C8AC()
{
  v32 = v0;
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  v0[27] = __swift_project_value_buffer(v1, qword_27EED82D8);
  v2 = sub_24910C87C();
  v3 = sub_24910CF5C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_249083000, v2, v3, "migrate start", v4, 2u);
    MEMORY[0x24C1F26F0](v4, -1, -1);
  }

  v5 = v0[18];

  Strong = swift_weakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v0[29] = OBJC_IVAR____TtC23DistributedTimersDaemon8DTDaemon_timerDaemon;
    type metadata accessor for DTDaemon();
    sub_2490A2FC8(&unk_27EED7F50, type metadata accessor for DTDaemon);
    v8 = sub_24910CDAC();

    return MEMORY[0x2822009F8](sub_24908CC7C, v8, v7);
  }

  else
  {
    sub_24910C7DC();
    v9 = sub_24910C7EC();
    swift_willThrow();
    v10 = v0[27];
    v11 = v9;
    v12 = sub_24910C87C();
    v13 = sub_24910CF4C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315138;
      swift_getErrorValue();
      v17 = v0[8];
      v16 = v0[9];
      v18 = v0[10];
      v19 = sub_24910D5DC();
      v21 = sub_24909F930(v19, v20, &v31);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_249083000, v12, v13, "### migrate: failed: error=%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1F26F0](v15, -1, -1);
      MEMORY[0x24C1F26F0](v14, -1, -1);
    }

    else
    {
    }

    v23 = v0[23];
    v22 = v0[24];
    v24 = v0[22];
    v26 = v0[18];
    v25 = v0[19];
    v27 = sub_24910C48C();
    (*(*(v27 - 8) + 56))(v25, 1, 1, v27);
    v28 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
    swift_beginAccess();
    sub_2490A48DC(v25, v26 + v28, &unk_27EED7B70, &qword_249110300);
    swift_endAccess();

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_24908CC7C()
{
  v1 = v0[28];
  v2 = v0[29];
  swift_beginAccess();
  v0[30] = *(v1 + v2);
  v3 = v0[25];
  v4 = v0[26];

  return MEMORY[0x2822009F8](sub_24908CD10, v3, v4);
}

uint64_t sub_24908CD10()
{
  v28 = v0;
  v1 = v0[30];
  v2 = v0[28];

  if (v1)
  {
    v3 = v0[30];
    v4 = swift_task_alloc();
    v0[31] = v4;
    *v4 = v0;
    v4[1] = sub_24908D00C;

    return DTTimerDaemon._fetchTimers(matching:)(sub_2490948C0, 0);
  }

  else
  {
    sub_24910C7DC();
    v6 = sub_24910C7EC();
    swift_willThrow();
    v7 = v0[27];
    v8 = v6;
    v9 = sub_24910C87C();
    v10 = sub_24910CF4C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v14 = v0[8];
      v13 = v0[9];
      v15 = v0[10];
      v16 = sub_24910D5DC();
      v18 = sub_24909F930(v16, v17, &v27);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_249083000, v9, v10, "### migrate: failed: error=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C1F26F0](v12, -1, -1);
      MEMORY[0x24C1F26F0](v11, -1, -1);
    }

    else
    {
    }

    v20 = v0[23];
    v19 = v0[24];
    v21 = v0[22];
    v23 = v0[18];
    v22 = v0[19];
    v24 = sub_24910C48C();
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
    v25 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
    swift_beginAccess();
    sub_2490A48DC(v22, v23 + v25, &unk_27EED7B70, &qword_249110300);
    swift_endAccess();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_24908D00C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v10 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v5 = v3[25];
    v6 = v3[26];
    v7 = sub_24908DD08;
  }

  else
  {
    v8 = v3[30];

    v5 = v3[25];
    v6 = v3[26];
    v7 = sub_24908D128;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_24908D128()
{
  v117 = v0;
  v1 = v0[32];
  v107 = v1 >> 62;
  if (v1 >> 62)
  {
LABEL_43:
    v2 = sub_24910D19C();
    v108 = v1;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_44:
    v4 = 0;
LABEL_45:
    sub_24910C58C();
    v81 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v82 = sub_24910CC8C();

    v83 = [v81 initWithSuiteName_];

    if (v83)
    {
      v85 = v0[21];
      v84 = v0[22];
      v86 = v0[20];
      (*(v85 + 104))(v84, *MEMORY[0x277D05760], v86);
      sub_24910C7FC();
      (*(v85 + 8))(v84, v86);
      v87 = sub_24910CC8C();

      [v83 setBool:1 forKey:v87];
    }

    v88 = v0[32];
    v89 = v0[27];

    v90 = sub_24910C87C();
    v91 = sub_24910CF5C();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 134218240;
      *(v92 + 4) = v4;
      *(v92 + 12) = 2048;
      if (v107)
      {
        v95 = v0[32];
        if (v108 < 0)
        {
          v96 = v0[32];
        }

        v93 = sub_24910D19C();
      }

      else
      {
        v93 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v97 = v0[32];

      *(v92 + 14) = v93;

      _os_log_impl(&dword_249083000, v90, v91, "migrate finished: added=%ld, total=%ld", v92, 0x16u);
      MEMORY[0x24C1F26F0](v92, -1, -1);
    }

    else
    {
      v94 = v0[32];
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_56;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v108 = v0[32];
  if (!v2)
  {
    goto LABEL_44;
  }

LABEL_3:
  v3 = 0;
  v4 = 0;
  v113 = (v0[18] + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
  v112 = v0[33];
  v110 = v0[32] + 32;
  v111 = v2;
  while (1)
  {
    if ((v108 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x24C1F1C90](v3, v0[32]);
    }

    else
    {
      if (v3 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v5 = *(v110 + 8 * v3);
    }

    v6 = v5;
    v1 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v7 = [v5 mtAlarm];
    if (!v7)
    {
      break;
    }

    v8 = v7;
    v114 = v3 + 1;
    v9 = [v6 identifier];
    v10 = sub_24910CC9C();
    v12 = v11;

    swift_beginAccess();
    v13 = *v113;
    v115 = v8;
    if (*(*v113 + 16))
    {
      v14 = sub_2490A0A3C(v10, v12);
      v16 = v15;

      v17 = v0[24];
      if (v16)
      {
        v18 = *(v13 + 56);
        v19 = type metadata accessor for DTSyncedAlarm(0);
        v20 = *(v19 - 8);
        sub_2490A3010(v18 + *(v20 + 72) * v14, v17, type metadata accessor for DTSyncedAlarm);
        (*(v20 + 56))(v17, 0, 1, v19);
        v2 = v111;
      }

      else
      {
        v19 = type metadata accessor for DTSyncedAlarm(0);
        (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
      }
    }

    else
    {
      v35 = v0[24];

      v19 = type metadata accessor for DTSyncedAlarm(0);
      (*(*(v19 - 8) + 56))(v35, 1, 1, v19);
    }

    v36 = v0[24];
    swift_endAccess();
    type metadata accessor for DTSyncedAlarm(0);
    v37 = (*(*(v19 - 8) + 48))(v36, 1, v19);
    sub_2490A487C(v36, &qword_27EED7640, &qword_24910EB58);
    if (v37 == 1)
    {
      v1 = v0[18];
      v38 = v115;
      sub_24908E98C(v115);
      if (v112)
      {
        v67 = v115;
        v38 = v6;
        goto LABEL_37;
      }

      goto LABEL_32;
    }

    v39 = v0[27];
    v40 = v6;
    v41 = sub_24910C87C();
    v42 = sub_24910CF5C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v116 = v44;
      *v43 = 136315138;
      v45 = [v40 identifier];
      v46 = sub_24910CC9C();
      v47 = v4;
      v49 = v48;

      v50 = v46;
      v2 = v111;
      v51 = sub_24909F930(v50, v49, &v116);
      v4 = v47;
      v0 = v109;

      *(v43 + 4) = v51;
      _os_log_impl(&dword_249083000, v41, v42, "migrate: skip existing alarm: id=%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x24C1F26F0](v44, -1, -1);
      MEMORY[0x24C1F26F0](v43, -1, -1);

      goto LABEL_5;
    }

LABEL_4:

LABEL_5:
    v1 = v114;
LABEL_6:
    ++v3;
    if (v1 == v2)
    {
      goto LABEL_45;
    }
  }

  v21 = [v6 mtTimer];
  if (!v21)
  {

    goto LABEL_6;
  }

  v22 = v21;
  v114 = v3 + 1;
  v23 = [v6 identifier];
  v24 = sub_24910CC9C();
  v26 = v25;

  swift_beginAccess();
  v27 = v113[1];
  v115 = v22;
  if (*(v27 + 16))
  {
    v28 = sub_2490A0A3C(v24, v26);
    v30 = v29;

    v31 = v0[23];
    if (v30)
    {
      v32 = *(v27 + 56);
      v33 = type metadata accessor for DTSyncedTimer(0);
      v34 = *(v33 - 8);
      sub_2490A3010(v32 + *(v34 + 72) * v28, v31, type metadata accessor for DTSyncedTimer);
      (*(v34 + 56))(v31, 0, 1, v33);
      v2 = v111;
    }

    else
    {
      v33 = type metadata accessor for DTSyncedTimer(0);
      (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    }
  }

  else
  {
    v52 = v0[23];

    v33 = type metadata accessor for DTSyncedTimer(0);
    (*(*(v33 - 8) + 56))(v52, 1, 1, v33);
  }

  v53 = v0[23];
  swift_endAccess();
  type metadata accessor for DTSyncedTimer(0);
  v54 = (*(*(v33 - 8) + 48))(v53, 1, v33);
  sub_2490A487C(v53, &qword_27EED7638, &qword_24910EB48);
  if (v54 != 1)
  {
    v56 = v0[27];
    v40 = v6;
    v41 = sub_24910C87C();
    v57 = sub_24910CF5C();

    if (os_log_type_enabled(v41, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v116 = v59;
      *v58 = 136315138;
      v60 = [v40 identifier];
      v61 = sub_24910CC9C();
      v62 = v4;
      v64 = v63;

      v65 = v61;
      v2 = v111;
      v66 = sub_24909F930(v65, v64, &v116);
      v4 = v62;
      v0 = v109;

      *(v58 + 4) = v66;
      _os_log_impl(&dword_249083000, v41, v57, "migrate: skip existing timer: id=%s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x24C1F26F0](v59, -1, -1);
      MEMORY[0x24C1F26F0](v58, -1, -1);

      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v1 = v0[18];
  v38 = v115;
  sub_24908EF9C(v115);
  if (!v112)
  {
LABEL_32:

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_41;
    }

    v112 = 0;
    goto LABEL_5;
  }

  v67 = v6;
LABEL_37:
  v68 = v0[32];

  v69 = v0[27];
  v70 = v112;
  v71 = sub_24910C87C();
  v72 = sub_24910CF4C();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v116 = v74;
    *v73 = 136315138;
    swift_getErrorValue();
    v76 = v0[8];
    v75 = v0[9];
    v77 = v0[10];
    v78 = sub_24910D5DC();
    v80 = sub_24909F930(v78, v79, &v116);

    *(v73 + 4) = v80;
    _os_log_impl(&dword_249083000, v71, v72, "### migrate: failed: error=%s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x24C1F26F0](v74, -1, -1);
    MEMORY[0x24C1F26F0](v73, -1, -1);
  }

  else
  {
  }

LABEL_56:
  v98 = v0[23];
  v99 = v0[24];
  v100 = v0[22];
  v102 = v0[18];
  v101 = v0[19];
  v103 = sub_24910C48C();
  (*(*(v103 - 8) + 56))(v101, 1, 1, v103);
  v104 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
  swift_beginAccess();
  sub_2490A48DC(v101, v102 + v104, &unk_27EED7B70, &qword_249110300);
  swift_endAccess();

  v105 = v0[1];

  return v105();
}

uint64_t sub_24908DD08()
{
  v25 = v0;
  v1 = v0[30];

  v2 = v0[33];
  v3 = v0[27];
  v4 = v2;
  v5 = sub_24910C87C();
  v6 = sub_24910CF4C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[8];
    v9 = v0[9];
    v11 = v0[10];
    v12 = sub_24910D5DC();
    v14 = sub_24909F930(v12, v13, &v24);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_249083000, v5, v6, "### migrate: failed: error=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1F26F0](v8, -1, -1);
    MEMORY[0x24C1F26F0](v7, -1, -1);
  }

  else
  {
  }

  v16 = v0[23];
  v15 = v0[24];
  v17 = v0[22];
  v19 = v0[18];
  v18 = v0[19];
  v20 = sub_24910C48C();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
  swift_beginAccess();
  sub_2490A48DC(v18, v19 + v21, &unk_27EED7B70, &qword_249110300);
  swift_endAccess();

  v22 = v0[1];

  return v22();
}

void DTSyncDaemon.handleRequest(_:context:)(uint64_t a1, uint64_t a2)
{
  v85 = a1;
  v84 = a2;
  v3 = sub_24910C73C();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  v11 = sub_24910C86C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v69 - v16);
  MEMORY[0x28223BE20](v15);
  v20 = (&v69 - v19);
  if (*(v2 + 40) == 1)
  {
    v75 = v18;
    v81 = v2;
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v21 = sub_24910C89C();
    v22 = __swift_project_value_buffer(v21, qword_27EED82D8);
    v83 = v12;
    v23 = v12 + 16;
    v24 = *(v12 + 16);
    v25 = v85;
    v80 = v23;
    v82 = v24;
    v24(v20, v85, v11);
    v72 = v4[2];
    v73 = v4 + 2;
    v72(v10, v84, v3);
    v74 = v22;
    v26 = sub_24910C87C();
    v79 = sub_24910CF5C();
    v27 = os_log_type_enabled(v26, v79);
    v77 = v4;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v87 = v70;
      *v28 = 136315394;
      sub_2490A2FC8(&qword_27EED7B30, MEMORY[0x277D057E0]);
      v69 = v26;
      v29 = sub_24910D50C();
      v76 = v8;
      v30 = v4;
      v31 = v3;
      v33 = v32;
      v78 = *(v83 + 8);
      v78(v20, v11);
      v34 = sub_24909F930(v29, v33, &v87);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      sub_2490A2FC8(&qword_27EED7F60, MEMORY[0x277D056F0]);
      v35 = sub_24910D50C();
      v37 = v36;
      v38 = v30;
      v8 = v76;
      v71 = v38[1];
      v71(v10, v31);
      v39 = sub_24909F930(v35, v37, &v87);
      v3 = v31;

      *(v28 + 14) = v39;
      v40 = v69;
      _os_log_impl(&dword_249083000, v69, v79, "handleRequest: %s, %s", v28, 0x16u);
      v41 = v70;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v41, -1, -1);
      v42 = v28;
      v25 = v85;
      MEMORY[0x24C1F26F0](v42, -1, -1);

      v43 = v83;
    }

    else
    {

      v71 = v4[1];
      v71(v10, v3);
      v43 = v83;
      v78 = *(v83 + 8);
      v78(v20, v11);
    }

    v82(v17, v25, v11);
    v44 = (*(v43 + 88))(v17, v11);
    if (v44 == *MEMORY[0x277D057D8])
    {
      (*(v43 + 96))(v17, v11);
      v45 = *v17;
      v46 = [v45 mtAlarm];
      if (v46)
      {
        v47 = v46;
        sub_24908E98C(v46);
        if (v86)
        {
LABEL_10:

          return;
        }
      }

      else
      {
        v50 = [v45 mtTimer];
        if (!v50)
        {
          goto LABEL_15;
        }

        v47 = v50;
        sub_24908EF9C(v50);
        if (v86)
        {
          goto LABEL_10;
        }
      }

LABEL_14:

LABEL_15:
      return;
    }

    if (v44 == *MEMORY[0x277D057A8])
    {
      (*(v43 + 96))(v17, v11);
      v45 = *v17;
      v48 = [v45 mtAlarm];
      if (v48)
      {
        v47 = v48;
        sub_24908F5B0(v48);
        if (v86)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v65 = [v45 mtTimer];
        if (!v65)
        {
          goto LABEL_15;
        }

        v47 = v65;
        sub_249090270(v65);
        if (v86)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_14;
    }

    if (v44 == *MEMORY[0x277D05798])
    {
      (*(v43 + 96))(v17, v11);
      v45 = *v17;
      v49 = [v45 mtAlarm];
      if (v49)
      {
        v47 = v49;
        sub_249090F1C(v49);
        if (v86)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v67 = [v45 mtTimer];
        if (!v67)
        {
          goto LABEL_15;
        }

        v47 = v67;
        sub_24909168C(v67);
        if (v86)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_14;
    }

    if (v44 == *MEMORY[0x277D057A0])
    {
      goto LABEL_25;
    }

    if (v44 == *MEMORY[0x277D057B0])
    {
      (*(v43 + 96))(v17, v11);
      v45 = *v17;
      v66 = [v45 mtAlarm];
      if (v66)
      {
        v47 = v66;
        sub_249091E20(v66);
        if (v86)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v68 = [v45 mtTimer];
        if (!v68)
        {
          goto LABEL_15;
        }

        v47 = v68;
        sub_249092518(v68);
        if (v86)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_14;
    }

    if (v44 == *MEMORY[0x277D057D0] || v44 == *MEMORY[0x277D057C0] || v44 == *MEMORY[0x277D05790] || v44 == *MEMORY[0x277D057B8] || v44 == *MEMORY[0x277D05780] || v44 != *MEMORY[0x277D05788] && v44 != *MEMORY[0x277D05778] && v44 != *MEMORY[0x277D057C8])
    {
LABEL_25:
      v78(v17, v11);
    }

    v51 = v75;
    v82(v75, v25, v11);
    v72(v8, v84, v3);
    v45 = sub_24910C87C();
    v52 = sub_24910CF4C();
    if (!os_log_type_enabled(v45, v52))
    {

      v71(v8, v3);
      v78(v51, v11);
      return;
    }

    v53 = swift_slowAlloc();
    v76 = v8;
    v54 = v53;
    v85 = swift_slowAlloc();
    v87 = v85;
    *v54 = 136315394;
    sub_2490A2FC8(&qword_27EED7B30, MEMORY[0x277D057E0]);
    v55 = sub_24910D50C();
    v57 = v56;
    v78(v51, v11);
    v58 = sub_24909F930(v55, v57, &v87);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    sub_2490A2FC8(&qword_27EED7F60, MEMORY[0x277D056F0]);
    v59 = v76;
    v60 = sub_24910D50C();
    v62 = v61;
    v71(v59, v3);
    v63 = sub_24909F930(v60, v62, &v87);

    *(v54 + 14) = v63;
    _os_log_impl(&dword_249083000, v45, v52, "Ignoring non-sync request: %s, %s", v54, 0x16u);
    v64 = v85;
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v64, -1, -1);
    MEMORY[0x24C1F26F0](v54, -1, -1);
    goto LABEL_15;
  }
}

void sub_24908E98C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for DTSyncedAlarm(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v47 - v14);
  sub_24910D0AC();
  if (v16)
  {

    DTSyncedAlarm.init(mtAlarm:)(a1, v15);
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v17 = sub_24910C89C();
    __swift_project_value_buffer(v17, qword_27EED82D8);
    sub_2490A3010(v15, v13, type metadata accessor for DTSyncedAlarm);
    v18 = sub_24910C87C();
    v19 = sub_24910CF5C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v49 = v2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v48 = v9;
      v23 = v22;
      v50[0] = v22;
      *v21 = 136315138;
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
      v24 = sub_24910D50C();
      v26 = v25;
      sub_2490A4414(v13, type metadata accessor for DTSyncedAlarm);
      v27 = sub_24909F930(v24, v26, v50);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_249083000, v18, v19, "addAlarm: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v28 = v23;
      v9 = v48;
      MEMORY[0x24C1F26F0](v28, -1, -1);
      v29 = v21;
      v2 = v49;
      MEMORY[0x24C1F26F0](v29, -1, -1);
    }

    else
    {

      sub_2490A4414(v13, type metadata accessor for DTSyncedAlarm);
    }

    v38 = *v15;
    v39 = v15[1];
    sub_2490A3010(v15, v7, type metadata accessor for DTSyncedAlarm);
    (*(v9 + 56))(v7, 0, 1, v8);
    swift_beginAccess();

    sub_249092C1C(v7, v38, v39);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
    v40 = sub_24910C99C();
    v41 = *(v40 - 8);
    v42 = *(v41 + 72);
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_24910E880;
    *(v44 + v43) = DTSyncedAlarm.ckRecordID.getter();
    (*(v41 + 104))(v44 + v43, *MEMORY[0x277CBBC68], v40);
    if (v2[4].isa)
    {
      isa = v2[4].isa;

      sub_24910CB1C();

      sub_24910CAFC();
    }

    sub_24909329C();
    sub_2490A4414(v15, type metadata accessor for DTSyncedAlarm);
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v30 = sub_24910C89C();
    __swift_project_value_buffer(v30, qword_27EED82D8);
    v31 = a1;
    v49 = sub_24910C87C();
    v32 = sub_24910CF5C();

    if (os_log_type_enabled(v49, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50[0] = v34;
      *v33 = 136315138;
      v35 = sub_24910D0BC();
      v37 = sub_24909F930(v35, v36, v50);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_249083000, v49, v32, "addAlarm: no-target, %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1F26F0](v34, -1, -1);
      MEMORY[0x24C1F26F0](v33, -1, -1);
    }

    else
    {
      v46 = v49;
    }
  }
}

void sub_24908EF9C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = type metadata accessor for DTSyncedTimer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v47 - v14);
  sub_24910D0CC();
  if (v16)
  {

    DTSyncedTimer.init(mtTimer:)(a1, v15);
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v17 = sub_24910C89C();
    __swift_project_value_buffer(v17, qword_27EED82D8);
    sub_2490A3010(v15, v13, type metadata accessor for DTSyncedTimer);
    v18 = sub_24910C87C();
    v19 = sub_24910CF5C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v49 = v2;
      v21 = v20;
      v22 = swift_slowAlloc();
      v48 = v9;
      v23 = v22;
      v50[0] = v22;
      *v21 = 136315138;
      sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
      v24 = sub_24910D50C();
      v26 = v25;
      sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
      v27 = sub_24909F930(v24, v26, v50);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_249083000, v18, v19, "addTimer: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v28 = v23;
      v9 = v48;
      MEMORY[0x24C1F26F0](v28, -1, -1);
      v29 = v21;
      v2 = v49;
      MEMORY[0x24C1F26F0](v29, -1, -1);
    }

    else
    {

      sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
    }

    v38 = *v15;
    v39 = v15[1];
    sub_2490A3010(v15, v7, type metadata accessor for DTSyncedTimer);
    (*(v9 + 56))(v7, 0, 1, v8);
    swift_beginAccess();

    sub_249092E30(v7, v38, v39);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
    v40 = sub_24910C99C();
    v41 = *(v40 - 8);
    v42 = *(v41 + 72);
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_24910E880;
    *(v44 + v43) = DTSyncedTimer.ckRecordID.getter();
    (*(v41 + 104))(v44 + v43, *MEMORY[0x277CBBC68], v40);
    if (v2[4].isa)
    {
      isa = v2[4].isa;

      sub_24910CB1C();

      sub_24910CAFC();
    }

    sub_24909329C();
    sub_2490A4414(v15, type metadata accessor for DTSyncedTimer);
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v30 = sub_24910C89C();
    __swift_project_value_buffer(v30, qword_27EED82D8);
    v31 = a1;
    v49 = sub_24910C87C();
    v32 = sub_24910CF5C();

    if (os_log_type_enabled(v49, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v50[0] = v34;
      *v33 = 136315138;
      v35 = sub_24910D0DC();
      v37 = sub_24909F930(v35, v36, v50);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_249083000, v49, v32, "addTimer: no-target, %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x24C1F26F0](v34, -1, -1);
      MEMORY[0x24C1F26F0](v33, -1, -1);
    }

    else
    {
      v46 = v49;
    }
  }
}

void sub_24908F5B0(void *a1)
{
  v2 = v1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7698, &qword_24910EBA8);
  v4 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v6 = &v94 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v94 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v101 = &v94 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v94 - v18);
  MEMORY[0x28223BE20](v17);
  v103 = (&v94 - v20);
  v21 = type metadata accessor for DTSyncedAlarm(0);
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (&v94 - v27);
  sub_24910D0AC();
  if (v29)
  {
    v95 = v26;
    v99 = v14;
    v100 = v11;

    DTSyncedAlarm.init(mtAlarm:)(a1, v28);
    v31 = *v28;
    v30 = v28[1];
    v32 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v97 = v2;
    v98 = v32;
    v33 = *(v2 + v32);
    if (*(v33 + 16))
    {
      v96 = v21;
      v34 = v28;
      v35 = v103;

      v36 = sub_2490A0A3C(v31, v30);
      v38 = v37;

      if (v38)
      {
        v39 = v22;
        sub_2490A3010(*(v33 + 56) + v22[9] * v36, v35, type metadata accessor for DTSyncedAlarm);
        v40 = 0;
        v28 = v34;
        v21 = v96;
        goto LABEL_12;
      }

      v40 = 1;
      v28 = v34;
      v21 = v96;
    }

    else
    {
      v40 = 1;
    }

    v39 = v22;
LABEL_12:
    v49 = v39[7];
    v50 = v103;
    v49(v103, v40, 1, v21);
    swift_endAccess();
    sub_2490A3010(v28, v19, type metadata accessor for DTSyncedAlarm);
    v96 = v49;
    v49(v19, 0, 1, v21);
    v51 = *(v102 + 48);
    sub_2490A4674(v19, v6, &qword_27EED7640, &qword_24910EB58);
    sub_2490A4674(v50, &v6[v51], &qword_27EED7640, &qword_24910EB58);
    v52 = v22[6];
    if (v52(v6, 1, v21) == 1)
    {
      sub_2490A487C(v19, &qword_27EED7640, &qword_24910EB58);
      if (v52(&v6[v51], 1, v21) == 1)
      {
        sub_2490A487C(v6, &qword_27EED7640, &qword_24910EB58);
LABEL_32:
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v86 = sub_24910C89C();
        __swift_project_value_buffer(v86, qword_27EED82D8);
        v87 = sub_24910C87C();
        v88 = sub_24910CF5C();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v104 = v90;
          *v89 = 136315138;
          swift_beginAccess();
          sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
          v91 = sub_24910D50C();
          v93 = sub_24909F930(v91, v92, &v104);

          *(v89 + 4) = v93;
          _os_log_impl(&dword_249083000, v87, v88, "updateAlarm: unchanged, %s", v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x24C1F26F0](v90, -1, -1);
          MEMORY[0x24C1F26F0](v89, -1, -1);
        }

        sub_2490A487C(v103, &qword_27EED7640, &qword_24910EB58);
        v82 = v28;
LABEL_37:
        sub_2490A4414(v82, type metadata accessor for DTSyncedAlarm);
        return;
      }
    }

    else
    {
      v53 = v101;
      sub_2490A4674(v6, v101, &qword_27EED7640, &qword_24910EB58);
      if (v52(&v6[v51], 1, v21) != 1)
      {
        v84 = &v6[v51];
        v85 = v95;
        sub_2490A43AC(v84, v95, type metadata accessor for DTSyncedAlarm);
        sub_2490A2FC8(&qword_27EED76A0, type metadata accessor for DTSyncedAlarm);
        LODWORD(v102) = sub_24910CC7C();
        sub_2490A4414(v85, type metadata accessor for DTSyncedAlarm);
        sub_2490A487C(v19, &qword_27EED7640, &qword_24910EB58);
        sub_2490A4414(v53, type metadata accessor for DTSyncedAlarm);
        sub_2490A487C(v6, &qword_27EED7640, &qword_24910EB58);
        if (v102)
        {
          goto LABEL_32;
        }

LABEL_18:
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v54 = sub_24910C89C();
        __swift_project_value_buffer(v54, qword_27EED82D8);
        v55 = sub_24910C87C();
        v56 = sub_24910CF5C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v21;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v102 = v52;
          v60 = v59;
          v105[0] = v59;
          *v58 = 136315138;
          swift_beginAccess();
          sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
          v61 = sub_24910D50C();
          v63 = sub_24909F930(v61, v62, v105);

          *(v58 + 4) = v63;
          _os_log_impl(&dword_249083000, v55, v56, "updateAlarm: %s", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          v64 = v60;
          v52 = v102;
          MEMORY[0x24C1F26F0](v64, -1, -1);
          v65 = v58;
          v21 = v57;
          MEMORY[0x24C1F26F0](v65, -1, -1);
        }

        v66 = v99;
        sub_2490A4674(v103, v99, &qword_27EED7640, &qword_24910EB58);
        if (v52(v66, 1, v21) == 1)
        {
          sub_2490A487C(v66, &qword_27EED7640, &qword_24910EB58);
          v67 = 0;
        }

        else
        {
          v68 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm);
          v67 = DTSyncedObject.lastKnownRecord.getter(v21, v68);
          sub_2490A4414(v66, type metadata accessor for DTSyncedAlarm);
        }

        swift_beginAccess();
        v69 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm);
        DTSyncedObject.lastKnownRecord.setter(v67, v21, v69);
        swift_endAccess();
        v70 = *v28;
        v71 = v28[1];
        v72 = v100;
        sub_2490A3010(v28, v100, type metadata accessor for DTSyncedAlarm);
        v96(v72, 0, 1, v21);
        v73 = v97;
        swift_beginAccess();

        sub_249092C1C(v72, v70, v71);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
        v74 = v28;
        v75 = sub_24910C99C();
        v76 = v73;
        v77 = *(v75 - 8);
        v78 = *(v77 + 72);
        v79 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_24910E880;
        *(v80 + v79) = DTSyncedAlarm.ckRecordID.getter();
        (*(v77 + 104))(v80 + v79, *MEMORY[0x277CBBC68], v75);
        if (*(v76 + 32))
        {
          v81 = *(v76 + 32);

          sub_24910CB1C();

          sub_24910CAFC();
        }

        sub_24909329C();
        sub_2490A487C(v103, &qword_27EED7640, &qword_24910EB58);
        v82 = v74;
        goto LABEL_37;
      }

      sub_2490A487C(v19, &qword_27EED7640, &qword_24910EB58);
      sub_2490A4414(v53, type metadata accessor for DTSyncedAlarm);
    }

    sub_2490A487C(v6, &qword_27EED7698, &qword_24910EBA8);
    goto LABEL_18;
  }

  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v41 = sub_24910C89C();
  __swift_project_value_buffer(v41, qword_27EED82D8);
  v42 = a1;
  v103 = sub_24910C87C();
  v43 = sub_24910CF5C();

  if (os_log_type_enabled(v103, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v105[0] = v45;
    *v44 = 136315138;
    v46 = sub_24910D0BC();
    v48 = sub_24909F930(v46, v47, v105);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_249083000, v103, v43, "updateAlarm: no-target, %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x24C1F26F0](v45, -1, -1);
    MEMORY[0x24C1F26F0](v44, -1, -1);
  }

  else
  {
    v83 = v103;
  }
}

void sub_249090270(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED76A8, &unk_24910EBB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v92 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v96 = v92 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v95 = v92 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (v92 - v18);
  MEMORY[0x28223BE20](v17);
  v98 = (v92 - v20);
  v21 = type metadata accessor for DTSyncedTimer(0);
  v22 = *(v21 - 8);
  v23 = v22[8];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = (v92 - v27);
  sub_24910D0CC();
  if (v29)
  {
    v93 = v12;

    DTSyncedTimer.init(mtTimer:)(a1, v28);
    v30 = v2;
    v32 = *v28;
    v31 = v28[1];
    v94 = v30;
    v33 = v30 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v92[3] = v33;
    v34 = v33 + 8;
    v35 = *(v33 + 8);
    v92[2] = v34;
    v36 = *(v35 + 16);
    v97 = v28;
    if (v36)
    {

      v37 = sub_2490A0A3C(v32, v31);
      v39 = v38;

      if (v39)
      {
        sub_2490A3010(*(v35 + 56) + v22[9] * v37, v98, type metadata accessor for DTSyncedTimer);
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v28 = v97;
    }

    else
    {
      v40 = 1;
    }

    v49 = v22[7];
    v50 = v98;
    v49(v98, v40, 1, v21);
    swift_endAccess();
    sub_2490A3010(v28, v19, type metadata accessor for DTSyncedTimer);
    v92[0] = v49;
    v92[1] = v22 + 7;
    v49(v19, 0, 1, v21);
    v51 = *(v4 + 48);
    sub_2490A4674(v19, v7, &qword_27EED7638, &qword_24910EB48);
    sub_2490A4674(v50, &v7[v51], &qword_27EED7638, &qword_24910EB48);
    v52 = v22[6];
    if (v52(v7, 1, v21) == 1)
    {
      sub_2490A487C(v19, &qword_27EED7638, &qword_24910EB48);
      if (v52(&v7[v51], 1, v21) == 1)
      {
        sub_2490A487C(v7, &qword_27EED7638, &qword_24910EB48);
LABEL_32:
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v82 = sub_24910C89C();
        __swift_project_value_buffer(v82, qword_27EED82D8);
        v83 = sub_24910C87C();
        v84 = sub_24910CF5C();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v99 = v86;
          *v85 = 136315138;
          v87 = v97;
          swift_beginAccess();
          sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
          v88 = sub_24910D50C();
          v90 = sub_24909F930(v88, v89, &v99);

          *(v85 + 4) = v90;
          _os_log_impl(&dword_249083000, v83, v84, "updateTimer: unchanged, %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x24C1F26F0](v86, -1, -1);
          MEMORY[0x24C1F26F0](v85, -1, -1);

          sub_2490A487C(v98, &qword_27EED7638, &qword_24910EB48);
          v91 = v87;
LABEL_38:
          sub_2490A4414(v91, type metadata accessor for DTSyncedTimer);
          return;
        }

LABEL_37:
        sub_2490A487C(v98, &qword_27EED7638, &qword_24910EB48);
        v91 = v97;
        goto LABEL_38;
      }
    }

    else
    {
      v53 = v95;
      sub_2490A4674(v7, v95, &qword_27EED7638, &qword_24910EB48);
      if (v52(&v7[v51], 1, v21) != 1)
      {
        sub_2490A43AC(&v7[v51], v26, type metadata accessor for DTSyncedTimer);
        sub_2490A2FC8(&qword_27EED7990, type metadata accessor for DTSyncedTimer);
        v81 = sub_24910CC7C();
        sub_2490A4414(v26, type metadata accessor for DTSyncedTimer);
        sub_2490A487C(v19, &qword_27EED7638, &qword_24910EB48);
        sub_2490A4414(v53, type metadata accessor for DTSyncedTimer);
        sub_2490A487C(v7, &qword_27EED7638, &qword_24910EB48);
        if (v81)
        {
          goto LABEL_32;
        }

LABEL_18:
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v54 = sub_24910C89C();
        __swift_project_value_buffer(v54, qword_27EED82D8);
        v55 = sub_24910C87C();
        v56 = sub_24910CF5C();
        v57 = os_log_type_enabled(v55, v56);
        v58 = v94;
        if (v57)
        {
          v59 = v52;
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v100[0] = v61;
          *v60 = 136315138;
          swift_beginAccess();
          sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
          v62 = sub_24910D50C();
          v64 = sub_24909F930(v62, v63, v100);

          *(v60 + 4) = v64;
          _os_log_impl(&dword_249083000, v55, v56, "updateTimer: %s", v60, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v61);
          MEMORY[0x24C1F26F0](v61, -1, -1);
          v65 = v60;
          v52 = v59;
          MEMORY[0x24C1F26F0](v65, -1, -1);
        }

        v66 = v96;
        sub_2490A4674(v98, v96, &qword_27EED7638, &qword_24910EB48);
        if (v52(v66, 1, v21) == 1)
        {
          sub_2490A487C(v66, &qword_27EED7638, &qword_24910EB48);
          v67 = 0;
        }

        else
        {
          v68 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer);
          v67 = DTSyncedObject.lastKnownRecord.getter(v21, v68);
          sub_2490A4414(v66, type metadata accessor for DTSyncedTimer);
        }

        v69 = v97;
        swift_beginAccess();
        v70 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer);
        DTSyncedObject.lastKnownRecord.setter(v67, v21, v70);
        swift_endAccess();
        v71 = *v69;
        v72 = v69[1];
        v73 = v93;
        sub_2490A3010(v69, v93, type metadata accessor for DTSyncedTimer);
        (v92[0])(v73, 0, 1, v21);
        swift_beginAccess();

        sub_249092E30(v73, v71, v72);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
        v74 = sub_24910C99C();
        v75 = *(v74 - 8);
        v76 = *(v75 + 72);
        v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_24910E880;
        *(v78 + v77) = DTSyncedTimer.ckRecordID.getter();
        (*(v75 + 104))(v78 + v77, *MEMORY[0x277CBBC68], v74);
        if (*(v58 + 32))
        {
          v79 = *(v58 + 32);

          sub_24910CB1C();

          sub_24910CAFC();
        }

        sub_24909329C();
        goto LABEL_37;
      }

      sub_2490A487C(v19, &qword_27EED7638, &qword_24910EB48);
      sub_2490A4414(v53, type metadata accessor for DTSyncedTimer);
    }

    sub_2490A487C(v7, &qword_27EED76A8, &unk_24910EBB0);
    goto LABEL_18;
  }

  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v41 = sub_24910C89C();
  __swift_project_value_buffer(v41, qword_27EED82D8);
  v42 = a1;
  v98 = sub_24910C87C();
  v43 = sub_24910CF5C();

  if (os_log_type_enabled(v98, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v100[0] = v45;
    *v44 = 136315138;
    v46 = sub_24910D0DC();
    v48 = sub_24909F930(v46, v47, v100);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_249083000, v98, v43, "updateTimer: no-target, %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x24C1F26F0](v45, -1, -1);
    MEMORY[0x24C1F26F0](v44, -1, -1);
  }

  else
  {
    v80 = v98;
  }
}

uint64_t sub_249090F1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - v7;
  v9 = type metadata accessor for DTSyncedAlarm(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = (&v60 - v18);
  DTSyncedAlarm.init(mtAlarm:)(a1, &v60 - v18);
  v21 = *v19;
  v20 = v19[1];
  v22 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v66 = v1;
  v23 = *(v1 + v22);
  v24 = *(v23 + 16);
  v63 = v20;
  v64 = v21;
  if (v24 && (v25 = sub_2490A0A3C(v21, v20), (v26 & 1) != 0))
  {
    sub_2490A3010(*(v23 + 56) + *(v10 + 72) * v25, v8, type metadata accessor for DTSyncedAlarm);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = v9;
  v29 = *(v10 + 56);
  v29(v8, v27, 1, v28);
  swift_endAccess();
  v30 = (*(v10 + 48))(v8, 1, v28);
  sub_2490A487C(v8, &qword_27EED7640, &qword_24910EB58);
  if (v30 == 1)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v31 = sub_24910C89C();
    __swift_project_value_buffer(v31, qword_27EED82D8);
    sub_2490A3010(v19, v14, type metadata accessor for DTSyncedAlarm);
    v32 = sub_24910C87C();
    v33 = sub_24910CF5C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v67[0] = v35;
      *v34 = 136315138;
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
      v36 = sub_24910D50C();
      v38 = v37;
      sub_2490A4414(v14, type metadata accessor for DTSyncedAlarm);
      v39 = sub_24909F930(v36, v38, v67);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_249083000, v32, v33, "removeAlarm: unknown, %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C1F26F0](v35, -1, -1);
      MEMORY[0x24C1F26F0](v34, -1, -1);
    }

    else
    {

      sub_2490A4414(v14, type metadata accessor for DTSyncedAlarm);
    }

    v40 = v19;
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v41 = sub_24910C89C();
    __swift_project_value_buffer(v41, qword_27EED82D8);
    sub_2490A3010(v19, v17, type metadata accessor for DTSyncedAlarm);
    v42 = sub_24910C87C();
    v43 = sub_24910CF5C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v67[0] = v61;
      *v44 = 136315138;
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
      v45 = sub_24910D50C();
      v62 = v29;
      v47 = v46;
      sub_2490A4414(v17, type metadata accessor for DTSyncedAlarm);
      v48 = sub_24909F930(v45, v47, v67);
      v29 = v62;

      *(v44 + 4) = v48;
      _os_log_impl(&dword_249083000, v42, v43, "removeAlarm: %s", v44, 0xCu);
      v49 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x24C1F26F0](v49, -1, -1);
      MEMORY[0x24C1F26F0](v44, -1, -1);
    }

    else
    {

      sub_2490A4414(v17, type metadata accessor for DTSyncedAlarm);
    }

    v50 = v63;
    v51 = v65;
    v29(v65, 1, 1, v28);
    v52 = v66;
    swift_beginAccess();

    sub_249092C1C(v51, v64, v50);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
    v53 = sub_24910C99C();
    v54 = *(v53 - 8);
    v55 = *(v54 + 72);
    v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_24910E880;
    *(v57 + v56) = DTSyncedAlarm.ckRecordID.getter();
    (*(v54 + 104))(v57 + v56, *MEMORY[0x277CBBC70], v53);
    if (*(v52 + 32))
    {
      v58 = *(v52 + 32);

      sub_24910CB1C();

      sub_24910CAFC();
    }

    sub_24909329C();
    v40 = v19;
  }

  return sub_2490A4414(v40, type metadata accessor for DTSyncedAlarm);
}

uint64_t sub_24909168C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v58 - v7;
  v66 = type metadata accessor for DTSyncedTimer(0);
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v66 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v58 - v17);
  DTSyncedTimer.init(mtTimer:)(a1, &v58 - v17);
  v19 = *v18;
  v20 = v18[1];
  v65 = v1;
  v21 = v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v22 = *(v21 + 8);
  v62 = v21 + 8;
  v63 = v19;
  if (*(v22 + 16))
  {
    v23 = sub_2490A0A3C(v19, v20);
    v24 = v20;
    if (v25)
    {
      sub_2490A3010(*(v22 + 56) + *(v9 + 72) * v23, v8, type metadata accessor for DTSyncedTimer);
      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
    v24 = v20;
  }

  v27 = *(v9 + 56);
  v28 = v66;
  v27(v8, v26, 1, v66);
  swift_endAccess();
  LODWORD(v28) = (*(v9 + 48))(v8, 1, v28);
  sub_2490A487C(v8, &qword_27EED7638, &qword_24910EB48);
  if (v28 == 1)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v29 = sub_24910C89C();
    __swift_project_value_buffer(v29, qword_27EED82D8);
    sub_2490A3010(v18, v13, type metadata accessor for DTSyncedTimer);
    v30 = sub_24910C87C();
    v31 = sub_24910CF5C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67[0] = v33;
      *v32 = 136315138;
      sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
      v34 = sub_24910D50C();
      v36 = v35;
      sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
      v37 = sub_24909F930(v34, v36, v67);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_249083000, v30, v31, "removeTimer: unknown, %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1F26F0](v33, -1, -1);
      MEMORY[0x24C1F26F0](v32, -1, -1);
    }

    else
    {

      sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
    }

    v38 = v18;
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v61 = v27;
    v39 = sub_24910C89C();
    __swift_project_value_buffer(v39, qword_27EED82D8);
    sub_2490A3010(v18, v16, type metadata accessor for DTSyncedTimer);
    v40 = sub_24910C87C();
    v41 = sub_24910CF5C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67[0] = v59;
      *v42 = 136315138;
      sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
      v43 = v66;
      v44 = sub_24910D50C();
      v60 = v24;
      v46 = v45;
      sub_2490A4414(v16, type metadata accessor for DTSyncedTimer);
      v47 = sub_24909F930(v44, v46, v67);
      v24 = v60;

      *(v42 + 4) = v47;
      _os_log_impl(&dword_249083000, v40, v41, "removeTimer: %s", v42, 0xCu);
      v48 = v59;
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x24C1F26F0](v48, -1, -1);
      MEMORY[0x24C1F26F0](v42, -1, -1);
    }

    else
    {

      sub_2490A4414(v16, type metadata accessor for DTSyncedTimer);
      v43 = v66;
    }

    v50 = v63;
    v49 = v64;
    v61(v64, 1, 1, v43);
    swift_beginAccess();

    sub_249092E30(v49, v50, v24);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
    v51 = sub_24910C99C();
    v52 = *(v51 - 8);
    v53 = *(v52 + 72);
    v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_24910E880;
    *(v55 + v54) = DTSyncedTimer.ckRecordID.getter();
    (*(v52 + 104))(v55 + v54, *MEMORY[0x277CBBC70], v51);
    if (*(v65 + 32))
    {
      v56 = *(v65 + 32);

      sub_24910CB1C();

      sub_24910CAFC();
    }

    sub_24909329C();
    v38 = v18;
  }

  return sub_2490A4414(v38, type metadata accessor for DTSyncedTimer);
}

void sub_249091E20(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v54 - v6;
  v8 = sub_24910C26C();
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DTSyncedAlarm(0);
  v58 = *(v11 - 8);
  v12 = *(v58 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v54 - v16;
  v18 = [a1 alarmIDString];
  v19 = sub_24910CC9C();
  v21 = v20;

  v22 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (*(v23 + 16))
  {
    v54 = v7;
    v24 = sub_2490A0A3C(v19, v21);
    v26 = v25;

    if (v26)
    {
      sub_2490A3010(*(v23 + 56) + *(v58 + 72) * v24, v15, type metadata accessor for DTSyncedAlarm);
      sub_2490A43AC(v15, v17, type metadata accessor for DTSyncedAlarm);
      swift_endAccess();
      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v27 = sub_24910C89C();
      __swift_project_value_buffer(v27, qword_27EED82D8);
      v28 = sub_24910C87C();
      v29 = sub_24910CF5C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v59[0] = v31;
        *v30 = 136315138;
        swift_beginAccess();
        sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
        v32 = sub_24910D50C();
        v34 = sub_24909F930(v32, v33, v59);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_249083000, v28, v29, "dismissAlarm: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x24C1F26F0](v31, -1, -1);
        MEMORY[0x24C1F26F0](v30, -1, -1);
      }

      swift_beginAccess();
      if (!*(*&v17[*(v11 + 40)] + 16))
      {
        v17[16] = 0;
        v35 = v55;
        sub_24910C23C();
        (*(v56 + 40))(&v17[*(v11 + 36)], v35, v57);
        v36 = *v17;
        v37 = *(v17 + 1);
        v38 = v54;
        sub_2490A3010(v17, v54, type metadata accessor for DTSyncedAlarm);
        (*(v58 + 56))(v38, 0, 1, v11);
        swift_beginAccess();

        sub_249092C1C(v38, v36, v37);
        swift_endAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
        v39 = sub_24910C99C();
        v40 = *(v39 - 8);
        v41 = *(v40 + 72);
        v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_24910E880;
        *(v43 + v42) = DTSyncedAlarm.ckRecordID.getter();
        (*(v40 + 104))(v43 + v42, *MEMORY[0x277CBBC68], v39);
        if (*(v2 + 32))
        {
          v44 = *(v2 + 32);

          sub_24910CB1C();

          sub_24910CAFC();
        }

        sub_24909329C();
      }

      sub_2490A4414(v17, type metadata accessor for DTSyncedAlarm);
      return;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v45 = sub_24910C89C();
  __swift_project_value_buffer(v45, qword_27EED82D8);
  v46 = a1;
  v47 = sub_24910C87C();
  v48 = sub_24910CF5C();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v59[0] = v50;
    *v49 = 136315138;
    v51 = sub_24910D0BC();
    v53 = sub_24909F930(v51, v52, v59);

    *(v49 + 4) = v53;
    _os_log_impl(&dword_249083000, v47, v48, "dismissAlarm: not found, %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x24C1F26F0](v50, -1, -1);
    MEMORY[0x24C1F26F0](v49, -1, -1);
  }
}

void sub_249092518(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v56 - v6;
  v7 = sub_24910C26C();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = *(v59 + 64);
  MEMORY[0x28223BE20](v7);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DTSyncedTimer(0);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = (&v56 - v15);
  v17 = [a1 timerIDString];
  v18 = sub_24910CC9C();
  v20 = v19;

  v21 = v2 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v22 = *(v21 + 8);
  if (*(v22 + 16))
  {
    v57 = v2;
    v23 = sub_2490A0A3C(v18, v20);
    v25 = v24;

    if (v25)
    {
      sub_2490A3010(*(v22 + 56) + *(v62 + 72) * v23, v14, type metadata accessor for DTSyncedTimer);
      sub_2490A43AC(v14, v16, type metadata accessor for DTSyncedTimer);
      swift_endAccess();
      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v26 = sub_24910C89C();
      __swift_project_value_buffer(v26, qword_27EED82D8);
      v27 = sub_24910C87C();
      v28 = sub_24910CF5C();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v57;
      if (v29)
      {
        v31 = swift_slowAlloc();
        v63[0] = swift_slowAlloc();
        v32 = v63[0];
        *v31 = 136315138;
        swift_beginAccess();
        sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
        v33 = sub_24910D50C();
        v35 = sub_24909F930(v33, v34, v63);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_249083000, v27, v28, "dismissTimer: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        v36 = v32;
        v30 = v57;
        MEMORY[0x24C1F26F0](v36, -1, -1);
        MEMORY[0x24C1F26F0](v31, -1, -1);
      }

      v37 = v58;
      sub_24910C23C();
      swift_beginAccess();
      (*(v59 + 40))(v16 + *(v10 + 28), v37, v60);
      *(v16 + *(v10 + 32)) = 1;
      v38 = *v16;
      v39 = v16[1];
      v40 = v61;
      sub_2490A3010(v16, v61, type metadata accessor for DTSyncedTimer);
      (*(v62 + 56))(v40, 0, 1, v10);
      swift_beginAccess();

      sub_249092E30(v40, v38, v39);
      swift_endAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
      v41 = sub_24910C99C();
      v42 = *(v41 - 8);
      v43 = *(v42 + 72);
      v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_24910E880;
      *(v45 + v44) = DTSyncedTimer.ckRecordID.getter();
      (*(v42 + 104))(v45 + v44, *MEMORY[0x277CBBC68], v41);
      if (*(v30 + 32))
      {
        v46 = *(v30 + 32);

        sub_24910CB1C();

        sub_24910CAFC();
      }

      sub_24909329C();
      sub_2490A4414(v16, type metadata accessor for DTSyncedTimer);
      return;
    }
  }

  else
  {
  }

  swift_endAccess();
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v47 = sub_24910C89C();
  __swift_project_value_buffer(v47, qword_27EED82D8);
  v48 = a1;
  v49 = sub_24910C87C();
  v50 = sub_24910CF5C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v63[0] = v52;
    *v51 = 136315138;
    v53 = sub_24910D0DC();
    v55 = sub_24909F930(v53, v54, v63);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_249083000, v49, v50, "dismissTimer: not found, %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x24C1F26F0](v52, -1, -1);
    MEMORY[0x24C1F26F0](v51, -1, -1);
  }
}

uint64_t sub_249092C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DTSyncedAlarm(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_2490A487C(a1, &qword_27EED7640, &qword_24910EB58);
    sub_2490A0C1C(a2, a3, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, sub_2490A219C, v10);

    return sub_2490A487C(v10, &qword_27EED7640, &qword_24910EB58);
  }

  else
  {
    sub_2490A43AC(a1, v14, type metadata accessor for DTSyncedAlarm);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2490A1B9C(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_249092E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DTSyncedTimer(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_2490A487C(a1, &qword_27EED7638, &qword_24910EB48);
    sub_2490A0C1C(a2, a3, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, sub_2490A23F4, v10);

    return sub_2490A487C(v10, &qword_27EED7638, &qword_24910EB48);
  }

  else
  {
    sub_2490A43AC(a1, v14, type metadata accessor for DTSyncedTimer);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2490A1D30(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_249093044(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75D8, &qword_24910E8E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_2490A487C(a1, &qword_27EED75D8, &qword_24910E8E8);
    v15 = *v3;
    v16 = sub_2490A0AB4(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2490A264C();
        v21 = v26;
      }

      (*(v11 + 32))(v9, *(v21 + 56) + *(v11 + 72) * v18, v10);
      sub_2490A19D8(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_2490A487C(v9, &qword_27EED75D8, &qword_24910E8E8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_2490A1EC4(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

void sub_24909329C()
{
  v108[1] = *MEMORY[0x277D85DE8];
  v93 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  v1 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v101 = v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24910C08C();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  MEMORY[0x28223BE20](v3);
  v100 = v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_24910C12C();
  v6 = *(v97 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v97);
  v96 = v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F0, &qword_24910EB70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v90 - v11;
  v13 = sub_24910C1AC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v102 = v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v105 = v90 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v90 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v90 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v95 = v90 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = v90 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v90 - v31;
  v94 = v0;
  sub_24910C35C();
  v33 = (*(v14 + 48))(v12, 1, v13);
  v34 = &qword_27EED8000;
  v103 = v32;
  v104 = v14;
  if (v33 == 1)
  {
    v92 = v13;
    sub_2490A487C(v12, &qword_27EED78F0, &qword_24910EB70);
    v35 = [objc_opt_self() defaultManager];
    v106 = 0;
    v36 = [v35 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v106];

    v37 = v106;
    if (!v36)
    {
      v80 = v106;
      v69 = sub_24910C11C();

      swift_willThrow();
      goto LABEL_13;
    }

    sub_24910C17C();
    v38 = v37;

    v106 = sub_24910C58C();
    v107 = v39;
    v91 = *MEMORY[0x277CC91D8];
    v40 = v6[13];
    v41 = v96;
    v42 = v97;
    v40(v96);
    v90[1] = sub_2490A44E8();
    sub_24910C19C();
    v90[0] = v6[1];
    (v90[0])(v41, v42);

    v43 = *(v104 + 8);
    v44 = v92;
    v43(v22, v92);
    v106 = 0xD000000000000010;
    v107 = 0x80000002491110F0;
    (v40)(v41, v91, v42);
    v14 = v104;
    v45 = v95;
    sub_24910C19C();
    v46 = v42;
    v47 = v44;
    (v90[0])(v41, v46);
    v34 = &qword_27EED8000;
    v43(v25, v44);
    v32 = v103;
    (*(v14 + 32))(v103, v45, v44);
  }

  else
  {
    v48 = *(v14 + 32);
    v48(v30, v12, v13);
    v48(v32, v30, v13);
    v47 = v13;
  }

  if (v34[90] != -1)
  {
    swift_once();
  }

  v49 = sub_24910C89C();
  __swift_project_value_buffer(v49, qword_27EED82D8);
  (*(v14 + 16))(v105, v32, v47);
  v50 = sub_24910C87C();
  v51 = sub_24910CF5C();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v106 = v53;
    *v52 = 136315138;
    v54 = v105;
    v55 = sub_24910C18C();
    v57 = v56;
    v58 = *(v14 + 8);
    v58(v54, v47);
    v59 = sub_24909F930(v55, v57, &v106);

    *(v52 + 4) = v59;
    _os_log_impl(&dword_249083000, v50, v51, "Persistent data save: path=%s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x24C1F26F0](v53, -1, -1);
    v60 = v58;
    MEMORY[0x24C1F26F0](v52, -1, -1);
  }

  else
  {

    v60 = *(v14 + 8);
    v60(v105, v47);
  }

  v62 = v101;
  v61 = v102;
  v63 = v103;
  sub_24910C16C();
  v64 = [objc_opt_self() defaultManager];
  v65 = sub_24910C15C();
  v106 = 0;
  v66 = [v64 createDirectoryAtURL:v65 withIntermediateDirectories:1 attributes:0 error:&v106];

  if (v66)
  {
    v67 = v106;
    sub_24910C07C();
    sub_24910C06C();
    sub_24910C14C();
    v81 = sub_24910BFDC();
    v82 = *(v81 + 48);
    v83 = *(v81 + 52);
    swift_allocObject();
    sub_24910BFCC();
    v84 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    v85 = v94;
    swift_beginAccess();
    sub_2490A3010(v85 + v84, v62, type metadata accessor for DTSyncDaemon.PersistentData);
    sub_2490A2FC8(&qword_27EED7670, type metadata accessor for DTSyncDaemon.PersistentData);
    v86 = sub_24910BFBC();
    v88 = v87;
    sub_2490A4414(v62, type metadata accessor for DTSyncDaemon.PersistentData);

    v89 = v103;
    sub_24910C1EC();
    LOBYTE(v108[0]) = 2;
    DTSyncDaemon._report(event:)(v108);
    sub_2490A453C(v86, v88);
    (*(v98 + 8))(v100, v99);
    v60(v61, v47);
    v60(v89, v47);
    goto LABEL_18;
  }

  v68 = v106;
  v69 = sub_24910C11C();

  swift_willThrow();
  v60(v61, v47);
  v60(v63, v47);
LABEL_13:
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v70 = sub_24910C89C();
  __swift_project_value_buffer(v70, qword_27EED82D8);
  v71 = v69;
  v72 = sub_24910C87C();
  v73 = sub_24910CF4C();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v108[0] = v75;
    *v74 = 136315138;
    swift_getErrorValue();
    v76 = sub_24910D5DC();
    v78 = sub_24909F930(v76, v77, v108);

    *(v74 + 4) = v78;
    _os_log_impl(&dword_249083000, v72, v73, "### Persistent data save failed: error=%s", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x24C1F26F0](v75, -1, -1);
    MEMORY[0x24C1F26F0](v74, -1, -1);
  }

  else
  {
  }

LABEL_18:
  v79 = *MEMORY[0x277D85DE8];
}

uint64_t sub_249093EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_24910C49C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_24910C3BC();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249093FC0, 0, 0);
}

uint64_t sub_249093FC0()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = v0[13];
    (*(v4 + 16))(v3, Strong + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__environment, v5);

    sub_24910C39C();
    (*(v4 + 8))(v3, v5);
    v6 = *(MEMORY[0x277D029F0] + 4);
    v7 = swift_task_alloc();
    v0[16] = v7;
    *v7 = v0;
    v7[1] = sub_2490941E0;
    v8 = v0[12];
    v9 = v0[9];

    return MEMORY[0x282158BB0](v9, 0, 0, 1);
  }

  else
  {
    v10 = v0[8];
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    v0[18] = v11;
    if (v11)
    {
      v12 = swift_task_alloc();
      v0[19] = v12;
      *v12 = v0;
      v12[1] = sub_249094450;

      return sub_24908C6D4();
    }

    else
    {
      v13 = v0[15];
      v14 = v0[12];

      v15 = v0[1];

      return v15();
    }
  }
}

uint64_t sub_2490941E0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2490945A4;
  }

  else
  {
    v6 = sub_249094350;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_249094350()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_249094450;

    return sub_24908C6D4();
  }

  else
  {
    v5 = v0[15];
    v6 = v0[12];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_249094450()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v8 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 96);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2490945A4()
{
  v1 = v0[15];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_249094614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2490A4674(a3, v24 - v10, &unk_27EED7B50, &qword_24910E810);
  v12 = sub_24910CDEC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2490A487C(v11, &unk_27EED7B50, &qword_24910E810);
  }

  else
  {
    sub_24910CDDC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_24910CDAC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_24910CCAC() + 32;

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

      sub_2490A487C(a3, &unk_27EED7B50, &qword_24910E810);

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

  sub_2490A487C(a3, &unk_27EED7B50, &qword_24910E810);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t DTSyncDaemon.events.getter@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75D8, &qword_24910E8E8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75E0, &qword_24910E8F0);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = CUNextID64();
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v15 = sub_24910C89C();
  __swift_project_value_buffer(v15, qword_27EED82D8);
  v16 = sub_24910C87C();
  v17 = sub_24910CF2C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v24 = v4;
    v19 = v18;
    *v18 = 134217984;
    *(v18 + 4) = v14;
    _os_log_impl(&dword_249083000, v16, v17, "event monitor start: id=%llu", v18, 0xCu);
    v4 = v24;
    MEMORY[0x24C1F26F0](v19, -1, -1);
  }

  v20 = v25;
  (*(v5 + 104))(v8, *MEMORY[0x277D85778], v25);
  sub_24910CDFC();
  (*(v5 + 8))(v8, v20);
  (*(v10 + 16))(v4, v13, v9);
  (*(v10 + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  sub_249093044(v4, v14);
  swift_endAccess();
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v14;
  sub_24910CE0C();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_249095320(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED7B50, &qword_24910E810);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_24910C34C();
    v13 = sub_24910CDEC();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v9, 1, 1, v13);
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = a2;
    sub_2490A4674(v9, v7, &unk_27EED7B50, &qword_24910E810);
    v16 = (*(v14 + 48))(v7, 1, v13);

    if (v16 == 1)
    {
      sub_2490A487C(v7, &unk_27EED7B50, &qword_24910E810);
    }

    else
    {
      sub_24910CDDC();
      (*(v14 + 8))(v7, v13);
    }

    v17 = sub_2490A46DC();
    v18 = swift_allocObject();
    *(v18 + 16) = &unk_24910EB80;
    *(v18 + 24) = v15;
    v20[1] = 6;
    v20[2] = 0;
    v20[3] = v12;
    v20[4] = v17;

    v19 = v12;
    swift_task_create();
    sub_2490A487C(v9, &unk_27EED7B50, &qword_24910E810);
  }

  return result;
}

uint64_t sub_2490955DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2490887FC;

  return sub_249095678(a3);
}

uint64_t sub_249095678(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75D8, &qword_24910E8E8) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v6 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249095784, v6, v5);
}

uint64_t sub_249095784()
{
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v1 = sub_24910C89C();
  __swift_project_value_buffer(v1, qword_27EED82D8);
  v2 = sub_24910C87C();
  v3 = sub_24910CF2C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_249083000, v2, v3, "event monitor cancel: id=%llu", v5, 0xCu);
    MEMORY[0x24C1F26F0](v5, -1, -1);
  }

  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  swift_beginAccess();
  sub_249093044(v6, v8);
  swift_endAccess();

  v10 = v0[1];

  return v10();
}

unint64_t DTSyncDaemon.Event.description.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t DTSyncDaemon.Event.hashValue.getter()
{
  v1 = *v0;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v1);
  return sub_24910D62C();
}

uint64_t sub_249095A14()
{
  v1 = *v0;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v1);
  return sub_24910D62C();
}

uint64_t sub_249095A88()
{
  v1 = *v0;
  sub_24910D60C();
  MEMORY[0x24C1F2040](v1);
  return sub_24910D62C();
}

unint64_t sub_249095ACC()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_249095B34()
{
  v0 = sub_24910C34C();
  v1 = sub_24910D02C();

  return v1;
}

uint64_t sub_249095B84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_249095C10;

  return DTSyncDaemon.summary.getter();
}

uint64_t sub_249095C10(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_249095D14()
{
  *(v1 + 16) = v0;
  v2 = *v0;
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249095DE8, v4, v3);
}

uint64_t sub_249095DE8()
{
  v1 = *(v0 + 16);
  DTSyncDaemon.activate()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_249095E48()
{
  *(v1 + 16) = v0;
  v2 = *v0;
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v4 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249095F1C, v4, v3);
}

uint64_t sub_249095F1C()
{
  v1 = *(v0 + 16);
  DTSyncDaemon.invalidate()();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t DTSyncDaemon.handleEvent(_:syncEngine:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24908837C;

  return (sub_2490A31BC)(a1);
}

void sub_249096028(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24910C9EC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24910C9CC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C9DC();
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277CBBCB0])
  {
    (*(v14 + 8))(v17, v13);
    if (*(v2 + 32))
    {
      v58 = MEMORY[0x277D84F90];

      sub_24910CB1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7630, &qword_24910EB40);
      v19 = sub_24910C97C();
      v20 = *(v19 - 8);
      v21 = *(v20 + 72);
      v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_24910E880;
      v24 = sub_2490A5AD4();
      v25 = *v24;
      v26 = *(v24 + 1);
      v27 = objc_allocWithZone(MEMORY[0x277CBC5E8]);

      v28 = sub_24910CC8C();

      v29 = [v27 initWithZoneName_];

      *(v23 + v22) = v29;
      (*(v20 + 104))(v23 + v22, *MEMORY[0x277CBBC50], v19);
      sub_24910CAEC();

      v30 = (v2 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
      swift_beginAccess();
      v31 = *v30;

      v33 = sub_249097EB4(v32, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, DTSyncedAlarm.ckRecordID.getter, type metadata accessor for DTSyncedAlarm);

      sub_2490A28BC(v33);
      v34 = v30[1];

      v36 = sub_249097EB4(v35, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, DTSyncedTimer.ckRecordID.getter, type metadata accessor for DTSyncedTimer);

      sub_2490A28BC(v36);
      if (*(v58 + 16))
      {
        sub_24910CB1C();
        sub_24910CAFC();
      }
    }
  }

  else if (v18 == *MEMORY[0x277CBBCB8] || v18 == *MEMORY[0x277CBBCA8])
  {
    (*(v14 + 8))(v17, v13);
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v38 = sub_24910C89C();
    __swift_project_value_buffer(v38, qword_27EED82D8);
    v39 = sub_24910C87C();
    v40 = sub_24910CF5C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_249083000, v39, v40, "Persistent data delete", v41, 2u);
      MEMORY[0x24C1F26F0](v41, -1, -1);
    }

    sub_2490A561C(v7);
    v42 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    sub_2490A4480(v7, v2 + v42, type metadata accessor for DTSyncDaemon.PersistentData);
    swift_endAccess();
    sub_24909329C();
    v43 = *(v2 + 32);
    *(v2 + 32) = 0;

    sub_24908AAB8();
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v44 = sub_24910C89C();
    __swift_project_value_buffer(v44, qword_27EED82D8);
    (*(v9 + 16))(v12, a1, v8);
    v45 = sub_24910C87C();
    v46 = sub_24910CF5C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v56 = v47;
      v57 = swift_slowAlloc();
      v59 = v57;
      *v47 = 136315138;
      sub_2490A2FC8(&qword_27EED7628, MEMORY[0x277CBBCC0]);
      v48 = sub_24910D50C();
      v50 = v49;
      (*(v9 + 8))(v12, v8);
      v51 = sub_24909F930(v48, v50, &v59);

      v52 = v56;
      *(v56 + 1) = v51;
      v53 = v52;
      _os_log_impl(&dword_249083000, v45, v46, "Unknown account change type: %s", v52, 0xCu);
      v54 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x24C1F26F0](v54, -1, -1);
      MEMORY[0x24C1F26F0](v53, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_2490967C0()
{
  v1 = v0;
  v2 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24910CEAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v49 - v13;
  v15 = MEMORY[0x24C1F1490](v12);
  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v21 = *(v19 + 64);
    v49[1] = v15;
    v22 = v15 + ((v21 + 32) & ~v21);
    v23 = *(v19 + 56);
    v54 = v11;
    v55 = v23;
    v56 = (v19 - 8);
    v57 = v20;
    *&v16 = 138412290;
    v50 = v16;
    v51 = v5;
    v52 = v0;
    v58 = v19;
    v53 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    while (1)
    {
      v24 = v6;
      v25 = v57(v14, v22, v6);
      v26 = MEMORY[0x24C1F18C0](v25);
      v27 = [v26 zoneName];

      v28 = sub_24910CC9C();
      v30 = v29;

      v31 = sub_2490A5AD4();
      if (*v31 == v28 && *(v31 + 1) == v30)
      {
      }

      else
      {
        v33 = sub_24910D54C();

        if ((v33 & 1) == 0)
        {
          if (qword_27EED82D0 != -1)
          {
            swift_once();
          }

          v34 = sub_24910C89C();
          __swift_project_value_buffer(v34, qword_27EED82D8);
          v35 = v54;
          v57(v54, v14, v24);
          v36 = sub_24910C87C();
          v37 = sub_24910CF5C();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            *v38 = v50;
            v40 = MEMORY[0x24C1F18C0]();
            v41 = v24;
            v42 = *v56;
            v43 = v35;
            v44 = v41;
            (*v56)(v43);
            *(v38 + 4) = v40;
            *v39 = v40;
            _os_log_impl(&dword_249083000, v36, v37, "Delete unknown zone: %@", v38, 0xCu);
            sub_2490A487C(v39, &qword_27EED7688, &qword_249110020);
            v45 = v39;
            v1 = v52;
            MEMORY[0x24C1F26F0](v45, -1, -1);
            v46 = v38;
            v5 = v51;
            MEMORY[0x24C1F26F0](v46, -1, -1);

            (v42)(v14, v44);
            v6 = v44;
          }

          else
          {

            v47 = *v56;
            (*v56)(v35, v24);
            (v47)(v14, v24);
            v6 = v24;
          }

          v18 = v53;
          goto LABEL_5;
        }
      }

      sub_2490A561C(v5);
      swift_beginAccess();
      sub_2490A4480(v5, v1 + v18, type metadata accessor for DTSyncDaemon.PersistentData);
      swift_endAccess();
      sub_24909329C();
      v6 = v24;
      (*v56)(v14, v24);
LABEL_5:
      v22 += v55;
      if (!--v17)
      {
      }
    }
  }
}

uint64_t DTSyncDaemon.nextRecordZoneChangeBatch(_:syncEngine:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v6 = sub_24910C92C();
  v4[6] = v6;
  v7 = *(v6 - 8);
  v4[7] = v7;
  v8 = *(v7 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v10 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_249096D78, v10, v9);
}

uint64_t sub_249096D78()
{
  v29 = v0;
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v2 = v0[3].i64[1];
  v1 = v0[4].i64[0];
  v3 = v0[3].i64[0];
  v4 = v0[1].i64[1];
  v5 = sub_24910C89C();
  __swift_project_value_buffer(v5, qword_27EED82D8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_24910C87C();
  v7 = sub_24910CF5C();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[3].i64[1];
  v9 = v0[4].i64[0];
  v11 = v0[3].i64[0];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    sub_2490A2FC8(&qword_27EED75E8, MEMORY[0x277CBBC08]);
    v14 = sub_24910D50C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_24909F930(v14, v16, &v28);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_249083000, v6, v7, "CloudKit nextRecordZoneChangeBatch: context=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1F26F0](v13, -1, -1);
    MEMORY[0x24C1F26F0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1].i64[1];
  v27 = v0[2];
  sub_24910CB1C();
  v19 = sub_24910CADC();

  v20 = swift_task_alloc();
  *(v20 + 16) = v18;
  v21 = sub_249097340(sub_2490A3EE8, v20, v19);

  v22 = swift_task_alloc();
  v0[4].i64[1] = v22;
  v22[1] = vextq_s8(v27, v27, 8uLL);
  v23 = *(MEMORY[0x277CBBC60] + 4);
  v24 = swift_task_alloc();
  v0[5].i64[0] = v24;
  *v24 = v0;
  v24[1] = sub_24909708C;
  v25 = v0[1].i64[0];

  return MEMORY[0x28210DC20](v25, v21, &unk_24910E918, v22);
}

uint64_t sub_24909708C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2490971B8()
{
  v0 = sub_24910C94C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24910C96C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24910C91C();
  MEMORY[0x24C1F1380](v10);
  (*(v6 + 8))(v9, v5);
  v11 = sub_24910C93C();
  (*(v1 + 8))(v4, v0);
  return v11 & 1;
}

uint64_t sub_249097340(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_24910C99C();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2490A2A0C(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_2490A2A0C(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_249097610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = type metadata accessor for DTSyncedTimer(0);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for DTSyncedAlarm(0);
  v3[15] = v7;
  v8 = *(v7 - 8);
  v3[16] = v8;
  v9 = *(v8 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249097748, 0, 0);
}

uint64_t sub_249097748()
{
  v1 = *(v0 + 72);
  v2 = [*(v0 + 64) recordName];
  v3 = sub_24910CC9C();
  v5 = v4;

  *(v0 + 152) = v3;
  *(v0 + 160) = v5;
  *(v0 + 168) = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  type metadata accessor for DTSyncDaemon();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon);
  v7 = sub_24910CDAC();
  *(v0 + 176) = v7;
  *(v0 + 184) = v6;

  return MEMORY[0x2822009F8](sub_249097840, v7, v6);
}

uint64_t sub_249097840()
{
  v1 = v0[21];
  v2 = v0[9];
  swift_beginAccess();
  v3 = *(v2 + v1);
  if (*(v3 + 16) && (v4 = sub_2490A0A3C(v0[19], v0[20]), (v5 & 1) != 0))
  {
    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    sub_2490A3010(*(v3 + 56) + *(v0[16] + 72) * v4, v8, type metadata accessor for DTSyncedAlarm);
    sub_2490A43AC(v8, v7, type metadata accessor for DTSyncedAlarm);
    swift_endAccess();

    v9 = sub_249097958;
  }

  else
  {
    swift_endAccess();
    v9 = sub_249097AA8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_249097958()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm);
  v4.super.isa = DTSyncedObject.lastKnownRecord.getter(v2, v3);
  if (!v4.super.isa)
  {
    v5 = v0[8];
    sub_2490A4744(0, &qword_27EED7610, 0x277CBC5A0);
    v6 = sub_2490A86B8();
    v7 = *v6;
    v8 = *(v6 + 1);

    v9 = v5;
    v4.super.isa = sub_24910D0EC();
  }

  v10 = v0[18];
  v11 = v0[15];
  isa = v4.super.isa;
  DTSyncedObject.populateRecord(_:)(v4);
  sub_2490A4414(v10, type metadata accessor for DTSyncedAlarm);
  v14 = v0[17];
  v13 = v0[18];
  v16 = v0[13];
  v15 = v0[14];

  v17 = v0[1];

  return v17(isa);
}

uint64_t sub_249097AC0()
{
  v1 = v0[9] + v0[21];
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (*(v2 + 16) && (v3 = sub_2490A0A3C(v0[19], v0[20]), (v4 & 1) != 0))
  {
    v5 = v0[20];
    v7 = v0[13];
    v6 = v0[14];
    sub_2490A3010(*(v2 + 56) + *(v0[12] + 72) * v3, v7, type metadata accessor for DTSyncedTimer);
    sub_2490A43AC(v7, v6, type metadata accessor for DTSyncedTimer);
    swift_endAccess();

    v8 = sub_249097BE8;
  }

  else
  {
    v9 = v0[20];
    swift_endAccess();

    v8 = sub_249097D3C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_249097BE8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer);
  v4.super.isa = DTSyncedObject.lastKnownRecord.getter(v2, v3);
  if (!v4.super.isa)
  {
    v5 = v0[8];
    sub_2490A4744(0, &qword_27EED7610, 0x277CBC5A0);
    v6 = sub_2490AF22C();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = v5;

    v4.super.isa = sub_24910D0EC();
  }

  v10 = v0[14];
  v11 = v0[11];
  isa = v4.super.isa;
  DTSyncedObject.populateRecord(_:)(v4);
  sub_2490A4414(v10, type metadata accessor for DTSyncedTimer);
  v14 = v0[17];
  v13 = v0[18];
  v16 = v0[13];
  v15 = v0[14];

  v17 = v0[1];

  return v17(isa);
}

uint64_t sub_249097D3C()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_24910CB1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
  v3 = sub_24910C99C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24910E880;
  *(v7 + v6) = v2;
  (*(v4 + 104))(v7 + v6, *MEMORY[0x277CBBC68], v3);
  v8 = v2;
  sub_24910CB0C();

  v10 = v0[17];
  v9 = v0[18];
  v12 = v0[13];
  v11 = v0[14];

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_249097EB4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v7 = a2(0);
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v38 - v9;
  v10 = sub_24910C99C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v38 = v5;
    v54 = MEMORY[0x277D84F90];
    sub_2490A2A0C(0, v15, 0);
    v17 = -1 << *(a1 + 32);
    v52 = a1 + 64;
    v53 = v54;
    result = sub_24910D15C();
    v18 = result;
    v19 = 0;
    v43 = (v11 + 104);
    v44 = v11;
    v42 = *MEMORY[0x277CBBC68];
    v40 = v15;
    v41 = v11 + 32;
    v39 = a1 + 72;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
    {
      v22 = v18 >> 6;
      if ((*(v52 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_22;
      }

      v23 = *(a1 + 36);
      v50 = v19;
      v51 = v23;
      v24 = v45;
      v25 = sub_2490A3010(*(a1 + 56) + *(v46 + 72) * v18, v45, v47);
      *v14 = v48(v25);
      (*v43)(v14, v42, v10);
      sub_2490A4414(v24, v49);
      v26 = v53;
      v54 = v53;
      v27 = v14;
      v29 = *(v53 + 16);
      v28 = *(v53 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2490A2A0C(v28 > 1, v29 + 1, 1);
        v26 = v54;
      }

      *(v26 + 16) = v29 + 1;
      v30 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v53 = v26;
      result = (*(v44 + 32))(v26 + v30 + *(v44 + 72) * v29, v27, v10);
      v20 = 1 << *(a1 + 32);
      if (v18 >= v20)
      {
        goto LABEL_23;
      }

      v31 = *(v52 + 8 * v22);
      if ((v31 & (1 << v18)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v14 = v27;
      v32 = v31 & (-2 << (v18 & 0x3F));
      if (v32)
      {
        v20 = __clz(__rbit64(v32)) | v18 & 0x7FFFFFFFFFFFFFC0;
        v21 = v40;
      }

      else
      {
        v33 = v22 << 6;
        v34 = v22 + 1;
        v21 = v40;
        v35 = (v39 + 8 * v22);
        while (v34 < (v20 + 63) >> 6)
        {
          v37 = *v35++;
          v36 = v37;
          v33 += 64;
          ++v34;
          if (v37)
          {
            result = sub_2490A4474(v18, v51, 0);
            v20 = __clz(__rbit64(v36)) + v33;
            goto LABEL_4;
          }
        }

        result = sub_2490A4474(v18, v51, 0);
      }

LABEL_4:
      v19 = v50 + 1;
      v18 = v20;
      if (v50 + 1 == v21)
      {
        return v53;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_249098278(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v138 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v137 = &v135 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v146 = &v135 - v10;
  MEMORY[0x28223BE20](v9);
  v150 = &v135 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v140 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v135 - v16;
  v18 = sub_24910C2FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v136 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v143 = &v135 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v142 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v141 = &v135 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v157 = &v135 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v135 - v32;
  v34 = *(a1 + 16);
  if (v34)
  {
    v156 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
    v35 = sub_24910CEFC();
    v148 = 0;
    v36 = *(v35 - 8);
    v37 = a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v151 = (v19 + 48);
    v153 = *(v36 + 72);
    v144 = (v19 + 8);
    v145 = (v19 + 32);
    *&v38 = 136315394;
    v147 = v38;
    v149 = v17;
    v152 = v18;
    v155 = v33;
    while (1)
    {
      v48 = sub_24910CEDC();
      v50 = v49;
      v51 = MEMORY[0x24C1F1910]();
      v52 = [v51 recordName];

      v158 = sub_24910CC9C();
      v54 = v53;

      v55 = sub_2490A86B8();
      v56 = v48 == *v55 && v50 == *(v55 + 1);
      if (v56 || (sub_24910D54C() & 1) != 0)
      {

        v57 = v156;
        swift_beginAccess();
        v58 = *v57;
        if (*(v58 + 16))
        {
          v59 = sub_2490A0A3C(v158, v54);
          v60 = v155;
          if (v61)
          {
            v62 = v59;
            v63 = v34;
            v64 = *(v58 + 56);
            v65 = type metadata accessor for DTSyncedAlarm(0);
            v66 = *(v65 - 8);
            v67 = v64 + *(v66 + 72) * v62;
            v34 = v63;
            sub_2490A3010(v67, v60, type metadata accessor for DTSyncedAlarm);
            (*(v66 + 56))(v60, 0, 1, v65);
            v17 = v149;
          }

          else
          {
            v82 = type metadata accessor for DTSyncedAlarm(0);
            (*(*(v82 - 8) + 56))(v60, 1, 1, v82);
          }
        }

        else
        {
          v68 = type metadata accessor for DTSyncedAlarm(0);
          v60 = v155;
          (*(*(v68 - 8) + 56))(v155, 1, 1, v68);
        }

        swift_endAccess();
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v83 = sub_24910C89C();
        __swift_project_value_buffer(v83, qword_27EED82D8);
        sub_2490A4674(v60, v157, &qword_27EED7640, &qword_24910EB58);

        v84 = sub_24910C87C();
        v85 = sub_24910CF5C();

        if (os_log_type_enabled(v84, v85))
        {
          v154 = v34;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v159[0] = v87;
          *v86 = v147;
          *(v86 + 4) = sub_24909F930(v158, v54, v159);
          *(v86 + 12) = 2080;
          v88 = v141;
          sub_2490A4674(v157, v141, &qword_27EED7640, &qword_24910EB58);
          v89 = type metadata accessor for DTSyncedAlarm(0);
          if ((*(*(v89 - 8) + 48))(v88, 1, v89) == 1)
          {
            sub_2490A487C(v88, &qword_27EED7640, &qword_24910EB58);
            v90 = 0xE300000000000000;
            v91 = 7104878;
          }

          else
          {
            v92 = v88;
            v91 = DTSyncedAlarm.description.getter();
            v90 = v93;
            sub_2490A4414(v92, type metadata accessor for DTSyncedAlarm);
          }

          sub_2490A487C(v157, &qword_27EED7640, &qword_24910EB58);
          v94 = sub_24909F930(v91, v90, v159);

          *(v86 + 14) = v94;
          _os_log_impl(&dword_249083000, v84, v85, "Server deletion: alarm, id=%s, existing=%s", v86, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x24C1F26F0](v87, -1, -1);
          MEMORY[0x24C1F26F0](v86, -1, -1);

          v17 = v149;
          v34 = v154;
          v60 = v155;
        }

        else
        {

          sub_2490A487C(v157, &qword_27EED7640, &qword_24910EB58);
        }

        v95 = type metadata accessor for DTSyncedAlarm(0);
        if ((*(*(v95 - 8) + 48))(v60, 1, v95) != 1)
        {
          swift_beginAccess();
          v96 = v142;
          sub_2490A0C1C(v158, v54, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm, sub_2490A219C, v142);
          sub_2490A487C(v96, &qword_27EED7640, &qword_24910EB58);
          swift_endAccess();
          v148 = 1;
        }

        sub_24910C27C();

        v97 = v152;
        if ((*v151)(v17, 1, v152) == 1)
        {
          sub_2490A487C(v60, &qword_27EED7640, &qword_24910EB58);
          v45 = v17;
          v46 = &qword_27EED7900;
          v47 = &qword_24910EB50;
        }

        else
        {
          v39 = v143;
          (*v145)(v143, v17, v97);
          v40 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
          v41 = objc_allocWithZone(MEMORY[0x277D296D0]);
          v42 = sub_24910C2AC();
          v43 = [v41 initWithIdentifier_];

          v44 = [v40 removeAlarm_];
          (*v144)(v39, v97);
          v45 = v60;
          v46 = &qword_27EED7640;
          v47 = &qword_24910EB58;
        }
      }

      else
      {
        v69 = sub_2490AF22C();
        v70 = v146;
        if ((v48 != *v69 || v50 != *(v69 + 1)) && (sub_24910D54C() & 1) == 0)
        {
          if (qword_27EED82D0 != -1)
          {
            swift_once();
          }

          v99 = sub_24910C89C();
          __swift_project_value_buffer(v99, qword_27EED82D8);

          v100 = sub_24910C87C();
          v101 = sub_24910CF5C();

          if (os_log_type_enabled(v100, v101))
          {
            v102 = swift_slowAlloc();
            v103 = v34;
            v104 = swift_slowAlloc();
            v159[0] = v104;
            *v102 = v147;
            v105 = sub_24909F930(v48, v50, v159);

            *(v102 + 4) = v105;
            *(v102 + 12) = 2080;
            v106 = sub_24909F930(v158, v54, v159);

            *(v102 + 14) = v106;
            _os_log_impl(&dword_249083000, v100, v101, "Server deletion: unsupported, type=%s, id=%s", v102, 0x16u);
            swift_arrayDestroy();
            v107 = v104;
            v34 = v103;
            MEMORY[0x24C1F26F0](v107, -1, -1);
            v108 = v102;
            v17 = v149;
            MEMORY[0x24C1F26F0](v108, -1, -1);
          }

          else
          {
          }

          goto LABEL_5;
        }

        v71 = v156;
        swift_beginAccess();
        v72 = v71[1];
        if (*(v72 + 16))
        {
          v73 = sub_2490A0A3C(v158, v54);
          if (v74)
          {
            v75 = v73;
            v76 = v34;
            v77 = *(v72 + 56);
            v78 = type metadata accessor for DTSyncedTimer(0);
            v79 = *(v78 - 8);
            v80 = v77 + *(v79 + 72) * v75;
            v34 = v76;
            v81 = v150;
            sub_2490A3010(v80, v150, type metadata accessor for DTSyncedTimer);
            (*(v79 + 56))(v81, 0, 1, v78);
            v17 = v149;
          }

          else
          {
            v109 = type metadata accessor for DTSyncedTimer(0);
            (*(*(v109 - 8) + 56))(v150, 1, 1, v109);
          }

          v70 = v146;
        }

        else
        {
          v98 = type metadata accessor for DTSyncedTimer(0);
          (*(*(v98 - 8) + 56))(v150, 1, 1, v98);
        }

        v154 = v34;
        swift_endAccess();
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v110 = sub_24910C89C();
        __swift_project_value_buffer(v110, qword_27EED82D8);
        sub_2490A4674(v150, v70, &qword_27EED7638, &qword_24910EB48);

        v111 = sub_24910C87C();
        v112 = sub_24910CF5C();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          v159[0] = v139;
          *v113 = v147;
          *(v113 + 4) = sub_24909F930(v158, v54, v159);
          *(v113 + 12) = 2080;
          v114 = v137;
          sub_2490A4674(v70, v137, &qword_27EED7638, &qword_24910EB48);
          v115 = type metadata accessor for DTSyncedTimer(0);
          if ((*(*(v115 - 8) + 48))(v114, 1, v115) == 1)
          {
            sub_2490A487C(v114, &qword_27EED7638, &qword_24910EB48);
            v116 = 0xE300000000000000;
            v117 = 7104878;
          }

          else
          {
            v118 = v114;
            v117 = DTSyncedTimer.description.getter();
            v116 = v119;
            v120 = v118;
            v17 = v149;
            sub_2490A4414(v120, type metadata accessor for DTSyncedTimer);
          }

          sub_2490A487C(v146, &qword_27EED7638, &qword_24910EB48);
          v121 = sub_24909F930(v117, v116, v159);

          *(v113 + 14) = v121;
          _os_log_impl(&dword_249083000, v111, v112, "Server deletion: timer, id=%s, existing=%s", v113, 0x16u);
          v122 = v139;
          swift_arrayDestroy();
          MEMORY[0x24C1F26F0](v122, -1, -1);
          MEMORY[0x24C1F26F0](v113, -1, -1);
        }

        else
        {

          sub_2490A487C(v70, &qword_27EED7638, &qword_24910EB48);
        }

        v123 = type metadata accessor for DTSyncedTimer(0);
        v124 = (*(*(v123 - 8) + 48))(v150, 1, v123);
        v34 = v154;
        if (v124 != 1)
        {
          swift_beginAccess();
          v125 = v138;
          sub_2490A0C1C(v158, v54, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer, sub_2490A23F4, v138);
          sub_2490A487C(v125, &qword_27EED7638, &qword_24910EB48);
          swift_endAccess();
          v148 = 1;
        }

        v126 = v140;
        sub_24910C27C();

        v127 = v152;
        if ((*v151)(v126, 1, v152) == 1)
        {
          sub_2490A487C(v150, &qword_27EED7638, &qword_24910EB48);
          v45 = v126;
          v46 = &qword_27EED7900;
          v47 = &qword_24910EB50;
        }

        else
        {
          v128 = v136;
          (*v145)(v136, v126, v127);
          v129 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
          v130 = objc_allocWithZone(MEMORY[0x277D29730]);
          v131 = sub_24910C2AC();
          v132 = [v130 initWithIdentifier_];

          v133 = [v129 removeTimer_];
          (*v144)(v128, v127);
          v45 = v150;
          v46 = &qword_27EED7638;
          v47 = &qword_24910EB48;
        }
      }

      sub_2490A487C(v45, v46, v47);
LABEL_5:
      v37 += v153;
      if (!--v34)
      {
        return v148 & 1;
      }
    }
  }

  v148 = 0;
  return v148 & 1;
}

uint64_t sub_249099438(uint64_t a1, uint64_t a2, CKRecord a3)
{
  v7 = sub_24910C26C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DTSyncedAlarm(0);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v74 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v67 - v23;
  MEMORY[0x28223BE20](v22);
  v80 = &v67 - v25;
  v26 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v76 = v3;
  v73 = v26;
  v27 = *(v3 + v26);
  v28 = *(v27 + 16);
  v79 = a2;
  if (v28 && (v29 = sub_2490A0A3C(a1, a2), (v30 & 1) != 0))
  {
    v31 = v80;
    sub_2490A3010(*(v27 + 56) + v12[9] * v29, v80, type metadata accessor for DTSyncedAlarm);
    v32 = 0;
  }

  else
  {
    v32 = 1;
    v31 = v80;
  }

  v71 = v12[7];
  v72 = v12 + 7;
  v71(v31, v32, 1, v11);
  swift_endAccess();
  sub_2490A4674(v31, v24, &qword_27EED7640, &qword_24910EB58);
  v33 = v12[6];
  v34 = v33(v24, 1, v11);
  v77 = a1;
  if (v34 == 1)
  {
    isa = a3.super.isa;
    v35 = a1;
    v36 = v79;

    v37 = default argument 1 of DTSyncedAlarm.init(id:hour:minute:modificationDate:)();
    v38 = v11;
    v39 = default argument 2 of DTSyncedAlarm.init(id:hour:minute:modificationDate:)();
    default argument 3 of DTSyncedAlarm.init(id:hour:minute:modificationDate:)();
    v40 = v35;
    a3.super.isa = isa;
    v41 = v39;
    v11 = v38;
    v31 = v80;
    DTSyncedAlarm.init(id:hour:minute:modificationDate:)(v40, v36, v37, v41, v10, v17);
    if (v33(v24, 1, v38) != 1)
    {
      sub_2490A487C(v24, &qword_27EED7640, &qword_24910EB58);
    }
  }

  else
  {
    sub_2490A43AC(v24, v17, type metadata accessor for DTSyncedAlarm);
  }

  LODWORD(isa) = DTSyncedAlarm.mergeFromServerRecord(_:)(a3);
  if (isa)
  {
    v70 = v17;
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v68 = v33;
    v42 = sub_24910C89C();
    v69 = __swift_project_value_buffer(v42, qword_27EED82D8);
    v43 = sub_24910C87C();
    v44 = sub_24910CF5C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = a3.super.isa;
      v47 = v11;
      v48 = swift_slowAlloc();
      v81[0] = v48;
      *v45 = 136315138;
      v17 = v70;
      swift_beginAccess();
      sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
      v49 = sub_24910D50C();
      v51 = sub_24909F930(v49, v50, v81);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_249083000, v43, v44, "Server modification: alarm newer, %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      v52 = v48;
      v11 = v47;
      a3.super.isa = v46;
      MEMORY[0x24C1F26F0](v52, -1, -1);
      MEMORY[0x24C1F26F0](v45, -1, -1);
    }

    else
    {

      v17 = v70;
    }

    v59 = v77;
    swift_beginAccess();
    sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm);
    DTSyncedObject.setLastKnownRecordIfNewer(_:)(a3);
    swift_endAccess();
    v60 = v74;
    sub_2490A3010(v17, v74, type metadata accessor for DTSyncedAlarm);
    v71(v60, 0, 1, v11);
    swift_beginAccess();
    v61 = v79;

    sub_249092C1C(v60, v59, v61);
    swift_endAccess();
    v62 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
    sub_2490A4744(0, &qword_27EED7658, 0x277D296F0);
    v63 = v75;
    sub_2490A3010(v17, v75, type metadata accessor for DTSyncedAlarm);
    v64 = MTMutableAlarm.init(_:)(v63);
    if (v68(v80, 1, v11) == 1)
    {
      v65 = [v62 addAlarm_];
    }

    else
    {
      v65 = [v62 updateAlarm_];
    }

    v31 = v80;
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v53 = sub_24910C89C();
    __swift_project_value_buffer(v53, qword_27EED82D8);
    v54 = v79;

    v55 = sub_24910C87C();
    v56 = sub_24910CF5C();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v81[0] = v58;
      *v57 = 136315138;
      *(v57 + 4) = sub_24909F930(v77, v54, v81);
      _os_log_impl(&dword_249083000, v55, v56, "Server modification: alarm older, id=%s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x24C1F26F0](v58, -1, -1);
      MEMORY[0x24C1F26F0](v57, -1, -1);
    }
  }

  sub_2490A487C(v31, &qword_27EED7640, &qword_24910EB58);
  sub_2490A4414(v17, type metadata accessor for DTSyncedAlarm);
  return isa & 1;
}

uint64_t sub_249099DC8(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v76.super.isa = a3;
  v6 = sub_24910C26C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DTSyncedTimer(0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v75 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v74 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v65 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v65 - v24;
  v26 = v3 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v72 = v26;
  v27 = *(v26 + 8);
  v73 = v26 + 8;
  if (*(v27 + 16) && (v28 = sub_2490A0A3C(a1, a2), (v29 & 1) != 0))
  {
    sub_2490A3010(*(v27 + 56) + v11[9] * v28, v25, type metadata accessor for DTSyncedTimer);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v71 = v11[7];
  v71(v25, v30, 1, v10);
  swift_endAccess();
  sub_2490A4674(v25, v23, &qword_27EED7638, &qword_24910EB48);
  v33 = v11[6];
  v32 = v11 + 6;
  v31 = v33;
  v34 = v33(v23, 1, v10);
  v70 = v33;
  if (v34 == 1)
  {

    v35 = default argument 1 of DTSyncedTimer.init(id:duration:modificationDate:)();
    default argument 2 of DTSyncedTimer.init(id:duration:modificationDate:)();
    DTSyncedTimer.init(id:duration:modificationDate:)(a1, a2, v9, v16, v35);
    if (v31(v23, 1, v10) != 1)
    {
      sub_2490A487C(v23, &qword_27EED7638, &qword_24910EB48);
    }
  }

  else
  {
    sub_2490A43AC(v23, v16, type metadata accessor for DTSyncedTimer);
  }

  LODWORD(v36) = DTSyncedTimer.mergeFromServerRecord(_:)(v76);
  if (v36)
  {
    v69 = v32;
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v37 = sub_24910C89C();
    v67 = __swift_project_value_buffer(v37, qword_27EED82D8);
    v38 = sub_24910C87C();
    v39 = sub_24910CF5C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v68 = v36;
      v41 = v40;
      v65 = v40;
      v66 = swift_slowAlloc();
      v77[0] = v66;
      *v41 = 136315138;
      swift_beginAccess();
      sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
      v42 = sub_24910D50C();
      v36 = v10;
      v44 = a1;
      v45 = a2;
      v46 = v25;
      v47 = v16;
      v48 = sub_24909F930(v42, v43, v77);

      v49 = v65;
      *(v65 + 4) = v48;
      v16 = v47;
      v25 = v46;
      a2 = v45;
      a1 = v44;
      v10 = v36;
      _os_log_impl(&dword_249083000, v38, v39, "Server modification: timer newer, %s", v49, 0xCu);
      v50 = v66;
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x24C1F26F0](v50, -1, -1);
      LOBYTE(v36) = v68;
      MEMORY[0x24C1F26F0](v49, -1, -1);
    }

    swift_beginAccess();
    sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer);
    DTSyncedObject.setLastKnownRecordIfNewer(_:)(v76);
    swift_endAccess();
    v51 = v74;
    sub_2490A3010(v16, v74, type metadata accessor for DTSyncedTimer);
    v71(v51, 0, 1, v10);
    swift_beginAccess();

    sub_249092E30(v51, a1, a2);
    swift_endAccess();
    v76.super.isa = [objc_allocWithZone(MEMORY[0x277D29740]) init];
    sub_2490A4744(0, &qword_27EED7660, 0x277D29700);
    v52 = v75;
    sub_2490A3010(v16, v75, type metadata accessor for DTSyncedTimer);
    v60 = MTMutableTimer.init(_:)(v52);
    v61 = v70(v25, 1, v10);
    isa = v76.super.isa;
    if (v61 == 1)
    {
      v63 = [(objc_class *)v76.super.isa addTimer:v60];
    }

    else
    {
      v63 = [(objc_class *)v76.super.isa updateTimer:v60];
    }
  }

  else
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v53 = sub_24910C89C();
    __swift_project_value_buffer(v53, qword_27EED82D8);

    v54 = sub_24910C87C();
    v55 = sub_24910CF5C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v58 = a2;
      v59 = v57;
      v77[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_24909F930(a1, v58, v77);
      _os_log_impl(&dword_249083000, v54, v55, "Server modification: timer older, id=%s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x24C1F26F0](v59, -1, -1);
      MEMORY[0x24C1F26F0](v56, -1, -1);
    }
  }

  sub_2490A487C(v25, &qword_27EED7638, &qword_24910EB48);
  sub_2490A4414(v16, type metadata accessor for DTSyncedTimer);
  return v36 & 1;
}

uint64_t sub_24909A748(unint64_t a1)
{
  v3 = type metadata accessor for DTSyncedTimer(0);
  v97[0] = *(v3 - 8);
  v97[1] = v3;
  v4 = *(v97[0] + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v99 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = v97 - v7;
  v8 = type metadata accessor for DTSyncedAlarm(0);
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = *(v100 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v105 = v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = v97 - v13;
  if (a1 >> 62)
  {
LABEL_65:
    v14 = sub_24910D19C();
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_66:
    v102 = 0;
    return v102 & 1;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_66;
  }

LABEL_3:
  v15 = 0;
  v102 = 0;
  v110 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
  v109 = a1 & 0xC000000000000001;
  v103 = a1 & 0xFFFFFFFFFFFFFF8;
  *&v12 = 136315394;
  v106 = v12;
  v107 = a1;
  v108 = v14;
  while (1)
  {
    if (v109)
    {
      v16 = MEMORY[0x24C1F1C90](v15, a1);
    }

    else
    {
      if (v15 >= *(v103 + 16))
      {
        goto LABEL_61;
      }

      v16 = *(a1 + 8 * v15 + 32);
    }

    v17 = v16;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v111 = v15 + 1;
    v18 = sub_24910D0FC();
    v20 = v19;
    v21 = [v17 recordID];
    v22 = [v21 recordName];

    v23 = sub_24910CC9C();
    v25 = v24;

    v26 = sub_2490A86B8();
    if ((v18 != *v26 || v20 != *(v26 + 1)) && (sub_24910D54C() & 1) == 0)
    {
      break;
    }

    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v27 = sub_24910C89C();
    __swift_project_value_buffer(v27, qword_27EED82D8);

    v28 = sub_24910C87C();
    v29 = sub_24910CF5C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v113[0] = v31;
      *v30 = v106;
      v32 = sub_24909F930(v18, v20, v113);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_24909F930(v23, v25, v113);
      _os_log_impl(&dword_249083000, v28, v29, "Server saved: type=%s, id=%s", v30, 0x16u);
      swift_arrayDestroy();
      v33 = v31;
      a1 = v107;
      MEMORY[0x24C1F26F0](v33, -1, -1);
      v34 = v30;
      v14 = v108;
      MEMORY[0x24C1F26F0](v34, -1, -1);
    }

    else
    {
    }

    v35 = v110;
    swift_beginAccess();
    v1 = *v35;
    if (*(*v35 + 16))
    {
      v36 = sub_2490A0A3C(v23, v25);
      if (v37)
      {
        a1 = *(v100 + 72);
        v38 = *(v1 + 56) + a1 * v36;
        v39 = v104;
        sub_2490A3010(v38, v104, type metadata accessor for DTSyncedAlarm);
        swift_endAccess();
        sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm);
        DTSyncedObject.setLastKnownRecordIfNewer(_:)(v17);
        v40 = v110;
        swift_beginAccess();
        sub_2490A3010(v39, v105, type metadata accessor for DTSyncedAlarm);
        v41 = *v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v112 = *v40;
        v1 = v112;
        *v40 = 0x8000000000000000;
        v43 = sub_2490A0A3C(v23, v25);
        v45 = *(v1 + 16);
        v46 = (v44 & 1) == 0;
        v47 = __OFADD__(v45, v46);
        v48 = v45 + v46;
        if (v47)
        {
          goto LABEL_62;
        }

        v49 = v44;
        if (*(v1 + 24) >= v48)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v1 = &v112;
            v84 = v43;
            sub_2490A219C();
            v43 = v84;
            v14 = v108;
            if (v49)
            {
              goto LABEL_34;
            }

            goto LABEL_52;
          }
        }

        else
        {
          sub_2490A0DA0(v48, isUniquelyReferenced_nonNull_native);
          v1 = v112;
          v43 = sub_2490A0A3C(v23, v25);
          if ((v49 & 1) != (v50 & 1))
          {
            goto LABEL_69;
          }
        }

        v14 = v108;
        if (v49)
        {
LABEL_34:
          v1 = v43;

          v60 = v112;
          sub_2490A4480(v105, v112[7].isa + v1 * a1, type metadata accessor for DTSyncedAlarm);
LABEL_54:
          v88 = *v110;
          *v110 = v60;

          swift_endAccess();

          v89 = type metadata accessor for DTSyncedAlarm;
          v90 = v104;
          goto LABEL_55;
        }

LABEL_52:
        v60 = v112;
        v112[(v43 >> 6) + 8].isa = (v112[(v43 >> 6) + 8].isa | (1 << v43));
        v85 = (v60[6].isa + 16 * v43);
        *v85 = v23;
        v85[1] = v25;
        sub_2490A43AC(v105, v60[7].isa + v43 * a1, type metadata accessor for DTSyncedAlarm);
        isa = v60[2].isa;
        v47 = __OFADD__(isa, 1);
        v87 = (isa + 1);
        if (v47)
        {
          goto LABEL_63;
        }

        v60[2].isa = v87;
        goto LABEL_54;
      }
    }

LABEL_4:
    swift_endAccess();

LABEL_5:
    ++v15;
    if (v111 == v14)
    {
      return v102 & 1;
    }
  }

  v51 = sub_2490AF22C();
  if ((v18 != *v51 || v20 != *(v51 + 1)) && (sub_24910D54C() & 1) == 0)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v76 = sub_24910C89C();
    __swift_project_value_buffer(v76, qword_27EED82D8);

    v1 = sub_24910C87C();
    v77 = sub_24910CF5C();

    if (os_log_type_enabled(v1, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v113[0] = v79;
      *v78 = v106;
      v80 = sub_24909F930(v18, v20, v113);

      *(v78 + 4) = v80;
      *(v78 + 12) = 2080;
      v81 = sub_24909F930(v23, v25, v113);

      *(v78 + 14) = v81;
      _os_log_impl(&dword_249083000, v1, v77, "Server saved: unsupported, type=%s, id=%s", v78, 0x16u);
      swift_arrayDestroy();
      v82 = v79;
      a1 = v107;
      MEMORY[0x24C1F26F0](v82, -1, -1);
      MEMORY[0x24C1F26F0](v78, -1, -1);
    }

    else
    {
    }

    v14 = v108;
    goto LABEL_5;
  }

  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v52 = sub_24910C89C();
  __swift_project_value_buffer(v52, qword_27EED82D8);

  v53 = sub_24910C87C();
  v54 = sub_24910CF5C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v113[0] = v56;
    *v55 = v106;
    v57 = sub_24909F930(v18, v20, v113);

    *(v55 + 4) = v57;
    *(v55 + 12) = 2080;
    *(v55 + 14) = sub_24909F930(v23, v25, v113);
    _os_log_impl(&dword_249083000, v53, v54, "Server saved: type=%s, id=%s", v55, 0x16u);
    swift_arrayDestroy();
    v58 = v56;
    a1 = v107;
    MEMORY[0x24C1F26F0](v58, -1, -1);
    v59 = v55;
    v14 = v108;
    MEMORY[0x24C1F26F0](v59, -1, -1);
  }

  else
  {
  }

  v61 = v110;
  swift_beginAccess();
  v1 = v61[1];
  if (!*(v1 + 16))
  {
    goto LABEL_4;
  }

  v62 = sub_2490A0A3C(v23, v25);
  if ((v63 & 1) == 0)
  {
    goto LABEL_4;
  }

  a1 = *(v97[0] + 72);
  v64 = *(v1 + 56) + a1 * v62;
  v65 = v98;
  sub_2490A3010(v64, v98, type metadata accessor for DTSyncedTimer);
  swift_endAccess();
  sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer);
  DTSyncedObject.setLastKnownRecordIfNewer(_:)(v17);
  v66 = v110;
  swift_beginAccess();
  sub_2490A3010(v65, v99, type metadata accessor for DTSyncedTimer);
  v67 = v66[1];
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v66[1];
  v1 = v112;
  v66[1] = 0x8000000000000000;
  v69 = sub_2490A0A3C(v23, v25);
  v71 = *(v1 + 16);
  v72 = (v70 & 1) == 0;
  v47 = __OFADD__(v71, v72);
  v73 = v71 + v72;
  if (v47)
  {
    goto LABEL_64;
  }

  v74 = v70;
  if (*(v1 + 24) >= v73)
  {
    if (v68)
    {
      goto LABEL_49;
    }

    v1 = &v112;
    v91 = v69;
    sub_2490A23F4();
    v69 = v91;
    v14 = v108;
    if ((v74 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_50:
    v1 = v69;

    v83 = v112;
    sub_2490A4480(v99, v112[7].isa + v1 * a1, type metadata accessor for DTSyncedTimer);
LABEL_59:
    v95 = v110[1];
    v110[1] = v83;

    swift_endAccess();

    v89 = type metadata accessor for DTSyncedTimer;
    v90 = v98;
LABEL_55:
    sub_2490A4414(v90, v89);
    v102 = 1;
    a1 = v107;
    goto LABEL_5;
  }

  sub_2490A1118(v73, v68);
  v1 = v112;
  v69 = sub_2490A0A3C(v23, v25);
  if ((v74 & 1) != (v75 & 1))
  {
    goto LABEL_69;
  }

LABEL_49:
  v14 = v108;
  if (v74)
  {
    goto LABEL_50;
  }

LABEL_57:
  v83 = v112;
  v112[(v69 >> 6) + 8].isa = (v112[(v69 >> 6) + 8].isa | (1 << v69));
  v92 = (v83[6].isa + 16 * v69);
  *v92 = v23;
  v92[1] = v25;
  sub_2490A43AC(v99, v83[7].isa + v69 * a1, type metadata accessor for DTSyncedTimer);
  v93 = v83[2].isa;
  v47 = __OFADD__(v93, 1);
  v94 = (v93 + 1);
  if (!v47)
  {
    v83[2].isa = v94;
    goto LABEL_59;
  }

  __break(1u);
LABEL_69:
  result = sub_24910D57C();
  __break(1u);
  return result;
}

uint64_t sub_24909B378(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v136 - v5;
  v150 = type metadata accessor for DTSyncedTimer(0);
  v145 = *(v150 - 8);
  v7 = *(v145 + 64);
  v8 = MEMORY[0x28223BE20](v150);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v154 = &v136 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v136 - v17;
  v19 = sub_24910C2FC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v137 = &v136 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v138 = &v136 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v136 - v27;
  v155 = type metadata accessor for DTSyncedAlarm(0);
  v151 = *(v155 - 8);
  v29 = *(v151 + 64);
  v30 = MEMORY[0x28223BE20](v155);
  v149 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v136 - v33;
  v162 = a1;
  if (a1 >> 62)
  {
    result = sub_24910D19C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_48:
    LOBYTE(v36) = 0;
    return v36 & 1;
  }

  result = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_48;
  }

LABEL_3:
  v159 = result;
  if (result >= 1)
  {
    v147 = v28;
    v158 = v19;
    v148 = v18;
    v140 = v16;
    v141 = v10;
    v142 = v6;
    v36 = 0;
    v37 = 0;
    v38 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
    v160 = v162 & 0xC000000000000001;
    v146 = (v151 + 56);
    v157 = (v20 + 48);
    v144 = (v20 + 32);
    v143 = (v20 + 8);
    v139 = (v145 + 56);
    *&v32 = 136315138;
    v156 = v32;
    v152 = v34;
    v39 = v159;
    v163 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
    while (1)
    {
      if (v160)
      {
        v49 = MEMORY[0x24C1F1C90](v37, v162);
      }

      else
      {
        v49 = *(v162 + 8 * v37 + 32);
      }

      v50 = v49;
      v51 = [v49 recordName];
      v52 = sub_24910CC9C();
      v54 = v53;

      swift_beginAccess();
      v55 = *v38;
      if (*(*v38 + 16) && (v56 = sub_2490A0A3C(v52, v54), (v57 & 1) != 0))
      {
        v58 = *(v55 + 56);
        v153 = *(v151 + 72);
        sub_2490A3010(v58 + v153 * v56, v34, type metadata accessor for DTSyncedAlarm);
        swift_endAccess();
        v59 = v149;
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v161 = v50;
        v60 = sub_24910C89C();
        __swift_project_value_buffer(v60, qword_27EED82D8);
        sub_2490A3010(v34, v59, type metadata accessor for DTSyncedAlarm);
        v61 = sub_24910C87C();
        v62 = sub_24910CF5C();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = v59;
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v165[0] = v65;
          *v64 = v156;
          sub_2490A2FC8(&unk_27EED7950, type metadata accessor for DTSyncedAlarm);
          v66 = sub_24910D50C();
          v68 = v67;
          v69 = v63;
          v34 = v152;
          sub_2490A4414(v69, type metadata accessor for DTSyncedAlarm);
          v70 = sub_24909F930(v66, v68, v165);

          *(v64 + 4) = v70;
          _os_log_impl(&dword_249083000, v61, v62, "Server deletion extant: alarm=%s", v64, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x24C1F26F0](v65, -1, -1);
          MEMORY[0x24C1F26F0](v64, -1, -1);
        }

        else
        {

          sub_2490A4414(v59, type metadata accessor for DTSyncedAlarm);
        }

        v98 = v148;
        v99 = v158;
        v100 = v147;
        v101 = v163;
        swift_beginAccess();
        v102 = *v101;
        v103 = sub_2490A0A3C(v52, v54);
        if (v104)
        {
          v105 = v103;
          v106 = *v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v108 = *v101;
          v164 = *v101;
          *v101 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_2490A219C();
            v108 = v164;
          }

          v109 = *(*(v108 + 48) + 16 * v105 + 8);

          sub_2490A43AC(*(v108 + 56) + v105 * v153, v100, type metadata accessor for DTSyncedAlarm);
          sub_2490A17E4(v105, v108, type metadata accessor for DTSyncedAlarm);
          v110 = 0;
          *v101 = v108;
        }

        else
        {
          v110 = 1;
        }

        (*v146)(v100, v110, 1, v155);
        sub_2490A487C(v100, &qword_27EED7640, &qword_24910EB58);
        swift_endAccess();
        sub_24910C27C();

        v111 = (*v157)(v98, 1, v99);
        v112 = v161;
        if (v111 == 1)
        {
          sub_2490A4414(v34, type metadata accessor for DTSyncedAlarm);

          v113 = v98;
LABEL_45:
          sub_2490A487C(v113, &qword_27EED7900, &qword_24910EB50);
          goto LABEL_7;
        }

        v40 = v138;
        (*v144)(v138, v98, v99);
        v41 = [objc_allocWithZone(MEMORY[0x277D296D8]) init];
        v42 = objc_allocWithZone(MEMORY[0x277D296D0]);
        v43 = sub_24910C2AC();
        v44 = [v42 initWithIdentifier_];

        v45 = v44;
        v46 = [v41 removeAlarm_];

        (*v143)(v40, v99);
        v47 = type metadata accessor for DTSyncedAlarm;
        v48 = v34;
      }

      else
      {
        swift_endAccess();
        swift_beginAccess();
        v71 = v38[1];
        if (!*(v71 + 16) || (v72 = sub_2490A0A3C(v52, v54), (v73 & 1) == 0))
        {
          swift_endAccess();
          if (qword_27EED82D0 != -1)
          {
            swift_once();
          }

          v86 = sub_24910C89C();
          __swift_project_value_buffer(v86, qword_27EED82D8);

          v87 = sub_24910C87C();
          v88 = sub_24910CF3C();

          if (os_log_type_enabled(v87, v88))
          {
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v91 = v52;
            v92 = v36;
            v93 = v34;
            v94 = v50;
            v95 = v90;
            v165[0] = v90;
            *v89 = v156;
            v96 = sub_24909F930(v91, v54, v165);

            *(v89 + 4) = v96;
            v38 = v163;
            _os_log_impl(&dword_249083000, v87, v88, "Server deletion gone: id=%s", v89, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v95);
            MEMORY[0x24C1F26F0](v95, -1, -1);
            v97 = v89;
            v39 = v159;
            MEMORY[0x24C1F26F0](v97, -1, -1);

            v34 = v93;
            v36 = v92;
          }

          else
          {
          }

          goto LABEL_8;
        }

        v74 = *(v71 + 56);
        v153 = *(v145 + 72);
        v75 = v154;
        sub_2490A3010(v74 + v153 * v72, v154, type metadata accessor for DTSyncedTimer);
        swift_endAccess();
        if (qword_27EED82D0 != -1)
        {
          swift_once();
        }

        v161 = v50;
        v76 = sub_24910C89C();
        __swift_project_value_buffer(v76, qword_27EED82D8);
        v77 = v141;
        sub_2490A3010(v75, v141, type metadata accessor for DTSyncedTimer);
        v78 = sub_24910C87C();
        v79 = sub_24910CF5C();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v165[0] = v81;
          *v80 = v156;
          sub_2490A2FC8(&qword_27EED75C0, type metadata accessor for DTSyncedTimer);
          v82 = sub_24910D50C();
          v84 = v83;
          sub_2490A4414(v77, type metadata accessor for DTSyncedTimer);
          v85 = sub_24909F930(v82, v84, v165);

          *(v80 + 4) = v85;
          _os_log_impl(&dword_249083000, v78, v79, "Server deletion: extant, timer=%s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          MEMORY[0x24C1F26F0](v81, -1, -1);
          MEMORY[0x24C1F26F0](v80, -1, -1);
        }

        else
        {

          sub_2490A4414(v77, type metadata accessor for DTSyncedTimer);
        }

        v114 = v142;
        v115 = v140;
        v116 = v158;
        v117 = v163;
        swift_beginAccess();
        v118 = v117[1];
        v119 = sub_2490A0A3C(v52, v54);
        v34 = v152;
        if (v120)
        {
          v121 = v119;
          v122 = v117[1];
          v123 = swift_isUniquelyReferenced_nonNull_native();
          v124 = v117[1];
          v164 = v124;
          if (!v123)
          {
            sub_2490A23F4();
            v124 = v164;
          }

          v125 = *(*(v124 + 48) + 16 * v121 + 8);

          sub_2490A43AC(*(v124 + 56) + v121 * v153, v114, type metadata accessor for DTSyncedTimer);
          sub_2490A17E4(v121, v124, type metadata accessor for DTSyncedTimer);
          v126 = 0;
          v117[1] = v124;
        }

        else
        {
          v126 = 1;
        }

        (*v139)(v114, v126, 1, v150);
        sub_2490A487C(v114, &qword_27EED7638, &qword_24910EB48);
        swift_endAccess();
        sub_24910C27C();

        v127 = (*v157)(v115, 1, v116);
        v128 = v161;
        if (v127 == 1)
        {
          sub_2490A4414(v154, type metadata accessor for DTSyncedTimer);

          v113 = v115;
          goto LABEL_45;
        }

        v129 = v137;
        (*v144)(v137, v115, v116);
        v130 = [objc_allocWithZone(MEMORY[0x277D29740]) init];
        v131 = objc_allocWithZone(MEMORY[0x277D29730]);
        v132 = sub_24910C2AC();
        v133 = [v131 initWithIdentifier_];

        v134 = v133;
        v135 = [v130 removeTimer_];

        (*v143)(v129, v116);
        v47 = type metadata accessor for DTSyncedTimer;
        v48 = v154;
      }

      sub_2490A4414(v48, v47);
LABEL_7:
      v36 = 1;
      v39 = v159;
      v38 = v163;
LABEL_8:
      if (v39 == ++v37)
      {
        return v36 & 1;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24909C2CC(uint64_t a1)
{
  v3 = type metadata accessor for DTSyncedTimer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v139 = &v136 - v9;
  v143 = type metadata accessor for DTSyncedAlarm(0);
  v142 = *(v143 - 8);
  v10 = *(v142 + 64);
  v11 = MEMORY[0x28223BE20](v143);
  v141 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v140 = &v136 - v13;
  v154 = sub_24910C97C();
  v14 = *(v154 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v154);
  v153 = (&v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = sub_24910C99C();
  v17 = *(*(v163 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v163);
  v152 = (&v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v151 = (&v136 - v21);
  MEMORY[0x28223BE20](v20);
  v144 = &v136 - v23;
  v24 = *(a1 + 16);
  v159 = v1;
  if (v24)
  {
    v136 = v8;
    v137 = v4;
    v138 = v3;
    v145 = (v1 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData);
    v25 = v22;
    v26 = sub_24910CA1C();
    v160 = 0;
    v27 = *(v26 - 8);
    v28 = a1 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v157 = (v25 + 104);
    v158 = v25;
    v156 = v25 + 32;
    v29 = *(v27 + 72);
    v148 = (v14 + 104);
    v149 = v14;
    v147 = v14 + 32;
    v30 = MEMORY[0x277D84F90];
    v31 = 0x278F87000uLL;
    v155 = *MEMORY[0x277CBBC68];
    v146 = *MEMORY[0x277CBBC50];
    *&v32 = 136315394;
    v150 = v32;
    *&v32 = 136315650;
    v161 = v32;
    v162 = MEMORY[0x277D84F90];
    v164 = v29;
    while (1)
    {
      v34 = MEMORY[0x24C1F1430]();
      v168 = sub_24910D0FC();
      v169 = v34;
      v36 = v35;
      v37 = [v34 *(v31 + 2776)];
      v38 = [v37 recordName];

      v167 = sub_24910CC9C();
      v40 = v39;

      v41 = sub_24910C9FC();
      v170[0] = v41;
      type metadata accessor for CKError(0);
      sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError);
      sub_24910C0DC();
      if (v172 > 13)
      {
        if (v172 > 22)
        {
          if (v172 != 23)
          {
            if (v172 != 26)
            {
              goto LABEL_56;
            }

            if (qword_27EED82D0 != -1)
            {
              swift_once();
            }

            v42 = sub_24910C89C();
            __swift_project_value_buffer(v42, qword_27EED82D8);

            v43 = sub_24910C87C();
            v44 = sub_24910CF5C();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v166 = v30;
              v46 = v45;
              v47 = swift_slowAlloc();
              v171 = v47;
              *v46 = v150;
              *(v46 + 4) = sub_24909F930(v168, v36, &v171);
              *(v46 + 12) = 2080;
              v30 = v166;
              *(v46 + 14) = sub_24909F930(v167, v40, &v171);
              _os_log_impl(&dword_249083000, v43, v44, "Server save failed: zone not found, type=%s, id=%s", v46, 0x16u);
              swift_arrayDestroy();
              v48 = v47;
              v31 = 0x278F87000uLL;
              MEMORY[0x24C1F26F0](v48, -1, -1);
              MEMORY[0x24C1F26F0](v46, -1, -1);
            }

            v49 = [v169 *(v31 + 2776)];
            v50 = [v49 zoneID];

            v51 = [objc_allocWithZone(MEMORY[0x277CBC5E8]) initWithZoneID_];
            *v153 = v51;
            (*v148)();
            v52 = v51;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v53 = v162;
            }

            else
            {
              v53 = sub_24909F754(0, v162[2] + 1, 1, v162, &qword_27EED7630, &qword_24910EB40, MEMORY[0x277CBBC58]);
            }

            v55 = v53[2];
            v54 = v53[3];
            if (v55 >= v54 >> 1)
            {
              v53 = sub_24909F754(v54 > 1, v55 + 1, 1, v53, &qword_27EED7630, &qword_24910EB40, MEMORY[0x277CBBC58]);
            }

            v53[2] = v55 + 1;
            v56 = (*(v149 + 80) + 32) & ~*(v149 + 80);
            v162 = v53;
            (*(v149 + 32))(v53 + v56 + *(v149 + 72) * v55, v153, v154);
            v57 = [v169 *(v31 + 2776)];
            v58 = v151;
            *v151 = v57;
            (*v157)(v58, v155, v163);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_24909F754(0, v30[2] + 1, 1, v30, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
            }

            v60 = v30[2];
            v59 = v30[3];
            if (v60 >= v59 >> 1)
            {
              v30 = sub_24909F754(v59 > 1, v60 + 1, 1, v30, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
            }

            v30[2] = v60 + 1;
            (*(v158 + 32))(v30 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v60, v151, v163);
            v61 = sub_2490A86B8();
            if (v168 == *v61 && v36 == *(v61 + 1) || (sub_24910D54C() & 1) != 0)
            {

              v62 = v145;
              swift_beginAccess();
              v63 = *v62;
              if (!*(*v62 + 16))
              {
                goto LABEL_78;
              }

              v64 = sub_2490A0A3C(v167, v40);
              if ((v65 & 1) == 0)
              {
                goto LABEL_78;
              }

              v66 = v141;
              sub_2490A3010(*(v63 + 56) + *(v142 + 72) * v64, v141, type metadata accessor for DTSyncedAlarm);
              v67 = v140;
              sub_2490A43AC(v66, v140, type metadata accessor for DTSyncedAlarm);
              swift_endAccess();

              v68 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm);
              DTSyncedObject.lastKnownRecord.setter(0, v143, v68);

              v69 = type metadata accessor for DTSyncedAlarm;
              goto LABEL_35;
            }

            v120 = sub_2490AF22C();
            if (v168 == *v120 && v36 == *(v120 + 1))
            {

LABEL_75:
              v125 = v145;
              swift_beginAccess();
              v126 = v125[1];
              if (!*(v126 + 16) || (v127 = sub_2490A0A3C(v167, v40), (v128 & 1) == 0))
              {
LABEL_78:
                swift_endAccess();

                goto LABEL_4;
              }

              v129 = v136;
              sub_2490A3010(*(v126 + 56) + *(v137 + 72) * v127, v136, type metadata accessor for DTSyncedTimer);
              v67 = v139;
              sub_2490A43AC(v129, v139, type metadata accessor for DTSyncedTimer);
              swift_endAccess();

              v130 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer);
              DTSyncedObject.lastKnownRecord.setter(0, v138, v130);

              v69 = type metadata accessor for DTSyncedTimer;
LABEL_35:
              sub_2490A4414(v67, v69);
LABEL_73:
              v160 = 1;
              goto LABEL_4;
            }

            v124 = sub_24910D54C();

            if (v124)
            {
              goto LABEL_75;
            }

            goto LABEL_62;
          }
        }

        else
        {
          if (v172 == 14)
          {
            if (sub_24909D9A0(v168, v36, v167, v40, v41))
            {
              if (qword_27EED82D0 != -1)
              {
                swift_once();
              }

              v98 = sub_24910C89C();
              __swift_project_value_buffer(v98, qword_27EED82D8);

              v99 = sub_24910C87C();
              v100 = sub_24910CF5C();

              if (os_log_type_enabled(v99, v100))
              {
                v101 = swift_slowAlloc();
                v166 = v40;
                v102 = v101;
                v103 = swift_slowAlloc();
                v171 = v103;
                *v102 = v150;
                v104 = v24;
                v105 = sub_24909F930(v168, v36, &v171);

                *(v102 + 4) = v105;
                v24 = v104;
                *(v102 + 12) = 2080;
                v106 = sub_24909F930(v167, v166, &v171);

                *(v102 + 14) = v106;
                _os_log_impl(&dword_249083000, v99, v100, "Server save failed: server newer, type=%s, id=%s", v102, 0x16u);
                swift_arrayDestroy();
                v107 = v103;
                v31 = 0x278F87000;
                MEMORY[0x24C1F26F0](v107, -1, -1);
                MEMORY[0x24C1F26F0](v102, -1, -1);
              }

              else
              {
              }

              v121 = v144;
              *v121 = [v169 *(v31 + 2776)];
              (*v157)(v121, v155, v163);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v30 = sub_24909F754(0, v30[2] + 1, 1, v30, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
              }

              v123 = v30[2];
              v122 = v30[3];
              if (v123 >= v122 >> 1)
              {
                v30 = sub_24909F754(v122 > 1, v123 + 1, 1, v30, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
              }

              v30[2] = v123 + 1;
              (*(v158 + 32))(v30 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v123, v121, v163);
              goto LABEL_73;
            }

LABEL_62:

            goto LABEL_4;
          }

          if (v172 != 20)
          {
            goto LABEL_56;
          }
        }
      }

      else if (v172 > 8)
      {
        if (v172 != 9)
        {
          if (v172 == 11)
          {
            if (qword_27EED82D0 != -1)
            {
              swift_once();
            }

            v70 = sub_24910C89C();
            __swift_project_value_buffer(v70, qword_27EED82D8);

            v71 = v40;

            v72 = sub_24910C87C();
            v73 = sub_24910CF5C();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v171 = v75;
              *v74 = v150;
              *(v74 + 4) = sub_24909F930(v168, v36, &v171);
              *(v74 + 12) = 2080;
              *(v74 + 14) = sub_24909F930(v167, v40, &v171);
              _os_log_impl(&dword_249083000, v72, v73, "Server save failed: no server record, type=%s, id=%s", v74, 0x16u);
              swift_arrayDestroy();
              v76 = v75;
              v31 = 0x278F87000uLL;
              MEMORY[0x24C1F26F0](v76, -1, -1);
              v77 = v74;
              v71 = v40;
              MEMORY[0x24C1F26F0](v77, -1, -1);
            }

            v78 = [v169 *(v31 + 2776)];
            v79 = v152;
            *v152 = v78;
            (*v157)(v79, v155, v163);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_24909F754(0, v30[2] + 1, 1, v30, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
            }

            v81 = v30[2];
            v80 = v30[3];
            v82 = v158;
            if (v81 >= v80 >> 1)
            {
              v131 = sub_24909F754(v80 > 1, v81 + 1, 1, v30, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
              v82 = v158;
              v30 = v131;
            }

            v30[2] = v81 + 1;
            (*(v82 + 32))(v30 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v81, v152, v163);
            v83 = sub_24909E64C(v168, v36, v167, v71);

            v160 |= v83;
            goto LABEL_4;
          }

LABEL_56:
          v166 = v30;
          if (qword_27EED82D0 != -1)
          {
            swift_once();
          }

          v108 = sub_24910C89C();
          __swift_project_value_buffer(v108, qword_27EED82D8);

          v109 = v41;
          v110 = sub_24910C87C();
          v111 = sub_24910CF4C();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v165 = swift_slowAlloc();
            v171 = v165;
            *v112 = v161;
            v113 = sub_24909F930(v168, v36, &v171);

            *(v112 + 4) = v113;
            *(v112 + 12) = 2080;
            v114 = sub_24909F930(v167, v40, &v171);

            *(v112 + 14) = v114;
            *(v112 + 22) = 2080;
            v170[3] = v109;
            sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError);
            v115 = sub_24910D5DC();
            v117 = sub_24909F930(v115, v116, &v171);

            *(v112 + 24) = v117;
            _os_log_impl(&dword_249083000, v110, v111, "### Unknown error saving record: type=%s, id=%s, error=%s", v112, 0x20u);
            v118 = v165;
            swift_arrayDestroy();
            MEMORY[0x24C1F26F0](v118, -1, -1);
            v119 = v112;
            v31 = 0x278F87000;
            MEMORY[0x24C1F26F0](v119, -1, -1);
          }

          else
          {
          }

          v30 = v166;
          goto LABEL_4;
        }
      }

      else if ((v172 - 3) >= 2 && v172 != 6)
      {
        goto LABEL_56;
      }

      v165 = v28;
      v166 = v30;
      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v84 = sub_24910C89C();
      __swift_project_value_buffer(v84, qword_27EED82D8);

      v85 = v41;
      v86 = sub_24910C87C();
      v87 = sub_24910CF5C();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = v24;
        v90 = swift_slowAlloc();
        v170[0] = v90;
        *v88 = v161;
        v91 = sub_24909F930(v168, v36, v170);

        *(v88 + 4) = v91;
        *(v88 + 12) = 2080;
        v92 = sub_24909F930(v167, v40, v170);

        *(v88 + 14) = v92;
        *(v88 + 22) = 2080;
        v172 = v85;
        sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError);
        v93 = sub_24910D5DC();
        v95 = sub_24909F930(v93, v94, v170);

        *(v88 + 24) = v95;
        _os_log_impl(&dword_249083000, v86, v87, "Server save failed: retry-able: type=%s, id=%s, error=%s", v88, 0x20u);
        swift_arrayDestroy();
        v96 = v90;
        v24 = v89;
        v33 = v164;
        MEMORY[0x24C1F26F0](v96, -1, -1);
        v97 = v88;
        v31 = 0x278F87000;
        MEMORY[0x24C1F26F0](v97, -1, -1);

        v28 = v165;
        v30 = v166;
        goto LABEL_5;
      }

      v28 = v165;
      v30 = v166;
LABEL_4:
      v33 = v164;
LABEL_5:
      v28 += v33;
      if (!--v24)
      {
        goto LABEL_82;
      }
    }
  }

  v160 = 0;
  v30 = MEMORY[0x277D84F90];
  v162 = MEMORY[0x277D84F90];
LABEL_82:
  v132 = v159;
  if (v162[2] && *(v159 + 32))
  {
    v133 = *(v159 + 32);

    sub_24910CB1C();

    sub_24910CAEC();
  }

  if (v30[2] && *(v132 + 32))
  {
    v134 = *(v132 + 32);

    sub_24910CB1C();

    sub_24910CAFC();
  }

  return v160 & 1;
}

uint64_t sub_24909D9A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v90 = a2;
  v91 = a4;
  v89 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v86 - v10;
  v12 = type metadata accessor for DTSyncedTimer(0);
  v86 = *(v12 - 8);
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v86 - v18;
  v20 = type metadata accessor for DTSyncedAlarm(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.super.isa = sub_24910CC0C();
  if (!v88.super.isa)
  {
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v44 = sub_24910C89C();
    __swift_project_value_buffer(v44, qword_27EED82D8);
    v45 = v91;

    v46 = a5;
    v47 = sub_24910C87C();
    v48 = sub_24910CF4C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v92[0] = v50;
      *v49 = 136315394;
      *(v49 + 4) = sub_24909F930(v89, v45, v92);
      *(v49 + 12) = 2080;
      v93 = v46;
      type metadata accessor for CKError(0);
      sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError);
      v51 = sub_24910D5DC();
      v53 = sub_24909F930(v51, v52, v92);

      *(v49 + 14) = v53;
      _os_log_impl(&dword_249083000, v47, v48, "### Server save failed: no server record, id=%s, error=%s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v50, -1, -1);
      MEMORY[0x24C1F26F0](v49, -1, -1);
    }

    return 0;
  }

  v25 = sub_2490A86B8();
  v26 = *v25;
  v27 = *(v25 + 1);
  v87 = a1;
  if ((v26 != a1 || v27 != v90) && (sub_24910D54C() & 1) == 0)
  {
    v66 = sub_2490AF22C();
    v35 = v87;
    v34 = v90;
    if ((*v66 != v87 || *(v66 + 1) != v90) && (sub_24910D54C() & 1) == 0)
    {
      if (qword_27EED82D0 != -1)
      {
        swift_once();
      }

      v76 = sub_24910C89C();
      __swift_project_value_buffer(v76, qword_27EED82D8);
      v77 = v91;

      v78 = a5;

      v56 = sub_24910C87C();
      v79 = sub_24910CF5C();

      if (!os_log_type_enabled(v56, v79))
      {
        goto LABEL_25;
      }

      v80 = v34;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v92[0] = v82;
      *v81 = 136315650;
      *(v81 + 4) = sub_24909F930(v87, v80, v92);
      *(v81 + 12) = 2080;
      *(v81 + 14) = sub_24909F930(v89, v77, v92);
      *(v81 + 22) = 2080;
      v93 = v78;
      type metadata accessor for CKError(0);
      sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError);
      v83 = sub_24910D5DC();
      v85 = sub_24909F930(v83, v84, v92);

      *(v81 + 24) = v85;
      _os_log_impl(&dword_249083000, v56, v79, "Server sent fail: unsupported, type=%s, id=%s, error=%s", v81, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v82, -1, -1);
      v65 = v81;
      goto LABEL_24;
    }

    v67 = v5 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v68 = *(v67 + 8);
    if (*(v68 + 16))
    {
      v69 = sub_2490A0A3C(v89, v91);
      if (v70)
      {
        v71 = v86;
        sub_2490A3010(*(v68 + 56) + *(v86 + 72) * v69, v15, type metadata accessor for DTSyncedTimer);
        swift_endAccess();
        isa = v88.super.isa;
        if (DTSyncedTimer.mergeFromServerRecord(_:)(v88))
        {
          sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer);
          DTSyncedObject.setLastKnownRecordIfNewer(_:)(isa);
          sub_2490A3010(v15, v11, type metadata accessor for DTSyncedTimer);
          (*(v71 + 56))(v11, 0, 1, v12);
          swift_beginAccess();
          v30 = v91;

          sub_249092E30(v11, v89, v30);
          swift_endAccess();
          sub_2490A4414(v15, type metadata accessor for DTSyncedTimer);
          goto LABEL_9;
        }

        v74 = type metadata accessor for DTSyncedTimer;
        v75 = v15;
        goto LABEL_39;
      }
    }

    swift_endAccess();
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v72 = sub_24910C89C();
    __swift_project_value_buffer(v72, qword_27EED82D8);
    v73 = v91;

    v55 = a5;
    v56 = sub_24910C87C();
    v57 = sub_24910CF4C();

    if (!os_log_type_enabled(v56, v57))
    {
LABEL_25:

      return 0;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v92[0] = v59;
    *v58 = 136315394;
    v60 = v89;
    v61 = v73;
LABEL_23:
    *(v58 + 4) = sub_24909F930(v60, v61, v92);
    *(v58 + 12) = 2080;
    v93 = v55;
    type metadata accessor for CKError(0);
    sub_2490A2FC8(&qword_27EED7680, type metadata accessor for CKError);
    v62 = sub_24910D5DC();
    v64 = sub_24909F930(v62, v63, v92);

    *(v58 + 14) = v64;
    _os_log_impl(&dword_249083000, v56, v57, "### Server save failed: no local record, id=%s, error=%s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v59, -1, -1);
    v65 = v58;
LABEL_24:
    MEMORY[0x24C1F26F0](v65, -1, -1);
    goto LABEL_25;
  }

  v28 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
  swift_beginAccess();
  v29 = *(v5 + v28);
  v30 = v91;
  if (!*(v29 + 16) || (v31 = sub_2490A0A3C(v89, v91), (v32 & 1) == 0))
  {
    swift_endAccess();
    if (qword_27EED82D0 != -1)
    {
      swift_once();
    }

    v54 = sub_24910C89C();
    __swift_project_value_buffer(v54, qword_27EED82D8);

    v55 = a5;
    v56 = sub_24910C87C();
    v57 = sub_24910CF4C();

    if (!os_log_type_enabled(v56, v57))
    {
      goto LABEL_25;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v92[0] = v59;
    *v58 = 136315394;
    v60 = v89;
    v61 = v30;
    goto LABEL_23;
  }

  sub_2490A3010(*(v29 + 56) + *(v21 + 72) * v31, v24, type metadata accessor for DTSyncedAlarm);
  swift_endAccess();
  isa = v88.super.isa;
  if (!DTSyncedAlarm.mergeFromServerRecord(_:)(v88))
  {
    v74 = type metadata accessor for DTSyncedAlarm;
    v75 = v24;
LABEL_39:
    sub_2490A4414(v75, v74);

    return 0;
  }

  sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm);
  DTSyncedObject.setLastKnownRecordIfNewer(_:)(isa);
  sub_2490A3010(v24, v19, type metadata accessor for DTSyncedAlarm);
  (*(v21 + 56))(v19, 0, 1, v20);
  swift_beginAccess();

  sub_249092C1C(v19, v89, v30);
  swift_endAccess();
  sub_2490A4414(v24, type metadata accessor for DTSyncedAlarm);
  v34 = v90;
  v35 = v87;
LABEL_9:
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v36 = sub_24910C89C();
  __swift_project_value_buffer(v36, qword_27EED82D8);

  v37 = sub_24910C87C();
  v38 = sub_24910CF5C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v34;
    v42 = v40;
    v92[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_24909F930(v35, v41, v92);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_24909F930(v89, v30, v92);
    _os_log_impl(&dword_249083000, v37, v38, "Server save failed: server newer, type=%s, id=%s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1F26F0](v42, -1, -1);
    MEMORY[0x24C1F26F0](v39, -1, -1);
  }

  return 1;
}

uint64_t sub_24909E64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v52 = a3;
  v53 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7638, &qword_24910EB48);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v49 - v10;
  v11 = type metadata accessor for DTSyncedTimer(0);
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7640, &qword_24910EB58);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v49 - v20;
  v22 = type metadata accessor for DTSyncedAlarm(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v49 - v28;
  v30 = sub_2490A86B8();
  if (*v30 == a1 && *(v30 + 1) == a2 || (sub_24910D54C() & 1) != 0)
  {
    v31 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v32 = *(v5 + v31);
    if (*(v32 + 16))
    {
      v33 = sub_2490A0A3C(v52, v53);
      if (v34)
      {
        sub_2490A3010(*(v32 + 56) + *(v23 + 72) * v33, v27, type metadata accessor for DTSyncedAlarm);
        sub_2490A43AC(v27, v29, type metadata accessor for DTSyncedAlarm);
        swift_endAccess();
        v35 = sub_2490A2FC8(&qword_27EED7618, type metadata accessor for DTSyncedAlarm);
        DTSyncedObject.lastKnownRecord.setter(0, v22, v35);
        sub_2490A3010(v29, v21, type metadata accessor for DTSyncedAlarm);
        v36 = 1;
        (*(v23 + 56))(v21, 0, 1, v22);
        swift_beginAccess();
        v37 = v53;

        sub_249092C1C(v21, v52, v37);
        swift_endAccess();
        sub_2490A4414(v29, type metadata accessor for DTSyncedAlarm);
        return v36;
      }
    }

LABEL_13:
    swift_endAccess();
    return 0;
  }

  v38 = sub_2490AF22C();
  if (*v38 == a1 && *(v38 + 1) == a2 || (v36 = 0, (sub_24910D54C() & 1) != 0))
  {
    v39 = v5 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v40 = *(v39 + 8);
    if (*(v40 + 16))
    {
      v41 = sub_2490A0A3C(v52, v53);
      if (v42)
      {
        v43 = v49;
        sub_2490A3010(*(v40 + 56) + *(v49 + 72) * v41, v15, type metadata accessor for DTSyncedTimer);
        sub_2490A43AC(v15, v17, type metadata accessor for DTSyncedTimer);
        swift_endAccess();
        v44 = sub_2490A2FC8(&qword_27EED7608, type metadata accessor for DTSyncedTimer);
        v45 = v50;
        DTSyncedObject.lastKnownRecord.setter(0, v50, v44);
        v46 = v51;
        sub_2490A3010(v17, v51, type metadata accessor for DTSyncedTimer);
        v36 = 1;
        (*(v43 + 56))(v46, 0, 1, v45);
        swift_beginAccess();
        v47 = v53;

        sub_249092E30(v46, v52, v47);
        swift_endAccess();
        sub_2490A4414(v17, type metadata accessor for DTSyncedTimer);
        return v36;
      }
    }

    goto LABEL_13;
  }

  return v36;
}

uint64_t sub_24909EBA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2490887FC;

  return (sub_2490A31BC)(a1);
}

uint64_t sub_24909EC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2490887FC;

  return DTSyncDaemon.nextRecordZoneChangeBatch(_:syncEngine:)(a1, a2, a3);
}

uint64_t sub_24909ED04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(MEMORY[0x277CBBDC8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2490887FC;

  return MEMORY[0x28210DD50](a1, a2, a3, v11, a5);
}

uint64_t sub_24909EDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(MEMORY[0x277CBBDC0] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_24909EED8;

  return MEMORY[0x28210DD48](a1, a2, v9, a4);
}

uint64_t sub_24909EED8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24909EFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = *(MEMORY[0x277CBBDD0] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_24909EED8;

  return MEMORY[0x28210DD58](a1, a2, a3, v11, a5);
}

uint64_t sub_24909F0D0(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED76D0, type metadata accessor for CKError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24909F13C(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED76D0, type metadata accessor for CKError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24909F1AC(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24909F228(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24909F294(uint64_t a1)
{
  v2 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24909F300(void *a1, uint64_t a2)
{
  v4 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24909F3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24909F430()
{
  v2 = *v0;
  sub_24910D60C();
  sub_24910CC4C();
  return sub_24910D62C();
}

void *sub_24909F490@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_24909F4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2490A2FC8(&qword_27EED7678, type metadata accessor for CKError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

char *sub_24909F544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81F0, &unk_24910EBD0);
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

char *sub_24909F648(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
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