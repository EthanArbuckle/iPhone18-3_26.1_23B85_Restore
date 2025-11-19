_BYTE *storeEnumTagSinglePayload for QOSMusicItems.QOSItemType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C5E03E98()
{
  result = qword_1EC1ABD88;
  if (!qword_1EC1ABD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD88);
  }

  return result;
}

unint64_t sub_1C5E03EF0()
{
  result = qword_1EC1ABD90;
  if (!qword_1EC1ABD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1ABD90);
  }

  return result;
}

BOOL sub_1C5E03F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1C60179F0();
  sub_1C60169F0();
  v6 = sub_1C6017A20();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1C6017860();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_1C5E04058()
{
  v0 = sub_1C60162D0();
  __swift_allocate_value_buffer(v0, qword_1EC1A8FC0);
  v1 = __swift_project_value_buffer(v0, qword_1EC1A8FC0);
  if (qword_1EC1A97A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC1BE500);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C5E04120()
{
  sub_1C6017540();

  MEMORY[0x1C69534E0](*v0, v0[1]);
  MEMORY[0x1C69534E0](0x44496D657469202CLL, 0xEA0000000000203ALL);
  if (v0[3])
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v1 = 7104878;
    v2 = 0xE300000000000000;
  }

  MEMORY[0x1C69534E0](v1, v2);

  MEMORY[0x1C69534E0](0x6D6574497661202CLL, 0xEC000000203A4449);
  if (v0[5])
  {
    v3 = v0[4];
    v4 = v0[5];
  }

  else
  {
    v3 = 7104878;
    v4 = 0xE300000000000000;
  }

  MEMORY[0x1C69534E0](v3, v4);

  return 0x496E6F6974636573;
}

uint64_t sub_1C5E04258(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C5E04278, 0, 0);
}

uint64_t sub_1C5E04278()
{
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1A8FC0);
  v3 = v1;
  v4 = sub_1C60162B0();
  v5 = sub_1C6016F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[12];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1C5C61000, v4, v5, "🕵🏻‍♂️ Opening investigation for: %{public}@", v7, 0xCu);
    sub_1C5CB5700(v8);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v10 = v0[12];
  v11 = v0[13];

  Strong = swift_unknownObjectUnownedLoadStrong();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v0[6] = sub_1C5E1017C;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C5E0550C;
  v0[5] = &block_descriptor_29;
  v14 = _Block_copy(v0 + 2);
  v15 = v10;
  v16 = v11;

  v17 = [Strong performQueryReturningObject_];
  _Block_release(v14);

  sub_1C6017390();
  swift_unknownObjectRelease();
  sub_1C5C64D74(0, &qword_1EC1ABB68);
  swift_dynamicCast();
  v18 = v0[2];
  v19 = v15;
  v20 = v18;
  v21 = sub_1C60162B0();
  v22 = sub_1C6016F30();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v0[12];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543618;
    *(v24 + 4) = v23;
    *(v24 + 12) = 2114;
    *(v24 + 14) = v20;
    *v25 = v23;
    v25[1] = v20;
    v26 = v23;
    v27 = v20;
    _os_log_impl(&dword_1C5C61000, v21, v22, "🧑‍⚖️ Verdict for: %{public}@ => %{public}@", v24, 0x16u);
    sub_1C5CC55A0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_4();
  }

  v28 = v0[1];

  return v28(v20);
}

void sub_1C5E045DC(NSObject *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  sub_1C5E04814(a2, a1);
  v5 = sub_1C5C64D74(0, &qword_1EC1ABB68);
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  sub_1C6017540();

  v6 = [a2 description];
  v7 = sub_1C6016940();
  v9 = v8;

  MEMORY[0x1C69534E0](v7, v9);

  sub_1C6016880();
  _s3__C4CodeOMa_1();
  sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
  v10 = sub_1C6017280();

  v11 = sub_1C5E1182C(555, v10);
  a3[3] = v5;
  *a3 = v11;
}

void sub_1C5E04814(void *a1, NSObject *a2)
{
  v3 = v2;
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C60162D0();
  __swift_project_value_buffer(v6, qword_1EC1A8FC0);
  v7 = a1;
  v8 = sub_1C60162B0();
  v9 = sub_1C6016F30();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v69 = v11;
    *v10 = 136446210;
    v12 = sub_1C5E20954(v7);
    v14 = v13;

    if (!v14)
    {
LABEL_49:
      __break(1u);
      return;
    }

    v15 = sub_1C5C6AB10(v12, v14, &v69);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C5C61000, v8, v9, "— 􀊫 Searching for commandBegin %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C6956920](v11, -1, -1);
    MEMORY[0x1C6956920](v10, -1, -1);

    v3 = v2;
  }

  else
  {
  }

  v16 = sub_1C5E20954(v7);
  if (!v17)
  {
    __break(1u);
    goto LABEL_49;
  }

  v18 = v16;
  v19 = v17;
  ObjectType = swift_getObjectType();
  v21 = sub_1C5CD6588(v18, v19, ObjectType);

  v22 = MEMORY[0x1E69E7CA0];
  if (!v21)
  {
LABEL_26:
    v47 = v7;
    v48 = sub_1C60162B0();
    v49 = sub_1C6016F20();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_1C5C61000, v48, v49, "—— 􀁠 Failed to find commandBegin for %@", v50, 0xCu);
      sub_1C5CB5700(v51);
      MEMORY[0x1C6956920](v51, -1, -1);
      MEMORY[0x1C6956920](v50, -1, -1);
    }

    sub_1C5E0586C(v47, a2);
    if (!v3)
    {
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      v84 = 5001;
      *&v69 = 0;
      *(&v69 + 1) = 0xE000000000000000;
      sub_1C6017540();

      *&v69 = 0xD000000000000026;
      *(&v69 + 1) = 0x80000001C60562C0;
      v53 = [v47 description];
      v54 = sub_1C6016940();
      v56 = v55;

      MEMORY[0x1C69534E0](v54, v56);

      sub_1C6016880();
      _s3__C4CodeOMa_1();
      sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
      sub_1C6017280();

      swift_willThrow();
    }

    return;
  }

  v23 = [v21 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v24 = sub_1C6016860();

  sub_1C5CFF1CC(v24, &v69);

  if (!v70)
  {

    sub_1C5E101E4(&v69, &qword_1ED7E0200, v22 + 8);
    goto LABEL_26;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_26;
  }

  v68 = v84;
  v25 = v21;
  v26 = sub_1C60162B0();
  v27 = sub_1C6016F30();
  v67 = v25;

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v3;
    v30 = swift_slowAlloc();
    *v28 = 138543362;
    *(v28 + 4) = v67;
    *v30 = v21;
    v31 = v67;
    _os_log_impl(&dword_1C5C61000, v26, v27, "—— 􀁢 Found event: %{public}@", v28, 0xCu);
    sub_1C5CB5700(v30);
    v32 = v30;
    v3 = v29;
    MEMORY[0x1C6956920](v32, -1, -1);
    MEMORY[0x1C6956920](v28, -1, -1);
  }

  v33 = [v68 integerValue];
  v34 = sub_1C60162B0();
  v35 = sub_1C6016F30();
  v36 = os_log_type_enabled(v34, v35);
  if (!v33)
  {
    if (v36)
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1C5C61000, v34, v35, "— 􀊄 Play Command", v57, 2u);
      MEMORY[0x1C6956920](v57, -1, -1);
    }

    sub_1C5C676C0(0, &qword_1EC1ABDB8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6031150;
    *(inited + 32) = xmmword_1C60445C0;
    *(inited + 48) = 121;
    v59 = sub_1C5CD63C4(inited);
    swift_setDeallocating();
    if (v59)
    {
      a2 = [a2 cursorUntilEvent:v59];
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_1C5E05E64(a2, v74);
    if (v3)
    {
      swift_unknownObjectRelease();

      return;
    }

    sub_1C5E065CC(v74, v67, a2);
    swift_unknownObjectRelease();

    v83 = v74[0];
    sub_1C5CC583C(&v83);
    v82 = v74[1];
    v65 = MEMORY[0x1E69E6158];
    sub_1C5E101E4(&v82, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
    v81 = v74[2];
    v66 = &v81;
    goto LABEL_47;
  }

  if (v33 == 122)
  {
    if (v36)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C5C61000, v34, v35, "— 􀢽 SetQueue Command", v37, 2u);
      MEMORY[0x1C6956920](v37, -1, -1);
    }

    v38 = [a2 cursorUntilEvent:v67];
    sub_1C5E05E64(v38, &v71);
    if (v3)
    {

      swift_unknownObjectRelease();
      return;
    }

    v39 = [v67 payload];
    v40 = MEMORY[0x1E69E7CA0];
    v41 = sub_1C6016860();

    sub_1C5CFF1CC(v41, &v69);

    if (v70)
    {
      if (swift_dynamicCast())
      {
        v42 = v84;
        v43 = [v84 BOOLValue];

        if (v43)
        {
          v44 = sub_1C60162B0();
          v45 = sub_1C6016F30();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_1C5C61000, v44, v45, "— 􀊄 SetQueue > Play", v46, 2u);
            MEMORY[0x1C6956920](v46, -1, -1);
          }

          sub_1C5E065CC(&v71, v67, v38);
          swift_unknownObjectRelease();

          v77 = v71;
          sub_1C5CC583C(&v77);
          v76 = v72;
          v65 = MEMORY[0x1E69E6158];
          sub_1C5E101E4(&v76, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
          v75 = v73;
          v66 = &v75;
LABEL_47:
          sub_1C5E101E4(v66, &qword_1EC1A9480, v65);
          return;
        }
      }
    }

    else
    {
      sub_1C5E101E4(&v69, &qword_1ED7E0200, v40 + 8);
    }

    v61 = sub_1C60162B0();
    v62 = sub_1C6016F30();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1C5C61000, v61, v62, "— 􀪆 SetQueue > Wait", v63, 2u);
      MEMORY[0x1C6956920](v63, -1, -1);
    }

    sub_1C5E06A28(&v71, a2);
    v64 = sub_1C5E079C0(&v71, a2);

    swift_unknownObjectRelease();
    v80 = v71;
    sub_1C5CC583C(&v80);
    v79 = v72;
    v65 = MEMORY[0x1E69E6158];
    sub_1C5E101E4(&v79, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
    v78 = v73;
    v66 = &v78;
    goto LABEL_47;
  }

  if (v36)
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1C5C61000, v34, v35, "— 􀄢 Detected Unspecialized Command", v60, 2u);
    MEMORY[0x1C6956920](v60, -1, -1);
  }
}

id sub_1C5E0550C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v5, v2);

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3 = sub_1C6017850();
  __swift_destroy_boxed_opaque_existential_0(v5);

  return v3;
}

uint64_t sub_1C5E0562C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1C5E056F0;

  return sub_1C5E04258(v6);
}

uint64_t sub_1C5E056F0(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  if (v4)
  {
    v8 = *(v3 + 32);
    (v8)[2](v8, a1);

    _Block_release(v8);
  }

  else
  {
  }

  v9 = *(v7 + 8);

  return v9();
}

void sub_1C5E0586C(void *a1, void *a2)
{
  v3 = a1;
  v4 = sub_1C5E20954(a1);
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v4;
  v7 = v5;
  ObjectType = swift_getObjectType();
  v9 = sub_1C5CD659C(v6, v7, ObjectType);

  if (v9)
  {
    [a2 cursorUntilEvent_];
    v36 = MEMORY[0x1E69E7CD0];
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C6035C00;
    *(v10 + 32) = @"remote-control-begin";
    *(v10 + 40) = @"remote-control-end";
    type metadata accessor for MPCPlaybackEngineEventType();
    v11 = @"remote-control-begin";
    v12 = @"remote-control-end";
    v13 = sub_1C6016AF0();

    v3 = swift_allocObject();
    v3[2] = &v36;
    v3[3] = &v35;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1C5E10458;
    *(v14 + 24) = v3;
    v33 = sub_1C5E1046C;
    v34 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1C5D378E4;
    v32 = &block_descriptor_45_1;
    v15 = _Block_copy(&aBlock);

    [a2 enumeratePreviousEventsWithTypes:v13 usingBlock:v15];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v17 = *(v35 + 16);
      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      if (v17)
      {
        aBlock = 0;
        v30 = 0xE000000000000000;
        sub_1C6017540();

        aBlock = 0xD00000000000001ELL;
        v30 = 0x80000001C60569E0;

        v19 = MEMORY[0x1C6953600](v18, MEMORY[0x1E69E6158]);
        v21 = v20;

        MEMORY[0x1C69534E0](v19, v21);

        sub_1C6016880();
        _s3__C4CodeOMa_1();
        sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
        sub_1C6017280();
      }

      else
      {
        aBlock = 5050;
        sub_1C6016880();
        _s3__C4CodeOMa_1();
        sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
        sub_1C6017280();
      }

      swift_willThrow();

      swift_unknownObjectRelease();

      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  if (qword_1EC1A8FB8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v22 = sub_1C60162D0();
  __swift_project_value_buffer(v22, qword_1EC1A8FC0);
  v23 = v3;
  v24 = sub_1C60162B0();
  v25 = sub_1C6016F20();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v28 = v23;
    _os_log_impl(&dword_1C5C61000, v24, v25, "—— 􀁠 Failed to find commandDelivered for %@", v26, 0xCu);
    sub_1C5CB5700(v27);
    MEMORY[0x1C6956920](v27, -1, -1);
    MEMORY[0x1C6956920](v26, -1, -1);
  }
}

void sub_1C5E05E64(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C5E090D8(a1, &v63);
  v6 = v64;
  if (v64)
  {
    v7 = v63;
    v8 = v65;
    v9 = v66;
    v10 = v67;
    v68[0] = v63;
    v68[1] = v64;
    v68[2] = v65;
    v68[3] = v66;
    v69 = v67;
    if (v66)
    {
      *a2 = v63;
      *(a2 + 8) = v6;
      *(a2 + 16) = v8;
      *(a2 + 24) = v9;
      *(a2 + 32) = v10;
      return;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *&v60[0] = 5206;
    sub_1C6017540();

    *(&v61 + 1) = 0x80000001C6056820;

    MEMORY[0x1C69534E0](v7, v6);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    v55 = v19;
    v57 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    v20 = sub_1C6017280();

    sub_1C5E09BA8(v2, v68, a1);
    v13 = v3;

    v70 = v69;
    sub_1C5E101E4(&v70, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
    sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C60311E0;
    *(v21 + 32) = v3;
    *&v61 = v20;
    v22 = v3;
    sub_1C5D4A854();
    v23 = v20;
    v24 = sub_1C6017810();
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = swift_allocError();
      *v41 = v23;
    }

    v27 = sub_1C6014D30();

    v42 = [v27 domain];
    v59 = sub_1C6016940();
    v44 = v43;

    v45 = [v27 code];
    v46 = [v27 userInfo];
    v47 = sub_1C6016860();

    v48 = sub_1C6016940();
    v50 = v49;
    sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
    v62 = v51;
    *&v61 = v21;
    sub_1C5C70758(&v61, v60);
    swift_isUniquelyReferenced_nonNull_native();
    v71 = v47;
    sub_1C5E2072C(v60, v48, v50);

    v52 = v71;
    v53 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C5E2067C(v59, v44, v45, v52);
  }

  else
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    v54 = v11;
    v56 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    v12 = sub_1C6017280();

    sub_1C5E08384(v2, a1);
    v13 = v3;
    sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C60311E0;
    *(v14 + 32) = v3;
    *&v61 = v12;
    v15 = v3;
    sub_1C5D4A854();
    v16 = v12;
    v17 = sub_1C6017810();
    v58 = v16;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = swift_allocError();
      *v26 = v16;
    }

    v27 = sub_1C6014D30();

    v28 = [v27 domain];
    v29 = sub_1C6016940();
    v31 = v30;

    v32 = [v27 code];
    v33 = [v27 userInfo];
    v34 = sub_1C6016860();

    v35 = sub_1C6016940();
    v37 = v36;
    sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
    v62 = v38;
    *&v61 = v14;
    sub_1C5C70758(&v61, v60);
    swift_isUniquelyReferenced_nonNull_native();
    v71 = v34;
    sub_1C5E2072C(v60, v35, v37);

    v39 = v71;
    v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C5E2067C(v29, v31, v32, v39);
    v23 = v58;
  }

  swift_willThrow();
}

uint64_t sub_1C5E065CC(void *a1, uint64_t a2, NSObject *a3)
{
  v6 = [a3 cursorUntilEvent:a2];
  v7 = sub_1C5E09CF0(v6);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6017540();

    MEMORY[0x1C69534E0](v9, v10);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

LABEL_3:

LABEL_4:

    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  sub_1C5E0A220(v6);
  if (v3)
  {
    return swift_unknownObjectRelease();
  }

  if (sub_1C5E0A820(a3))
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();
    goto LABEL_3;
  }

  if (!a1[3])
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6017540();

    MEMORY[0x1C69534E0](*a1, a1[1]);
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    goto LABEL_4;
  }

  sub_1C5E06A28(a1, a3);
  sub_1C5E0ABB0(a1, a3);
  return swift_unknownObjectRelease();
}

void sub_1C5E06A28(uint64_t a1, NSObject *a2)
{
  v99[0] = *(a1 + 16);
  if (*(&v99[0] + 1))
  {
    if (qword_1EC1A8FB8 != -1)
    {
      swift_once();
    }

    v100 = a2;
    v4 = sub_1C60162D0();
    __swift_project_value_buffer(v4, qword_1EC1A8FC0);
    v98 = *(a1 + 32);

    sub_1C5E102B8(v99, &aBlock);
    sub_1C5E102B8(&v98, &aBlock);
    v5 = a1;
    v6 = sub_1C60162B0();
    v7 = sub_1C6016F30();

    v8 = MEMORY[0x1E69E6158];
    sub_1C5E101E4(v99, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
    sub_1C5E101E4(&v98, &qword_1EC1A9480, v8);
    v89 = v5;
    if (os_log_type_enabled(v6, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&aBlock = v10;
      *v9 = 136315138;
      v11 = sub_1C5E04120();
      v13 = sub_1C5C6AB10(v11, v12, &aBlock);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1C5C61000, v6, v7, "— 􀊫 Searching for AssetLoad event for %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1C6956920](v10, -1, -1);
      MEMORY[0x1C6956920](v9, -1, -1);
    }

    v14 = MEMORY[0x1E69E6F90];
    sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6035C00;
    *(v15 + 32) = @"asset-load-begin";
    *(v15 + 40) = @"asset-load-end";
    type metadata accessor for MPCPlaybackEngineEventType();
    v16 = @"asset-load-begin";
    v17 = @"asset-load-end";
    v18 = sub_1C6016AF0();

    sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, v14);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6035C00;
    *(inited + 32) = @"queue-section-id";
    v20 = @"queue-section-id";
    *(inited + 40) = sub_1C6016900();
    *(inited + 48) = @"queue-item-id";
    v21 = @"queue-item-id";
    *(inited + 56) = sub_1C6016900();
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5CC547C();
    sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    sub_1C6016880();
    v22 = sub_1C6016840();

    v23 = v100;
    v24 = [v100 findPreviousEventWithTypes:v18 matchingPayload:v22];

    if (v24)
    {
      v25 = [v24 type];
      v26 = sub_1C6016940();
      v28 = v27;
      if (v26 == sub_1C6016940() && v28 == v29)
      {
      }

      else
      {
        v31 = sub_1C6017860();

        if ((v31 & 1) == 0)
        {
          v32 = sub_1C60162B0();
          v33 = sub_1C6016F30();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&dword_1C5C61000, v32, v33, "—— 􀐫 Waiting on AssetLoad", v34, 2u);
            MEMORY[0x1C6956920](v34, -1, -1);
          }

          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          *&v97[0] = 5300;
          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          sub_1C6017540();

          *&aBlock = 0xD00000000000001ALL;
          *(&aBlock + 1) = 0x80000001C60564D0;
          v35 = sub_1C5E04120();
          MEMORY[0x1C69534E0](v35);

          sub_1C6016880();
          _s3__C4CodeOMa_1();
          v86 = v36;
          v87 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
          v37 = sub_1C6017280();

          sub_1C5E0BDC0(v100, v89);
          sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1C60311E0;
          *(v38 + 32) = v88;
          *&aBlock = v37;
          v39 = v88;
          sub_1C5D4A854();
          v40 = v37;
          v41 = sub_1C6017810();
          v100 = v40;
          if (v41)
          {
            v42 = v41;
          }

          else
          {
            v42 = swift_allocError();
            *v72 = v40;
          }

          v73 = sub_1C6014D30();

          v74 = [v73 domain];
          v90 = sub_1C6016940();
          v76 = v75;

          v77 = [v73 code];
          v78 = [v73 userInfo];
          v79 = sub_1C6016860();

          v80 = sub_1C6016940();
          v82 = v81;
          sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
          v93 = v83;
          *&aBlock = v38;
          sub_1C5C70758(&aBlock, v97);
          swift_isUniquelyReferenced_nonNull_native();
          v96 = v79;
          sub_1C5E2072C(v97, v80, v82);

          v84 = v96;
          v85 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          sub_1C5E2067C(v90, v76, v77, v84);

          swift_willThrow();
LABEL_35:

          return;
        }
      }

      v47 = sub_1C60162B0();
      v48 = sub_1C6016F30();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1C5C61000, v47, v48, "—— 􀹴 Successful AssetLoad", v49, 2u);
        MEMORY[0x1C6956920](v49, -1, -1);
      }

      v50 = [v23 cursorUntilEvent:v24];
      LOBYTE(v96) = 0;

      sub_1C5E102B8(v99, &aBlock);
      sub_1C5E102B8(&v98, &aBlock);
      v51 = sub_1C60162B0();
      v52 = sub_1C6016F30();

      v53 = MEMORY[0x1E69E6158];
      sub_1C5E101E4(v99, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
      sub_1C5E101E4(&v98, &qword_1EC1A9480, v53);
      if (os_log_type_enabled(v51, v52))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&aBlock = v55;
        *v54 = 136315138;
        v56 = sub_1C5E04120();
        v58 = sub_1C5C6AB10(v56, v57, &aBlock);
        v100 = v51;
        v59 = v50;
        v60 = v58;

        *(v54 + 4) = v60;
        v50 = v59;
        v61 = v100;
        _os_log_impl(&dword_1C5C61000, v100, v52, "— 􀊫 Searching for PlayerOperation Asset insertion event for %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v55);
        MEMORY[0x1C6956920](v55, -1, -1);
        MEMORY[0x1C6956920](v54, -1, -1);
      }

      else
      {
      }

      v62 = swift_allocObject();
      *(v62 + 16) = &v96;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_1C5E103A8;
      *(v63 + 24) = v62;
      v94 = sub_1C5E1046C;
      v95 = v63;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v92 = sub_1C5D378E4;
      v93 = &block_descriptor_25_1;
      v64 = _Block_copy(&aBlock);

      [v50 enumeratePreviousEventsWithType:@"player-operation-end" usingBlock:v64];
      _Block_release(v64);
      LOBYTE(v64) = swift_isEscapingClosureAtFileLocation();

      if (v64)
      {
        __break(1u);
        return;
      }

      v65 = v96;
      v66 = sub_1C60162B0();
      v67 = sub_1C6016F30();
      v68 = os_log_type_enabled(v66, v67);
      if (v65 != 1)
      {
        v100 = v50;
        if (v68)
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_1C5C61000, v66, v67, "—— 􀐫 Waiting on PlayerOperation Asset insertion", v70, 2u);
          MEMORY[0x1C6956920](v70, -1, -1);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        *&v97[0] = 5310;
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1C6017540();

        *&aBlock = 0xD00000000000001CLL;
        *(&aBlock + 1) = 0x80000001C60564F0;
        v71 = sub_1C5E04120();
        MEMORY[0x1C69534E0](v71);

        sub_1C6016880();
        _s3__C4CodeOMa_1();
        sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
        sub_1C6017280();

        swift_willThrow();

        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      if (v68)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_1C5C61000, v66, v67, "—— 􀹴 Successful PlayerOperation Asset insertion", v69, 2u);
        MEMORY[0x1C6956920](v69, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v43 = sub_1C60162B0();
      v44 = sub_1C6016F30();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1C5C61000, v43, v44, "—— 􀎹 No AssetLoad found", v45, 2u);
        MEMORY[0x1C6956920](v45, -1, -1);
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *&v97[0] = 5301;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1C6017540();

      *&aBlock = 0xD000000000000017;
      *(&aBlock + 1) = 0x80000001C60564B0;
      v46 = sub_1C5E04120();
      MEMORY[0x1C69534E0](v46);

      sub_1C6016880();
      _s3__C4CodeOMa_1();
      sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
      sub_1C6017280();

      swift_willThrow();
    }
  }
}

id sub_1C5E079C0(uint64_t a1, void *a2)
{
  v3 = v2;
  v56 = a2;
  v55[0] = *(a1 + 16);
  if (!*(&v55[0] + 1))
  {
    return 0;
  }

  sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v6 = @"queue-section-id";
  *(inited + 40) = sub_1C6016900();
  *(inited + 48) = @"queue-item-id";
  v7 = @"queue-item-id";
  *(inited + 56) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  sub_1C6016880();
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C60162D0();
  __swift_project_value_buffer(v8, qword_1EC1A8FC0);
  v54 = *(a1 + 32);

  sub_1C5E102B8(v55, &v52);
  sub_1C5E102B8(&v54, &v52);
  v9 = sub_1C60162B0();
  v10 = sub_1C6016F30();

  v11 = MEMORY[0x1E69E6158];
  sub_1C5E101E4(v55, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
  sub_1C5E101E4(&v54, &qword_1EC1A9480, v11);
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v52 = v13;
    *v12 = 136315138;
    v14 = sub_1C5E04120();
    v16 = sub_1C5C6AB10(v14, v15, &v52);

    *(v12 + 4) = v16;
    v3 = v2;
    _os_log_impl(&dword_1C5C61000, v9, v10, "— 􀊫 Searching for ReadyToPlay event for %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1C6956920](v13, -1, -1);
    MEMORY[0x1C6956920](v12, -1, -1);
  }

  v17 = sub_1C6016840();

  v18 = [v56 findPreviousEventWithType:@"item-ready-to-play" matchingPayload:v17];

  v19 = sub_1C60162B0();
  v20 = sub_1C6016F30();
  v21 = os_log_type_enabled(v19, v20);
  if (v18)
  {
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C5C61000, v19, v20, "—— 􀹴 Successful ReadyToPlay", v22, 2u);
      MEMORY[0x1C6956920](v22, -1, -1);
    }
  }

  else
  {
    if (v21)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C5C61000, v19, v20, "—— 􀐫 Waiting on ReadyToPlay", v23, 2u);
      MEMORY[0x1C6956920](v23, -1, -1);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *&v51[0] = 5410;
    *&v52 = 0;
    *(&v52 + 1) = 0xE000000000000000;
    sub_1C6017540();

    *&v52 = 0xD00000000000001BLL;
    *(&v52 + 1) = 0x80000001C60562F0;
    v24 = sub_1C5E04120();
    MEMORY[0x1C69534E0](v24);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    v47 = v25;
    v48 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    v26 = sub_1C6017280();

    v27 = v3;
    sub_1C5E0CB9C(v49, a1, v56);
    v18 = v3;
    sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C60311E0;
    *(v28 + 32) = v3;
    *&v52 = v26;
    v29 = v3;
    sub_1C5D4A854();
    v30 = v26;
    v31 = sub_1C6017810();
    v56 = v30;
    if (v31)
    {
      v32 = v31;
    }

    else
    {
      v32 = swift_allocError();
      *v33 = v30;
    }

    v34 = sub_1C6014D30();

    v35 = [v34 domain];
    v50 = sub_1C6016940();
    v37 = v36;

    v38 = [v34 code];
    v39 = [v34 userInfo];
    v40 = sub_1C6016860();

    v41 = sub_1C6016940();
    v43 = v42;
    sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
    v53 = v44;
    *&v52 = v28;
    sub_1C5C70758(&v52, v51);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C5E2072C(v51, v41, v43);

    v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C5E2067C(v50, v37, v38, v40);

    swift_willThrow();
  }

  return v18;
}

uint64_t sub_1C5E08158(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v8 = sub_1C6016860();
  sub_1C5CFF1CC(v8, &v24);

  if (!v25)
  {
    __break(1u);
    return result;
  }

  sub_1C5C70758(&v24, v26);
  swift_dynamicCast();
  v10 = [a1 type];
  v11 = sub_1C6016940();
  v13 = v12;
  if (v11 == sub_1C6016940() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1C6017860();

    if ((v16 & 1) == 0)
    {
      v17 = *a3;

      v18 = sub_1C5E03F6C(v22, v23, v17);

      if (!v18)
      {
        sub_1C5D29380();
        v19 = *(*a4 + 16);
        result = sub_1C5D29454(v19);
        v20 = *a4;
        *(v20 + 16) = v19 + 1;
        v21 = v20 + 16 * v19;
        *(v21 + 32) = v22;
        *(v21 + 40) = v23;
        return result;
      }
    }
  }

  sub_1C5C8F0A4(v26, v22, v23);
}

void sub_1C5E08384(uint64_t a1, void *a2)
{
  sub_1C5E084D4(0, 0, a2);
  if (!v2)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();
  }
}

void sub_1C5E084D4(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2)
  {
    if (qword_1EC1A8FB8 != -1)
    {
      swift_once();
    }

    v5 = sub_1C60162D0();
    __swift_project_value_buffer(v5, qword_1EC1A8FC0);

    v6 = sub_1C60162B0();
    v7 = sub_1C6016F30();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v86 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1C5C6AB10(a1, a2, &v86);
      _os_log_impl(&dword_1C5C61000, v6, v7, "— 􀊫 Searching for QueueLoad event for %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1C6956920](v9, -1, -1);
      MEMORY[0x1C6956920](v8, -1, -1);
    }

    v10 = MEMORY[0x1E69E6F90];
    sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1C6035C00;
    *(v11 + 32) = @"queue-load-begin";
    *(v11 + 40) = @"queue-load-end";
    type metadata accessor for MPCPlaybackEngineEventType();
    v12 = @"queue-load-begin";
    v13 = @"queue-load-end";
    v14 = sub_1C6016AF0();

    sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, v10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C60311E0;
    *(inited + 32) = @"queue-section-id";
    v16 = @"queue-section-id";
    *(inited + 40) = sub_1C6016900();
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5CC547C();
    sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    sub_1C6016880();
    v17 = sub_1C6016840();

    v18 = [a3 findPreviousEventWithTypes:v14 matchingPayload:v17];

    if (!v18)
    {

      v19 = sub_1C60162B0();
      v20 = sub_1C6016F30();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v86 = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_1C5C6AB10(a1, a2, &v86);
        _os_log_impl(&dword_1C5C61000, v19, v20, "—— 􀎹 No QueueLoad found for %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1C6956920](v22, -1, -1);
        MEMORY[0x1C6956920](v21, -1, -1);
      }

      return;
    }
  }

  else
  {
    if (qword_1EC1A8FB8 != -1)
    {
      swift_once();
    }

    v23 = sub_1C60162D0();
    __swift_project_value_buffer(v23, qword_1EC1A8FC0);
    v24 = sub_1C60162B0();
    v25 = sub_1C6016F30();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C5C61000, v24, v25, "— 􀊫 Searching for QueueLoad event for last section", v26, 2u);
      MEMORY[0x1C6956920](v26, -1, -1);
    }

    sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C6035C00;
    *(v27 + 32) = @"queue-load-begin";
    *(v27 + 40) = @"queue-load-end";
    type metadata accessor for MPCPlaybackEngineEventType();
    v28 = @"queue-load-begin";
    v29 = @"queue-load-end";
    v30 = sub_1C6016AF0();

    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5CC547C();
    sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    sub_1C6016880();
    v31 = sub_1C6016840();

    v18 = [a3 findPreviousEventWithTypes:v30 matchingPayload:v31];

    if (!v18)
    {
      v59 = sub_1C60162B0();
      v60 = sub_1C6016F30();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1C5C61000, v59, v60, "—— 􀎹 No QueueLoad found", v61, 2u);
        MEMORY[0x1C6956920](v61, -1, -1);
      }

      return;
    }
  }

  v32 = [v18 type];
  v33 = sub_1C6016940();
  v35 = v34;
  if (v33 == sub_1C6016940() && v35 == v36)
  {
  }

  else
  {
    v38 = sub_1C6017860();

    if ((v38 & 1) == 0)
    {
      if (qword_1EC1A8FB8 != -1)
      {
        swift_once();
      }

      v39 = sub_1C60162D0();
      __swift_project_value_buffer(v39, qword_1EC1A8FC0);
      v40 = sub_1C60162B0();
      v41 = sub_1C6016F30();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1C5C61000, v40, v41, "—— 􀐫 Waiting on QueueLoad", v42, 2u);
        MEMORY[0x1C6956920](v42, -1, -1);
      }

      sub_1C6016940();
      *&v85[0] = 5200;
      *&v86 = 0;
      *(&v86 + 1) = 0xE000000000000000;
      sub_1C6017540();

      *&v86 = 0xD000000000000019;
      *(&v86 + 1) = 0x80000001C6056890;
      v43 = sub_1C5CD47F0();
      if (v44)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0x6E776F6E6B6E55;
      }

      if (v44)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0xE700000000000000;
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      MEMORY[0x1C69534E0](v45, v46);

      sub_1C6016880();
      _s3__C4CodeOMa_1();
      v76 = v47;
      v77 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
      v48 = sub_1C6017280();

      v49 = v81;
      sub_1C5E0B0A8(a1, a2, v78, a3);
      sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1C60311E0;
      *(v50 + 32) = v81;
      *&v86 = v48;
      v51 = v81;
      sub_1C5D4A854();
      v52 = v48;
      v53 = sub_1C6017810();
      v84 = v52;
      if (v53)
      {
        v54 = v53;
      }

      else
      {
        v54 = swift_allocError();
        *v62 = v52;
      }

      v63 = sub_1C6014D30();

      v64 = [v63 domain];
      v65 = sub_1C6016940();
      v80 = v66;
      v82 = v65;

      v67 = [v63 code];
      v68 = [v63 userInfo];
      v69 = sub_1C6016860();

      v70 = sub_1C6016940();
      v72 = v71;
      sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
      v87 = v73;
      *&v86 = v50;
      sub_1C5C70758(&v86, v85);
      swift_isUniquelyReferenced_nonNull_native();
      v88 = v69;
      sub_1C5E2072C(v85, v70, v72);

      v74 = v88;
      v75 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1C5E2067C(v82, v80, v67, v74);

      swift_willThrow();
      return;
    }
  }

  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v55 = sub_1C60162D0();
  __swift_project_value_buffer(v55, qword_1EC1A8FC0);
  v56 = sub_1C60162B0();
  v57 = sub_1C6016F30();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_1C5C61000, v56, v57, "—— 􀹴 Successful QueueLoad", v58, 2u);
    MEMORY[0x1C6956920](v58, -1, -1);
  }
}

void sub_1C5E090D8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v4 = [a1 findPreviousEventWithType:@"session-end" matchingPayload:0];
  if (v4)
  {
    v5 = v4;
    v2 = [v2 cursorUntilEvent_];
  }

  else
  {
    swift_unknownObjectRetain();
  }

  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v6 = sub_1C60162D0();
  __swift_project_value_buffer(v6, qword_1EC1A8FC0);
  v7 = sub_1C60162B0();
  v8 = sub_1C6016F30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C5C61000, v7, v8, "— 􀊫 Searching for itemBegin event", v9, 2u);
    MEMORY[0x1C6956920](v9, -1, -1);
  }

  sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C6035CF0;
  *(v10 + 32) = @"item-begin";
  *(v10 + 40) = @"item-update";
  *(v10 + 48) = @"item-end";
  *(v10 + 56) = @"item-placeholder-begin";
  type metadata accessor for MPCPlaybackEngineEventType();
  v11 = @"item-begin";
  v12 = @"item-update";
  v13 = @"item-end";
  v14 = @"item-placeholder-begin";
  v15 = sub_1C6016AF0();

  v16 = [v2 findPreviousEventWithTypes:v15 matchingPayload:0];

  if (!v16)
  {
LABEL_46:
    v70 = sub_1C60162B0();
    v71 = sub_1C6016F30();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_1C5C61000, v70, v71, "—— 􀎹 No item found", v72, 2u);
      MEMORY[0x1C6956920](v72, -1, -1);
    }

    goto LABEL_49;
  }

  v17 = [v16 type];
  v18 = sub_1C6016940();
  v20 = v19;
  if (v18 == sub_1C6016940() && v20 == v21)
  {

    goto LABEL_33;
  }

  v23 = sub_1C6017860();

  if (v23)
  {
LABEL_33:
    v59 = sub_1C5CD47F0();
    if (v60)
    {
      v33 = v60;
      v61 = v59;

      v62 = sub_1C60162B0();
      v63 = sub_1C6016F30();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v80[0] = v65;
        *v64 = 136446210;
        *(v64 + 4) = sub_1C5C6AB10(v61, v33, v80);
        _os_log_impl(&dword_1C5C61000, v62, v63, "—— 􀭉 Placeholder found: currently on placeholder %{public}s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1C6956920](v65, -1, -1);
        MEMORY[0x1C6956920](v64, -1, -1);
      }

      swift_unknownObjectRelease();
      goto LABEL_50;
    }

    v66 = sub_1C60162B0();
    v67 = sub_1C6016F30();
    if (!os_log_type_enabled(v66, v67))
    {
      goto LABEL_43;
    }

    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "—— 􀎹 No item found: on placeholder, but no section ID";
    goto LABEL_42;
  }

  v24 = [v16 type];
  v25 = sub_1C6016940();
  v27 = v26;
  if (v25 == sub_1C6016940() && v27 == v28)
  {
  }

  else
  {
    v30 = sub_1C6017860();

    if ((v30 & 1) == 0)
    {
      v31 = sub_1C5CD47F0();
      if (v32)
      {
        v33 = v32;
        v77 = v31;
        v34 = sub_1C5CD47E4();
        if (v35)
        {
          v36 = v35;
          v76 = v34;

          v37 = sub_1C60162B0();
          v38 = sub_1C6016F30();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            v80[0] = v40;
            *v39 = 136446466;
            *(v39 + 4) = sub_1C5C6AB10(v77, v33, v80);
            *(v39 + 12) = 2082;
            *(v39 + 14) = sub_1C5C6AB10(v76, v36, v80);
            _os_log_impl(&dword_1C5C61000, v37, v38, "—— 􀎾 Found last item: %{public}s %{public}s", v39, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1C6956920](v40, -1, -1);
            MEMORY[0x1C6956920](v39, -1, -1);
          }

          v41 = sub_1C60162B0();
          v42 = sub_1C6016F30();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            *v43 = 0;
            _os_log_impl(&dword_1C5C61000, v41, v42, "— 􀊫 Searching for itemAudioAssetSelection event", v43, 2u);
            MEMORY[0x1C6956920](v43, -1, -1);
          }

          sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C6035C00;
          *(inited + 32) = @"queue-section-id";
          v45 = @"queue-section-id";
          *(inited + 40) = sub_1C6016900();
          *(inited + 48) = @"queue-item-id";
          v46 = @"queue-item-id";
          *(inited + 56) = sub_1C6016900();
          type metadata accessor for MPCPlaybackEngineEventPayloadKey();
          sub_1C5CC547C();
          sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
          sub_1C6016880();
          v47 = sub_1C6016840();

          v48 = [v2 findPreviousEventWithType:@"asset-selection" matchingPayload:v47];

          if (v48)
          {
            v49 = v48;
            v50 = [v48 payload];
            v51 = MEMORY[0x1E69E7CA0];
            v52 = sub_1C6016860();

            sub_1C5CFF1CC(v52, v80);

            if (v81)
            {
              sub_1C5E103B8();
              if ((swift_dynamicCast() & 1) == 0)
              {
LABEL_54:
                swift_unknownObjectRelease();

                goto LABEL_55;
              }

              sub_1C5CFF1CC(v78, v80);

              if (v81)
              {
                if (swift_dynamicCast())
                {
                  v54 = v78;
                  v53 = v79;

                  v55 = sub_1C60162B0();
                  v56 = sub_1C6016F30();

                  if (os_log_type_enabled(v55, v56))
                  {
                    log = v55;
                    v57 = swift_slowAlloc();
                    v74 = v56;
                    v58 = swift_slowAlloc();
                    v80[0] = v58;
                    *v57 = 136446210;
                    *(v57 + 4) = sub_1C5C6AB10(v78, v79, v80);
                    _os_log_impl(&dword_1C5C61000, log, v74, "—— 􀎾 Found avItemID: %{public}s", v57, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0(v58);
                    MEMORY[0x1C6956920](v58, -1, -1);
                    MEMORY[0x1C6956920](v57, -1, -1);
                  }

                  else
                  {
                  }

                  swift_unknownObjectRelease();
                  goto LABEL_56;
                }

                goto LABEL_54;
              }
            }

            swift_unknownObjectRelease();

            sub_1C5E101E4(v80, &qword_1ED7E0200, v51 + 8);
          }

          else
          {

            swift_unknownObjectRelease();
          }

LABEL_55:
          v54 = 0;
          v53 = 0;
LABEL_56:
          v73 = v76;
          v61 = v77;
          goto LABEL_51;
        }
      }

      goto LABEL_46;
    }
  }

  v66 = sub_1C60162B0();
  v67 = sub_1C6016F30();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    v69 = "—— 􀎹 No item found: no item begin after last end";
LABEL_42:
    _os_log_impl(&dword_1C5C61000, v66, v67, v69, v68, 2u);
    MEMORY[0x1C6956920](v68, -1, -1);
  }

LABEL_43:

LABEL_49:
  swift_unknownObjectRelease();
  v61 = 0;
  v33 = 0;
LABEL_50:
  v73 = 0;
  v36 = 0;
  v54 = 0;
  v53 = 0;
LABEL_51:
  *a2 = v61;
  a2[1] = v33;
  a2[2] = v73;
  a2[3] = v36;
  a2[4] = v54;
  a2[5] = v53;
}

void sub_1C5E09BA8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C5E084D4(*a2, *(a2 + 8), a3);
  if (!v3)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();
  }
}

uint64_t sub_1C5E09CF0(void *a1)
{
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1A8FC0);
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5C61000, v3, v4, "— 􀊫 Searching for Interruption", v5, 2u);
    MEMORY[0x1C6956920](v5, -1, -1);
  }

  sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6035C00;
  *(v6 + 32) = @"interrupt-begin";
  *(v6 + 40) = @"interrupt-end";
  type metadata accessor for MPCPlaybackEngineEventType();
  v7 = @"interrupt-begin";
  v8 = @"interrupt-end";
  v9 = sub_1C6016AF0();

  v10 = [a1 findPreviousEventWithTypes:v9 matchingPayload:0];

  if (!v10)
  {
    v10 = sub_1C60162B0();
    v18 = sub_1C6016F30();
    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C5C61000, v10, v18, "—— 􀎹 No Interruption", v19, 2u);
      MEMORY[0x1C6956920](v19, -1, -1);
    }

    goto LABEL_27;
  }

  v11 = [v10 type];
  v12 = sub_1C6016940();
  v14 = v13;
  if (v12 == sub_1C6016940() && v14 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1C6017860();
  }

  v20 = [v10 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v21 = MEMORY[0x1E69E7CA0];
  v22 = sub_1C6016860();

  sub_1C5CFF1CC(v22, v36);

  if (v37)
  {
    if (swift_dynamicCast())
    {
      v24 = v34;
      v23 = v35;
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C5E101E4(v36, &qword_1ED7E0200, v21 + 8);
  }

  v23 = 0xE700000000000000;
  v24 = 0x6E776F6E6B6E55;
LABEL_19:

  v25 = sub_1C60162B0();
  v26 = sub_1C6016F30();

  v27 = os_log_type_enabled(v25, v26);
  if ((v17 & 1) == 0)
  {
    if (v27)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v30 = 136446210;
      v32 = sub_1C5C6AB10(v24, v23, v36);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_1C5C61000, v25, v26, "—— 􀹶 Finished interruption from %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1C6956920](v31, -1, -1);
      MEMORY[0x1C6956920](v30, -1, -1);
    }

    else
    {
    }

LABEL_27:
    return 0;
  }

  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36[0] = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_1C5C6AB10(v24, v23, v36);
    _os_log_impl(&dword_1C5C61000, v25, v26, "—— 􀐫 Waiting on interruption from %{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1C6956920](v29, -1, -1);
    MEMORY[0x1C6956920](v28, -1, -1);
  }

  return v24;
}

void sub_1C5E0A220(void *a1)
{
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1A8FC0);
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5C61000, v3, v4, "— 􀊫 Searching for MediaServices events", v5, 2u);
    MEMORY[0x1C6956920](v5, -1, -1);
  }

  sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6035C00;
  *(v6 + 32) = @"media-server-died";
  *(v6 + 40) = @"media-server-reset";
  type metadata accessor for MPCPlaybackEngineEventType();
  v7 = @"media-server-died";
  v8 = @"media-server-reset";
  v9 = sub_1C6016AF0();

  v10 = [a1 findPreviousEventWithTypes:v9 matchingPayload:0];

  if (!v10)
  {
    v10 = sub_1C60162B0();
    v18 = sub_1C6016F30();
    if (os_log_type_enabled(v10, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1C5C61000, v10, v18, "—— 􀎹 No MediaServices events", v19, 2u);
      MEMORY[0x1C6956920](v19, -1, -1);
    }

    goto LABEL_14;
  }

  v11 = [v10 type];
  v12 = sub_1C6016940();
  v14 = v13;
  if (v12 != sub_1C6016940() || v14 != v15)
  {
    v17 = sub_1C6017860();

    if (v17)
    {

      goto LABEL_16;
    }

    v23 = sub_1C6016940();
    v25 = v24;
    if (v23 == sub_1C6016940() && v25 == v26)
    {

      goto LABEL_26;
    }

    v28 = sub_1C6017860();

    if (v28)
    {
LABEL_26:
      v20 = sub_1C60162B0();
      v29 = sub_1C6016F30();
      if (os_log_type_enabled(v20, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1C5C61000, v20, v29, "—— 􀹶 MediaServices Reset event", v30, 2u);
        MEMORY[0x1C6956920](v30, -1, -1);
      }

      goto LABEL_18;
    }

LABEL_14:

    return;
  }

LABEL_16:
  v20 = sub_1C60162B0();
  v21 = sub_1C6016F30();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1C5C61000, v20, v21, "—— 􁜒 MediaServices Lost event", v22, 2u);
    MEMORY[0x1C6956920](v22, -1, -1);
  }

LABEL_18:

  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  sub_1C6016880();
  _s3__C4CodeOMa_1();
  sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
  sub_1C6017280();

  swift_willThrow();
}

uint64_t sub_1C5E0A820(void *a1)
{
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C60162D0();
  __swift_project_value_buffer(v2, qword_1EC1A8FC0);
  v3 = sub_1C60162B0();
  v4 = sub_1C6016F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1C5C61000, v3, v4, "— 􀊫 Searching for Session Activation", v5, 2u);
    MEMORY[0x1C6956920](v5, -1, -1);
  }

  sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6035C00;
  *(v6 + 32) = @"session-activation-begin";
  *(v6 + 40) = @"session-activation-end";
  type metadata accessor for MPCPlaybackEngineEventType();
  v7 = @"session-activation-begin";
  v8 = @"session-activation-end";
  v9 = sub_1C6016AF0();

  v10 = [a1 findPreviousEventWithTypes:v9 matchingPayload:0];

  if (!v10)
  {
    v10 = sub_1C60162B0();
    v21 = sub_1C6016F30();
    if (os_log_type_enabled(v10, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C5C61000, v10, v21, "—— 􀎹 No Session Activation", v22, 2u);
      MEMORY[0x1C6956920](v22, -1, -1);
    }

    goto LABEL_16;
  }

  v11 = [v10 type];
  v12 = sub_1C6016940();
  v14 = v13;
  if (v12 == sub_1C6016940() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_1C6017860();

    if ((v17 & 1) == 0)
    {
      v18 = sub_1C60162B0();
      v19 = sub_1C6016F30();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C5C61000, v18, v19, "—— 􀹴 Successful Session Activation", v20, 2u);
        MEMORY[0x1C6956920](v20, -1, -1);
      }

LABEL_16:
      v23 = 0;
      goto LABEL_21;
    }
  }

  v24 = sub_1C60162B0();
  v25 = sub_1C6016F30();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1C5C61000, v24, v25, "—— 􀐫 Waiting on Session Activation", v26, 2u);
    MEMORY[0x1C6956920](v26, -1, -1);
  }

  v23 = 1;
LABEL_21:

  return v23;
}

void sub_1C5E0ABB0(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C6035C00;
    *(inited + 32) = @"queue-section-id";
    v7 = @"queue-section-id";
    *(inited + 40) = sub_1C6016900();
    *(inited + 48) = @"queue-item-id";
    v8 = @"queue-item-id";
    *(inited + 56) = sub_1C6016900();
    type metadata accessor for MPCPlaybackEngineEventPayloadKey();
    sub_1C5CC547C();
    sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    sub_1C6016880();
    sub_1C5E0DBBC(a2, v2, a1);
    if (v3)
    {

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *&v35[0] = 5400;
      sub_1C6017540();

      *(&v36 + 1) = 0x80000001C6056660;
      v9 = sub_1C5E04120();
      MEMORY[0x1C69534E0](v9);

      sub_1C6016880();
      _s3__C4CodeOMa_1();
      v32 = v10;
      v33 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
      v11 = sub_1C6017280();

      sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C60311E0;
      *(v12 + 32) = v3;
      *&v36 = v11;
      v13 = v3;
      sub_1C5D4A854();
      v14 = v11;
      v15 = sub_1C6017810();
      v34 = v14;
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = swift_allocError();
        *v17 = v14;
      }

      v18 = sub_1C6014D30();

      v19 = [v18 domain];
      v20 = sub_1C6016940();
      v22 = v21;

      v23 = [v18 code];
      v24 = [v18 userInfo];
      v25 = sub_1C6016860();

      v26 = sub_1C6016940();
      v28 = v27;
      sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
      v37 = v29;
      *&v36 = v12;
      sub_1C5C70758(&v36, v35);
      swift_isUniquelyReferenced_nonNull_native();
      v38 = v25;
      sub_1C5E2072C(v35, v26, v28);

      v30 = v38;
      v31 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1C5E2067C(v20, v22, v23, v30);

      swift_willThrow();
    }

    else
    {
    }
  }
}

void sub_1C5E0B0A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v7 = a1;
    sub_1C5E0B2A0(a1, a2, a4);
    if (v4)
    {
      return;
    }

    sub_1C5E0B830(v7, a2, a4);
    v8 = a2;
  }

  else
  {
    v7 = 0x6E776F6E6B6E55;
    v8 = 0xE700000000000000;
  }

  sub_1C6016940();
  sub_1C6017540();

  sub_1C5C64D74(0, &qword_1ED7DCCF0);

  MEMORY[0x1C69534E0](v7, v8);

  sub_1C6016880();
  _s3__C4CodeOMa_1();
  sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
  sub_1C6017280();

  swift_willThrow();
}

void sub_1C5E0B2A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x1E69E6F90];
  sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"network-request-context-info";
  sub_1C5E10254(0, &qword_1EC1ABDC8, sub_1C5E10340, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6035C00;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  v10 = v9;
  *(v8 + 56) = v9;
  *(v8 + 32) = @"network-request-initiator";
  v11 = sub_1C5C64D74(0, &qword_1EC1A92B0);
  v12 = @"network-request-context-info";
  v13 = @"network-request-initiator";
  *(v8 + 64) = sub_1C60172F0();
  *(v8 + 120) = v10;
  *(v8 + 88) = v11;
  *(v8 + 96) = @"queue-section-id";
  v14 = @"queue-section-id";
  v15 = sub_1C6016900();
  *(v8 + 152) = v11;
  *(v8 + 128) = v15;
  sub_1C5C64D74(0, &unk_1EC1A8C70);
  *(inited + 40) = sub_1C6016EA0();
  sub_1C5CC547C();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v16 = sub_1C6016880();
  sub_1C5E0F6D8(v16, a3);
  v17 = v42;
  if (v42)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *&v44[0] = 5202;
    sub_1C6017540();

    *(&v45 + 1) = 0x80000001C6056950;
    MEMORY[0x1C69534E0](a1, a2);
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    v40 = v18;
    v41 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    v19 = sub_1C6017280();

    sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C60311E0;
    *(v20 + 32) = v42;
    *&v45 = v19;
    v21 = v42;
    sub_1C5D4A854();
    v22 = v19;
    v23 = sub_1C6017810();
    v43 = v22;
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = swift_allocError();
      *v25 = v22;
    }

    v26 = sub_1C6014D30();

    v27 = [v26 domain];
    v28 = sub_1C6016940();
    v30 = v29;

    v31 = [v26 code];
    v32 = [v26 userInfo];
    v33 = sub_1C6016860();

    v34 = sub_1C6016940();
    v36 = v35;
    sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
    v46 = v37;
    *&v45 = v20;
    sub_1C5C70758(&v45, v44);
    swift_isUniquelyReferenced_nonNull_native();
    v47 = v33;
    sub_1C5E2072C(v44, v34, v36);

    v38 = v47;
    v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C5E2067C(v28, v30, v31, v38);

    swift_willThrow();
  }

  else
  {
  }
}

void sub_1C5E0B830(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x1E69E6F90];
  sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"network-request-context-info";
  sub_1C5E10254(0, &qword_1EC1ABDC8, sub_1C5E10340, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6035C00;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  v10 = v9;
  *(v8 + 56) = v9;
  *(v8 + 32) = @"network-request-initiator";
  v11 = sub_1C5C64D74(0, &qword_1EC1A92B0);
  v12 = @"network-request-context-info";
  v13 = @"network-request-initiator";
  *(v8 + 64) = sub_1C60172F0();
  *(v8 + 120) = v10;
  *(v8 + 88) = v11;
  *(v8 + 96) = @"queue-section-id";
  v14 = @"queue-section-id";
  v15 = sub_1C6016900();
  *(v8 + 152) = v11;
  *(v8 + 128) = v15;
  sub_1C5C64D74(0, &unk_1EC1A8C70);
  *(inited + 40) = sub_1C6016EA0();
  sub_1C5CC547C();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v16 = sub_1C6016880();
  sub_1C5E0F6D8(v16, a3);
  v17 = v42;
  if (v42)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *&v44[0] = 5203;
    sub_1C6017540();

    *(&v45 + 1) = 0x80000001C6056910;
    MEMORY[0x1C69534E0](a1, a2);
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    v40 = v18;
    v41 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    v19 = sub_1C6017280();

    sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C60311E0;
    *(v20 + 32) = v42;
    *&v45 = v19;
    v21 = v42;
    sub_1C5D4A854();
    v22 = v19;
    v23 = sub_1C6017810();
    v43 = v22;
    if (v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = swift_allocError();
      *v25 = v22;
    }

    v26 = sub_1C6014D30();

    v27 = [v26 domain];
    v28 = sub_1C6016940();
    v30 = v29;

    v31 = [v26 code];
    v32 = [v26 userInfo];
    v33 = sub_1C6016860();

    v34 = sub_1C6016940();
    v36 = v35;
    sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
    v46 = v37;
    *&v45 = v20;
    sub_1C5C70758(&v45, v44);
    swift_isUniquelyReferenced_nonNull_native();
    v47 = v33;
    sub_1C5E2072C(v44, v34, v36);

    v38 = v47;
    v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C5E2067C(v28, v30, v31, v38);

    swift_willThrow();
  }

  else
  {
  }
}

void sub_1C5E0BDC0(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6F90];
  sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6035C00;
  *(v5 + 32) = @"item-configuration-begin";
  *(v5 + 40) = @"item-configuration-end";
  type metadata accessor for MPCPlaybackEngineEventType();
  v6 = @"item-configuration-begin";
  v7 = @"item-configuration-end";
  v8 = sub_1C6016AF0();

  sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, v4);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6035C00;
  *(inited + 32) = @"queue-section-id";
  v10 = @"queue-section-id";
  *(inited + 40) = sub_1C6016900();
  *(inited + 48) = @"queue-item-id";
  v11 = @"queue-item-id";
  *(inited + 56) = sub_1C6016900();
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  sub_1C6016880();
  v12 = sub_1C6016840();

  v13 = [a1 findPreviousEventWithTypes:v8 matchingPayload:v12];

  if (v13)
  {
    v14 = [v13 type];
    v15 = sub_1C6016940();
    v17 = v16;
    if (v15 == sub_1C6016940() && v17 == v18)
    {
    }

    else
    {
      v20 = sub_1C6017860();

      if ((v20 & 1) == 0)
      {
        if (qword_1EC1A8FB8 != -1)
        {
          swift_once();
        }

        v21 = sub_1C60162D0();
        __swift_project_value_buffer(v21, qword_1EC1A8FC0);
        v22 = sub_1C60162B0();
        v23 = sub_1C6016F30();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1C5C61000, v22, v23, "—— 􀐫 Waiting on ItemAssetConfig", v24, 2u);
          MEMORY[0x1C6956920](v24, -1, -1);
        }

        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        sub_1C6016880();
        _s3__C4CodeOMa_1();
        sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
        goto LABEL_16;
      }
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
LABEL_16:
    sub_1C6017280();

    swift_willThrow();

    return;
  }

  sub_1C5E0C46C(a2, a1);
  if (!v26)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6017540();

    v25 = sub_1C5E04120();
    MEMORY[0x1C69534E0](v25);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();
  }
}

void sub_1C5E0C46C(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E6F90];
  sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"network-request-context-info";
  sub_1C5E10254(0, &qword_1EC1ABDC8, sub_1C5E10340, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6031150;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  v8 = v7;
  *(v6 + 56) = v7;
  *(v6 + 32) = @"network-request-initiator";
  v9 = sub_1C5C64D74(0, &qword_1EC1A92B0);
  v10 = @"network-request-context-info";
  v11 = @"network-request-initiator";
  *(v6 + 64) = sub_1C60172F0();
  *(v6 + 120) = v8;
  *(v6 + 88) = v9;
  *(v6 + 96) = @"queue-section-id";
  v12 = @"queue-section-id";
  *(v6 + 128) = sub_1C6016900();
  *(v6 + 184) = v8;
  *(v6 + 152) = v9;
  *(v6 + 160) = @"queue-item-id";
  if (*(a1 + 24))
  {
    v13 = @"queue-item-id";
    v14 = sub_1C6016900();
    *(v6 + 216) = v9;
    *(v6 + 192) = v14;
    sub_1C5C64D74(0, &unk_1EC1A8C70);
    *(inited + 40) = sub_1C6016EA0();
    sub_1C5CC547C();
    sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    v15 = sub_1C6016880();
    sub_1C5E0F6D8(v15, a2);
    v16 = v42;
    if (v42)
    {

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *&v44[0] = 5304;
      sub_1C6017540();

      *(&v45 + 1) = 0x80000001C60565E0;
      v17 = sub_1C5E04120();
      MEMORY[0x1C69534E0](v17);

      sub_1C6016880();
      _s3__C4CodeOMa_1();
      v40 = v18;
      v41 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
      v19 = sub_1C6017280();

      sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C60311E0;
      *(v20 + 32) = v42;
      *&v45 = v19;
      v21 = v42;
      sub_1C5D4A854();
      v22 = v19;
      v23 = sub_1C6017810();
      v43 = v22;
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = swift_allocError();
        *v25 = v22;
      }

      v26 = sub_1C6014D30();

      v27 = [v26 domain];
      v28 = sub_1C6016940();
      v30 = v29;

      v31 = [v26 code];
      v32 = [v26 userInfo];
      v33 = sub_1C6016860();

      v34 = sub_1C6016940();
      v36 = v35;
      sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
      v46 = v37;
      *&v45 = v20;
      sub_1C5C70758(&v45, v44);
      swift_isUniquelyReferenced_nonNull_native();
      v47 = v33;
      sub_1C5E2072C(v44, v34, v36);

      v38 = v47;
      v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1C5E2067C(v28, v30, v31, v38);

      swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5E0CA44(void *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v6 = MEMORY[0x1E69E7CA0];
  v7 = sub_1C6016860();

  sub_1C5CFF1CC(v7, &v10);

  if (!v11)
  {
    return sub_1C5E101E4(&v10, &qword_1ED7E0200, v6 + 8);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v9 = sub_1C6016A60();

    if (v9)
    {
      *a3 = 1;
      *a2 = 1;
    }
  }

  return result;
}

void sub_1C5E0CB9C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C5E0CD78(a2, a3);
  if (!v3)
  {
    if ((MSVDeviceIsiPhone() & 1) != 0 || MSVDeviceIsWatch())
    {
      sub_1C5E0D350(a3);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6017540();
    MEMORY[0x1C69534E0](0xD000000000000032, 0x80000001C6056310);
    v5 = sub_1C5E04120();
    MEMORY[0x1C69534E0](v5);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();
  }
}

void sub_1C5E0CD78(uint64_t a1, void *a2)
{
  v4 = MEMORY[0x1E69E6F90];
  sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"network-request-context-info";
  sub_1C5E10254(0, &qword_1EC1ABDC8, sub_1C5E10340, v4);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C6031150;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  v8 = v7;
  *(v6 + 56) = v7;
  *(v6 + 32) = @"network-request-initiator";
  v9 = sub_1C5C64D74(0, &qword_1EC1A92B0);
  v10 = @"network-request-context-info";
  v11 = @"network-request-initiator";
  *(v6 + 64) = sub_1C60172F0();
  *(v6 + 120) = v8;
  *(v6 + 88) = v9;
  *(v6 + 96) = @"queue-section-id";
  v12 = @"queue-section-id";
  *(v6 + 128) = sub_1C6016900();
  *(v6 + 184) = v8;
  *(v6 + 152) = v9;
  *(v6 + 160) = @"queue-item-id";
  if (*(a1 + 24))
  {
    v13 = @"queue-item-id";
    v14 = sub_1C6016900();
    *(v6 + 216) = v9;
    *(v6 + 192) = v14;
    sub_1C5C64D74(0, &unk_1EC1A8C70);
    *(inited + 40) = sub_1C6016EA0();
    sub_1C5CC547C();
    sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
    v15 = sub_1C6016880();
    sub_1C5E0F6D8(v15, a2);
    v16 = v42;
    if (v42)
    {

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *&v44[0] = 5411;
      sub_1C6017540();

      *(&v45 + 1) = 0x80000001C60563F0;
      v17 = sub_1C5E04120();
      MEMORY[0x1C69534E0](v17);

      sub_1C6016880();
      _s3__C4CodeOMa_1();
      v40 = v18;
      v41 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
      v19 = sub_1C6017280();

      sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C60311E0;
      *(v20 + 32) = v42;
      *&v45 = v19;
      v21 = v42;
      sub_1C5D4A854();
      v22 = v19;
      v23 = sub_1C6017810();
      v43 = v22;
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = swift_allocError();
        *v25 = v22;
      }

      v26 = sub_1C6014D30();

      v27 = [v26 domain];
      v28 = sub_1C6016940();
      v30 = v29;

      v31 = [v26 code];
      v32 = [v26 userInfo];
      v33 = sub_1C6016860();

      v34 = sub_1C6016940();
      v36 = v35;
      sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
      v46 = v37;
      *&v45 = v20;
      sub_1C5C70758(&v45, v44);
      swift_isUniquelyReferenced_nonNull_native();
      v47 = v33;
      sub_1C5E2072C(v44, v34, v36);

      v38 = v47;
      v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1C5E2067C(v28, v30, v31, v38);

      swift_willThrow();
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1C5E0D350(void *a1)
{
  v2 = [a1 findPreviousEventWithType:@"network-reachability-changed" matchingPayload:0];
  v3 = v2;
  v4 = MEMORY[0x1E69E7CA0];
  if (!v2)
  {
    v27 = 0u;
    v28 = 0u;
    goto LABEL_8;
  }

  v5 = [v2 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v6 = sub_1C6016860();

  sub_1C5CFF1CC(v6, &v27);

  if (!*(&v28 + 1))
  {
LABEL_8:
    sub_1C5E101E4(&v27, &qword_1ED7E0200, v4 + 8);
    goto LABEL_9;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = v24;
  if (![v24 integerValue])
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *&v27 = 5600;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();
LABEL_6:

    return;
  }

LABEL_10:
  v8 = [a1 findPreviousEventWithType:@"network-type-changed" matchingPayload:0];
  if (!v8)
  {

LABEL_19:
    return;
  }

  v9 = v8;
  v23 = v7;
  v10 = [v8 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v11 = sub_1C6016860();

  sub_1C5CFF1CC(v11, &v27);

  if (!*(&v28 + 1))
  {

    goto LABEL_35;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0);
  if (swift_dynamicCast())
  {
    v7 = v24;
    v12 = [v24 integerValue];
    if ((v12 - 1) >= 8 && v12 != 100)
    {
      if (!v12)
      {
        sub_1C5C64D74(0, &qword_1ED7DCCF0);
        sub_1C6016940();
        *&v27 = 5601;
        sub_1C6016880();
        _s3__C4CodeOMa_1();
        sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
        sub_1C6017280();

        swift_willThrow();

        v3 = v9;
        goto LABEL_6;
      }

      goto LABEL_32;
    }

    v13 = [v9 payload];
    v14 = sub_1C6016860();

    sub_1C5CFF1CC(v14, &v27);

    if (*(&v28 + 1))
    {
      sub_1C5C64D74(0, &unk_1EC1A8C70);
      if ((swift_dynamicCast() & 1) == 0)
      {

LABEL_37:
        goto LABEL_38;
      }

      v15 = v24;
      v25[0] = sub_1C6016940();
      v25[1] = v16;
      v17 = [v15 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v17)
      {
        sub_1C6017390();
        swift_unknownObjectRelease();
      }

      else
      {
        *v25 = 0u;
        v26 = 0u;
      }

      v27 = *v25;
      v28 = v26;
      if (*(&v26 + 1))
      {
        if (swift_dynamicCast())
        {
          v18 = v29;
          if ([v29 integerValue] <= 1)
          {
            sub_1C5C64D74(0, &qword_1ED7DCCF0);
            sub_1C6016940();
            *&v27 = 0;
            *(&v27 + 1) = 0xE000000000000000;
            sub_1C6017540();

            *&v27 = 0xD000000000000028;
            *(&v27 + 1) = 0x80000001C6056350;
            v19 = [v18 description];
            v20 = sub_1C6016940();
            v22 = v21;

            MEMORY[0x1C69534E0](v20, v22);

            MEMORY[0x1C69534E0](0x7372616220, 0xE500000000000000);
            sub_1C6016880();
            _s3__C4CodeOMa_1();
            sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
            sub_1C6017280();

            swift_willThrow();

            v3 = v15;
            v7 = v18;
            goto LABEL_6;
          }

LABEL_32:
          goto LABEL_19;
        }

        goto LABEL_37;
      }
    }

    else
    {
    }

LABEL_35:
    sub_1C5E101E4(&v27, &qword_1ED7E0200, v4 + 8);
    return;
  }

LABEL_38:
}

void sub_1C5E0DBBC(void *a1, uint64_t a2, __int128 *a3)
{
  v7 = sub_1C5E079C0(a3, a1);
  if (v3)
  {
    return;
  }

  v8 = v7;
  if (v7)
  {
    v9 = [a1 cursorUntilEvent_];
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = a1;
  }

  v103 = a1;
  v116 = 0;
  if (qword_1EC1A8FB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1C60162D0();
  __swift_project_value_buffer(v10, qword_1EC1A8FC0);
  v11 = *a3;
  v113 = a3[1];
  v114[0] = v11;
  v112 = a3[2];
  sub_1C5CC57E0(v114, &aBlock);
  sub_1C5E102B8(&v113, &aBlock);
  sub_1C5E102B8(&v112, &aBlock);
  v12 = sub_1C60162B0();
  v13 = sub_1C6016F30();
  sub_1C5CC583C(v114);
  v14 = MEMORY[0x1E69E6158];
  sub_1C5E101E4(&v113, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
  sub_1C5E101E4(&v112, &qword_1EC1A9480, v14);
  v104 = v9;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&aBlock = v16;
    *v15 = 136315138;
    v17 = sub_1C5E04120();
    v19 = sub_1C5C6AB10(v17, v18, &aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1C5C61000, v12, v13, "— 􀊫 Searching for PlayerOperation SetRate event for %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v20 = v16;
    v9 = v104;
    MEMORY[0x1C6956920](v20, -1, -1);
    MEMORY[0x1C6956920](v15, -1, -1);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = &v116;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1C5E103B0;
  *(v22 + 24) = v21;
  v110 = sub_1C5E1046C;
  v111 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v108 = sub_1C5D378E4;
  v109 = &block_descriptor_35_0;
  v23 = _Block_copy(&aBlock);

  [v9 enumeratePreviousEventsWithType:@"player-operation-end" usingBlock:v23];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  v25 = v116;
  v26 = sub_1C60162B0();
  v27 = sub_1C6016F30();
  v28 = os_log_type_enabled(v26, v27);
  if (v25 != 1)
  {
    if (v28)
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1C5C61000, v26, v27, "—— 􀐫 Waiting on PlayerOperation SetRate", v56, 2u);
      MEMORY[0x1C6956920](v56, -1, -1);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v106[0] = 5420;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1C6017540();

    *&aBlock = 0xD000000000000015;
    *(&aBlock + 1) = 0x80000001C6056680;
    v57 = sub_1C5E04120();
    MEMORY[0x1C69534E0](v57);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    v98 = v58;
    v99 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    v59 = sub_1C6017280();

    sub_1C5E0F014(a2, v103);
    sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1C60311E0;
    *(v60 + 32) = 0;
    *&aBlock = v59;
    v61 = 0;
    sub_1C5D4A854();
    v62 = v59;
    v63 = sub_1C6017810();
    v105 = v62;
    if (v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = swift_allocError();
      *v68 = v62;
    }

    v69 = sub_1C6014D30();

    v70 = [v69 domain];
    v71 = sub_1C6016940();
    v73 = v72;

    v74 = [v69 code];
    v75 = [v69 userInfo];
    v76 = sub_1C6016860();

    v77 = sub_1C6016940();
    v79 = v78;
    sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
    v109 = v80;
    *&aBlock = v60;
    sub_1C5C70758(&aBlock, v106);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C5E2072C(v106, v77, v79);

    v81 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C5E2067C(v71, v73, v74, v76);

    swift_willThrow();

    goto LABEL_33;
  }

  if (v28)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1C5C61000, v26, v27, "—— 􀹴 Successful PlayerOperation SetRate", v29, 2u);
    MEMORY[0x1C6956920](v29, -1, -1);
  }

  sub_1C5CC57E0(v114, &aBlock);
  sub_1C5E102B8(&v113, &aBlock);
  sub_1C5E102B8(&v112, &aBlock);
  v30 = sub_1C60162B0();
  v31 = sub_1C6016F30();
  sub_1C5CC583C(v114);
  v32 = MEMORY[0x1E69E6158];
  sub_1C5E101E4(&v113, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
  sub_1C5E101E4(&v112, &qword_1EC1A9480, v32);
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&aBlock = v34;
    *v33 = 136315138;
    v35 = sub_1C5E04120();
    v37 = sub_1C5C6AB10(v35, v36, &aBlock);

    *(v33 + 4) = v37;
    v9 = v104;
    _os_log_impl(&dword_1C5C61000, v30, v31, "— 􀊫 Searching for TimeControlStatus event for %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x1C6956920](v34, -1, -1);
    MEMORY[0x1C6956920](v33, -1, -1);
  }

  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v38 = sub_1C6016840();
  v39 = [v9 findPreviousEventWithType:@"time-control-status-changed" matchingPayload:v38];

  if (!v39)
  {
    v65 = sub_1C60162B0();
    v66 = sub_1C6016F30();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1C5C61000, v65, v66, "—— 􀎹 No TimeControlStatus found", v67, 2u);
      MEMORY[0x1C6956920](v67, -1, -1);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *&aBlock = 5431;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();

    goto LABEL_33;
  }

  v102 = v39;
  v40 = [v39 payload];
  v41 = MEMORY[0x1E69E7CA0];
  v42 = sub_1C6016860();

  sub_1C5CFF1CC(v42, &aBlock);

  if (!v109)
  {
    sub_1C5E101E4(&aBlock, &qword_1ED7E0200, v41 + 8);
    goto LABEL_36;
  }

  sub_1C5C64D74(0, &qword_1ED7DCCD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v82 = sub_1C60162B0();
    v83 = sub_1C6016F30();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_1C5C61000, v82, v83, "—— 􀐫 Waiting on TimeControlStatus", v84, 2u);
      MEMORY[0x1C6956920](v84, -1, -1);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v106[0] = 5432;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1C6017540();

    *&aBlock = 0xD00000000000001ELL;
    *(&aBlock + 1) = 0x80000001C60566C0;
    v85 = [v102 payload];
    sub_1C6016860();

    v86 = sub_1C6016870();
    v88 = v87;

    MEMORY[0x1C69534E0](v86, v88);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();

    swift_unknownObjectRelease();

    return;
  }

  v43 = TimeControlStatus.init(rawValue:)([v106[0] integerValue]);
  if ((v44 & 1) != 0 || v43 != 2)
  {

    goto LABEL_36;
  }

  v100 = v106[0];
  v45 = sub_1C60162B0();
  v46 = sub_1C6016F30();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1C5C61000, v45, v46, "—— 􀹴 Successful TimeControlStatus", v47, 2u);
    MEMORY[0x1C6956920](v47, -1, -1);
  }

  sub_1C5CC57E0(v114, &aBlock);
  sub_1C5E102B8(&v113, &aBlock);
  sub_1C5E102B8(&v112, &aBlock);
  v48 = sub_1C60162B0();
  v49 = sub_1C6016F30();
  sub_1C5CC583C(v114);
  v50 = MEMORY[0x1E69E6158];
  sub_1C5E101E4(&v113, &qword_1EC1A9480, MEMORY[0x1E69E6158]);
  sub_1C5E101E4(&v112, &qword_1EC1A9480, v50);
  v115 = v49;
  log = v48;
  if (os_log_type_enabled(v48, v49))
  {
    v51 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    v52 = aBlock;
    *v51 = 136315138;
    v53 = sub_1C5E04120();
    v55 = sub_1C5C6AB10(v53, v54, &aBlock);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_1C5C61000, log, v115, "— 􀊫 Searching for FirstAudioFrame event for %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x1C6956920](v52, -1, -1);
    MEMORY[0x1C6956920](v51, -1, -1);
  }

  v89 = sub_1C6016840();
  v90 = [v103 findPreviousEventWithType:@"item-first-audio-frame" matchingPayload:v89];

  if (v90)
  {

    v91 = sub_1C60162B0();
    v92 = sub_1C6016F30();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_1C5C61000, v91, v92, "—— 􀹴 Successful FirstAudioFrame", v93, 2u);
      MEMORY[0x1C6956920](v93, -1, -1);
    }

LABEL_33:
    swift_unknownObjectRelease();
    return;
  }

  v94 = sub_1C60162B0();
  v95 = sub_1C6016F30();
  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&dword_1C5C61000, v94, v95, "—— 􀐫 Waiting on FirstAudioFrame", v96, 2u);
    MEMORY[0x1C6956920](v96, -1, -1);
  }

  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  v106[0] = 5450;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_1C6017540();

  *&aBlock = 0xD00000000000001FLL;
  *(&aBlock + 1) = 0x80000001C60566E0;
  v97 = sub_1C5E04120();
  MEMORY[0x1C69534E0](v97);

  sub_1C6016880();
  _s3__C4CodeOMa_1();
  sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
  sub_1C6017280();

  swift_willThrow();

  swift_unknownObjectRelease();
}

uint64_t sub_1C5E0EE60(void *a1, _BYTE *a2, _BYTE *a3)
{
  v5 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v6 = MEMORY[0x1E69E7CA0];
  v7 = sub_1C6016860();

  sub_1C5CFF1CC(v7, &v10);

  if (!v11)
  {
    return sub_1C5E101E4(&v10, &qword_1ED7E0200, v6 + 8);
  }

  result = swift_dynamicCast();
  if (result)
  {
    if (sub_1C6016A60() & 1) != 0 || (sub_1C6016A60())
    {

LABEL_6:
      *a3 = 1;
      *a2 = 1;
      return result;
    }

    v9 = sub_1C6016A60();

    if (v9)
    {
      goto LABEL_6;
    }
  }

  return result;
}

void sub_1C5E0F014(uint64_t a1, void *a2)
{
  sub_1C5E0F1BC(a2);
  if (!v2)
  {
    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6017540();

    v3 = sub_1C5E04120();
    MEMORY[0x1C69534E0](v3);

    sub_1C6016880();
    _s3__C4CodeOMa_1();
    sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    sub_1C6017280();

    swift_willThrow();
  }
}

void sub_1C5E0F1BC(void *a1)
{
  v3 = MEMORY[0x1E69E6F90];
  sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C60311E0;
  *(inited + 32) = @"network-request-context-info";
  sub_1C5E10254(0, &qword_1EC1ABDC8, sub_1C5E10340, v3);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C60311E0;
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  *(v5 + 56) = v6;
  *(v5 + 32) = @"network-request-initiator";
  v7 = sub_1C5C64D74(0, &qword_1EC1A92B0);
  v8 = @"network-request-context-info";
  v9 = @"network-request-initiator";
  v10 = sub_1C60172F0();
  *(v5 + 88) = v7;
  *(v5 + 64) = v10;
  sub_1C5C64D74(0, &unk_1EC1A8C70);
  *(inited + 40) = sub_1C6016EA0();
  sub_1C5CC547C();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v11 = sub_1C6016880();
  sub_1C5E0F6D8(v11, a1);
  if (v1)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    v34 = v12;
    v35 = sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
    v13 = sub_1C6017280();

    sub_1C5E10254(0, &qword_1EC1ABDC0, sub_1C5CB5808, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C60311E0;
    *(v14 + 32) = v1;
    *&v38 = v13;
    v15 = v1;
    sub_1C5D4A854();
    v16 = v13;
    v17 = sub_1C6017810();
    v36 = v16;
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = swift_allocError();
      *v19 = v16;
    }

    v20 = sub_1C6014D30();

    v21 = [v20 domain];
    v22 = sub_1C6016940();
    v24 = v23;

    v25 = [v20 code];
    v26 = [v20 userInfo];
    v27 = sub_1C6016860();

    v28 = sub_1C6016940();
    v30 = v29;
    sub_1C5E10254(0, &unk_1EC1ABE70, sub_1C5CB5808, MEMORY[0x1E69E62F8]);
    v39 = v31;
    *&v38 = v14;
    sub_1C5C70758(&v38, v37);
    swift_isUniquelyReferenced_nonNull_native();
    v40 = v27;
    sub_1C5E2072C(v37, v28, v30);

    v32 = v40;
    v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    sub_1C5E2067C(v22, v24, v25, v32);

    swift_willThrow();
  }

  else
  {
  }
}

uint64_t sub_1C5E0F6D8(uint64_t a1, void *a2)
{
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5CC547C();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v3 = sub_1C6016840();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = &v9;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C5E103A0;
  *(v5 + 24) = v4;
  v8[4] = sub_1C5D3810C;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1C5D378E4;
  v8[3] = &block_descriptor_15;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  [a2 enumeratePreviousEventsWithType:@"network-task-begin" matchingPayload:v3 usingBlock:v6];

  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      swift_willThrow();
    }
  }

  return result;
}

void sub_1C5E0F8E4(void *a1, _BYTE *a2, void *a3, id *a4)
{
  v4 = [a1 payload];
  type metadata accessor for MPCPlaybackEngineEventPayloadKey();
  sub_1C5E1019C(&qword_1ED7DCDA0, type metadata accessor for MPCPlaybackEngineEventPayloadKey);
  v5 = sub_1C6016860();
  sub_1C5CFF1CC(v5, &v44);

  if (v45)
  {

    sub_1C5C70758(&v44, &v46);
    sub_1C5C64D74(0, &qword_1EC1A92B0);
    swift_dynamicCast();
    v6 = MEMORY[0x1E69E6F90];
    sub_1C5E10254(0, &unk_1ED7DCB20, sub_1C5CC540C, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C60311E0;
    *(inited + 32) = @"network-request-id";
    *(inited + 40) = v43;
    sub_1C5CC547C();
    v8 = @"network-request-id";
    v9 = v43;
    sub_1C6016880();
    sub_1C5E10254(0, qword_1ED7DCB30, type metadata accessor for MPCPlaybackEngineEventType, v6);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C60311E0;
    *(v10 + 32) = @"network-task-end";
    type metadata accessor for MPCPlaybackEngineEventType();
    v11 = @"network-task-end";
    v12 = sub_1C6016AF0();

    v13 = sub_1C6016840();
    v14 = [a3 findPreviousEventWithTypes:v12 matchingPayload:v13];

    if (v14)
    {

LABEL_14:

      return;
    }

    *a2 = 1;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C6031150;
    *(v15 + 32) = @"network-task-begin";
    *(v15 + 40) = @"network-task-resume";
    *(v15 + 48) = @"network-task-response";
    v16 = @"network-task-begin";
    @"network-task-resume";
    v17 = @"network-task-response";
    v18 = sub_1C6016AF0();

    v19 = sub_1C6016840();
    v20 = [a3 findPreviousEventWithTypes:v18 matchingPayload:v19];

    if (v20)
    {

      v21 = [v20 type];
      v22 = sub_1C6016940();
      v24 = v23;
      if (v22 == sub_1C6016940() && v24 == v25)
      {
      }

      else
      {
        v27 = sub_1C6017860();

        if ((v27 & 1) == 0)
        {
          v34 = sub_1C6016940();
          v36 = v35;
          if (v34 == sub_1C6016940() && v36 == v37)
          {
          }

          else
          {
            v39 = sub_1C6017860();

            if ((v39 & 1) == 0)
            {
              sub_1C5C64D74(0, &qword_1ED7DCCF0);
              sub_1C6016940();
              *&v44 = 5502;
              *&v46 = 0;
              *(&v46 + 1) = 0xE000000000000000;
              sub_1C6017540();

              *&v46 = 0xD000000000000028;
              *(&v46 + 1) = 0x80000001C6056420;
              v28 = [v9 description];
              goto LABEL_13;
            }
          }

          sub_1C5C64D74(0, &qword_1ED7DCCF0);
          sub_1C6016940();
          *&v44 = 5501;
          *&v46 = 0;
          *(&v46 + 1) = 0xE000000000000000;
          sub_1C6017540();

          *&v46 = 0xD000000000000027;
          *(&v46 + 1) = 0x80000001C6056450;
          v28 = [v9 description];
          goto LABEL_13;
        }
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *&v44 = 5500;
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;
      sub_1C6017540();

      *&v46 = 0xD000000000000026;
      *(&v46 + 1) = 0x80000001C6056480;
      v28 = [v9 description];
LABEL_13:
      v29 = v28;
      v30 = sub_1C6016940();
      v32 = v31;

      MEMORY[0x1C69534E0](v30, v32);

      sub_1C6016880();
      _s3__C4CodeOMa_1();
      sub_1C5E1019C(&qword_1EC1A9320, _s3__C4CodeOMa_1);
      v33 = sub_1C6017280();

      v14 = *a4;
      *a4 = v33;
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void __swiftcall _MPCMediaRemoteDetective.init()(_MPCMediaRemoteDetective *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1C5E100C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C5D01CC4;

  return sub_1C5E0562C(v2, v3, v4);
}

uint64_t sub_1C5E1018C(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1C5E1019C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5E101E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1C5C676C0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1C5E10254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5E102B8(uint64_t a1, uint64_t a2)
{
  sub_1C5C676C0(0, &qword_1EC1A9480, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C5E10340()
{
  if (!qword_1EC1ABDD0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1ABDD0);
    }
  }
}

void sub_1C5E103B8()
{
  if (!qword_1EC1ABE48)
  {
    type metadata accessor for MPCPlaybackEngineEventItemAssetLoadInfoKey();
    sub_1C5E1019C(&qword_1EC1A8A90, type metadata accessor for MPCPlaybackEngineEventItemAssetLoadInfoKey);
    v0 = sub_1C60168A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1ABE48);
    }
  }
}

void sub_1C5E10480()
{
  OUTLINED_FUNCTION_146_1();
  if (v1)
  {
    sub_1C5E21360();
    OUTLINED_FUNCTION_19_27();
    v2 = sub_1C60176F0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_29_16();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v0 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1C5C653C8(*(v0 + 56) + 32 * v11, v33);
    *&v32 = v14;
    *(&v32 + 1) = v13;
    v30[2] = v32;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v30[0] = v32;

    swift_dynamicCast();
    sub_1C5C70758(v31, v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1C5C70758(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1C5C70758(v29, v30);
    v15 = sub_1C60174A0() & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        if (*(v8 + 8 * v17) != -1)
        {
          OUTLINED_FUNCTION_5();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_7();
LABEL_21:
    v6 &= v6 - 1;
    *(v8 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    sub_1C5C70758(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1C5E10700()
{
  OUTLINED_FUNCTION_146_1();
  if (v1)
  {
    sub_1C5E21360();
    OUTLINED_FUNCTION_19_27();
    v2 = sub_1C60176F0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_29_16();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (*(v0 + 48) + 16 * v11);
    v13 = v12[1];
    v14 = *(*(v0 + 56) + 8 * v11);
    *&v49 = *v12;
    *(&v49 + 1) = v13;

    v15 = v14;
    swift_dynamicCast();
    sub_1C5C64D74(0, &qword_1ED7DCCD0);
    swift_dynamicCast();
    v16 = OUTLINED_FUNCTION_98_2();
    v17 = sub_1C5C70758(v16, v48);
    OUTLINED_FUNCTION_130_2(v17, v18, v19, v20, v21, v22, v23, v24, v31, v15, v34, v36, v37, v39, v40, v42, v43, v44, v45, v46, v47);
    sub_1C5C70758(v48, &v49);
    v25 = sub_1C60174A0() & ~(-1 << *(v2 + 32));
    if (((-1 << v25) & ~*(v8 + 8 * (v25 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      while (++v27 != v29 || (v28 & 1) == 0)
      {
        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        if (*(v8 + 8 * v27) != -1)
        {
          OUTLINED_FUNCTION_5();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_7();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_42_13(v26, v32, v33, v35, v38, v41);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1C5E10914(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CA0];
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_10_32();
    sub_1C5C8F9EC(0, v3, v2 + 8, v4);
    OUTLINED_FUNCTION_19_27();
    v5 = sub_1C60176F0();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_22_21();
  v8 = v7 & v6;
  OUTLINED_FUNCTION_114_0();

  for (i = 0; v8; v2 = v16)
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
    v15 = *v13;
    v14 = v13[1];

    v16 = v2;
    swift_dynamicCast();
    sub_1C5C70758(&v28, v30);
    sub_1C5C70758(v30, v31);
    sub_1C5C70758(v31, &v29);
    result = sub_1C5CE2084(v15, v14);
    v17 = result;
    if (v18)
    {
      v19 = (v5[6] + 16 * result);
      *v19 = v15;
      v19[1] = v14;

      v20 = (v5[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_0(v20);
      result = sub_1C5C70758(&v29, v20);
    }

    else
    {
      if (v5[2] >= v5[3])
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_96_1((result >> 3) & 0x1FFFFFFFFFFFFFF8, v26);
      v22 = (v21 + 16 * v17);
      *v22 = v15;
      v22[1] = v14;
      result = sub_1C5C70758(&v29, (v5[7] + 32 * v17));
      v23 = v5[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_19;
      }

      v5[2] = v25;
    }

    i = v11;
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v1)
    {

      return v5;
    }

    v8 = *(a1 + 64 + 8 * v11);
    ++i;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_1C5E10B28()
{
  OUTLINED_FUNCTION_146_1();
  if (v1)
  {
    sub_1C5E21360();
    OUTLINED_FUNCTION_19_27();
    v2 = sub_1C60176F0();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_29_16();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
    v12 = (*(v0 + 48) + v11);
    v13 = v12[1];
    v14 = (*(v0 + 56) + v11);
    v16 = *v14;
    v15 = v14[1];
    *&v49 = *v12;
    *(&v49 + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v17 = OUTLINED_FUNCTION_98_2();
    v18 = sub_1C5C70758(v17, v48);
    OUTLINED_FUNCTION_130_2(v18, v19, v20, v21, v22, v23, v24, v25, v16, v15, v34, v36, v37, v39, v40, v42, v43, v44, v45, v46, v47);
    sub_1C5C70758(v48, &v49);
    v26 = sub_1C60174A0() & ~(-1 << *(v2 + 32));
    if (((-1 << v26) & ~*(v8 + 8 * (v26 >> 6))) == 0)
    {
      OUTLINED_FUNCTION_6_7();
      while (++v28 != v30 || (v29 & 1) == 0)
      {
        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        if (*(v8 + 8 * v28) != -1)
        {
          OUTLINED_FUNCTION_5();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    OUTLINED_FUNCTION_7();
LABEL_21:
    v6 &= v6 - 1;
    OUTLINED_FUNCTION_42_13(v27, v32, v33, v35, v38, v41);
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1C5E10D34(void *a1)
{
  if (a1[2])
  {
    OUTLINED_FUNCTION_10_32();
    v2 = OUTLINED_FUNCTION_195();
    sub_1C5C8F9EC(v2, v3, v4, v5);
    OUTLINED_FUNCTION_19_27();
    v6 = sub_1C60176F0();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_22_21();
  v9 = v8 & v7;
  OUTLINED_FUNCTION_114_0();

  v11 = 0;
  while (v9)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (a1[6] + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(a1[7] + 8 * v14);
    sub_1C5C64D74(0, &qword_1ED7DCCD0);

    v19 = v18;
    swift_dynamicCast();
    sub_1C5C70758(&v33, v35);
    sub_1C5C70758(v35, v36);
    sub_1C5C70758(v36, &v34);
    v20 = OUTLINED_FUNCTION_6_3();
    result = sub_1C5CE2084(v20, v21);
    v22 = result;
    if (v23)
    {
      v24 = (v6[6] + 16 * result);
      *v24 = v17;
      v24[1] = v16;

      v25 = (v6[7] + 32 * v22);
      __swift_destroy_boxed_opaque_existential_0(v25);
      result = sub_1C5C70758(&v34, v25);
      v11 = v12;
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_96_1((result >> 3) & 0x1FFFFFFFFFFFFFF8, v31);
      v27 = (v26 + 16 * v22);
      *v27 = v17;
      v27[1] = v16;
      result = sub_1C5C70758(&v34, (v6[7] + 32 * v22));
      v28 = v6[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_18;
      }

      v6[2] = v30;
      v11 = v12;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v1)
    {

      return v6;
    }

    v9 = a1[v12 + 8];
    ++v11;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1C5E10F64()
{
  OUTLINED_FUNCTION_146_1();
  if (v1)
  {
    OUTLINED_FUNCTION_10_32();
    v2 = OUTLINED_FUNCTION_195();
    sub_1C5C8F9EC(v2, v3, v4, v5);
    OUTLINED_FUNCTION_19_27();
    v6 = sub_1C60176F0();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_22_21();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;

  v13 = 0;
  while (v9)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v0 + 48) + 16 * (v15 | (v14 << 6)));
    v18 = *v16;
    v17 = v16[1];

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_1C5C70758(&v29, v31);
    sub_1C5C70758(v31, v32);
    sub_1C5C70758(v32, &v30);
    v19 = OUTLINED_FUNCTION_303();
    result = sub_1C5CE2084(v19, v20);
    v21 = result;
    if (v22)
    {
      v23 = (v6[6] + 16 * result);
      *v23 = v18;
      v23[1] = v17;

      v24 = (v6[7] + 32 * v21);
      __swift_destroy_boxed_opaque_existential_0(v24);
      result = sub_1C5C70758(&v30, v24);
      v13 = v14;
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_17;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v25 = (v6[6] + 16 * result);
      *v25 = v18;
      v25[1] = v17;
      result = sub_1C5C70758(&v30, (v6[7] + 32 * result));
      v26 = v6[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v6[2] = v28;
      v13 = v14;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v6;
    }

    v9 = *(v0 + 64 + 8 * v14);
    ++v13;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1C5E1118C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1C5C8F9EC(0, &qword_1EC1A8930, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6EC8]);
    v2 = sub_1C60176F0();
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
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_1C5C70758(&v22, v24);
    sub_1C5C70758(v24, v25);
    sub_1C5C70758(v25, &v23);
    result = sub_1C5CE2084(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_0(v17);
      result = sub_1C5C70758(&v23, v17);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v2[6] + 16 * result);
      *v18 = v13;
      v18[1] = v12;
      result = sub_1C5C70758(&v23, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1C5E113F4()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_2_49();
  sub_1C5C67EBC(0, v6, v7, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_47_0(v9, v13);
  v10 = sub_1C6016C30();
  OUTLINED_FUNCTION_124_1(v10);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C5C67CF4(v1);
  }

  else
  {
    sub_1C6016C20();
    OUTLINED_FUNCTION_50_0();
    (*(v11 + 8))(v1, v4);
  }

  v12 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v12)
  {
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_2_49();
    sub_1C5C67CF4(v2);
    sub_1C5D4A7EC();
    OUTLINED_FUNCTION_109_1();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C6016BA0();
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6_3();
  sub_1C60169C0();
  sub_1C5D4A7EC();

  swift_task_create();
  OUTLINED_FUNCTION_73();

  OUTLINED_FUNCTION_2_49();
  sub_1C5C67CF4(v2);

LABEL_9:
  OUTLINED_FUNCTION_237();
}

void sub_1C5E1161C()
{
  OUTLINED_FUNCTION_247();
  OUTLINED_FUNCTION_93_2();
  OUTLINED_FUNCTION_2_49();
  sub_1C5C67EBC(0, v6, v7, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00]();
  OUTLINED_FUNCTION_47_0(v8, v12);
  v9 = sub_1C6016C30();
  OUTLINED_FUNCTION_124_1(v9);
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_2_49();
    sub_1C5C67CF4(v1);
  }

  else
  {
    sub_1C6016C20();
    OUTLINED_FUNCTION_50_0();
    (*(v10 + 8))(v1, v4);
  }

  v11 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v11)
  {
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_2_49();
    sub_1C5C67CF4(v2);
    OUTLINED_FUNCTION_109_1();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C6016BA0();
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_6_3();
  sub_1C60169C0();

  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_250();

  OUTLINED_FUNCTION_2_49();
  sub_1C5C67CF4(v2);

LABEL_9:
  OUTLINED_FUNCTION_237();
}

id sub_1C5E1182C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_1C6014D30();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() statusWithCode:a1 error:v4];

  return v5;
}

void _MediaRemotePublisher.__allocating_init(_:)()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_206());
  OUTLINED_FUNCTION_73();
  _MediaRemotePublisher.init(_:)();
}

uint64_t _MediaRemotePublisher.performSetQueue(event:installQueueBeforeLoaded:donatedStartPlayerItem:)()
{
  OUTLINED_FUNCTION_248();
  *(v1 + 320) = v2;
  *(v1 + 328) = v0;
  *(v1 + 504) = v3;
  *(v1 + 312) = v4;
  OUTLINED_FUNCTION_2_49();
  sub_1C5C67EBC(0, v5, v6, MEMORY[0x1E69E6720]);
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = sub_1C6016C10();
  *(v1 + 352) = sub_1C6016C00();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  *(v1 + 360) = v7;
  *(v1 + 368) = v8;
  v9 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5E119B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[47] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong playbackEngine];
    v0[48] = v3;
    if (v3)
    {
      v4 = swift_task_alloc();
      v0[49] = v4;
      *v4 = v0;
      v4[1] = sub_1C5E11CD0;

      return MEMORY[0x1EEE41840](0xD00000000000001ELL, 0x80000001C6056A40);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_122_1();
    v0[30] = 60;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_1_61();
    sub_1C5E20B48(v7, v8);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();
  }

  else
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v0[29] = 28;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_1_61();
    sub_1C5E20B48(v5, v6);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_28_13();
    sub_1C6017280();
    OUTLINED_FUNCTION_73();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_172();

  return v9();
}

uint64_t sub_1C5E11CD0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 400) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 368);
  v7 = *(v1 + 360);
  if (v0)
  {
    v8 = sub_1C5E12B78;
  }

  else
  {
    v8 = sub_1C5E11DF8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E11DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_60_2();
  v18 = *(v16 + 384);
  v19 = *(v16 + 312);
  v20 = sub_1C5CB50F4(v19, &selRef_commandID);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  MEMORY[0x1C69534E0](v20, v22);

  v23 = sub_1C6016900();

  [v18 takeCriticalSectionAssertion_];

  sub_1C6017390();
  swift_unknownObjectRelease();
  v24 = [v19 playbackQueue];
  if (!v24)
  {
    __break(1u);
    goto LABEL_17;
  }

  v32 = v24;
  v33 = *(v16 + 312);
  v34 = [v24 isRequestingImmediatePlayback];

  v24 = [v33 playbackQueue];
  if (!v24)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return MEMORY[0x1EEE6DA10](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, 0x6575657551746553, 0xE900000000000020, a14, a15, a16);
  }

  sub_1C5E20960(v24);
  *(v16 + 408) = v35;
  if (v35)
  {
  }

  else
  {
    v36 = [*(v16 + 312) playbackQueue];
    if (v36)
    {
      v37 = v36;
      objc_opt_self();
      OUTLINED_FUNCTION_34_4();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        [v38 shouldSkipWaitingForReadyToPlayStatus];
      }
    }
  }

  v39 = *(v16 + 384);
  v40 = *(v16 + 312);
  v41 = swift_allocObject();
  *(v16 + 416) = v41;
  *(v41 + 16) = 0;
  *(v41 + 24) = 1;
  v42 = [v39 leaseManager];
  [v42 setCanStealLeaseIfNeeded];

  v43 = [v39 player];
  v24 = sub_1C5CB50F4(v40, &selRef_commandID);
  if (!v25)
  {
    goto LABEL_18;
  }

  v44 = *(v16 + 376);
  HIDWORD(a11) = *(v16 + 504);
  v45 = *(v16 + 312);
  a9 = *(v16 + 320);
  a10 = *(v16 + 384);
  sub_1C6016900();
  OUTLINED_FUNCTION_137_2();

  [v43 prepareToPlayWithIdentifier:v17 isRequestingImmediatePlayback:v34];

  sub_1C6016C30();
  OUTLINED_FUNCTION_152_1();

  v46 = v44;
  v47 = v45;
  v48 = sub_1C6016C00();
  OUTLINED_FUNCTION_139_2();
  v49 = swift_allocObject();
  v50 = MEMORY[0x1E69E85E0];
  *(v49 + 16) = v48;
  *(v49 + 24) = v50;
  v51 = v50;
  *(v49 + 32) = v34;
  *(v49 + 40) = v41;
  *(v49 + 48) = v46;
  *(v49 + 56) = v47;
  OUTLINED_FUNCTION_66_9();
  sub_1C5E1161C();
  *(v16 + 424) = v52;
  OUTLINED_FUNCTION_152_1();
  v53 = a9;
  v54 = v47;
  v55 = a10;
  v56 = sub_1C6016C00();
  OUTLINED_FUNCTION_139_2();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v51;
  *(v57 + 32) = v55;
  *(v57 + 40) = v54;
  *(v57 + 48) = BYTE4(a11);
  *(v57 + 56) = a9;
  OUTLINED_FUNCTION_66_9();
  sub_1C5E1161C();
  *(v16 + 432) = v58;
  v59 = swift_task_alloc();
  *(v16 + 440) = v59;
  *(v16 + 448) = sub_1C5C74680(0, &qword_1ED7DCAE0);
  *v59 = v16;
  v59[1] = sub_1C5E121F8;
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6DA10](v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, 0x6575657551746553, 0xE900000000000020, a14, a15, a16);
}

uint64_t sub_1C5E121F8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 456) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 368);
  v7 = *(v1 + 360);
  if (v0)
  {
    v8 = sub_1C5E12BE8;
  }

  else
  {
    v8 = sub_1C5E12320;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E12320()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_1C5E123C8;

  return MEMORY[0x1EEE6DA10]();
}

uint64_t sub_1C5E123C8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 472) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 368);
  v7 = *(v1 + 360);
  if (v0)
  {
    v8 = sub_1C5E12E60;
  }

  else
  {
    v8 = sub_1C5E124F0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E124F0()
{
  OUTLINED_FUNCTION_248();
  v1 = swift_task_alloc();
  v0[60] = v1;
  *v1 = v0;
  v1[1] = sub_1C5E12580;
  v2 = v0[48];
  v3 = v0[39];

  return sub_1C5E1381C(v1, v2, v3);
}

uint64_t sub_1C5E12580()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[61] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_235();
  }

  else
  {
    v8 = v3[45];
    v9 = v3[46];
    v7 = sub_1C5E12680;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5E12680()
{
  OUTLINED_FUNCTION_35();
  v1 = v0[51];
  v3 = v0[47];
  v2 = v0[48];

  v4 = [v2 player];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  [v4 extendLifetimeUntilFirstAudioFrame:sub_1C6017850() isSiriSetQueue:v1 != 0];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  OUTLINED_FUNCTION_14_3();

  return v5();
}

uint64_t sub_1C5E1279C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_60_2();
  v25 = *(v24 + 488);
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  *(v24 + 296) = 2000;
  sub_1C6016880();
  _s3__C4CodeOMa_1();
  v27 = v26;
  OUTLINED_FUNCTION_0_76();
  sub_1C5E20B48(v28, v29);
  OUTLINED_FUNCTION_100();
  sub_1C6017280();
  OUTLINED_FUNCTION_137_2();

  OUTLINED_FUNCTION_14_27(v30, &qword_1EC1ABDC0);
  OUTLINED_FUNCTION_178();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C60311E0;
  *(v31 + 32) = v25;
  *(v24 + 304) = v27;
  v32 = v25;
  OUTLINED_FUNCTION_3_49();
  sub_1C5E20B8C(v33, &qword_1ED7DCCF0);
  v34 = v27;
  OUTLINED_FUNCTION_77_6();
  v35 = sub_1C6017810();
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    OUTLINED_FUNCTION_10_1();
    v36 = swift_allocError();
    *v37 = v34;
  }

  v51 = *(v24 + 488);
  v38 = sub_1C6014D30();

  v39 = [v38 domain];
  sub_1C6016940();

  [v38 code];
  v40 = [v38 userInfo];
  sub_1C6016860();

  v41 = sub_1C6016940();
  v43 = v42;
  OUTLINED_FUNCTION_13_29(v41, &unk_1EC1ABE70);
  *(v24 + 72) = v44;
  *(v24 + 48) = v31;
  sub_1C5C70758((v24 + 48), (v24 + 80));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C5E2072C((v24 + 80), v41, v43);

  v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  *(v24 + 496) = OUTLINED_FUNCTION_89_2();

  swift_willThrow();
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6DFA0](v46, v47, v48);
}

uint64_t sub_1C5E12AAC()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 416);

  OUTLINED_FUNCTION_27();
  v2 = *(v1 + 24);
  v3 = *(v0 + 376);
  v4 = *(v0 + 384);
  if ((v2 & 1) == 0)
  {
    [*(v0 + 376) deactivateAudioSessionIfIdle_];
  }

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  OUTLINED_FUNCTION_172();

  return v5();
}

uint64_t sub_1C5E12B78()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  OUTLINED_FUNCTION_172();

  return v3();
}

void sub_1C5E12BE8()
{
  v1 = *(v0 + 456);

  *(v0 + 248) = v1;
  v2 = v1;
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 416);

    v4 = *(v0 + 256);
    sub_1C6016940();
    OUTLINED_FUNCTION_45_10();
    *(v0 + 264) = 1001;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v5, v6);
    OUTLINED_FUNCTION_85_0();
    sub_1C6017290();
    OUTLINED_FUNCTION_312();

    swift_willThrow();

    OUTLINED_FUNCTION_27();
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    if (*(v3 + 24) != 1)
    {
      [*(v0 + 376) deactivateAudioSessionIfIdle_];
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 416);

    OUTLINED_FUNCTION_27();
    v10 = *(v0 + 376);
    v11 = *(v0 + 384);
    if (*(v9 + 24) != 1)
    {
      [*(v0 + 376) deactivateAudioSessionIfIdle_];
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_19_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C5E12E60()
{
  OUTLINED_FUNCTION_35();
  v1 = *(v0 + 472);

  *(v0 + 272) = v1;
  v2 = v1;
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 416);

    v4 = *(v0 + 280);
    sub_1C6016940();
    OUTLINED_FUNCTION_45_10();
    *(v0 + 288) = 3008;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v5, v6);
    OUTLINED_FUNCTION_85_0();
    sub_1C6017290();
    OUTLINED_FUNCTION_312();

    swift_willThrow();

    OUTLINED_FUNCTION_27();
    v7 = *(v0 + 376);
    v8 = *(v0 + 384);
    if (*(v3 + 24) != 1)
    {
      [*(v0 + 376) deactivateAudioSessionIfIdle_];
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 416);

    OUTLINED_FUNCTION_27();
    v10 = *(v9 + 24);
    v11 = *(v0 + 376);
    v12 = *(v0 + 384);
    if (v10 != 1)
    {
      [*(v0 + 376) deactivateAudioSessionIfIdle_];
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  OUTLINED_FUNCTION_172();

  return v13();
}

uint64_t sub_1C5E130D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = a7;
  *(v7 + 152) = a5;
  *(v7 + 216) = a4;
  sub_1C6016C10();
  *(v7 + 176) = sub_1C6016C00();
  v9 = sub_1C6016BA0();
  *(v7 + 184) = v9;
  *(v7 + 192) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C5E13178, v9, v8);
}

uint64_t sub_1C5E13178()
{
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_9();
  if ((*(v0 + 216) & 1) != 0 || MSVDeviceIsAudioAccessory())
  {
    v1 = sub_1C5CB50F4(*(v0 + 168), &selRef_commandID);
    if (v2)
    {
      v3 = *(v0 + 160);
      v4 = sub_1C6016900();
      *(v0 + 200) = v4;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_1C5E132EC;
      v5 = OUTLINED_FUNCTION_168_0();
      sub_1C5E21570(0, &unk_1EC1A8D28);
      OUTLINED_FUNCTION_41_10(v6);
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1C5CFEB9C;
      *(v0 + 104) = &block_descriptor_122_1;
      *(v0 + 112) = v5;
      [v3 becomeActiveIfNeededWithCommandID:v4 completion:v0 + 80];
      OUTLINED_FUNCTION_159_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v1);
  }

  else
  {

    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_159_0();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }
}

uint64_t sub_1C5E132EC()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 192);
  v7 = *(v6 + 184);
  if (v8)
  {
    v9 = sub_1C5E13494;
  }

  else
  {
    v9 = sub_1C5E13408;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E13408()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[25];
  v2 = v0[19];

  v3 = v0[18];
  swift_beginAccess();
  *(v2 + 16) = v3;
  *(v2 + 24) = 0;

  OUTLINED_FUNCTION_14_3();

  return v4();
}

uint64_t sub_1C5E13494()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 200);

  swift_willThrow();

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5E13504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 24) = a5;
  *(v7 + 32) = a7;
  *(v7 + 88) = a6;
  *(v7 + 16) = a4;
  sub_1C6016C10();
  *(v7 + 40) = sub_1C6016C00();
  v9 = sub_1C6016BA0();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C5E135A4, v9, v8);
}

uint64_t sub_1C5E135A4()
{
  OUTLINED_FUNCTION_248();
  sub_1C5C75008();
  OUTLINED_FUNCTION_80_6();
  v1[8] = v0;

  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_1C5E13658;
  OUTLINED_FUNCTION_21_25(v1[3]);

  return PlaybackEngineSessionManager.performSetQueue(event:installQueueBeforeLoaded:donatedStartPlayerItem:)();
}

uint64_t sub_1C5E13658()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[10] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1C5E137B4;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1C5E1375C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5E1375C()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_14_3();

  return v0();
}

uint64_t sub_1C5E137B4()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5E1381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[20] = sub_1C6016C10();
  v3[21] = sub_1C6016C00();
  v4 = swift_task_alloc();
  v3[22] = v4;
  *v4 = v3;
  v4[1] = sub_1C5E138E0;

  return MEMORY[0x1EEE41840](0xD000000000000021, 0x80000001C6057300);
}

uint64_t sub_1C5E138E0()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  *v3 = *v1;
  v2[23] = v0;

  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  if (!v0)
  {
    v2[24] = v5;
    v2[25] = v4;
  }

  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C5E13A2C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 152);
  v2 = [*(v0 + 144) player];
  *(v0 + 208) = v2;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1C5E13B58;
  v3 = OUTLINED_FUNCTION_168_0();
  v4 = OUTLINED_FUNCTION_195();
  sub_1C5E21570(v4, v5);
  *(v0 + 136) = v6;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C5E223AC;
  *(v0 + 104) = &block_descriptor_116;
  *(v0 + 112) = v3;
  [v2 finalizeSetQueue:v1 completion:v0 + 80];
  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DEC8](v7);
}

uint64_t sub_1C5E13B58()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 216) = *(v3 + 48);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 200);
  v7 = *(v6 + 192);
  if (v8)
  {
    v9 = sub_1C5E13D30;
  }

  else
  {
    v9 = sub_1C5E13C74;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E13C74()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 208);

  OUTLINED_FUNCTION_14_3();

  return v2();
}

uint64_t sub_1C5E13CD4()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5E13D30()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 208);

  swift_willThrow();

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5E13E44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  sub_1C6016C10();
  *(v5 + 48) = sub_1C6016C00();
  v7 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E13EE4, v7, v6);
}

uint64_t sub_1C5E13EE4()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1C5E13FB0;

  return _MediaRemotePublisher.performSetQueue(event:installQueueBeforeLoaded:donatedStartPlayerItem:)();
}

uint64_t sub_1C5E13FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_101();
  *v13 = v12;
  v14 = *(v12 + 40);
  v15 = *(v12 + 24);
  v16 = *(v12 + 16);
  *v13 = *v11;

  OUTLINED_FUNCTION_102_1();
  if (v10)
  {
    sub_1C6014D30();

    v17 = OUTLINED_FUNCTION_11_23();
    v18(v17, v12);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_11_23();
    v20(v19, 0);
  }

  _Block_release(*(v12 + 56));
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_31();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t _MediaRemotePublisher.getFallbackIntent(for:)()
{
  OUTLINED_FUNCTION_248();
  v1[29] = v2;
  v1[30] = v0;
  sub_1C6016C10();
  v1[31] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[32] = v3;
  v1[33] = v4;
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5E141A8()
{
  v63 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong playbackEngine], *(v0 + 272) = v3, v2, !v3))
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_88();
    *(v0 + 208) = v15;
    sub_1C6016880();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_1_61();
    sub_1C5E20B48(v16, v17);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_73();

    swift_willThrow();
    goto LABEL_12;
  }

  v4 = [v3 fallbackPlaybackIntent];
  *(v0 + 280) = v4;
  if (![v3 isSystemMusicApplication])
  {

    if (qword_1ED7DD2B0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C60162D0();
    __swift_project_value_buffer(v20, qword_1ED7E1690);
    v21 = sub_1C60162B0();
    v22 = sub_1C6016F30();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C5C61000, v21, v22, "[Publisher] returning app provided fallback intent [not system music]", v23, 2u);
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_8_3();

    __asm { BRAA            X2, X16 }
  }

  v5 = [*(v0 + 232) userIdentity];
  if (!v5)
  {
    v5 = [objc_opt_self() defaultMediaIdentity];
  }

  *(v0 + 288) = v5;
  v6 = [objc_opt_self() sharedManager];
  v7 = [v6 accountForUserIdentity_];
  *(v0 + 296) = v7;

  v8 = [objc_opt_self() sharedMonitor];
  v9 = [v8 isRemoteServerLikelyReachable];
  *(v0 + 400) = v9;

  if (!v9 || (v10 = [objc_opt_self() sharedRestrictionsMonitor], v11 = objc_msgSend(v10, sel_allowsRadioService), v10, !v11))
  {
    v26 = 1;
LABEL_23:
    v27 = [objc_opt_self() deviceMediaLibraryWithUserIdentity_];
    *(v0 + 344) = v27;
    v28 = "rameworks/AssistantServices.framework/AssistantServices";
    if (v27)
    {
      v29 = v27;
      if ([v27 hasSongs])
      {
        v30 = OUTLINED_FUNCTION_66_9();
        sub_1C5E2167C(v30, v31, v32, v33);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C60311E0;
        sub_1C5C64D74(0, &unk_1EC1A9EC0);
        v62[3] = MEMORY[0x1E69E6530];
        v62[0] = 1444749940;
        v35 = sub_1C6016940();
        *(v0 + 224) = sub_1C5E15314(v62, v35, v36, 100);
        sub_1C5E20B8C(&qword_1EC1A9ED0, &unk_1EC1A9EC0);
        sub_1C60174C0();
        sub_1C5E1F068(inited);
        objc_allocWithZone(MEMORY[0x1E6970618]);
        v37 = v29;
        v38 = OUTLINED_FUNCTION_85_0();
        v40 = sub_1C5E1EEDC(v38, v39);
        if (!v40)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v40, v41, v42);
        }

        v43 = v40;
        v44 = [v40 _hasCollections];

        v28 = "softlink:r:path:/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices" + 40;
        if (v44)
        {
          v45 = v37;
          OUTLINED_FUNCTION_235();
          OUTLINED_FUNCTION_8_3();

          return MEMORY[0x1EEE6DFA0](v40, v41, v42);
        }
      }
    }

    if (v7)
    {
      v47 = v26;
    }

    else
    {
      v47 = 1;
    }

    if ((v47 & 1) == 0)
    {
      v55 = v7;
      OUTLINED_FUNCTION_206();
      v56 = swift_task_alloc();
      *(v0 + 360) = v56;
      *v56 = v0;
      v56[1] = sub_1C5E14FEC;
      OUTLINED_FUNCTION_60_9();
      goto LABEL_37;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *(v0 + 216) = 1;
    OUTLINED_FUNCTION_9_33();
    sub_1C5C67EBC(0, v48, v49, MEMORY[0x1E69E6F90]);
    v50 = swift_initStackObject();
    *(v50 + 16) = *(v28 + 30);
    *(v0 + 192) = sub_1C6016940();
    *(v0 + 200) = v51;
    sub_1C60174C0();
    v52 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(v50 + 96) = sub_1C5C64D74(0, &qword_1ED7DCCD0);
    *(v50 + 72) = v52;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v53, v54);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();

LABEL_12:
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_8_3();

    __asm { BRAA            X1, X16 }
  }

  if (!v7)
  {
LABEL_41:
    v26 = 0;
    goto LABEL_23;
  }

  v12 = v7;
  if (![v12 hasCatalogPlaybackCapability])
  {

    goto LABEL_41;
  }

  v13 = v12;
  OUTLINED_FUNCTION_73();
  v14 = swift_task_alloc();
  *(v0 + 304) = v14;
  *v14 = v0;
  v14[1] = sub_1C5E14A0C;
LABEL_37:
  OUTLINED_FUNCTION_8_3();

  return sub_1C5E1DF30(v57, v58, v59);
}

uint64_t sub_1C5E14A0C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  v7 = v6;
  OUTLINED_FUNCTION_30();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_101();
  *v10 = v9;
  v7[39] = v0;

  if (!v0)
  {
    v7[40] = v3;
    v7[41] = v5;
  }

  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C5E14B1C()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1C5E14B7C, v1, v2);
}

uint64_t sub_1C5E14B7C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_79_4();

  OUTLINED_FUNCTION_172();

  return v4();
}

uint64_t sub_1C5E14BF0()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[41];
  v2 = v0[37];
  objc_opt_self();
  OUTLINED_FUNCTION_126();
  sub_1C6016900();
  OUTLINED_FUNCTION_73();

  v3 = OUTLINED_FUNCTION_33_6();
  v5 = [v3 v4];
  v0[42] = v5;

  OUTLINED_FUNCTION_109();
  sub_1C5E208F0(0xD00000000000001BLL, v6, v5);

  v7 = v0[32];
  v8 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1C5E14CBC, v7, v8);
}

uint64_t sub_1C5E14CBC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_79_4();

  OUTLINED_FUNCTION_5_1();

  return v4();
}

uint64_t sub_1C5E14D34()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 344);
  v2 = *(v0 + 400);
  v3 = [objc_allocWithZone(MEMORY[0x1E69706C8]) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 kindWithVariants_];
  [v5 setItemKind_];

  [v5 setMediaLibrary_];
  if (v2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x64616F6C6E776F44;
  }

  if (v2)
  {
    v9 = 0xE000000000000000;
  }

  else
  {
    v9 = 0xEB00000000206465;
  }

  [v5 setFilteringOptions_];
  sub_1C6017540();

  MEMORY[0x1C69534E0](v8, v9);

  OUTLINED_FUNCTION_109();
  MEMORY[0x1C69534E0](0xD000000000000010);
  sub_1C6016900();
  OUTLINED_FUNCTION_126();

  [v5 setLabel_];

  v10 = [v5 playbackIntentWithStartItemIdentifiers_];
  *(v0 + 352) = v10;
  if (v10)
  {
    v13 = v10;
    [v10 setShuffleMode_];
    sub_1C5E208F0(0xD000000000000012, 0x80000001C6056B90, v13);

    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v10 = sub_1C5E14F60;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C5E14F60()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = v0[43];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[34];
  v4 = v0[35];

  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_142_2();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C5E14FEC()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_8_0();
  v7 = v6;
  OUTLINED_FUNCTION_30();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_101();
  *v10 = v9;
  v7[46] = v0;

  if (!v0)
  {
    v7[47] = v3;
    v7[48] = v5;
  }

  OUTLINED_FUNCTION_235();
  OUTLINED_FUNCTION_142_2();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C5E150FC()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[48];
  v2 = v0[37];
  objc_opt_self();
  OUTLINED_FUNCTION_126();
  sub_1C6016900();
  OUTLINED_FUNCTION_73();

  v3 = OUTLINED_FUNCTION_33_6();
  v5 = [v3 v4];
  v0[49] = v5;

  OUTLINED_FUNCTION_109();
  sub_1C5E208F0(0xD000000000000017, v6, v5);

  v7 = v0[32];
  v8 = v0[33];

  return MEMORY[0x1EEE6DFA0](sub_1C5E151C8, v7, v8);
}

uint64_t sub_1C5E151C8()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_79_4();

  OUTLINED_FUNCTION_5_1();

  return v4();
}

uint64_t sub_1C5E15240()
{
  OUTLINED_FUNCTION_248();

  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1C5E152A0, v1, v2);
}

uint64_t sub_1C5E152A0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_79_4();

  OUTLINED_FUNCTION_172();

  return v4();
}

id sub_1C5E15314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  if (v5)
  {
    v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v8 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_1C6017850();
    (*(v8 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1C6016900();

  v13 = [swift_getObjCClassFromMetadata() predicateWithValue:v11 forProperty:v12 comparisonType:a4];
  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_1C5E154B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C6016C10();
  v3[5] = sub_1C6016C00();
  v5 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E15550, v5, v4);
}

uint64_t sub_1C5E15550()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_165_0();
  *(v3 + 48) = _Block_copy(v1);
  v4 = v2;
  v5 = v0;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_82_4(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_8_36(v7);

  return _MediaRemotePublisher.getFallbackIntent(for:)();
}

uint64_t sub_1C5E155F4()
{
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_138_1();
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v2;
  OUTLINED_FUNCTION_101();
  *v7 = v6;

  OUTLINED_FUNCTION_102_1();
  v9 = *(v8 + 48);
  if (v0)
  {
    sub_1C6014D30();

    v10 = OUTLINED_FUNCTION_11_23();
    v11(v10, 0, v1);

    _Block_release(v9);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_11_23();
    v13(v12, v1, 0);
    _Block_release(v9);
  }

  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_159_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t _MediaRemotePublisher.performSetSession(event:)()
{
  OUTLINED_FUNCTION_248();
  v1[46] = v2;
  v1[47] = v0;
  sub_1C6016C10();
  v1[48] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[49] = v3;
  v1[50] = v4;
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5E157EC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  i = &selRef_currentThread;
  if (!Strong || (v4 = Strong, v5 = [Strong playbackEngine], *(v1 + 408) = v5, v4, !v5))
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_45_10();
    *(v1 + 264) = 60;
    v19 = "Playback engine deallocated";
    v5 = sub_1C6016880();
    _s3__C4CodeOMa_2();
    v21 = v20;
    OUTLINED_FUNCTION_1_61();
    v106 = v21;
    v107 = sub_1C5E20B48(v22, v23);
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_145_0();

    v24 = "Playback engine deallocated";
    swift_willThrow();
    goto LABEL_17;
  }

  v6 = [*(v1 + 368) type];
  *(v1 + 416) = v6;
  if (!v6)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_45_10();
    *(v1 + 312) = 8;
    v19 = "ure requires a subscription";
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_1();
    v30 = v29;
    OUTLINED_FUNCTION_0_76();
    v106 = v30;
    v107 = sub_1C5E20B48(v31, v32);
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_145_0();

    v24 = "ure requires a subscription";
    swift_willThrow();
    goto LABEL_15;
  }

  v109 = v6;
  sub_1C5CB50F4(*(v1 + 368), &selRef_identifier);
  if (!v7)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_318();

  v8 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v8 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
LABEL_13:

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_45_10();
    *(v1 + 320) = 3104;
    v19 = "Migration type missing";
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    v26 = v25;
    OUTLINED_FUNCTION_0_76();
    v106 = v26;
    v107 = sub_1C5E20B48(v27, v28);
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_145_0();

    v24 = "Migration type missing";
    swift_willThrow();

LABEL_15:
LABEL_16:
    for (i = &selRef_currentThread; ; i = &selRef_currentThread)
    {
LABEL_17:
      v109 = v19;
      v33 = sub_1C6014D30();
      sub_1C6016940();
      OUTLINED_FUNCTION_122_1();
      *(v1 + 272) = v33;
      v65 = 0x1E696ABC0;
      OUTLINED_FUNCTION_65_10();
      sub_1C5C64D74(v34, v35);
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_65_10();
      v38 = sub_1C5E20B8C(v36, v37);
      v39 = v33;
      v40 = sub_1C6017810();
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v41 = OUTLINED_FUNCTION_34_14();
        *v42 = v39;
      }

      sub_1C6014D30();
      OUTLINED_FUNCTION_166_0();
      v43 = [0x1E696ABC0 i[169]];
      sub_1C6016940();
      OUTLINED_FUNCTION_161_0();
      if (i == v5 && v41 == v24)
      {
      }

      else
      {
        sub_1C6017860();
        OUTLINED_FUNCTION_160_0();
        if ((v43 & 1) == 0)
        {

          goto LABEL_30;
        }
      }

      v43 = [0x1E696ABC0 code];

      if (v43 == 27)
      {

        *(v1 + 304) = v39;
        v45 = v39;
        v46 = sub_1C6017810();
        if (v46)
        {
          v47 = v46;
        }

        else
        {
          v47 = OUTLINED_FUNCTION_23_18();
          *v59 = v45;
        }

LABEL_41:
        sub_1C6016940();
        *(v1 + 296) = 101;
        v60 = sub_1C6014D30();
        sub_1C6016880();
        OUTLINED_FUNCTION_68();
        _s3__C4CodeOMa_1();
        OUTLINED_FUNCTION_0_76();
        sub_1C5E20B48(v61, v62);
        sub_1C6017280();

        sub_1C5C64D74(0, &qword_1EC1ABB68);
        OUTLINED_FUNCTION_48_11();

LABEL_42:
        OUTLINED_FUNCTION_30_3();
        OUTLINED_FUNCTION_90_3();

        __asm { BRAA            X2, X16 }
      }

LABEL_30:
      *(v1 + 280) = v39;
      v48 = v39;
      if (OUTLINED_FUNCTION_51_11())
      {
      }

      else
      {
        v49 = OUTLINED_FUNCTION_23_18();
        OUTLINED_FUNCTION_118_1(v49, v50);
      }

      sub_1C6014D30();

      v108 = v38;
      v51 = [v38 underlyingErrors];
      sub_1C5C74680(0, &qword_1ED7DCAE0);
      OUTLINED_FUNCTION_34_4();
      v52 = sub_1C6016B10();

      v53 = 0;
      v54 = v52[2];
      while (1)
      {
        if (v54 == v53)
        {

          sub_1C5C64D74(0, &qword_1EC1ABB68);
          v58 = OUTLINED_FUNCTION_133_2();
          sub_1C5E1182C(v58, v109);
          goto LABEL_42;
        }

        OUTLINED_FUNCTION_119_1();
        if (v55)
        {
          break;
        }

        OUTLINED_FUNCTION_26_18();
        v56 = *(v1 + 240);
        i = *(v1 + 248);
        v57 = v43;
        sub_1C6017950();

        v53 = 0x1E696ABC0uLL;
        if (v56)
        {

          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_74:

LABEL_75:

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      *(v1 + 344) = 74;
      OUTLINED_FUNCTION_84_3();
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      v89 = [v52 description];
      v90 = sub_1C6016940();
      v92 = v91;

      MEMORY[0x1C69534E0](v90, v92);

      sub_1C6016880();
      OUTLINED_FUNCTION_18_2();
      _s3__C4CodeOMa_2();
      v94 = v93;
      OUTLINED_FUNCTION_1_61();
      v106 = v94;
      v107 = sub_1C5E20B48(v95, v96);
      OUTLINED_FUNCTION_31_12();
      v19 = sub_1C6017280();

      v24 = v19;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0(v1 + 144);
    }
  }

  v9 = *(v1 + 368);
  v10 = sub_1C5CB50F4(v9, &selRef_commandID);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C69534E0](v10, v12);

  sub_1C6016900();
  OUTLINED_FUNCTION_126();

  v13 = [(SEL *)v5 takeCriticalSectionAssertion:v12];

  sub_1C6017390();
  swift_unknownObjectRelease();
  v14 = [(SEL *)v5 engineID];
  v15 = sub_1C6016940();
  v17 = v16;

  v18 = sub_1C5E39134(v15, v17);
  *(v1 + 424) = v18;
  v65 = v18;
  v67 = v66;

  if (v67)
  {
    if (v67 != 1)
    {
      goto LABEL_56;
    }

    v68 = [(_MPCProtoMigrationData *)v65 delegateInfo];
  }

  else
  {
    v68 = *&v65[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_delegateInfo];
    v69 = v68;
  }

  *(v1 + 432) = v68;
  if (v68)
  {
    v52 = v68;
    v70 = [(_MPCProtoDelegateInfo *)v52 tokenE];
    *(v1 + 440) = v70;
    if (!v70)
    {
      goto LABEL_75;
    }

    i = v70;
    if (![(_MPCProtoDelegateInfo *)v52 accountID])
    {
      goto LABEL_74;
    }

    if ([(_MPCProtoDelegateInfo *)v52 accountID])
    {
      v71 = [objc_opt_self() sharedManager];
      *(v1 + 448) = v71;
      v72 = [(_MPCProtoDelegateInfo *)v52 accountID];
      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 352;
      *(v1 + 24) = sub_1C5E16A28;
      v73 = OUTLINED_FUNCTION_168_0();
      sub_1C5E21498(0, &qword_1EC1ABE90, &unk_1EC1A8BB0);
      OUTLINED_FUNCTION_41_10(v74);
      *(v1 + 88) = 1107296256;
      *(v1 + 96) = sub_1C5CA6B88;
      *(v1 + 104) = &block_descriptor_30;
      *(v1 + 112) = v73;
      [v71 updateCredentialsWithDelegateTokenE:i forDSID:v72 completion:v1 + 80];
      OUTLINED_FUNCTION_90_3();

      return MEMORY[0x1EEE6DEC8](v75);
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    *(v1 + 360) = 100;
    OUTLINED_FUNCTION_84_3();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    v97 = [v52 description];
    v98 = sub_1C6016940();
    v100 = v99;

    MEMORY[0x1C69534E0](v98, v100);

    sub_1C6016880();
    OUTLINED_FUNCTION_18_2();
    _s3__C4CodeOMa_1();
    v102 = v101;
    OUTLINED_FUNCTION_0_76();
    v106 = v102;
    v107 = sub_1C5E20B48(v103, v104);
    OUTLINED_FUNCTION_31_12();
    v19 = sub_1C6017280();

    v24 = v19;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v1 + 144);
    goto LABEL_16;
  }

LABEL_56:
  *(v1 + 464) = 0;
  sub_1C6016940();
  v78 = v77;
  OUTLINED_FUNCTION_126_2();
  v82 = v79 == 0xD000000000000039 && v81 == v80;
  if (v82 || (v9 = v79, (sub_1C6017860() & 1) != 0) || ((OUTLINED_FUNCTION_126_2(), v9 == 0xD00000000000002FLL) ? (v84 = v83 == v78) : (v84 = 0), v84))
  {
  }

  else
  {
    OUTLINED_FUNCTION_255();
    v9 = sub_1C6017860();

    if ((v9 & 1) == 0)
    {
      sub_1C5C75008();
      OUTLINED_FUNCTION_80_6();
      *(v1 + 496) = v9;

      v85 = swift_task_alloc();
      *(v1 + 504) = v85;
      *v85 = v1;
      OUTLINED_FUNCTION_17_25(v85);
      OUTLINED_FUNCTION_90_3();

      return PlaybackEngineSessionManager.performSetSession(event:)();
    }
  }

  sub_1C5C75008();
  OUTLINED_FUNCTION_80_6();
  *(v1 + 472) = v9;

  v87 = swift_task_alloc();
  *(v1 + 480) = v87;
  *v87 = v1;
  OUTLINED_FUNCTION_17_25(v87);
  OUTLINED_FUNCTION_90_3();

  return PlaybackEngineSessionManager.performLegacyPodcastsMigration(event:)();
}

uint64_t sub_1C5E16A28()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v2 = v1;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 456) = v5;
  if (v5)
  {

    v6 = *(v2 + 392);
    v7 = *(v2 + 400);
    v8 = sub_1C5E17360;
  }

  else
  {
    v6 = *(v2 + 392);
    v7 = *(v2 + 400);
    v8 = sub_1C5E16B30;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1C5E16B30()
{
  v35 = v0;
  v1 = *(v0 + 352);

  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v2 = *(v0 + 408);
  v3 = sub_1C60162D0();
  __swift_project_value_buffer(v3, qword_1ED7E16A8);
  v4 = v2;
  v5 = v1;
  v6 = sub_1C60162B0();
  LOBYTE(v2) = sub_1C6016F30();

  v7 = os_log_type_enabled(v6, v2);
  v8 = *(v0 + 432);
  v9 = *(v0 + 440);
  if (v7)
  {
    v10 = *(v0 + 408);
    v33 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = [v10 engineID];
    sub_1C6016940();
    OUTLINED_FUNCTION_167_0();
    OUTLINED_FUNCTION_110_1(v13, v14, &v34);
    OUTLINED_FUNCTION_164_0();
    *(v11 + 4) = v12;
    *(v11 + 12) = 2080;
    v15 = [v5 shortHashedDSID];
    sub_1C6016940();
    OUTLINED_FUNCTION_167_0();
    OUTLINED_FUNCTION_110_1(v16, v17, &v34);
    OUTLINED_FUNCTION_164_0();
    *(v11 + 14) = v15;
    OUTLINED_FUNCTION_153_1(&dword_1C5C61000, v18, v19, "[SNM:%{public}s] performSetSession | delegation successful for account=%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    MEMORY[0x1C6956920](v11, -1, -1);
  }

  else
  {
  }

  *(v0 + 464) = *(v0 + 432);
  sub_1C6016940();
  v21 = v20;
  OUTLINED_FUNCTION_126_2();
  v25 = v22 == 0xD000000000000039 && v24 == v23;
  if (v25 || (v5 = v22, (sub_1C6017860() & 1) != 0) || ((OUTLINED_FUNCTION_126_2(), v5 == 0xD00000000000002FLL) ? (v27 = v26 == v21) : (v27 = 0), v27))
  {
  }

  else
  {
    OUTLINED_FUNCTION_255();
    v5 = sub_1C6017860();

    if ((v5 & 1) == 0)
    {
      sub_1C5C75008();
      OUTLINED_FUNCTION_80_6();
      *(v0 + 496) = v5;

      v28 = swift_task_alloc();
      *(v0 + 504) = v28;
      *v28 = v0;
      OUTLINED_FUNCTION_17_25(v28);
      OUTLINED_FUNCTION_19_3();

      return PlaybackEngineSessionManager.performSetSession(event:)();
    }
  }

  sub_1C5C75008();
  OUTLINED_FUNCTION_80_6();
  *(v0 + 472) = v5;

  v31 = swift_task_alloc();
  *(v0 + 480) = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_17_25(v31);
  OUTLINED_FUNCTION_19_3();

  return PlaybackEngineSessionManager.performLegacyPodcastsMigration(event:)();
}

uint64_t sub_1C5E16E9C()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 488) = v0;

  OUTLINED_FUNCTION_43_0();

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 400);
  v7 = *(v1 + 392);
  if (v0)
  {
    v8 = sub_1C5E17730;
  }

  else
  {
    v8 = sub_1C5E16FD8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E16FD8()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = v0[58];
  v3 = v0[52];
  v2 = v0[53];
  v4 = v0[51];

  [objc_opt_self() successStatus];

  __swift_destroy_boxed_opaque_existential_0((v0 + 18));
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_142_2();

  return v7(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C5E17080()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_9_0();
  *v6 = v5;
  v8[64] = v7;
  v8[65] = v9;
  v8[66] = v0;

  OUTLINED_FUNCTION_43_0();

  OUTLINED_FUNCTION_43_0();
  v11 = *(v10 + 400);
  v12 = *(v1 + 392);
  if (v0)
  {
    v13 = sub_1C5E17AE4;
  }

  else
  {
    v13 = sub_1C5E171C4;
  }

  return MEMORY[0x1EEE6DFA0](v13, v12, v11);
}

void sub_1C5E171C4()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[65];
  v2 = v0[51];

  v3 = [v2 player];
  __swift_project_boxed_opaque_existential_0(v0 + 18, v0[21]);
  [v3 extendLifetimeUntilFirstAudioFrame:sub_1C6017850() isSiriSetQueue:0];
  swift_unknownObjectRelease();

  if (v1 >> 60 == 15)
  {
    v4 = v0[58];
    v5 = v0[52];
    v6 = v0[53];
    v7 = v0[51];
    v8 = [objc_opt_self() successStatus];
  }

  else
  {
    v9 = v0[65];
    v10 = v0[64];
    v11 = v0[58];
    v12 = v0[52];
    v6 = v0[53];
    v13 = v0[51];
    sub_1C5C64D74(0, &qword_1EC1ABB68);
    v14 = OUTLINED_FUNCTION_147();
    sub_1C5CFAC9C(v14, v15);
    sub_1C5E17E98(0, v10, v9);

    v16 = OUTLINED_FUNCTION_147();
    sub_1C5CB6098(v16, v17);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 18));
  OUTLINED_FUNCTION_30_3();
  OUTLINED_FUNCTION_154_1();

  __asm { BRAA            X2, X16 }
}

void sub_1C5E17360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, id a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_149();
  v20 = v18[56];
  v22 = v18[54];
  v21 = v18[55];
  v24 = v18[52];
  v23 = v18[53];
  v25 = v18[51];

  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0((v18 + 18));
  v63 = v18[57];
  v26 = sub_1C6014D30();
  sub_1C6016940();
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_65_10();
  v29 = sub_1C5C64D74(v27, v28);
  OUTLINED_FUNCTION_3_49();
  OUTLINED_FUNCTION_65_10();
  v32 = sub_1C5E20B8C(v30, v31);
  v33 = v26;
  v34 = OUTLINED_FUNCTION_75_7();
  v64 = v29;
  if (v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = OUTLINED_FUNCTION_34_14();
    *v36 = v26;
  }

  sub_1C6014D30();
  OUTLINED_FUNCTION_166_0();
  v37 = [0x1E696ABC0 domain];
  sub_1C6016940();
  OUTLINED_FUNCTION_161_0();
  if (v19 == v23 && v35 == v22)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_160_0();
    if ((v37 & 1) == 0)
    {

      goto LABEL_14;
    }
  }

  v37 = [0x1E696ABC0 code];

  if (v37 == 27)
  {

    v18[38] = v26;
    v39 = v26;
    v40 = OUTLINED_FUNCTION_74_4();
    if (v40)
    {
      v41 = v40;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_23_18();
      *v51 = v22;
    }

LABEL_25:
    sub_1C6016940();
    v52 = OUTLINED_FUNCTION_54_8();
    sub_1C6016880();
    OUTLINED_FUNCTION_68();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v53, v54);
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_250();

    sub_1C5C64D74(0, &qword_1EC1ABB68);
    OUTLINED_FUNCTION_48_11();

LABEL_26:
    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_148_1();

    v57(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, v63, v64, a15, a16, a17, a18);
    return;
  }

LABEL_14:
  v18[35] = v26;
  v42 = v26;
  a12 = v37;
  if (OUTLINED_FUNCTION_51_11())
  {
  }

  else
  {
    v43 = OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_118_1(v43, v44);
  }

  sub_1C6014D30();

  a11 = v32;
  v45 = [v32 underlyingErrors];
  sub_1C5C74680(0, &qword_1ED7DCAE0);
  OUTLINED_FUNCTION_34_4();
  v46 = sub_1C6016B10();

  v47 = 0;
  v48 = *(v46 + 16);
  while (1)
  {
    if (v48 == v47)
    {

      sub_1C5C64D74(0, &qword_1EC1ABB68);
      v50 = OUTLINED_FUNCTION_133_2();
      sub_1C5E1182C(v50, v63);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_119_1();
    if (v49)
    {
      break;
    }

    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_110_2();

    v47 = 0x1E696ABC0uLL;
    if (v45)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_1C5E17730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, id a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_155_1();

  __swift_destroy_boxed_opaque_existential_0((v20 + 18));
  v61 = v20[61];
  v24 = sub_1C6014D30();
  sub_1C6016940();
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_65_10();
  v27 = sub_1C5C64D74(v25, v26);
  OUTLINED_FUNCTION_3_49();
  OUTLINED_FUNCTION_65_10();
  v30 = sub_1C5E20B8C(v28, v29);
  v31 = v24;
  v32 = OUTLINED_FUNCTION_75_7();
  v62 = v27;
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = OUTLINED_FUNCTION_34_14();
    *v34 = v24;
  }

  sub_1C6014D30();
  OUTLINED_FUNCTION_166_0();
  v35 = [0x1E696ABC0 domain];
  sub_1C6016940();
  OUTLINED_FUNCTION_161_0();
  if (v23 == v22 && v33 == v21)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_160_0();
    if ((v35 & 1) == 0)
    {

      goto LABEL_14;
    }
  }

  v35 = [0x1E696ABC0 code];

  if (v35 == 27)
  {

    v20[38] = v24;
    v37 = v24;
    v38 = OUTLINED_FUNCTION_74_4();
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = OUTLINED_FUNCTION_23_18();
      *v49 = v21;
    }

LABEL_25:
    sub_1C6016940();
    v50 = OUTLINED_FUNCTION_54_8();
    sub_1C6016880();
    OUTLINED_FUNCTION_68();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v51, v52);
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_250();

    sub_1C5C64D74(0, &qword_1EC1ABB68);
    OUTLINED_FUNCTION_48_11();

LABEL_26:
    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_148_1();

    v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, v61, v62, a16, a17, a18);
    return;
  }

LABEL_14:
  v20[35] = v24;
  v40 = v24;
  a13 = v35;
  if (OUTLINED_FUNCTION_51_11())
  {
  }

  else
  {
    v41 = OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_118_1(v41, v42);
  }

  sub_1C6014D30();

  a12 = v30;
  v43 = [v30 underlyingErrors];
  sub_1C5C74680(0, &qword_1ED7DCAE0);
  OUTLINED_FUNCTION_34_4();
  v44 = sub_1C6016B10();

  v45 = 0;
  v46 = *(v44 + 16);
  while (1)
  {
    if (v46 == v45)
    {

      sub_1C5C64D74(0, &qword_1EC1ABB68);
      v48 = OUTLINED_FUNCTION_133_2();
      sub_1C5E1182C(v48, v61);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_119_1();
    if (v47)
    {
      break;
    }

    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_110_2();

    v45 = 0x1E696ABC0uLL;
    if (v43)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_1C5E17AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, id a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_155_1();

  __swift_destroy_boxed_opaque_existential_0((v20 + 18));
  v61 = v20[66];
  v24 = sub_1C6014D30();
  sub_1C6016940();
  OUTLINED_FUNCTION_85_5();
  OUTLINED_FUNCTION_65_10();
  v27 = sub_1C5C64D74(v25, v26);
  OUTLINED_FUNCTION_3_49();
  OUTLINED_FUNCTION_65_10();
  v30 = sub_1C5E20B8C(v28, v29);
  v31 = v24;
  v32 = OUTLINED_FUNCTION_75_7();
  v62 = v27;
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = OUTLINED_FUNCTION_34_14();
    *v34 = v24;
  }

  sub_1C6014D30();
  OUTLINED_FUNCTION_166_0();
  v35 = [0x1E696ABC0 domain];
  sub_1C6016940();
  OUTLINED_FUNCTION_161_0();
  if (v23 == v22 && v33 == v21)
  {
  }

  else
  {
    OUTLINED_FUNCTION_52_8();
    OUTLINED_FUNCTION_160_0();
    if ((v35 & 1) == 0)
    {

      goto LABEL_14;
    }
  }

  v35 = [0x1E696ABC0 code];

  if (v35 == 27)
  {

    v20[38] = v24;
    v37 = v24;
    v38 = OUTLINED_FUNCTION_74_4();
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = OUTLINED_FUNCTION_23_18();
      *v49 = v21;
    }

LABEL_25:
    sub_1C6016940();
    v50 = OUTLINED_FUNCTION_54_8();
    sub_1C6016880();
    OUTLINED_FUNCTION_68();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v51, v52);
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_250();

    sub_1C5C64D74(0, &qword_1EC1ABB68);
    OUTLINED_FUNCTION_48_11();

LABEL_26:
    OUTLINED_FUNCTION_30_3();
    OUTLINED_FUNCTION_148_1();

    v55(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, v61, v62, a16, a17, a18);
    return;
  }

LABEL_14:
  v20[35] = v24;
  v40 = v24;
  a13 = v35;
  if (OUTLINED_FUNCTION_51_11())
  {
  }

  else
  {
    v41 = OUTLINED_FUNCTION_23_18();
    OUTLINED_FUNCTION_118_1(v41, v42);
  }

  sub_1C6014D30();

  a12 = v30;
  v43 = [v30 underlyingErrors];
  sub_1C5C74680(0, &qword_1ED7DCAE0);
  OUTLINED_FUNCTION_34_4();
  v44 = sub_1C6016B10();

  v45 = 0;
  v46 = *(v44 + 16);
  while (1)
  {
    if (v46 == v45)
    {

      sub_1C5C64D74(0, &qword_1EC1ABB68);
      v48 = OUTLINED_FUNCTION_133_2();
      sub_1C5E1182C(v48, v61);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_119_1();
    if (v47)
    {
      break;
    }

    OUTLINED_FUNCTION_26_18();
    OUTLINED_FUNCTION_111_1();
    OUTLINED_FUNCTION_6_3();
    OUTLINED_FUNCTION_110_2();

    v45 = 0x1E696ABC0uLL;
    if (v43)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
}

id sub_1C5E17E98(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C6014F50();
  v7 = sub_1C6016900();

  v8 = [swift_getObjCClassFromMetadata() statusWithCode:a1 customData:v6 type:v7];

  sub_1C5C8F8BC(a2, a3);
  return v8;
}

uint64_t sub_1C5E17F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C6016C10();
  v3[5] = sub_1C6016C00();
  v5 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E18008, v5, v4);
}

uint64_t sub_1C5E18008()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_165_0();
  *(v3 + 48) = _Block_copy(v1);
  v4 = v2;
  v5 = v0;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_82_4(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_8_36(v7);

  return _MediaRemotePublisher.performSetSession(event:)();
}

uint64_t _MediaRemotePublisher.findContentItemID(incomingContentItemID:trackID:)()
{
  OUTLINED_FUNCTION_248();
  v1[30] = v2;
  v1[31] = v0;
  v1[28] = v3;
  v1[29] = v4;
  sub_1C6016C10();
  v1[32] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[33] = v5;
  v1[34] = v6;
  v7 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5E18130()
{
  OUTLINED_FUNCTION_35();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[35] = Strong;
  if (!Strong)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_122_1();
    v0[18] = 28;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_1_61();
    sub_1C5E20B48(v5, v6);
    OUTLINED_FUNCTION_28_13();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_8_14();

    __asm { BRAA            X1, X16 }
  }

  v2 = Strong;
  v3 = [Strong playbackEngine];
  v0[36] = v3;
  if (!v3)
  {

LABEL_9:

    goto LABEL_10;
  }

  v4 = v3;
  if (v0[29])
  {

    goto LABEL_10;
  }

  if (!v0[30])
  {

LABEL_10:
    OUTLINED_FUNCTION_131_2();
    OUTLINED_FUNCTION_8_14();

    __asm { BRAA            X3, X16 }
  }

  v11 = [v3 queueController];
  if (!v11 || (v12 = v11, v13 = [v11 music], v0[37] = v13, v12, !v13))
  {

    goto LABEL_9;
  }

  v14 = v0[30];
  sub_1C5C64D74(0, &qword_1EC1A9FD0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[38] = ObjCClassFromMetadata;
  v16 = [ObjCClassFromMetadata identityKind];
  v17 = swift_task_alloc();
  *(v17 + 16) = v14;
  v18 = objc_allocWithZone(MEMORY[0x1E6970550]);
  v0[39] = OUTLINED_FUNCTION_64_7();

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_1C5E184EC;
  swift_continuation_init();
  OUTLINED_FUNCTION_124();
  sub_1C5E20CD0();
  v0[40] = v19;
  v0[25] = v19;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  OUTLINED_FUNCTION_44_13();
  v0[21] = v20;
  v0[22] = v17;
  v21 = OUTLINED_FUNCTION_33_6();
  [v21 v22];
  OUTLINED_FUNCTION_8_14();

  return MEMORY[0x1EEE6DEC8](v23);
}

uint64_t sub_1C5E184EC()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 328) = *(v3 + 48);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 272);
  v7 = *(v6 + 264);
  if (v8)
  {
    v9 = sub_1C5E189A0;
  }

  else
  {
    v9 = sub_1C5E18608;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E18608()
{
  OUTLINED_FUNCTION_23();
  if (*(v0 + 216))
  {
    v1 = *(v0 + 312);
    v2 = *(v0 + 280);

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_131_2();
    OUTLINED_FUNCTION_154_1();

    __asm { BRAA            X3, X16 }
  }

  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  v8 = *(v0 + 240);

  v9 = [v6 identityKind];
  *(swift_task_alloc() + 16) = v8;
  v10 = objc_allocWithZone(MEMORY[0x1E6970550]);
  v11 = OUTLINED_FUNCTION_64_7();
  *(v0 + 336) = v11;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_1C5E187E4;
  swift_continuation_init();
  *(v0 + 200) = v5;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  OUTLINED_FUNCTION_44_13();
  *(v0 + 168) = v13;
  *(v0 + 176) = v12;
  [v7 findFirstContentItemIDForItemIntersectingIdentifierSet:v11 completion:v0 + 144];
  OUTLINED_FUNCTION_154_1();

  return MEMORY[0x1EEE6DEC8](v14);
}

uint64_t sub_1C5E187E4()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = *(v3 + 112);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 272);
  v7 = *(v6 + 264);
  if (v8)
  {
    v9 = sub_1C5E18A2C;
  }

  else
  {
    v9 = sub_1C5E18900;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E18900()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 280);

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_131_2();
  v2 = OUTLINED_FUNCTION_255();

  return v3(v2);
}

uint64_t sub_1C5E189A0()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[35];

  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_142_2();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C5E18A2C()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v1 = v0[42];
  v2 = v0[36];
  v3 = v0[35];

  swift_willThrow();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_142_2();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C5E18AB4(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultMediaLibrary];
  result = sub_1C5CB50E8(v4);
  if (v6)
  {

    v7 = sub_1C6016900();

    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1C5CB5C40;
    *(v9 + 24) = v8;
    v12[4] = sub_1C5CB8460;
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1C5CFB534;
    v12[3] = &block_descriptor_108_0;
    v10 = _Block_copy(v12);

    [a1 setLibraryIdentifiersWithDatabaseID:v7 block:v10];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5E18C64(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C5E0232C(v5, v6);
  }

  else
  {
    if (a2)
    {
      v8 = sub_1C6016940();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    return sub_1C5E02330(v5, v8, v10);
  }
}

uint64_t sub_1C5E18D08(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultMediaLibrary];
  result = sub_1C5CB50E8(v4);
  if (v6)
  {

    v7 = sub_1C6016900();

    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1C5E2141C;
    *(v9 + 24) = v8;
    v12[4] = sub_1C5CB5C60;
    v12[5] = v9;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_1C5CFB534;
    v12[3] = &block_descriptor_92;
    v10 = _Block_copy(v12);

    [a1 setLibraryIdentifiersWithDatabaseID:v7 block:v10];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5E18F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_1C6016C10();
  v4[6] = sub_1C6016C00();
  v6 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E18FE8, v6, v5);
}

uint64_t sub_1C5E18FE8()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  *(v0 + 56) = _Block_copy(v1);
  if (v2)
  {
    sub_1C6016940();
    v2 = v3;
  }

  *(v0 + 64) = v2;
  v4 = *(v0 + 40);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1C5E190CC;
  OUTLINED_FUNCTION_12_31();

  return _MediaRemotePublisher.findContentItemID(incomingContentItemID:trackID:)();
}

uint64_t sub_1C5E190CC()
{
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_9();
  v2 = v0;
  v4 = v3;
  OUTLINED_FUNCTION_8_0();
  v6 = v5;
  OUTLINED_FUNCTION_30();
  *v7 = v6;
  v9 = *(v8 + 40);
  v10 = *v1;
  OUTLINED_FUNCTION_101();
  *v11 = v10;

  if (v2)
  {
    sub_1C6014D30();

    v12 = v4;
  }

  else if (v4)
  {
    OUTLINED_FUNCTION_12_31();
    v13 = sub_1C6016900();

    v12 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(v6 + 56);
  v15 = OUTLINED_FUNCTION_85_0();
  v16(v15);

  _Block_release(v14);
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_159_0();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t _MediaRemotePublisher.processStatus(_:commandEvent:)()
{
  OUTLINED_FUNCTION_44_3();
  sub_1C5CDAF64(v0 + OBJC_IVAR____MPCMediaRemotePublisher_Swift_dialogHandler, v5);
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v1 = OUTLINED_FUNCTION_147();
  v3 = v2(v1);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

Swift::OpaquePointer_optional __swiftcall _MediaRemotePublisher.getQOSMetricsForDialogHandler()()
{
  sub_1C5CDAF64(v0 + OBJC_IVAR____MPCMediaRemotePublisher_Swift_dialogHandler, v6);
  sub_1C5C74680(0, &unk_1EC1ABEA8);
  OUTLINED_FUNCTION_68();
  type metadata accessor for MPCMusicDialogHandler();
  if ((swift_dynamicCast() & 1) != 0 && (v2 = v5, v3 = v5[8], , , v3))
  {
    sub_1C5E1118C(v3);
    OUTLINED_FUNCTION_73();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value._rawValue = v4;
  result.is_nil = v1;
  return result;
}

uint64_t _MediaRemotePublisher.performDialogAction(for:)()
{
  OUTLINED_FUNCTION_248();
  v1[7] = v2;
  v1[8] = v0;
  sub_1C6016C10();
  v1[9] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[10] = v3;
  v1[11] = v4;
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5E1950C()
{
  OUTLINED_FUNCTION_9();
  sub_1C5CDAF64(v0[8] + OBJC_IVAR____MPCMediaRemotePublisher_Swift_dialogHandler, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v1);
  v6 = (OUTLINED_FUNCTION_312() + 16);
  v7 = (*v6 + **v6);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1C5E19648;
  v4 = v0[7];

  return v7(v4, v1, v2);
}

uint64_t sub_1C5E19648()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_42_6();
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 104) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 88);
  v7 = *(v1 + 80);
  if (v0)
  {
    v8 = sub_1C5E197D0;
  }

  else
  {
    v8 = sub_1C5E19770;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E19770()
{
  OUTLINED_FUNCTION_248();

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  OUTLINED_FUNCTION_14_3();

  return v1();
}

uint64_t sub_1C5E197D0()
{
  OUTLINED_FUNCTION_248();

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  OUTLINED_FUNCTION_172();

  return v1();
}

uint64_t sub_1C5E19854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C6016C10();
  v3[5] = sub_1C6016C00();
  v5 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E198F0, v5, v4);
}

uint64_t sub_1C5E198F0()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_165_0();
  *(v3 + 48) = _Block_copy(v1);
  v4 = v2;
  v5 = v0;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_82_4(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_8_36(v7);

  return _MediaRemotePublisher.performDialogAction(for:)();
}

uint64_t sub_1C5E19994()
{
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 16);
  *v3 = *v1;

  OUTLINED_FUNCTION_102_1();
  if (v0)
  {
    sub_1C6014D30();

    v6 = OUTLINED_FUNCTION_11_23();
    v7(v6, v2);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_11_23();
    v9(v8, 0);
  }

  _Block_release(*(v2 + 48));
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_159_0();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t _MediaRemotePublisher.getSwiftQOSDialog(for:item:)()
{
  OUTLINED_FUNCTION_44_3();
  sub_1C5CDAF64(v1 + OBJC_IVAR____MPCMediaRemotePublisher_Swift_dialogHandler, v3);
  sub_1C5C74680(0, &unk_1EC1ABEA8);
  type metadata accessor for MPCMusicDialogHandler();
  if (!swift_dynamicCast())
  {
    return sub_1C6016880();
  }

  OUTLINED_FUNCTION_147();
  sub_1C5DF8EEC();
  OUTLINED_FUNCTION_206();

  return v0;
}

uint64_t _MediaRemotePublisher.getTransportablePlaybackSessionRepresentation(for:)()
{
  OUTLINED_FUNCTION_248();
  v1[3] = v2;
  v1[4] = v0;
  sub_1C6016C10();
  v1[5] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[6] = v3;
  v1[7] = v4;
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5E19DC0()
{
  OUTLINED_FUNCTION_35();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong playbackEngine], v0[8] = v3, v2, !v3))
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_88();
    v0[2] = v7;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_1_61();
    sub_1C5E20B48(v8, v9);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_28_13();
    sub_1C6017280();
    OUTLINED_FUNCTION_73();

    swift_willThrow();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_8_14();

    __asm { BRAA            X1, X16 }
  }

  sub_1C5C75008();
  OUTLINED_FUNCTION_80_6();
  v0[9] = v3;

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1C5E19FCC;
  OUTLINED_FUNCTION_21_25(v0[3]);
  OUTLINED_FUNCTION_8_14();

  return PlaybackEngineSessionManager.getTransportablePlaybackSessionRepresentation(for:)();
}

uint64_t sub_1C5E19FCC()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  v5[11] = v0;

  if (v0)
  {
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_1C5E1A150;
  }

  else
  {

    v5[12] = v3;
    v9 = v5[6];
    v10 = v5[7];
    v11 = sub_1C5E1A0E4;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1C5E1A0E4()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_5_1();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1C5E1A150()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_172();

  return v2();
}

uint64_t sub_1C5E1A248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C6016C10();
  v3[5] = sub_1C6016C00();
  v5 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E1A2E4, v5, v4);
}

uint64_t sub_1C5E1A2E4()
{
  OUTLINED_FUNCTION_13();
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_82_4(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_8_36(v5);

  return _MediaRemotePublisher.getTransportablePlaybackSessionRepresentation(for:)();
}

uint64_t sub_1C5E1A394()
{
  OUTLINED_FUNCTION_169_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_138_1();
  v4 = *(v3 + 32);
  v5 = *v2;
  OUTLINED_FUNCTION_101();
  *v6 = v5;

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_102_1();
  v8 = *(v7 + 48);
  if (v0)
  {
    sub_1C6014D30();

    v9 = OUTLINED_FUNCTION_11_23();
    v10(v9, 0, v1);

    _Block_release(v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_11_23();
    v12(v11, v1, 0);
    _Block_release(v8);
  }

  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_159_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

Swift::Void __swiftcall _MediaRemotePublisher.willBeginSessionMigration(with:)(Swift::String with)
{
  OUTLINED_FUNCTION_44_3();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong playbackEngine];

    if (v3)
    {
      sub_1C5C75008();

      v4._countAndFlagsBits = OUTLINED_FUNCTION_147();
      PlaybackEngineSessionManager.willBeginSessionMigration(with:)(v4);
    }
  }
}

uint64_t _MediaRemotePublisher.didEndMigration(with:setPlaybackSessionCommandStatus:error:)()
{
  OUTLINED_FUNCTION_248();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  sub_1C6016C10();
  v1[7] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[8] = v6;
  v1[9] = v7;
  v8 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C5E1A6B4()
{
  OUTLINED_FUNCTION_248();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong playbackEngine], v2, v3))
  {
    v4 = sub_1C5C75008();

    v0[10] = *(v4 + 16);

    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_1C5E1A7E0;
    OUTLINED_FUNCTION_21_25(v0[2]);

    return PlaybackEngineSessionManager.didEndMigration(with:setPlaybackSessionCommandStatus:error:)();
  }

  else
  {

    OUTLINED_FUNCTION_14_3();

    return v7();
  }
}

uint64_t sub_1C5E1A7E0()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_101();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1C5E1A93C;
  }

  else
  {

    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1C5E1A8E4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C5E1A8E4()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_14_3();

  return v0();
}

uint64_t sub_1C5E1A93C()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_172();

  return v0();
}

uint64_t sub_1C5E1AA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_1C6016C10();
  v5[7] = sub_1C6016C00();
  v7 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E1AAE8, v7, v6);
}

uint64_t sub_1C5E1AAE8()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_23();
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  v0[8] = _Block_copy(v2);
  sub_1C6016940();
  v0[9] = v5;
  v6 = v4;
  v7 = v1;
  v8 = v3;
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_1C5E1ABC4;
  OUTLINED_FUNCTION_12_31();
  OUTLINED_FUNCTION_31();

  return _MediaRemotePublisher.didEndMigration(with:setPlaybackSessionCommandStatus:error:)();
}

void sub_1C5E1ABC4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_101();
  *v3 = v2;
  v4 = *(v2 + 48);
  v5 = *(v2 + 32);
  v6 = *(v2 + 24);
  *v3 = *v1;

  OUTLINED_FUNCTION_102_1();
  if (v0)
  {
    sub_1C6014D30();

    v7 = OUTLINED_FUNCTION_11_23();
    v8(v7, v2);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_11_23();
    v10(v9, 0);
  }

  _Block_release(*(v2 + 64));
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_154_1();

  __asm { BRAA            X1, X16 }
}

void *_MediaRemotePublisher.getRequestingImmediatePlayback(from:)()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result playbackEngine];

    if (v2)
    {
      v3 = [v2 engineID];
      v4 = sub_1C6016940();
      v6 = v5;

      v7 = sub_1C5E39134(v4, v6);
      v9 = v8;

      if (!v9)
      {

        v13 = *&v7[OBJC_IVAR____TtC17MediaPlaybackCore16MPCMigrationData_playbackRate];
        return (v13 > 0.0);
      }

      if (v9 == 1)
      {
        v10 = [(_MPCProtoMigrationData *)v7 timeSync];
        if (v10)
        {
          v11 = v10;
          v12 = [(_MPCProtoMigrationDataTimeSync *)v10 rate];
          v13 = *&v12;

          return (v13 > 0.0);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t _MediaRemotePublisher.delegateAccount(event:)()
{
  OUTLINED_FUNCTION_248();
  v1[2] = v2;
  v1[3] = v0;
  sub_1C6016C10();
  v1[4] = OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_73();
  sub_1C6016BA0();
  OUTLINED_FUNCTION_77();
  v1[5] = v3;
  v1[6] = v4;
  v5 = OUTLINED_FUNCTION_7_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C5E1AF80()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1C5C64D74(0, &qword_1EC1ABB68);
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_82_4(v6);
  *v7 = v8;
  v7[1] = sub_1C5E1B058;
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_1C5E1D1DC(v3, v9, v10);
}

uint64_t sub_1C5E1B058()
{
  OUTLINED_FUNCTION_248();
  v1 = *v0;
  OUTLINED_FUNCTION_30();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_0();
  *v5 = v4;
  *(v7 + 64) = v6;

  v8 = *(v1 + 48);
  v9 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C5E1B16C, v9, v8);
}

uint64_t sub_1C5E1B16C()
{
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_5_1();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_1C5E1B1C8(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  sub_1C6016C10();
  v2[17] = sub_1C6016C00();
  v4 = sub_1C6016BA0();
  v2[18] = v4;
  v2[19] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C5E1B260, v4, v3);
}

uint64_t sub_1C5E1B260()
{
  OUTLINED_FUNCTION_35();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong playbackEngine], *(v0 + 160) = v3, v2, !v3))
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_88();
    *(v0 + 80) = v11;
    sub_1C6016880();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_1_61();
    sub_1C5E20B48(v12, v13);
    OUTLINED_FUNCTION_147();
    OUTLINED_FUNCTION_100();
    sub_1C6017280();
    OUTLINED_FUNCTION_73();

    swift_willThrow();
    goto LABEL_8;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_34_4();
  if (!swift_dynamicCastObjCClass())
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    OUTLINED_FUNCTION_122_1();
    *(v0 + 88) = 5;
    sub_1C6016880();
    OUTLINED_FUNCTION_124();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v16, v17);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();

LABEL_8:
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_8_14();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 128);
  v5 = swift_task_alloc();
  *(v0 + 168) = v5;
  *v5 = v0;
  v5[1] = sub_1C5E1B570;
  OUTLINED_FUNCTION_8_14();

  return sub_1C5E1BA74(v6, v7, v8);
}

uint64_t sub_1C5E1B570()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_101();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C5E1B688()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_5_1();
  v3 = *(v0 + 184);

  return v2(v3);
}

uint64_t sub_1C5E1B6F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_60_2();
  v25 = v24[22];
  sub_1C5C64D74(0, &qword_1ED7DCCF0);
  sub_1C6016940();
  v24[13] = 3200;
  sub_1C6016880();
  _s3__C4CodeOMa_1();
  OUTLINED_FUNCTION_0_76();
  sub_1C5E20B48(v26, v27);
  OUTLINED_FUNCTION_121_1();
  OUTLINED_FUNCTION_100();
  sub_1C6017280();
  OUTLINED_FUNCTION_137_2();

  OUTLINED_FUNCTION_14_27(v28, &qword_1EC1ABDC0);
  OUTLINED_FUNCTION_178();
  v29 = swift_allocObject();
  v24[14] = v24 + 13;
  *(v29 + 16) = xmmword_1C60311E0;
  *(v29 + 32) = v25;
  v30 = v25;
  OUTLINED_FUNCTION_3_49();
  sub_1C5E20B8C(v31, &qword_1ED7DCCF0);
  v32 = v24 + 13;
  OUTLINED_FUNCTION_77_6();
  v33 = sub_1C6017810();
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    OUTLINED_FUNCTION_10_1();
    v34 = swift_allocError();
    *v35 = v32;
  }

  v49 = v24[22];
  v36 = sub_1C6014D30();

  v37 = [v36 domain];
  sub_1C6016940();

  [v36 code];
  v38 = [v36 userInfo];
  sub_1C6016860();

  v39 = sub_1C6016940();
  v41 = v40;
  OUTLINED_FUNCTION_13_29(v39, &unk_1EC1ABE70);
  v24[5] = v42;
  v24[2] = v29;
  sub_1C5C70758(v24 + 1, v24 + 3);
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C5E2072C(v24 + 3, v39, v41);

  v43 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v24[24] = OUTLINED_FUNCTION_89_2();

  swift_willThrow();
  OUTLINED_FUNCTION_14_0();

  return MEMORY[0x1EEE6DFA0](v44, v45, v46);
}

uint64_t sub_1C5E1BA0C()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);

  OUTLINED_FUNCTION_172();

  return v3();
}

uint64_t sub_1C5E1BA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[28] = a2;
  v3[29] = a3;
  v3[27] = a1;
  sub_1C6016C10();
  v3[30] = sub_1C6016C00();
  v4 = sub_1C6016BA0();
  v3[31] = v4;
  v3[32] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C5E1BB44, v4, v5);
}

uint64_t sub_1C5E1BB44()
{
  v2 = v1[28];
  sub_1C5CB50F4(v2, &selRef_delegateAccountDataType);
  OUTLINED_FUNCTION_45_10();
  v1[33] = v3;
  v4 = sub_1C5E213C4(v2, &selRef_delegateAccountData);
  v6 = v5;
  v1[34] = v4;
  v1[35] = v5;
  if (!v0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_85_0();
  v7 = sub_1C5CBAE80();
  if (v7 == 3)
  {

LABEL_4:

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v1[18] = 8;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v8, v9);
LABEL_5:
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

    swift_willThrow();
    goto LABEL_6;
  }

  v12 = v7;
  v13 = objc_allocWithZone(_MPCProtoDelegateInfo);
  v14 = OUTLINED_FUNCTION_73();
  sub_1C5CFAF68(v14, v6);
  v15 = sub_1C5E1EF5C(v4, v6);
  v1[36] = v15;
  if (!v15)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v1[19] = 8;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v19, v20);
    goto LABEL_5;
  }

  v16 = v15;
  if (!v12)
  {
    v21 = [(_MPCProtoDelegateInfo *)v15 tokenA];
    v1[37] = v21;
    if (v21)
    {
      v22 = v21;
      if ([(_MPCProtoDelegateInfo *)v16 accountID])
      {
        v23 = swift_task_alloc();
        v1[38] = v23;
        *v23 = v1;
        v23[1] = sub_1C5E1C594;
        goto LABEL_20;
      }

      sub_1C5C64D74(0, &qword_1ED7DCCF0);
      sub_1C6016940();
      v1[26] = 100;
      OUTLINED_FUNCTION_53_9();
      sub_1C6017540();

      OUTLINED_FUNCTION_89();
      v41 = [v16 description];
      v42 = sub_1C6016940();
      v44 = v43;

      MEMORY[0x1C69534E0](v42, v44);

      sub_1C6016880();
      OUTLINED_FUNCTION_18_2();
      _s3__C4CodeOMa_1();
      OUTLINED_FUNCTION_0_76();
      sub_1C5E20B48(v45, v46);
LABEL_29:
      OUTLINED_FUNCTION_31_12();
      sub_1C6017280();
      OUTLINED_FUNCTION_37_9();

      swift_willThrow();

      goto LABEL_30;
    }

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v1[24] = 74;
    OUTLINED_FUNCTION_53_9();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    v29 = [v16 description];
    v30 = sub_1C6016940();
    v32 = v31;

    MEMORY[0x1C69534E0](v30, v32);

    sub_1C6016880();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_1_61();
    sub_1C5E20B48(v33, v34);
LABEL_25:
    OUTLINED_FUNCTION_100();
    sub_1C6017280();

    goto LABEL_26;
  }

  if (v12 == 1)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v1[23] = 5;
    sub_1C6016880();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v17, v18);
    OUTLINED_FUNCTION_15_0();
    sub_1C6017280();
    OUTLINED_FUNCTION_312();

LABEL_26:

    swift_willThrow();
LABEL_30:

LABEL_6:
    sub_1C5CB6098(v4, v6);
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_8_3();

    __asm { BRAA            X1, X16 }
  }

  v24 = [(_MPCProtoDelegateInfo *)v16 tokenE];
  v1[40] = v24;
  if (!v24)
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v1[20] = 74;
    OUTLINED_FUNCTION_53_9();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    v35 = [v16 description];
    v36 = sub_1C6016940();
    v38 = v37;

    MEMORY[0x1C69534E0](v36, v38);

    sub_1C6016880();
    _s3__C4CodeOMa_2();
    OUTLINED_FUNCTION_1_61();
    sub_1C5E20B48(v39, v40);
    goto LABEL_25;
  }

  v22 = v24;
  if (![(_MPCProtoDelegateInfo *)v16 accountID])
  {

    sub_1C5C64D74(0, &qword_1ED7DCCF0);
    sub_1C6016940();
    v1[22] = 100;
    OUTLINED_FUNCTION_53_9();
    sub_1C6017540();

    OUTLINED_FUNCTION_89();
    v47 = [v16 description];
    v48 = sub_1C6016940();
    v50 = v49;

    MEMORY[0x1C69534E0](v48, v50);

    sub_1C6016880();
    OUTLINED_FUNCTION_18_2();
    _s3__C4CodeOMa_1();
    OUTLINED_FUNCTION_0_76();
    sub_1C5E20B48(v51, v52);
    goto LABEL_29;
  }

  v25 = swift_task_alloc();
  v1[41] = v25;
  *v25 = v1;
  v25[1] = sub_1C5E1C914;
LABEL_20:
  OUTLINED_FUNCTION_8_3();

  return MEMORY[0x1EEE41840](v26, v27);
}

uint64_t sub_1C5E1C594()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 312) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 256);
  v7 = *(v2 + 248);
  if (v0)
  {
    v8 = sub_1C5E1CFAC;
  }

  else
  {
    v8 = sub_1C5E1C6EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E1C6EC()
{
  OUTLINED_FUNCTION_35();
  v1 = v0[36];
  v2 = [objc_opt_self() sharedManager];
  [(_MPCProtoDelegateInfo *)v1 accountID];
  v0[25] = 0;
  v3 = OUTLINED_FUNCTION_33_6();
  v5 = [v3 v4];

  v6 = v0[25];
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    result = sub_1C5E376A4(v7);
    if (v10 >> 60 == 15)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_45_10();
    v11 = v0[37];

    sub_1C5C64D74(0, &qword_1EC1ABB68);
    v12 = sub_1C5E17E98(0, v6, v2);
    v13 = OUTLINED_FUNCTION_6_3();
    sub_1C5CB6098(v13, v14);

    v15 = v0[27];
    *v15 = v12;
    OUTLINED_FUNCTION_172();
  }

  else
  {
    v18 = v0[36];
    v17 = v0[37];
    v19 = v6;

    sub_1C6014D40();

    swift_willThrow();
    v20 = OUTLINED_FUNCTION_12_31();
    sub_1C5CB6098(v20, v21);

    OUTLINED_FUNCTION_172();
  }

  return v16();
}

uint64_t sub_1C5E1C914()
{
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_30();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v0;

  OUTLINED_FUNCTION_43_0();
  v6 = *(v5 + 256);
  v7 = *(v2 + 248);
  if (v0)
  {
    v8 = sub_1C5E1D060;
  }

  else
  {
    v8 = sub_1C5E1CA6C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C5E1CA6C()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[40];
  v2 = v0[36];
  v3 = [objc_opt_self() sharedManager];
  v0[43] = v3;
  v4 = [(_MPCProtoDelegateInfo *)v2 accountID];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1C5E1CC04;
  v5 = OUTLINED_FUNCTION_168_0();
  sub_1C5E21498(0, &qword_1EC1ABE90, &unk_1EC1A8BB0);
  v0[17] = v6;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C5CA6B88;
  v0[13] = &block_descriptor_81_0;
  v0[14] = v5;
  [v3 updateCredentialsWithDelegateTokenE:v1 forDSID:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C5E1CC04()
{
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_9_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 352) = *(v3 + 48);
  OUTLINED_FUNCTION_104_1();
  v5 = *(v4 + 256);
  v7 = *(v6 + 248);
  if (v8)
  {
    v9 = sub_1C5E1D114;
  }

  else
  {
    v9 = sub_1C5E1CD50;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v5);
}

uint64_t sub_1C5E1CD50()
{
  OUTLINED_FUNCTION_35();
  v26 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 344);

  v2 = *(v0 + 168);

  if (qword_1ED7DD2B8 != -1)
  {
    OUTLINED_FUNCTION_59();
  }

  v3 = *(v0 + 232);
  v4 = sub_1C60162D0();
  __swift_project_value_buffer(v4, qword_1ED7E16A8);
  v5 = v3;
  v6 = v2;
  v7 = sub_1C60162B0();
  LOBYTE(v3) = sub_1C6016F30();

  if (os_log_type_enabled(v7, v3))
  {
    v8 = *(v0 + 232);
    v9 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v9 = 136446466;
    v10 = [v8 engineID];
    sub_1C6016940();
    OUTLINED_FUNCTION_167_0();
    OUTLINED_FUNCTION_110_1(v11, v12, v25);
    OUTLINED_FUNCTION_164_0();
    *(v9 + 4) = v10;
    *(v9 + 12) = 2080;
    v13 = [v6 shortHashedDSID];
    sub_1C6016940();
    OUTLINED_FUNCTION_167_0();
    OUTLINED_FUNCTION_110_1(v14, v15, v25);
    OUTLINED_FUNCTION_164_0();
    *(v9 + 14) = v13;
    OUTLINED_FUNCTION_153_1(&dword_1C5C61000, v16, v17, "[PUB:%{public}s] delegateAccount | delegation successful for account=%s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    MEMORY[0x1C6956920](v9, -1, -1);
  }

  v18 = *(v0 + 320);
  v19 = [objc_opt_self() successStatus];
  v20 = OUTLINED_FUNCTION_13_19();
  sub_1C5CB6098(v20, v21);

  v22 = *(v0 + 216);
  *v22 = v19;
  OUTLINED_FUNCTION_172();

  return v23();
}

uint64_t sub_1C5E1CFAC()
{
  OUTLINED_FUNCTION_136();
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 288);
  v1 = *(v0 + 296);

  v3 = OUTLINED_FUNCTION_255();
  sub_1C5CB6098(v3, v4);
  OUTLINED_FUNCTION_172();
  OUTLINED_FUNCTION_142_2();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1C5E1D060()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);

  v3 = OUTLINED_FUNCTION_255();
  sub_1C5CB6098(v3, v4);
  OUTLINED_FUNCTION_172();

  return v5();
}

uint64_t sub_1C5E1D114()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[36];

  swift_willThrow();
  v4 = OUTLINED_FUNCTION_255();
  sub_1C5CB6098(v4, v5);

  OUTLINED_FUNCTION_172();

  return v6();
}

uint64_t sub_1C5E1D1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1C5E1D27C;

  return sub_1C5E1B1C8(a2, a3);
}

uint64_t sub_1C5E1D27C()
{
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  v5 = v4;
  OUTLINED_FUNCTION_30();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_101();
  *v8 = v7;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_235();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C5E1D388()
{
  OUTLINED_FUNCTION_248();
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_30_3();

  return v3(v2);
}

uint64_t sub_1C5E1D3E8()
{
  OUTLINED_FUNCTION_13();
  v1 = *(v0 + 40);
  v2 = sub_1C6014D30();
  v3 = [v2 mpc_remoteCommandStatus];

  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_5_1();

  return v5(v3);
}

uint64_t sub_1C5E1D4A4(void *a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_178();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = a1;
  v10 = OUTLINED_FUNCTION_255();

  return sub_1C5E3A9D0(v10, v11);
}

uint64_t sub_1C5E1D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1C6016C10();
  v3[5] = sub_1C6016C00();
  v5 = sub_1C6016BA0();

  return MEMORY[0x1EEE6DFA0](sub_1C5E1D5BC, v5, v4);
}

uint64_t sub_1C5E1D5BC()
{
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_165_0();
  *(v3 + 48) = _Block_copy(v1);
  v4 = v2;
  v5 = v0;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_82_4(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_8_36(v7);

  return _MediaRemotePublisher.delegateAccount(event:)();
}

uint64_t sub_1C5E1D660()
{
  OUTLINED_FUNCTION_13();
  v2 = v1;
  OUTLINED_FUNCTION_8_0();
  v4 = v3[6];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_101();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_255();
  v10(v9);
  _Block_release(v4);

  OUTLINED_FUNCTION_172();

  return v11();
}

id _MediaRemotePublisher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _MediaRemotePublisher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5E1D8F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C6017860();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C5E1D96C(void *a1)
{
  sub_1C5E219B8(0, &qword_1EC1ABFF0, sub_1C5E21A1C, &type metadata for _MediaRemotePublisher.MusicFallbackSource.StationResponseData.Station.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5E21A1C();
  v9 = v8;
  sub_1C6017A80();
  if (!v1)
  {
    v9 = sub_1C6017750();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_1C5E1DB18(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C6017860();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void *sub_1C5E1DBA0(void *a1)
{
  sub_1C5E219B8(0, &qword_1EC1ABFB0, sub_1C5E21628, &type metadata for _MediaRemotePublisher.MusicFallbackSource.StationResponseData.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C5E21628();
  v9 = v8;
  sub_1C6017A80();
  if (!v1)
  {
    sub_1C5E2167C(0, &qword_1EC1ABFC0, &type metadata for _MediaRemotePublisher.MusicFallbackSource.StationResponseData.Station, MEMORY[0x1E69E62F8]);
    sub_1C5E216CC();
    sub_1C6017760();
    (*(v5 + 8))(v7, v4);
    v9 = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_1C5E1DD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C5E1D8F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C5E1DDB8(uint64_t a1)
{
  v2 = sub_1C5E21A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C5E1DDF4(uint64_t a1)
{
  v2 = sub_1C5E21A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C5E1DE30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C5E1D96C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}