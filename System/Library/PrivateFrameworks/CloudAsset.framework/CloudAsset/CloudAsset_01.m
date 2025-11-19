uint64_t sub_22E6E06F8()
{
  v1 = v0[29];
  v47 = v0[28];
  v40 = v0[27];
  v41 = v0[26];
  v2 = v0[24];
  v46 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v42 = v0[21];
  v45 = v0[20];
  v34 = v0[19];
  v27 = v0[18];
  v44 = v0[17];
  v37 = v0[16];
  v5 = v0[15];
  v43 = v5;
  v31 = v0[14];
  v6 = v0[12];
  v28 = v0[13];
  v49 = v0[11];
  v33 = v0[10];
  v29 = v0[9];
  v48 = v0[8];
  v32 = v0[7];
  v30 = v0[6];
  v7 = v0[5];
  v8 = v0[2];
  v38 = v0[3];
  v39 = v0[4];
  (*(v4 + 104))(v2, *MEMORY[0x277D858A0], v3);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v4 + 8))(v2, v3);
  v9 = *(v6 + 20);
  v10 = (v7 + *(v6 + 28));
  v35 = v10[1];
  v36 = *v10;

  UUID.init()();
  type metadata accessor for TaskPriority();
  sub_22E6E3D34();
  sub_22E6CF58C(v11, v12, v13, v14);
  sub_22E6E3A00();
  sub_22E6E21A0(v7, v5);
  sub_22E6E398C();
  sub_22E6E21A0(v7, v49);
  sub_22E6E39E8();
  sub_22E6E21A0(v7 + v9, v48);
  (*(v27 + 16))(v45, v42, v44);
  (*(v41 + 16))(v47, v1, v46);
  v15 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v16 = (v31 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (*(v29 + 80) + v16 + 16) & ~*(v29 + 80);
  v18 = (v33 + *(v30 + 80) + v17) & ~*(v30 + 80);
  v19 = (v32 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v27 + 80) + v19 + 16) & ~*(v27 + 80);
  v21 = (v34 + *(v41 + 80) + v20) & ~*(v41 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_22E6E2148(v43, v22 + v15);
  v23 = (v22 + v16);
  *v23 = v38;
  v23[1] = v39;
  sub_22E6E3A78();
  sub_22E6E2148(v49, v22 + v17);
  sub_22E6E3B34();
  sub_22E6E2148(v48, v22 + v18);
  v24 = (v22 + v19);
  *v24 = v36;
  v24[1] = v35;
  (*(v27 + 32))(v22 + v20, v45, v44);
  (*(v41 + 32))(v22 + v21, v47, v46);
  sub_22E6E1B80(0, 0, v37, &unk_22E727418, v22);
  AsyncThrowingStream.Continuation.onTermination.setter();
  (*(v27 + 8))(v42, v44);
  (*(v41 + 8))(v1, v46);

  sub_22E6E3AD8();

  return v25();
}

uint64_t sub_22E6E0B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v18;
  *(v8 + 160) = v19;
  *(v8 + 136) = v17;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  v9 = sub_22E6CF1CC(&qword_27DA6CA00, &qword_22E727838);
  *(v8 + 168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 176) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 184) = swift_task_alloc();
  v12 = *(*(type metadata accessor for Credential(0) - 8) + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v13 = type metadata accessor for Asset(0);
  *(v8 + 200) = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E6E0C90, 0, 0);
}

uint64_t sub_22E6E0C90()
{
  sub_22E6E3D08();
  v1 = v0[12];
  v2 = sub_22E6E02F0(v0[13], v0[14]);
  v4 = sub_22E6E037C(v2, v3);
  v0[29] = v4;
  v5 = v4[2];
  v0[30] = v5;
  if (v5)
  {
    v6 = v0[12];
    v7 = type metadata accessor for AssetStreamHandle(0);
    v9 = *(v6 + *(v7 + 32));
    v0[32] = 0;
    v0[33] = 0;
    v0[31] = v9;
    if (v4[2])
    {
      v0[34] = v4[4];
      v7 = sub_22E6E3AE4(v4[5]);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v7, v9, v8);
  }

  else
  {

    v10 = v0[20];
    v0[11] = 0;
    sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    sub_22E6E3D7C();

    sub_22E6E3AD8();

    return v11();
  }
}

uint64_t sub_22E6E0DC0()
{
  sub_22E6E3BDC();
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[31];
  v0[36] = sub_22E6E01EC();
  v4 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22E6E0E24()
{
  v56 = v0;
  v1 = v0[36];
  if (!v1)
  {
    v7 = v0[34];
    v8 = v0[35];
    v9 = v0[32];
    v10 = v0[28];
    v11 = v0[24];
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[15];
    v15 = v0[16];
    sub_22E6E398C();
    sub_22E6E21A0(v16, v10);
    sub_22E6E39E8();
    sub_22E6E21A0(v15, v11);
    v17 = type metadata accessor for AssetStreamHandle.RangeReader(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();

    sub_22E6E3F1C();
    v1 = sub_22E6DCFF8(v20, v21, v22, v11, v13, v12);
    if (v9)
    {
      v23 = v0[29];

      if (qword_27DA6C3D0 != -1)
      {
        sub_22E6E3C74();
      }

      v24 = v0[27];
      v25 = v0[15];
      v26 = type metadata accessor for Logger();
      sub_22E6E3578(v26, qword_27DA6C8D0);
      sub_22E6E398C();
      v27 = sub_22E6D368C();
      sub_22E6E21A0(v27, v28);
      v29 = v9;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      v32 = os_log_type_enabled(v30, v31);
      v33 = v0[27];
      if (v32)
      {
        v35 = v0[25];
        v34 = v0[26];
        v53 = v0[13];
        v54 = v0[14];
        sub_22E6E3BA0();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v36 = 136315650;
        sub_22E6E398C();
        sub_22E6E21A0(v33, v34);
        sub_22E6D3824();
        String.init<A>(describing:)();
        sub_22E6E39BC();
        sub_22E6E20F0(v33, v38);
        v39 = sub_22E6D3824();
        v42 = sub_22E706BF8(v39, v40, v41);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2080;
        v43 = sub_22E6E35C0();
        v45 = sub_22E706BF8(v43, v44, &v55);

        *(v36 + 14) = v45;
        *(v36 + 22) = 2112;
        v46 = v9;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 24) = v47;
        *v37 = v47;
        _os_log_impl(&dword_22E6C9000, v30, v31, "failed to stream data for %s in range %s due to error %@", v36, 0x20u);
        sub_22E6D3510(v37, &qword_27DA6CA08, &qword_22E727840);
        sub_22E6E3C48();
        sub_22E6E3F04();
        swift_arrayDestroy();
        sub_22E6E3CC8();
        sub_22E6E3CE4();
      }

      else
      {

        sub_22E6E39BC();
        sub_22E6E20F0(v33, v48);
      }

      v49 = v0[20];
      v0[9] = v9;
      sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
      AsyncThrowingStream.Continuation.finish(throwing:)();
      sub_22E6E3D7C();

      sub_22E6E3AD8();
      sub_22E6E3F68();

      __asm { BRAA            X1, X16 }
    }
  }

  v0[37] = v1;
  v2 = v0[31];
  sub_22E6E3F68();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22E6E1178()
{
  sub_22E6E3BDC();
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[31];
  v0[38] = sub_22E6E01EC();
  v4 = sub_22E6E3C64();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_22E6E11DC()
{
  sub_22E6E3BDC();
  if (!v0[38])
  {
    v2 = v0[31];
    v1 = sub_22E6E12D8;
    v3 = 0;

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v4 = v0[34];
  v5 = v0[13];
  if (v4 > v5)
  {
    v5 = v0[34];
  }

  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  v0[39] = v7;
  if (v6)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v0[35];
  if (v8 >= v0[14])
  {
    v8 = v0[14];
  }

  v6 = __OFSUB__(v8, v4);
  v9 = v8 - v4;
  v0[40] = v9;
  if (v6)
  {
    goto LABEL_16;
  }

  if (v9 < v7)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v11 = sub_22E6E3AA8(v10);

  return sub_22E6DECC4(v11);
}

uint64_t sub_22E6E12D8()
{
  sub_22E6E3F34();
  v1 = v0[37];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[31];
  swift_beginAccess();

  v5 = *(v4 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + 112);
  v0[10] = v7;
  *(v4 + 112) = 0x8000000000000000;
  v8 = sub_22E714C00();
  v11 = *(v7 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v8;
  v15 = v9;
  sub_22E6CF1CC(&qword_27DA6CA10, &qword_22E727848);
  v8 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13);
  if ((v8 & 1) == 0)
  {
LABEL_8:
    v20 = v0[10];
    v21 = v0[37];
    if (v15)
    {
      v22 = v20[7];
      v23 = *(v22 + 8 * v14);
      *(v22 + 8 * v14) = v21;

      goto LABEL_12;
    }

    v24 = v20[6];
    v25 = *(v0 + 17);
    v20[(v14 >> 6) + 8] |= 1 << v14;
    *(v24 + 16 * v14) = v25;
    *(v20[7] + 8 * v14) = v21;
    v26 = v20[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
      v20[2] = v28;
LABEL_12:
      *(v0[31] + 112) = v20;
      swift_endAccess();
      v8 = sub_22E6E3C64();

      return MEMORY[0x2822009F8](v8, v9, v10);
    }

LABEL_16:
    __break(1u);
    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  v16 = v0[34];
  v17 = v0[35];
  v18 = v0[10];
  v8 = sub_22E714C00();
  if ((v15 & 1) == (v9 & 1))
  {
    v14 = v8;
    goto LABEL_8;
  }

  sub_22E6CF1CC(&qword_27DA6C5E0, &unk_22E7273C0);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void sub_22E6E14AC()
{
  v2 = v0[34];
  v3 = v0[13];
  if (v2 > v3)
  {
    v3 = v0[34];
  }

  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  v0[39] = v5;
  if (v4)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = v0[35];
  if (v6 >= v0[14])
  {
    v6 = v0[14];
  }

  v4 = __OFSUB__(v6, v2);
  v7 = v6 - v2;
  v0[40] = v7;
  if (v4)
  {
    goto LABEL_12;
  }

  if (v7 < v5)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_22E6E3BDC();
  v8 = swift_task_alloc();
  v0[41] = v8;
  *v8 = v0;
  v9 = sub_22E6E3AA8(v8);

  sub_22E6DECC4(v9);
}

uint64_t sub_22E6E1564()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6E3C28();
  *v4 = v3;
  v6 = *(v5 + 328);
  *v4 = *v1;
  v3[42] = v7;
  v3[43] = v8;
  v3[44] = v0;

  if (v0)
  {
    v9 = v3[29];

    v10 = sub_22E6E18D4;
  }

  else
  {
    v10 = sub_22E6E1674;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22E6E1674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 344);
  switch(v4 >> 62)
  {
    case 1uLL:
      v15 = *(v3 + 336);
      v16 = *(v3 + 340);
      v8 = __OFSUB__(v16, v15);
      LODWORD(v5) = v16 - v15;
      if (v8)
      {
        goto LABEL_21;
      }

      v5 = v5;
      goto LABEL_10;
    case 2uLL:
      v6 = *(*(v3 + 336) + 16);
      v7 = *(*(v3 + 336) + 24);
      v8 = __OFSUB__(v7, v6);
      v5 = v7 - v6;
      if (!v8)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (*(v3 + 320) > 0)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    case 3uLL:
      goto LABEL_6;
    default:
      v5 = BYTE6(v4);
LABEL_10:
      if (v5 < *(v3 + 320))
      {
LABEL_7:
        v9 = *(v3 + 336);
        v10 = *(v3 + 296);
        v12 = *(v3 + 176);
        v11 = *(v3 + 184);
        v13 = *(v3 + 160);
        v14 = *(v3 + 168);
        *(v3 + 56) = v9;
        *(v3 + 64) = v4;
        sub_22E6CFB64(v9, v4);
        sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
      }

      else
      {
LABEL_11:
        v9 = *(v3 + 336);
        v17 = *(v3 + 312);
        v18 = *(v3 + 296);
        v12 = *(v3 + 176);
        v11 = *(v3 + 184);
        v19 = *(v3 + 160);
        v14 = *(v3 + 168);
        *(v3 + 40) = Data.subdata(in:)();
        *(v3 + 48) = v20;
        sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
      }

      AsyncThrowingStream.Continuation.yield(_:)();

      sub_22E6CFBBC(v9, v4);
      a1 = (*(v12 + 8))(v11, v14);
      v21 = *(v3 + 264) + 1;
      if (v21 == *(v3 + 240))
      {
        v22 = *(v3 + 232);

        v23 = *(v3 + 160);
        *(v3 + 88) = 0;
        sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
        AsyncThrowingStream.Continuation.finish(throwing:)();
        sub_22E6E3D7C();

        sub_22E6E3AD8();

        return v24();
      }

      else
      {
        *(v3 + 256) = *(v3 + 352);
        *(v3 + 264) = v21;
        v26 = *(v3 + 232);
        if (v21 >= *(v26 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
        }

        else
        {
          v27 = *(v3 + 248);
          v28 = v26 + 16 * v21;
          *(v3 + 272) = *(v28 + 32);
          v29 = *(v28 + 40);
          a1 = sub_22E6E3AE4(a1, v27);
        }

        return MEMORY[0x2822009F8](a1, a2, a3);
      }
  }
}

uint64_t sub_22E6E18D4()
{
  v32 = v0;
  v1 = v0[37];

  v2 = v0[44];
  if (qword_27DA6C3D0 != -1)
  {
    sub_22E6E3C74();
  }

  v3 = v0[27];
  v4 = v0[15];
  v5 = type metadata accessor for Logger();
  sub_22E6E3578(v5, qword_27DA6C8D0);
  sub_22E6E398C();
  sub_22E6E21A0(v4, v3);
  v6 = v2;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  if (v9)
  {
    v12 = v0[25];
    v11 = v0[26];
    v29 = v0[13];
    v30 = v0[14];
    sub_22E6E3BA0();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v13 = 136315650;
    sub_22E6E398C();
    sub_22E6E21A0(v10, v11);
    sub_22E6D3824();
    String.init<A>(describing:)();
    sub_22E6E39BC();
    sub_22E6E20F0(v10, v15);
    v16 = sub_22E6D3824();
    v19 = sub_22E706BF8(v16, v17, v18);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = sub_22E6E35C0();
    v22 = sub_22E706BF8(v20, v21, &v31);

    *(v13 + 14) = v22;
    *(v13 + 22) = 2112;
    v23 = v2;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v24;
    *v14 = v24;
    _os_log_impl(&dword_22E6C9000, v7, v8, "failed to stream data for %s in range %s due to error %@", v13, 0x20u);
    sub_22E6D3510(v14, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3C48();
    sub_22E6E3F04();
    swift_arrayDestroy();
    sub_22E6E3CC8();
    sub_22E6E3CE4();
  }

  else
  {

    sub_22E6E39BC();
    sub_22E6E20F0(v10, v25);
  }

  v26 = v0[20];
  v0[9] = v2;
  sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  sub_22E6E3D7C();

  sub_22E6E3AD8();

  return v27();
}

uint64_t sub_22E6E1B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  sub_22E6D376C(v9);
  v11 = *(v10 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  v14 = v31 - v13;
  sub_22E6D3568(a3, v31 - v13, &qword_27DA6C9A8, &qword_22E72C030);
  v15 = type metadata accessor for TaskPriority();
  v16 = sub_22E6E3FC4(v14);

  if (v16 == 1)
  {
    sub_22E6D3510(v14, &qword_27DA6C9A8, &qword_22E72C030);
  }

  else
  {
    TaskPriority.rawValue.getter();
    v17 = *(*(v15 - 8) + 8);
    v18 = sub_22E6E3EE0();
    v19(v18);
  }

  v21 = *(a5 + 16);
  v20 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v21)
  {
    swift_getObjectType();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();
    v24 = v23;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25 = String.utf8CString.getter() + 32;
      v26 = swift_allocObject();
      *(v26 + 16) = a4;
      *(v26 + 24) = a5;

      if (v24 | v22)
      {
        v32[0] = 0;
        v32[1] = 0;
        v27 = v32;
        v32[2] = v22;
        v32[3] = v24;
      }

      else
      {
        v27 = 0;
      }

      v31[1] = 7;
      v31[2] = v27;
      v31[3] = v25;
      sub_22E6E3F04();
      v29 = swift_task_create();

      sub_22E6D3510(a3, &qword_27DA6C9A8, &qword_22E72C030);

      return v29;
    }
  }

  else
  {
    v22 = 0;
    v24 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22E6D3510(a3, &qword_27DA6C9A8, &qword_22E72C030);
  v28 = swift_allocObject();
  *(v28 + 16) = a4;
  *(v28 + 24) = a5;
  if (v24 | v22)
  {
    v32[4] = 0;
    v32[5] = 0;
    v32[6] = v22;
    v32[7] = v24;
  }

  sub_22E6E3F04();
  return swift_task_create();
}

uint64_t sub_22E6E1E8C()
{
  sub_22E6E3D08();
  v0 = swift_task_alloc();
  v1 = sub_22E6E3C38(v0);
  *v1 = v2;
  v1[1] = sub_22E6E1F30;

  return AssetStreamHandle.inputStream(for:)();
}

uint64_t sub_22E6E1F30()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6E3AD8();

  return v5();
}

unint64_t sub_22E6E2074()
{
  result = qword_27DA6C920;
  if (!qword_27DA6C920)
  {
    sub_22E6CF2AC(&qword_27DA6C5E0, &unk_22E7273C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C920);
  }

  return result;
}

uint64_t sub_22E6E20F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22E6CF978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E6E2148(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v5 = v4(v3);
  sub_22E6CF978(v5);
  v7 = *(v6 + 32);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

uint64_t sub_22E6E21A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22E6D3778();
  v5 = v4(v3);
  sub_22E6CF978(v5);
  v7 = *(v6 + 16);
  v8 = sub_22E6D368C();
  v9(v8);
  return a2;
}

unint64_t sub_22E6E21F8()
{
  result = qword_27DA6C938;
  if (!qword_27DA6C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C938);
  }

  return result;
}

uint64_t sub_22E6E224C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22E6E2294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, NSURL *a3@<X8>)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(a3);
  v8 = v7;
  if (a2)
  {
    v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [v4 initWithURL:v8 options:v9.super.isa];

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

uint64_t sub_22E6E2370(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22E6E2468;

  return v7(a1);
}

uint64_t sub_22E6E2468()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6E3AD8();

  return v5();
}

uint64_t sub_22E6E254C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_22E6CF1CC(&qword_27DA6CA28, &qword_22E727858);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_22E706AF0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_22E6E2644(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  (*(v7 + 32))(&a3[OBJC_IVAR____TtC10CloudAsset10PlayerItem_id], v10, v6);
  *&a3[OBJC_IVAR____TtC10CloudAsset10PlayerItem_resourceLoaderDelegate] = a2;
  v11 = type metadata accessor for PlayerItem();
  v28.receiver = a3;
  v28.super_class = v11;
  v12 = objc_msgSendSuper2(&v28, sel_initWithAsset_automaticallyLoadedAssetKeys_, a1, 0);
  v13 = qword_27DA6C480;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_22E6E3578(v15, qword_27DA6D870);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315138;
    (*(v7 + 16))(v10, v14 + OBJC_IVAR____TtC10CloudAsset10PlayerItem_id, v6);
    sub_22E6E224C(&qword_27DA6C948, MEMORY[0x277CC95F0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = sub_22E706BF8(v21, v23, &v27);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_22E6C9000, v16, v17, "initialize PlayerItem with id %s", v19, 0xCu);
    sub_22E6CF2F4(v20);
    MEMORY[0x2318ED210](v20, -1, -1);
    MEMORY[0x2318ED210](v19, -1, -1);
  }

  else
  {
  }

  return v14;
}

id sub_22E6E2924(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UTType();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v22[3] = type metadata accessor for AssetStreamHandle(0);
  v22[4] = &protocol witness table for AssetStreamHandle;
  v13 = sub_22E6DA66C(v22);
  sub_22E6E2148(a1, v13);
  sub_22E6E3808(v22, &a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle]);
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  sub_22E6E386C(v12, &a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_type]);
  sub_22E6E38DC(0, &qword_27DA6CA38, 0x277CE6440);
  sub_22E6CF1CC(&qword_27DA6CA40, &unk_22E72C400);
  sub_22E6E391C();
  v14 = Dictionary.init(dictionaryLiteral:)();
  sub_22E6CF1CC(&qword_27DA6CA50, &unk_22E727870);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = v14;
  *&a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedTaskMapping] = v15;
  if (qword_27DA6C448 != -1)
  {
    swift_once();
  }

  v16 = _os_activity_create(&dword_22E6C9000, "asset-streaming/loading-request-handler", qword_27DA6CDA0, OS_ACTIVITY_FLAG_DEFAULT);
  sub_22E6CF1CC(&qword_27DA6CA58, &unk_22E727880);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  *(v17 + 16) = v16;
  *&a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedActivity] = v17;
  v21.receiver = a4;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, sel_init);
  sub_22E6CF2F4(v22);
  return v18;
}

unint64_t sub_22E6E2BC0()
{
  result = qword_27DA6C968;
  if (!qword_27DA6C968)
  {
    sub_22E6CF2AC(&qword_27DA6C960, &qword_22E7273D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C968);
  }

  return result;
}

void sub_22E6E2C24(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  *&a5[OBJC_IVAR____TtC10CloudAsset18AssetExportSession_delegate] = a4;
  v9 = a4;
  v10 = MEMORY[0x2318EC5C0](a2, a3);
  v12.receiver = a5;
  v12.super_class = type metadata accessor for AssetExportSession();
  v11 = objc_msgSendSuper2(&v12, sel_initWithAsset_presetName_, a1, v10);

  if (v11)
  {
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22E6E2CD4()
{
  result = qword_27DA6C978;
  if (!qword_27DA6C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C978);
  }

  return result;
}

uint64_t sub_22E6E2D28()
{
  v1 = type metadata accessor for AssetStreamHandle(0);
  sub_22E6E3A38(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for Asset(0);
  sub_22E6E3A38(v5);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for Credential(0);
  sub_22E6E3A38(v10);
  v13 = (*(v12 + 64) + ((v7 + v9 + *(v11 + 80)) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for UUID();
  sub_22E6E3A38(v14);
  v16 = (v13 + *(v15 + 80) + 16) & ~*(v15 + 80);
  v18 = *(v17 + 64);
  v19 = sub_22E6CF1CC(&qword_27DA6C9B8, &qword_22E727408);
  sub_22E6D376C(v19);
  v21 = (v16 + v18 + *(v20 + 80)) & ~*(v20 + 80);
  v22 = *(v0 + 16);
  v23 = *(v0 + 24);
  v24 = v0 + v4;
  v25 = *(v0 + v4);
  v26 = *(v24 + 8);
  v27 = v0 + v13;
  v29 = *(v0 + v13);
  v28 = *(v27 + 8);
  v30 = swift_task_alloc();
  *(v41 + 16) = v30;
  *v30 = v41;
  v30[1] = sub_22E6E1F30;
  sub_22E6E3F68();

  return sub_22E6E0B34(v31, v32, v33, v34, v35, v36, v37, v38);
}

uint64_t sub_22E6E2FF4()
{
  result = type metadata accessor for Asset(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Credential(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AssetStreamHandle.RangeReadersCache();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22E6E30A8()
{
  result = type metadata accessor for Asset(319);
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for Credential(319);
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_22E6E31D0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22E6E31F4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_22E6E3248(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_22E6E32A4(void *result, int a2)
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

_BYTE *storeEnumTagSinglePayload for AssetStreamHandle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_22E6E33BC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22E6E33D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22E6E3410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_22E6E3474()
{
  result = qword_27DA6C9C0;
  if (!qword_27DA6C9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C9C0);
  }

  return result;
}

unint64_t sub_22E6E34CC()
{
  result = qword_27DA6C9C8;
  if (!qword_27DA6C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C9C8);
  }

  return result;
}

unint64_t sub_22E6E3524()
{
  result = qword_27DA6C9D0;
  if (!qword_27DA6C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6C9D0);
  }

  return result;
}

uint64_t sub_22E6E3578(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22E6E35B0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_22E6E35C0()
{
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2318EC630](3943982, 0xE300000000000000);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t *sub_22E6E3658(uint64_t a1, uint64_t *a2)
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

uint64_t sub_22E6E36BC()
{
  sub_22E6E3F34();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = swift_task_alloc();
  v8 = sub_22E6E3C38(v7);
  *v8 = v9;
  v8[1] = sub_22E6E1F30;

  return sub_22E6DDAC8(v2, v3, v4, v6);
}

uint64_t sub_22E6E3770()
{
  sub_22E6E3D08();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_22E6E3C38(v3);
  *v4 = v5;
  v6 = sub_22E6E3D14(v4);

  return v7(v6);
}

uint64_t sub_22E6E3808(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22E6E386C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22E6E38DC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_22E6E391C()
{
  result = qword_27DA6CA48;
  if (!qword_27DA6CA48)
  {
    sub_22E6E38DC(255, &qword_27DA6CA38, 0x277CE6440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CA48);
  }

  return result;
}

uint64_t sub_22E6E3A18()
{

  return swift_once();
}

uint64_t sub_22E6E3AA8(uint64_t a1)
{
  *(a1 + 8) = sub_22E6E1564;
  v2 = *(v1 + 296);
  return *(v1 + 152);
}

uint64_t sub_22E6E3AD8()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_22E6E3B00()
{

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E6E3BE8()
{

  return MEMORY[0x2821FF2B0](0x712D65646F636564, 0xEC00000065756575, v2, v1, v0, 0);
}

void sub_22E6E3C48()
{

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E6E3C74()
{

  return swift_once();
}

void sub_22E6E3CC8()
{

  JUMPOUT(0x2318ED210);
}

void sub_22E6E3CE4()
{

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E6E3D14(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_22E6E3D40()
{
  v1 = v0[26];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[8];
}

uint64_t sub_22E6E3D60()
{

  return swift_slowAlloc();
}

uint64_t sub_22E6E3D7C()
{
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
}

uint64_t sub_22E6E3D98()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_22E6E3DB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_22E706BF8(a1, a2, va);
}

uint64_t sub_22E6E3DCC()
{

  return swift_arrayDestroy();
}

uint64_t sub_22E6E3DE4()
{

  return swift_slowAlloc();
}

uint64_t sub_22E6E3DFC@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_22E6E3E38(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_log_type_t a15)
{

  _os_log_impl(a1, v15, a15, a4, v16, 0x20u);
}

uint64_t sub_22E6E3E5C()
{
}

uint64_t sub_22E6E3E74()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_22E6E3E8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_22E706BF8(a1, a2, va);
}

uint64_t sub_22E6E3EA4()
{

  return swift_task_alloc();
}

uint64_t sub_22E6E3EBC()
{
  v2 = *(v0 + 8);
  result = *(v1 - 112);
  v4 = *(v1 - 104);
  return result;
}

uint64_t sub_22E6E3F84()
{
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v7 = v0[9];
}

uint64_t sub_22E6E3FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821FCEB0](a1, v4, a3, a4, v5);
}

uint64_t sub_22E6E3FC4(uint64_t a1)
{

  return sub_22E6CF550(a1, 1, v1);
}

uint64_t sub_22E6E3FDC()
{
}

void sub_22E6E403C()
{
  sub_22E6E4350(319, &qword_27DA6CA70, type metadata accessor for CloudAssets_Signal.Event, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Signal.Event(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Signal.Event(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Signal.Event(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22E6E41B0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22E6E41CC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

void sub_22E6E4244()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_22E6E4350(319, &qword_27DA6CA98, type metadata accessor for CloudAssets_Asset, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22E6E4350(319, &qword_27DA6CAA0, type metadata accessor for CloudAssets_Credential, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22E6E4350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22E6E441C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_22E6E4350(319, &qword_27DA6CAB8, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22E6E4530()
{
  sub_22E6E4350(319, &qword_27DA6CAD0, type metadata accessor for CloudAssets_Asset, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      sub_22E6E4350(319, &qword_27DA6CAA0, type metadata accessor for CloudAssets_Credential, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22E6E4664()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_22E6E4350(319, &qword_27DA6CAE8, type metadata accessor for CloudAssets_Asset.ID, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22E6E4350(319, &qword_27DA6CAF0, type metadata accessor for CloudAssets_Asset.Protector, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22E6E47E8()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E6E4884()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22E6E490C@<X0>(void *a1@<X8>)
{
  sub_22E6EB478(a1);
  *(v1 + 32) = xmmword_22E7263B0;
  *(v1 + 48) = xmmword_22E7263B0;
  v2 = v1 + *(type metadata accessor for CloudAssets_Asset.ID(0) + 32);
  return UnknownStorage.init()();
}

uint64_t sub_22E6E494C@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_22E7263B0;
  a1[1] = xmmword_22E7263B0;
  v1 = a1 + *(type metadata accessor for CloudAssets_Asset.Protector(0) + 24);
  return UnknownStorage.init()();
}

uint64_t sub_22E6E498C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for CloudAssets_Asset(0);
  v3 = a1 + v2[5];
  UnknownStorage.init()();
  v4 = v2[6];
  v5 = type metadata accessor for CloudAssets_Asset.ID(0);
  sub_22E6EB550(v5);
  v6 = v2[7];
  type metadata accessor for CloudAssets_Asset.Protector(0);
  v7 = sub_22E6EB3B4();

  return sub_22E6CF58C(v7, v8, v9, v10);
}

uint64_t sub_22E6E4A00@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = xmmword_22E7263B0;
  *(a1 + 24) = xmmword_22E7263B0;
  v2 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  v3 = a1 + *(v2 + 28);
  UnknownStorage.init()();
  v4 = *(v2 + 32);
  type metadata accessor for CloudAssets_Credential(0);
  v5 = sub_22E6EB3B4();

  return sub_22E6CF58C(v5, v6, v7, v8);
}

uint64_t sub_22E6E4A74@<X0>(void *a1@<X8>)
{
  sub_22E6EB478(a1);
  v2 = type metadata accessor for CloudAssets_AssetStreamHandle(0);
  v3 = v1 + v2[6];
  UnknownStorage.init()();
  v4 = v2[7];
  v5 = type metadata accessor for CloudAssets_Asset(0);
  sub_22E6EB550(v5);
  v6 = v2[8];
  type metadata accessor for CloudAssets_Credential(0);
  v7 = sub_22E6EB3B4();

  return sub_22E6CF58C(v7, v8, v9, v10);
}

uint64_t sub_22E6E4AE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
  sub_22E6D376C(v2);
  v4 = *(v3 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v8 = *(type metadata accessor for CloudAssets_Credential(0) + 32);
  sub_22E6EB1A8();
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
  sub_22E6EB438(v7, 1, v9);
  if (!v10)
  {
    return (*(*(v9 - 8) + 32))(a1, v7, v9);
  }

  Google_Protobuf_Timestamp.init()();
  result = sub_22E6EB438(v7, 1, v9);
  if (!v10)
  {
    return sub_22E6D3510(v7, &qword_27DA6C930, &unk_22E727910);
  }

  return result;
}

uint64_t sub_22E6E4C10@<X0>(void *a1@<X8>)
{
  sub_22E6EB478(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  v3 = type metadata accessor for CloudAssets_Credential(0);
  v4 = v1 + *(v3 + 28);
  UnknownStorage.init()();
  v5 = *(v3 + 32);
  type metadata accessor for Google_Protobuf_Timestamp();
  v6 = sub_22E6EB3B4();

  return sub_22E6CF58C(v6, v7, v8, v9);
}

BOOL sub_22E6E4C80(_BOOL8 result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_22E6E4CA4(uint64_t a1@<X8>)
{
  sub_22E6E4C6C();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_22E6E4CF4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_22E6E4C6C();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

BOOL sub_22E6E4D2C@<W0>(_BOOL8 *a1@<X8>)
{
  result = sub_22E6E4C80(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

Swift::Int sub_22E6E4D5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_22E6E4D68();
}

Swift::Int sub_22E6E4D68()
{
  Hasher.init(_seed:)();
  sub_22E6E4F5C();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6E4DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EB204();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int sub_22E6E4E14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return sub_22E6E4E20();
}

Swift::Int sub_22E6E4E20()
{
  Hasher.init(_seed:)();
  sub_22E6E4F5C();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_22E6E4E9C()
{
  result = qword_27DA6CB18;
  if (!qword_27DA6CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB18);
  }

  return result;
}

unint64_t sub_22E6E4EF4()
{
  result = qword_27DA6CB20;
  if (!qword_27DA6CB20)
  {
    sub_22E6CF2AC(&qword_27DA6CB28, qword_22E727A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB20);
  }

  return result;
}

unint64_t sub_22E6E4F5C()
{
  result = qword_27DA6CB30;
  if (!qword_27DA6CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB30);
  }

  return result;
}

unint64_t sub_22E6E4FB4()
{
  result = qword_27DA6CB38;
  if (!qword_27DA6CB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CB38);
  }

  return result;
}

uint64_t sub_22E6E5008@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for CloudAssets_Signal.Event(0) + 24);
  return UnknownStorage.init()();
}

uint64_t sub_22E6E504C@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v1 = a1 + *(type metadata accessor for CloudAssets_Signal(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_22E6E508C()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA797E0);
  sub_22E6E3578(v0, qword_27DA797E0);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E727890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "protector";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "size";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E5290()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        break;
      case 2:
        sub_22E6EB2AC();
        sub_22E6E53C0();
        break;
      case 1:
        sub_22E6EB2AC();
        sub_22E6E530C();
        break;
    }
  }

  return result;
}

uint64_t sub_22E6E530C()
{
  v0 = *(type metadata accessor for CloudAssets_Asset(0) + 24);
  type metadata accessor for CloudAssets_Asset.ID(0);
  sub_22E6EA83C(&qword_27DA6C678, type metadata accessor for CloudAssets_Asset.ID);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E53C0()
{
  v0 = *(type metadata accessor for CloudAssets_Asset(0) + 28);
  type metadata accessor for CloudAssets_Asset.Protector(0);
  sub_22E6EA83C(&qword_27DA6C6A8, type metadata accessor for CloudAssets_Asset.Protector);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E5474()
{
  sub_22E6EB2D4();
  sub_22E6EB3D4();
  result = sub_22E6E5504(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = sub_22E6EB340();
    sub_22E6E56D8(v7, v8, v9, v10);
    if (*v1)
    {
      sub_22E6EB3C8();
      sub_22E6EB3D4();
      dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
    }

    v11 = *(type metadata accessor for CloudAssets_Asset(0) + 20);
    return sub_22E6EB31C();
  }

  return result;
}

uint64_t sub_22E6E5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CloudAssets_Asset.ID(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for CloudAssets_Asset(0) + 24);
  sub_22E6EB1A8();
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    return sub_22E6D3510(v7, &qword_27DA6C738, &unk_22E727970);
  }

  sub_22E6EB0F4();
  sub_22E6EA83C(&qword_27DA6C678, type metadata accessor for CloudAssets_Asset.ID);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_22E6EB150(v11, type metadata accessor for CloudAssets_Asset.ID);
}

uint64_t sub_22E6E56D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for CloudAssets_Asset(0) + 28);
  sub_22E6EB1A8();
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    return sub_22E6D3510(v7, &qword_27DA6C740, &unk_22E726B00);
  }

  sub_22E6EB0F4();
  sub_22E6EA83C(&qword_27DA6C6A8, type metadata accessor for CloudAssets_Asset.Protector);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_22E6EB150(v11, type metadata accessor for CloudAssets_Asset.Protector);
}

void sub_22E6E58AC()
{
  sub_22E6EB570();
  v2 = v1;
  v4 = v3;
  v64 = type metadata accessor for CloudAssets_Asset.Protector(0);
  v5 = sub_22E6CF978(v64);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  v60 = (v9 - v8);
  v10 = sub_22E6CF1CC(&qword_27DA6C740, &unk_22E726B00);
  sub_22E6D376C(v10);
  v12 = *(v11 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  sub_22E6EB4DC();
  v61 = v14;
  v62 = sub_22E6CF1CC(&qword_27DA6CC68, &qword_22E728640);
  sub_22E6CF978(v62);
  v16 = *(v15 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v17);
  sub_22E6EB4DC();
  v65 = v18;
  v19 = type metadata accessor for CloudAssets_Asset.ID(0);
  v20 = sub_22E6CF978(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22E6CF9C8();
  v25 = v24 - v23;
  v26 = sub_22E6CF1CC(&qword_27DA6C738, &unk_22E727970);
  sub_22E6D376C(v26);
  v28 = *(v27 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v29);
  v31 = &v59 - v30;
  v32 = (sub_22E6CF1CC(&qword_27DA6CC70, &qword_22E728648) - 8);
  v33 = *(*v32 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v34);
  v35 = sub_22E6EB4E8();
  v63 = type metadata accessor for CloudAssets_Asset(v35);
  v36 = *(v63 + 24);
  v37 = v32[14];
  v66 = v4;
  sub_22E6EB1A8();
  sub_22E6EB1A8();
  sub_22E6EB2FC(v0);
  if (v38)
  {
    sub_22E6EB2FC(v0 + v37);
    if (v38)
    {
      sub_22E6D3510(v0, &qword_27DA6C738, &unk_22E727970);
      goto LABEL_11;
    }

LABEL_9:
    v39 = &qword_27DA6CC70;
    v40 = &qword_22E728648;
    v41 = v0;
LABEL_28:
    sub_22E6D3510(v41, v39, v40);
    goto LABEL_29;
  }

  sub_22E6EB1A8();
  sub_22E6EB2FC(v0 + v37);
  if (v38)
  {
    sub_22E6EB150(v31, type metadata accessor for CloudAssets_Asset.ID);
    goto LABEL_9;
  }

  sub_22E6EB0F4();
  v42 = sub_22E6E6444();
  sub_22E6EB150(v25, type metadata accessor for CloudAssets_Asset.ID);
  sub_22E6EB150(v31, type metadata accessor for CloudAssets_Asset.ID);
  sub_22E6D3510(v0, &qword_27DA6C738, &unk_22E727970);
  if ((v42 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v43 = v63;
  v44 = *(v63 + 28);
  v45 = *(v62 + 48);
  v47 = v65;
  v46 = v66;
  sub_22E6EB588();
  sub_22E6EB588();
  v48 = v64;
  sub_22E6EB438(v47, 1, v64);
  if (v38)
  {
    sub_22E6EB2FC(v47 + v45);
    if (v38)
    {
      sub_22E6D3510(v47, &qword_27DA6C740, &unk_22E726B00);
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v53 = v61;
  sub_22E6EB1A8();
  sub_22E6EB2FC(v47 + v45);
  if (v54)
  {
    sub_22E6EB150(v53, type metadata accessor for CloudAssets_Asset.Protector);
LABEL_21:
    v39 = &qword_27DA6CC68;
    v40 = &qword_22E728640;
LABEL_27:
    v41 = v47;
    goto LABEL_28;
  }

  v55 = v60;
  sub_22E6EB0F4();
  if ((MEMORY[0x2318EC160](*v53, v53[1], *v55, v55[1]) & 1) == 0 || (MEMORY[0x2318EC160](v53[2], v53[3], v55[2], v55[3]) & 1) == 0)
  {
    sub_22E6EB150(v55, type metadata accessor for CloudAssets_Asset.Protector);
    sub_22E6EB150(v53, type metadata accessor for CloudAssets_Asset.Protector);
    v39 = &qword_27DA6C740;
    v40 = &unk_22E726B00;
    goto LABEL_27;
  }

  v56 = *(v48 + 24);
  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  sub_22E6EA83C(v57, v58);
  LOBYTE(v56) = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_22E6EB150(v55, type metadata accessor for CloudAssets_Asset.Protector);
  sub_22E6EB150(v53, type metadata accessor for CloudAssets_Asset.Protector);
  sub_22E6D3510(v47, &qword_27DA6C740, &unk_22E726B00);
  if ((v56 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_16:
  if (*v46 != *v2)
  {
LABEL_29:
    v52 = 0;
    goto LABEL_30;
  }

  v49 = *(v43 + 20);
  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  sub_22E6EA83C(v50, v51);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
LABEL_30:
  sub_22E6EB4FC(v52);
  sub_22E6EB538();
}

uint64_t (*sub_22E6E5E24(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_22E6E5E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC28, type metadata accessor for CloudAssets_Asset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E5F18(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E5FE0()
{
  sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset);

  return Message.hash(into:)();
}

uint64_t sub_22E6E607C()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79808);
  sub_22E6E3578(v0, qword_27DA79808);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "partition";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "owner_id";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "signature";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "reference_signature";
  *(v15 + 1) = 19;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E62CC()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 3:
      case 4:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22E6E6360()
{
  sub_22E6EB2D4();
  v3 = *v0;
  v4 = v0[1];
  sub_22E6EB2E8();
  if (!v5 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    sub_22E6EB2E8();
    if (!v9 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      v12 = sub_22E6EB48C();
      if (sub_22E6DBB80(v12, v13) || (sub_22E6EB48C(), sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)(), !v1))
      {
        v14 = v2[6];
        v15 = v2[7];
        v16 = sub_22E6EB48C();
        if (sub_22E6DBB80(v16, v17) || (sub_22E6EB48C(), sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)(), !v1))
        {
          v18 = *(type metadata accessor for CloudAssets_Asset.ID(0) + 32);
          return sub_22E6EB31C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22E6E6444()
{
  sub_22E6EB450();
  v3 = *v2 == *v0 && v1[1] == v0[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (MEMORY[0x2318EC160](v1[4], v1[5], v0[4], v0[5]) & 1) == 0 || (MEMORY[0x2318EC160](v1[6], v1[7], v0[6], v0[7]) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CloudAssets_Asset.ID(0) + 32);
  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  sub_22E6EA83C(v6, v7);
  return sub_22E6EB380() & 1;
}

uint64_t sub_22E6E6548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22E6E65BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_22E6E6630(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_22E6E6684(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC18, type metadata accessor for CloudAssets_Asset.ID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E6724(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C678, type metadata accessor for CloudAssets_Asset.ID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E67EC()
{
  sub_22E6EA83C(&qword_27DA6C678, type metadata accessor for CloudAssets_Asset.ID);

  return Message.hash(into:)();
}

uint64_t sub_22E6E6894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x2318EC630](a2, a3);
  *a4 = 0xD000000000000011;
  *a5 = 0x800000022E72CFA0;
  return result;
}

uint64_t sub_22E6E6900()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79830);
  sub_22E6E3578(v0, qword_27DA79830);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "security_key";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "privacy_key";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E6AC8()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_22E6EB3E0();
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_22E6E6B24()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_22E6EB298();
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (!v1)
      {
LABEL_8:
        v7 = v0[2];
        v8 = v0[3];
        switch(v8 >> 62)
        {
          case 1uLL:
            v9 = v7;
            v10 = v7 >> 32;
            goto LABEL_13;
          case 2uLL:
            v9 = *(v7 + 16);
            v10 = *(v7 + 24);
LABEL_13:
            if (v9 != v10)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          case 3uLL:
            goto LABEL_15;
          default:
            if ((v8 & 0xFF000000000000) == 0)
            {
              goto LABEL_15;
            }

LABEL_14:
            sub_22E6EB298();
            result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
            if (!v1)
            {
LABEL_15:
              v11 = *(type metadata accessor for CloudAssets_Asset.Protector(0) + 24);
              result = sub_22E6EB31C();
            }

            break;
        }
      }

      return result;
  }
}

uint64_t sub_22E6E6C3C()
{
  sub_22E6EB450();
  if ((MEMORY[0x2318EC160](*v2, v1[1], *v0, v0[1]) & 1) == 0 || (MEMORY[0x2318EC160](v1[2], v1[3], v0[2], v0[3]) & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for CloudAssets_Asset.Protector(0) + 24);
  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  sub_22E6EA83C(v4, v5);
  return sub_22E6EB380() & 1;
}

uint64_t (*sub_22E6E6D00(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_22E6E6D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC20, type metadata accessor for CloudAssets_Asset.Protector);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E6DF4(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C6A8, type metadata accessor for CloudAssets_Asset.Protector);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E6EBC()
{
  sub_22E6EA83C(&qword_27DA6C6A8, type metadata accessor for CloudAssets_Asset.Protector);

  return Message.hash(into:)();
}

uint64_t sub_22E6E6F3C()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79848);
  sub_22E6E3578(v0, qword_27DA79848);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tenant_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "requestor_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "access_token";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "expiration_date";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E717C()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 4:
        sub_22E6EB2AC();
        sub_22E6E720C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22E6E720C()
{
  v0 = *(type metadata accessor for CloudAssets_Credential(0) + 32);
  type metadata accessor for Google_Protobuf_Timestamp();
  sub_22E6EA83C(&qword_27DA6CC50, MEMORY[0x277D21570]);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E72C0()
{
  sub_22E6EB2D4();
  v3 = *v0;
  v4 = v0[1];
  sub_22E6EB2E8();
  if (!v5 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    sub_22E6EB2E8();
    if (!v9 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      sub_22E6EB2E8();
      if (!v12 || (sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v13 = sub_22E6EB340();
        result = sub_22E6E737C(v13, v14, v15, v16);
        if (!v1)
        {
          v17 = *(type metadata accessor for CloudAssets_Credential(0) + 28);
          return sub_22E6EB31C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22E6E737C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a4;
  v15[1] = a3;
  v4 = sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for Google_Protobuf_Timestamp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for CloudAssets_Credential(0) + 32);
  sub_22E6EB1A8();
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    return sub_22E6D3510(v7, &qword_27DA6C930, &unk_22E727910);
  }

  (*(v9 + 32))(v12, v7, v8);
  sub_22E6EA83C(&qword_27DA6CC50, MEMORY[0x277D21570]);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return (*(v9 + 8))(v12, v8);
}

void sub_22E6E7588()
{
  sub_22E6EB570();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Google_Protobuf_Timestamp();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22E6CF9C8();
  v9 = v8 - v7;
  v10 = sub_22E6CF1CC(&qword_27DA6C930, &unk_22E727910);
  sub_22E6D376C(v10);
  v12 = *(v11 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = sub_22E6CF1CC(&qword_27DA6CC80, &qword_22E728650);
  sub_22E6CF978(v16);
  v18 = *(v17 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  v22 = *v3 == *v1 && v3[1] == v1[1];
  if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = v3[2] == v1[2] && v3[3] == v1[3];
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v24 = v3[4] == v1[4] && v3[5] == v1[5];
  if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v36 = v5;
  v35 = type metadata accessor for CloudAssets_Credential(0);
  v25 = *(v35 + 32);
  v26 = *(v16 + 48);
  sub_22E6EB5A0();
  sub_22E6EB5A0();
  sub_22E6EB438(v21, 1, v4);
  if (v22)
  {
    sub_22E6EB438(&v21[v26], 1, v4);
    if (v22)
    {
      sub_22E6D3510(v21, &qword_27DA6C930, &unk_22E727910);
LABEL_28:
      v32 = *(v35 + 28);
      type metadata accessor for UnknownStorage();
      sub_22E6EB280();
      sub_22E6EA83C(v33, v34);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_22E6EB1A8();
  sub_22E6EB438(&v21[v26], 1, v4);
  if (v27)
  {
    (*(v36 + 8))(v15, v4);
LABEL_24:
    sub_22E6D3510(v21, &qword_27DA6CC80, &qword_22E728650);
    goto LABEL_25;
  }

  v29 = v36;
  (*(v36 + 32))(v9, &v21[v26], v4);
  sub_22E6EA83C(&qword_27DA6CC88, MEMORY[0x277D21570]);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v29 + 8);
  v31(v9, v4);
  v31(v15, v4);
  sub_22E6D3510(v21, &qword_27DA6C930, &unk_22E727910);
  if (v30)
  {
    goto LABEL_28;
  }

LABEL_25:
  v28 = 0;
LABEL_26:
  sub_22E6EB4FC(v28);
  sub_22E6EB538();
}

uint64_t (*sub_22E6E7934(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_22E6E7988(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC48, type metadata accessor for CloudAssets_Credential);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E7A28(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6CBA0, type metadata accessor for CloudAssets_Credential);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E7AF0()
{
  sub_22E6EA83C(&qword_27DA6CBA0, type metadata accessor for CloudAssets_Credential);

  return Message.hash(into:)();
}

uint64_t sub_22E6E7B70()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79860);
  sub_22E6E3578(v0, qword_27DA79860);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "assets";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "storage_reference";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "credential";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "storage_reference_signature";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E7DC0()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_22E6EB2AC();
        sub_22E6E8860(v3, v4, v5, v6, v7, &qword_27DA6C6C8, v8);
        break;
      case 2:
      case 4:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        break;
      case 3:
        v9 = sub_22E6EB2AC();
        sub_22E6E7EBC(v9, v10, v11, v12, v13);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22E6E7EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *(a5(0) + 32);
  type metadata accessor for CloudAssets_Credential(0);
  sub_22E6EB420();
  sub_22E6EA83C(v6, v7);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E7F64()
{
  sub_22E6EB2D4();
  if (!*(*v0 + 16) || (type metadata accessor for CloudAssets_Asset(0), sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset), sub_22E6EB3C8(), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v4 = v2[1];
    v5 = v2[2];
    v6 = sub_22E6EB48C();
    if (sub_22E6DBB80(v6, v7) || (sub_22E6EB48C(), sub_22E6EB298(), result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)(), !v1))
    {
      v8 = sub_22E6EB340();
      result = sub_22E6E9CA0(v8, v9, v10, v11, v12, 3);
      if (!v1)
      {
        if (!sub_22E6DBB80(v2[3], v2[4]))
        {
          v13 = v2[3];
          v14 = v2[4];
          sub_22E6EB298();
          dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        }

        v15 = *(type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0) + 28);
        return sub_22E6EB31C();
      }
    }
  }

  return result;
}

void sub_22E6E80A0()
{
  sub_22E6EB570();
  sub_22E6EB450();
  v2 = type metadata accessor for CloudAssets_Credential(0);
  v3 = sub_22E6CF978(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v8 = v7 - v6;
  v9 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6D376C(v9);
  v11 = *(v10 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = sub_22E6CF1CC(&qword_27DA6CC90, &qword_22E728658);
  sub_22E6CF978(v15);
  v17 = *(v16 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  if ((sub_22E6F0D80(*v1, *v0) & 1) == 0 || (MEMORY[0x2318EC160](v1[1], v1[2], v0[1], v0[2]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v32 = type metadata accessor for CloudAssets_SimultaneousDownloadableAssets(0);
  v21 = *(v32 + 32);
  v22 = *(v15 + 48);
  sub_22E6EB5A0();
  sub_22E6EB5A0();
  sub_22E6EB438(v20, 1, v2);
  if (v23)
  {
    sub_22E6EB438(&v20[v22], 1, v2);
    if (v23)
    {
      sub_22E6D3510(v20, &qword_27DA6C7A8, &unk_22E7273B0);
      goto LABEL_13;
    }

LABEL_11:
    sub_22E6D3510(v20, &qword_27DA6CC90, &qword_22E728658);
LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  sub_22E6EB1A8();
  sub_22E6EB438(&v20[v22], 1, v2);
  if (v23)
  {
    sub_22E6EB408();
    sub_22E6EB150(v14, v24);
    goto LABEL_11;
  }

  sub_22E6EB0F4();
  sub_22E6E7588();
  v26 = v25;
  sub_22E6EB150(v8, type metadata accessor for CloudAssets_Credential);
  sub_22E6EB150(v14, type metadata accessor for CloudAssets_Credential);
  sub_22E6D3510(v20, &qword_27DA6C7A8, &unk_22E7273B0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if ((MEMORY[0x2318EC160](v1[3], v1[4], v0[3], v0[4]) & 1) == 0)
  {
    goto LABEL_15;
  }

  v27 = *(v32 + 28);
  type metadata accessor for UnknownStorage();
  sub_22E6EB280();
  sub_22E6EA83C(v28, v29);
  v30 = sub_22E6EB380();
LABEL_16:
  sub_22E6EB4FC(v30);
  sub_22E6EB538();
}

uint64_t sub_22E6E8374(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = type metadata accessor for UnknownStorage();
  sub_22E6CF978(v2);
  v4 = *(v3 + 16);
  v5 = sub_22E6EB498();

  return v6(v5);
}

uint64_t sub_22E6E83D8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  sub_22E6CF978(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_22E6E8474(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC30, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E8514(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C758, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E85DC()
{
  sub_22E6EA83C(&qword_27DA6C758, type metadata accessor for CloudAssets_SimultaneousDownloadableAssets);

  return Message.hash(into:)();
}

uint64_t sub_22E6E865C()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79878);
  sub_22E6E3578(v0, qword_27DA79878);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E726B10;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "events";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E87C8()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = sub_22E6EB2AC();
      sub_22E6E8860(v3, v4, v5, v6, v7, &qword_27DA6CB58, v8);
    }
  }

  return result;
}

uint64_t sub_22E6E8860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  a5(0);
  sub_22E6EA83C(a6, a7);
  return dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
}

uint64_t sub_22E6E88FC()
{
  sub_22E6EB2D4();
  if (!*(*v0 + 16) || (type metadata accessor for CloudAssets_Signal.Event(0), sub_22E6EA83C(&qword_27DA6CB58, type metadata accessor for CloudAssets_Signal.Event), sub_22E6EB3C8(), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = *(type metadata accessor for CloudAssets_Signal(0) + 20);
    return sub_22E6EB31C();
  }

  return result;
}

uint64_t sub_22E6E8A68(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = type metadata accessor for UnknownStorage();
  sub_22E6CF978(v2);
  v4 = *(v3 + 16);
  v5 = sub_22E6EB498();

  return v6(v5);
}

uint64_t sub_22E6E8ACC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  sub_22E6CF978(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_22E6E8B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC40, type metadata accessor for CloudAssets_Signal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E8C08(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6CB78, type metadata accessor for CloudAssets_Signal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E8CD0()
{
  sub_22E6EA83C(&qword_27DA6CB78, type metadata accessor for CloudAssets_Signal);

  return Message.hash(into:)();
}

uint64_t sub_22E6E8D50()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA79890);
  sub_22E6E3578(v0, qword_27DA79890);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STORAGE_CONTAINER_UPLOAD_START";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALL_UPLOADS_FINISH";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E8F3C()
{
  result = MEMORY[0x2318EC630](0x746E6576452ELL, 0xE600000000000000);
  qword_27DA798A8 = 0xD000000000000012;
  unk_27DA798B0 = 0x800000022E72D010;
  return result;
}

uint64_t sub_22E6E8FA4()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA798B8);
  sub_22E6E3578(v0, qword_27DA798B8);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278B0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "container_index";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E9174()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_22E6EB3E0();
      dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
    }

    else if (result == 1)
    {
      sub_22E6EB2AC();
      sub_22E6E91D8();
    }
  }

  return result;
}

uint64_t sub_22E6E9240()
{
  sub_22E6EB2D4();
  if (!*v0 || (v5 = *v0, v6 = *(v2 + 8), sub_22E6EB204(), sub_22E6EB3C8(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v2 + 16) || (sub_22E6EB3C8(), sub_22E6EB3D4(), result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
    {
      v4 = *(type metadata accessor for CloudAssets_Signal.Event(0) + 24);
      return sub_22E6EB31C();
    }
  }

  return result;
}

uint64_t sub_22E6E92F8()
{
  sub_22E6EB450();
  v4 = *v2;
  v5 = *v3;
  if (*(v2 + 8))
  {
    v4 = *v2 != 0;
  }

  if (*(v3 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(v1 + 16) == *(v0 + 16))
  {
    v6 = *(type metadata accessor for CloudAssets_Signal.Event(0) + 24);
    type metadata accessor for UnknownStorage();
    sub_22E6EB280();
    sub_22E6EA83C(v7, v8);
    return sub_22E6EB380() & 1;
  }

  return 0;
}

uint64_t sub_22E6E93F0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;
  v8 = *a5;

  return v7;
}

uint64_t sub_22E6E9478(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC98, type metadata accessor for CloudAssets_Signal.Event);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6E9518(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6CB58, type metadata accessor for CloudAssets_Signal.Event);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6E95E0()
{
  sub_22E6EA83C(&qword_27DA6CB58, type metadata accessor for CloudAssets_Signal.Event);

  return Message.hash(into:)();
}

uint64_t sub_22E6E9660()
{
  v0 = type metadata accessor for _NameMap();
  sub_22E6E3658(v0, qword_27DA798D0);
  sub_22E6E3578(v0, qword_27DA798D0);
  sub_22E6CF1CC(&qword_27DA6CC58, &qword_22E728630);
  v1 = (sub_22E6CF1CC(&qword_27DA6CC60, &qword_22E728638) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22E7278A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asset";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "credential";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "type";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "applicationID";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_22E6E98A0()
{
  sub_22E6EB2C0();
  while (1)
  {
    result = sub_22E6EB4A8();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_22E6EB2AC();
        sub_22E6E994C();
        break;
      case 2:
        v3 = sub_22E6EB2AC();
        sub_22E6E7EBC(v3, v4, v5, v6, v7);
        break;
      case 3:
      case 4:
        sub_22E6EB3E0();
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_22E6E994C()
{
  v0 = *(type metadata accessor for CloudAssets_AssetStreamHandle(0) + 28);
  type metadata accessor for CloudAssets_Asset(0);
  sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_22E6E9A00()
{
  sub_22E6EB2D4();
  sub_22E6EB3D4();
  result = sub_22E6E9ACC(v2, v3, v4, v5);
  if (!v0)
  {
    v7 = sub_22E6EB340();
    sub_22E6E9CA0(v7, v8, v9, v10, v11, 2);
    v12 = *v1;
    v13 = v1[1];
    sub_22E6EB2E8();
    if (v14)
    {
      sub_22E6EB298();
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v15 = v1[2];
    v16 = v1[3];
    sub_22E6EB2E8();
    if (v17)
    {
      sub_22E6EB298();
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    v18 = *(type metadata accessor for CloudAssets_AssetStreamHandle(0) + 24);
    return sub_22E6EB31C();
  }

  return result;
}

uint64_t sub_22E6E9ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v4 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CloudAssets_Asset(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for CloudAssets_AssetStreamHandle(0) + 28);
  sub_22E6EB1A8();
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    return sub_22E6D3510(v7, &unk_27DA6C910, &unk_22E726D20);
  }

  sub_22E6EB0F4();
  sub_22E6EA83C(&qword_27DA6C6C8, type metadata accessor for CloudAssets_Asset);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_22E6EB150(v11, type metadata accessor for CloudAssets_Asset);
}

uint64_t sub_22E6E9CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v24[0] = a6;
  v24[1] = a3;
  v24[3] = a4;
  v7 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6D376C(v7);
  v9 = *(v8 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = type metadata accessor for CloudAssets_Credential(0);
  v14 = sub_22E6CF978(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_22E6CF9C8();
  v19 = v18 - v17;
  v20 = *(a5(0) + 32);
  sub_22E6EB1A8();
  if (sub_22E6CF550(v12, 1, v13) == 1)
  {
    return sub_22E6D3510(v12, &qword_27DA6C7A8, &unk_22E7273B0);
  }

  sub_22E6EB0F4();
  sub_22E6EB420();
  sub_22E6EA83C(v22, v23);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_22E6EB150(v19, type metadata accessor for CloudAssets_Credential);
}

void sub_22E6E9E58()
{
  sub_22E6EB570();
  v2 = v1;
  v4 = v3;
  v66 = type metadata accessor for CloudAssets_Credential(0);
  v5 = sub_22E6CF978(v66);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22E6CF9C8();
  v62 = v9 - v8;
  v10 = sub_22E6CF1CC(&qword_27DA6C7A8, &unk_22E7273B0);
  sub_22E6D376C(v10);
  v12 = *(v11 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  sub_22E6EB4DC();
  v63 = v14;
  v64 = sub_22E6CF1CC(&qword_27DA6CC90, &qword_22E728658);
  sub_22E6CF978(v64);
  v16 = *(v15 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v17);
  sub_22E6EB4DC();
  v67 = v18;
  v19 = type metadata accessor for CloudAssets_Asset(0);
  v20 = sub_22E6CF978(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22E6CF9C8();
  v25 = v24 - v23;
  v26 = sub_22E6CF1CC(&unk_27DA6C910, &unk_22E726D20);
  sub_22E6D376C(v26);
  v28 = *(v27 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v29);
  v31 = &v62 - v30;
  v32 = (sub_22E6CF1CC(&qword_27DA6CCA8, &qword_22E728660) - 8);
  v33 = *(*v32 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v34);
  v35 = sub_22E6EB4E8();
  v65 = type metadata accessor for CloudAssets_AssetStreamHandle(v35);
  v36 = *(v65 + 28);
  v37 = v32[14];
  v68 = v4;
  sub_22E6EB1A8();
  v69 = v2;
  sub_22E6EB1A8();
  sub_22E6EB2FC(v0);
  if (v38)
  {
    sub_22E6EB2FC(v0 + v37);
    if (v38)
    {
      sub_22E6D3510(v0, &unk_27DA6C910, &unk_22E726D20);
      goto LABEL_11;
    }

LABEL_9:
    v39 = &qword_27DA6CCA8;
    v40 = &qword_22E728660;
    v41 = v0;
LABEL_20:
    sub_22E6D3510(v41, v39, v40);
    goto LABEL_21;
  }

  sub_22E6EB1A8();
  sub_22E6EB2FC(v0 + v37);
  if (v38)
  {
    sub_22E6EB150(v31, type metadata accessor for CloudAssets_Asset);
    goto LABEL_9;
  }

  sub_22E6EB0F4();
  sub_22E6E58AC();
  v43 = v42;
  sub_22E6EB150(v25, type metadata accessor for CloudAssets_Asset);
  sub_22E6EB150(v31, type metadata accessor for CloudAssets_Asset);
  sub_22E6D3510(v0, &unk_27DA6C910, &unk_22E726D20);
  if ((v43 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v44 = v65;
  v45 = *(v65 + 32);
  v46 = *(v64 + 48);
  v48 = v67;
  v47 = v68;
  sub_22E6EB588();
  v49 = v69;
  sub_22E6EB588();
  sub_22E6EB438(v48, 1, v66);
  if (!v38)
  {
    v50 = v63;
    sub_22E6EB1A8();
    sub_22E6EB2FC(v48 + v46);
    if (!v51)
    {
      v54 = v62;
      sub_22E6EB0F4();
      sub_22E6E7588();
      v56 = v55;
      sub_22E6EB150(v54, type metadata accessor for CloudAssets_Credential);
      sub_22E6EB150(v50, type metadata accessor for CloudAssets_Credential);
      sub_22E6D3510(v48, &qword_27DA6C7A8, &unk_22E7273B0);
      if ((v56 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_24;
    }

    sub_22E6EB408();
    sub_22E6EB150(v50, v52);
    goto LABEL_19;
  }

  sub_22E6EB2FC(v48 + v46);
  if (!v38)
  {
LABEL_19:
    v39 = &qword_27DA6CC90;
    v40 = &qword_22E728658;
    v41 = v48;
    goto LABEL_20;
  }

  sub_22E6D3510(v48, &qword_27DA6C7A8, &unk_22E7273B0);
LABEL_24:
  v57 = *v47 == *v49 && v47[1] == v49[1];
  if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v58 = v47[2] == v49[2] && v47[3] == v49[3];
    if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v59 = *(v44 + 24);
      type metadata accessor for UnknownStorage();
      sub_22E6EB280();
      sub_22E6EA83C(v60, v61);
      v53 = dispatch thunk of static Equatable.== infix(_:_:)();
      goto LABEL_22;
    }
  }

LABEL_21:
  v53 = 0;
LABEL_22:
  sub_22E6EB4FC(v53);
  sub_22E6EB538();
}

Swift::Int sub_22E6EA32C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_22E6EA83C(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6EA3D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = type metadata accessor for UnknownStorage();
  sub_22E6CF978(v2);
  v4 = *(v3 + 16);
  v5 = sub_22E6EB498();

  return v6(v5);
}

uint64_t sub_22E6EA438(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  sub_22E6CF978(v5);
  v7 = *(v6 + 40);

  return v7(v2 + v4, a1);
}

uint64_t sub_22E6EA4D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6EA83C(&qword_27DA6CC38, type metadata accessor for CloudAssets_AssetStreamHandle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22E6EA574@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for _NameMap();
  v6 = sub_22E6E3578(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_22E6EA610(uint64_t a1)
{
  v2 = sub_22E6EA83C(&qword_27DA6C928, type metadata accessor for CloudAssets_AssetStreamHandle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22E6EA6D8()
{
  sub_22E6EA83C(&qword_27DA6C928, type metadata accessor for CloudAssets_AssetStreamHandle);

  return Message.hash(into:)();
}

Swift::Int sub_22E6EA754()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_22E6EA83C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E6EB0F4()
{
  sub_22E6EB450();
  v3 = v2(0);
  sub_22E6CF978(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_22E6EB150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22E6CF978(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22E6EB1A8()
{
  sub_22E6EB450();
  v4 = sub_22E6CF1CC(v2, v3);
  sub_22E6CF978(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

unint64_t sub_22E6EB204()
{
  result = qword_27DA6CCA0;
  if (!qword_27DA6CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CCA0);
  }

  return result;
}

uint64_t sub_22E6EB31C()
{

  return MEMORY[0x28217E158](v2, v1, v0);
}

uint64_t sub_22E6EB36C@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_22E6EB380()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_22E6EB45C()
{

  return type metadata accessor for UnknownStorage();
}

void sub_22E6EB478(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
}

uint64_t sub_22E6EB4A8()
{

  return MEMORY[0x28217E258](v1, v0);
}

uint64_t sub_22E6EB4C0()
{

  return type metadata accessor for UnknownStorage();
}

uint64_t sub_22E6EB550(uint64_t a1)
{

  return sub_22E6CF58C(v1 + v2, 1, 1, a1);
}

uint64_t sub_22E6EB588()
{

  return sub_22E6EB1A8();
}

uint64_t sub_22E6EB5A0()
{

  return sub_22E6EB1A8();
}

uint64_t sub_22E6EB5B8()
{
  sub_22E6E3D08();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22E6EB668;
  sub_22E6ECB44();

  return sub_22E6EB764();
}

uint64_t sub_22E6EB668()
{
  sub_22E6E3D08();
  sub_22E6E3E08();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = sub_22E6ECB44();
  }

  return v7(v6);
}

uint64_t sub_22E6EB764()
{
  v1[6] = v0;
  v2 = sub_22E6CF1CC(&qword_27DA6CCB0, &unk_22E72C3F0);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_22E6CF1CC(&qword_27DA6D950, qword_22E728670);
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_22E6EB8F8;

  return AssetStreamHandle.inputStream(for:)();
}

uint64_t sub_22E6EB8F8()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_22E6E3C94();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E6EB9F4()
{
  sub_22E6E3F34();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = *(v6 + *(type metadata accessor for Asset(0) + 24));
  v0[2] = Data._Representation.init(capacity:)();
  v0[3] = v8;
  (*(v4 + 16))(v1, v2, v3);
  sub_22E6ECB20(&qword_27DA6CCB8, &qword_27DA6D950, qword_22E728670);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_22E6ECA88(&qword_27DA6CCC0, &qword_27DA6CCB0, &unk_22E72C3F0);
  v9 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[16] = v10;
  *v10 = v11;
  v12 = sub_22E6ECAE0(v10);

  return MEMORY[0x282200308](v12);
}

uint64_t sub_22E6EBB08()
{
  sub_22E6E3D08();
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  sub_22E6E3AD8();

  return v5();
}

uint64_t sub_22E6EBB80()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_22E6E3C94();
  *v8 = v7;
  v3[17] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[9], v3[7]);
    sub_22E6CFBBC(v3[2], v3[3]);
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E6EBC9C()
{
  sub_22E6E3F34();
  if (v0[5] >> 60 == 15)
  {
    v1 = v0[12];
    v2 = v0[13];
    v3 = v0[10];
    v4 = v0[11];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v4 + 8))(v2, v3);
    sub_22E6EC710(v0[4], v0[5]);
    v5 = v0[2];
    v6 = v0[3];

    v7 = sub_22E6ECB80();

    return v8(v7);
  }

  else
  {
    v10 = v0[4];
    sub_22E6ECB44();
    Data.append(_:)();
    v11 = sub_22E6ECB44();
    sub_22E6EC710(v11, v12);
    sub_22E6ECA88(&qword_27DA6CCC0, &qword_27DA6CCB0, &unk_22E72C3F0);
    v13 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[16] = v14;
    *v14 = v15;
    v16 = sub_22E6ECAE0();

    return MEMORY[0x282200308](v16);
  }
}

uint64_t sub_22E6EBDF8()
{
  sub_22E6E3D08();
  (*(v0[11] + 8))(v0[13], v0[10]);
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[9];

  sub_22E6E3AD8();

  return v5();
}

uint64_t StreamHandle.readAll(in:)()
{
  sub_22E6ECBA4();
  v2[7] = v3;
  v2[8] = v1;
  v2[6] = v4;
  v5 = sub_22E6CF1CC(&qword_27DA6CCB0, &unk_22E72C3F0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  sub_22E6ECB98();
  v2[10] = v7;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v10 = sub_22E6CF1CC(&qword_27DA6D950, qword_22E728670);
  v2[12] = v10;
  v11 = *(v10 - 8);
  sub_22E6ECB98();
  v2[13] = v12;
  v14 = *(v13 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v15 = *(v0 + 24);
  sub_22E6ECB98();
  v24 = v16 + *v16;
  v18 = *(v17 + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v2[16] = v19;
  *v19 = v20;
  v21 = sub_22E6ECB50(v19);

  return v22(v21);
}

uint64_t sub_22E6EC078()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  sub_22E6ECB14();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  sub_22E6E3C94();
  *v7 = v6;
  *(v8 + 136) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E6EC174()
{
  sub_22E6E3F34();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  (*(v0[7] + 8))(v0[6]);
  v0[2] = Data._Representation.init(capacity:)();
  v0[3] = v7;
  v8 = *(v4 + 16);
  v9 = sub_22E6ECB44();
  v10(v9);
  sub_22E6ECB20(&qword_27DA6CCB8, &qword_27DA6D950, qword_22E728670);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  sub_22E6ECA88(&qword_27DA6CCC0, &qword_27DA6CCB0, &unk_22E72C3F0);
  v11 = *(MEMORY[0x277D856D0] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[18] = v12;
  *v12 = v13;
  v14 = sub_22E6ECAAC(v12);

  return MEMORY[0x282200308](v14);
}

uint64_t sub_22E6EC28C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = v2;
  sub_22E6ECB14();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  sub_22E6E3C94();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
    sub_22E6CFBBC(v3[2], v3[3]);
  }

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22E6EC3A8()
{
  sub_22E6E3F34();
  if (v0[5] >> 60 == 15)
  {
    v1 = v0[14];
    v2 = v0[15];
    v3 = v0[12];
    v4 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v4 + 8))(v2, v3);
    sub_22E6EC710(v0[4], v0[5]);
    v5 = v0[2];
    v6 = v0[3];

    v7 = sub_22E6ECB80();

    return v8(v7);
  }

  else
  {
    v10 = v0[4];
    sub_22E6ECB44();
    Data.append(_:)();
    v11 = sub_22E6ECB44();
    sub_22E6EC710(v11, v12);
    sub_22E6ECA88(&qword_27DA6CCC0, &qword_27DA6CCB0, &unk_22E72C3F0);
    v13 = *(MEMORY[0x277D856D0] + 4);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[18] = v14;
    *v14 = v15;
    v16 = sub_22E6ECAAC();

    return MEMORY[0x282200308](v16);
  }
}

uint64_t sub_22E6EC504()
{
  sub_22E6E3D08();
  (*(v0[13] + 8))(v0[15], v0[12]);
  v1 = v0[19];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];

  sub_22E6E3AD8();

  return v5();
}

uint64_t sub_22E6EC594()
{
  sub_22E6E3D08();
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[11];

  sub_22E6E3AD8();

  return v5();
}

uint64_t sub_22E6EC60C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22E6ECA84;

  return StreamHandle.readAll(in:)();
}

uint64_t sub_22E6EC6C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22E6CF2AC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E6EC710(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22E6CFBBC(a1, a2);
  }

  return a1;
}

uint64_t dispatch thunk of StreamHandle.inputStream(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 24);
  sub_22E6ECB98();
  v15 = v7 + *v7;
  v9 = *(v8 + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  *(v5 + 16) = v10;
  *v10 = v11;
  v12 = sub_22E6ECB50(v10);

  return v13(v12);
}

uint64_t dispatch thunk of StreamHandle.readAll(in:)()
{
  sub_22E6ECBA4();
  v6 = *(v5 + 32);
  sub_22E6ECB98();
  v12 = (v7 + *v7);
  v9 = *(v8 + 4);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22E6EC98C;

  return v12(v4, v3, v1, v0);
}

uint64_t sub_22E6EC98C()
{
  sub_22E6E3D08();
  sub_22E6E3E08();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = sub_22E6ECB44();

  return v7(v6);
}

uint64_t sub_22E6ECA88(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_22E6EC6C8(a1, a2, a3);
}

uint64_t sub_22E6ECAAC(uint64_t a1)
{
  *(a1 + 8) = sub_22E6EC28C;
  v2 = *(v1 + 88);
  v3 = *(v1 + 72);
  return v1 + 32;
}

uint64_t sub_22E6ECAE0(uint64_t a1)
{
  *(a1 + 8) = sub_22E6EBB80;
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  return v1 + 32;
}

uint64_t sub_22E6ECB20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_22E6EC6C8(a1, a2, a3);
}

BOOL sub_22E6ECBC4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t static DownloadRequestMessage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (a1[1])
  {
    if (a2[1])
    {
      goto LABEL_6;
    }
  }

  else if ((a2[1] & 1) == 0)
  {
LABEL_6:
    v8 = *a2;
    j__swift_bridgeObjectRetain();
    j__swift_bridgeObjectRetain();
    v9 = sub_22E6F3AB0();
    v7 = sub_22E6ECDD8(v9, v10);
    goto LABEL_7;
  }

  v5 = *a2;
  v6 = *(a2 + 8);
  j__swift_bridgeObjectRetain();
  j__swift_bridgeObjectRetain();
  v7 = 0;
LABEL_7:
  j__swift_bridgeObjectRelease();
  j__swift_bridgeObjectRelease();
  return v7 & 1;
}

uint64_t sub_22E6ECCD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!*v4)
        {
          return 0;
        }
      }

      else
      {
        if (*(v3 - 1) != *(v4 - 1))
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 16;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_22E6ECD4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_22E6ECDD8(uint64_t a1, uint64_t a2)
{
  __s1[3] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for AssetDownloadRequest();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v181 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    goto LABEL_276;
  }

  if (!v12 || a1 == a2)
  {
    result = 1;
    goto LABEL_277;
  }

  v13 = 0;
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v184 = *(v9 + 72);
  v185 = &v181 - v10;
  v195 = v8;
  while (2)
  {
    sub_22E6F3698(v15, v11, type metadata accessor for AssetDownloadRequest);
    if (!v12)
    {
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v187 = v15;
    v188 = v12;
    v186 = v16;
    sub_22E6F3698(v16, v8, type metadata accessor for AssetDownloadRequest);
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v17 = v13;
    v18 = v4[5];
    v19 = *&v11[v18];
    v20 = *&v11[v18 + 8];
    v21 = &v195[v18];
    v22 = v19 == *v21 && v20 == *(v21 + 1);
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v23 = v4[6];
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v24 = v4[7];
    v193 = &v195[v24];
    v194 = &v11[v24];
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v25 = type metadata accessor for Asset.ID(0);
    v26 = v25[5];
    v27 = *&v194[v26];
    v28 = *&v194[v26 + 8];
    v29 = &v193[v26];
    v30 = v27 == *v29 && v28 == *(v29 + 1);
    if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_275;
    }

    v31 = v25[6];
    v32 = &v194[v31];
    v33 = *&v194[v31];
    v34 = *&v194[v31 + 8];
    v35 = &v193[v31];
    v36 = v34 >> 62;
    v38 = *v35;
    v37 = v35[1];
    v39 = HIDWORD(*v32);
    v40 = v37 >> 62;
    if (v30)
    {
      v42 = 0;
      if (!v33)
      {
        if (v34 == 0xC000000000000000)
        {
          v41 = v37 >> 62 == 3;
          v30 = v40 == 3;
        }

        else
        {
          v41 = 0;
          v30 = 0;
        }

        if (v41)
        {
          v42 = 0;
          if (!v38)
          {
            v30 = v37 == 0xC000000000000000;
            if (v37 == 0xC000000000000000)
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

    else
    {
      v42 = 0;
      switch(v36)
      {
        case 0uLL:
          v42 = BYTE6(v34);
          break;
        case 1uLL:
          v30 = v39 == v33;
          if (__OFSUB__(v39, v33))
          {
            goto LABEL_290;
          }

          v42 = v39 - v33;
          break;
        case 2uLL:
          v44 = *(v33 + 16);
          v43 = *(v33 + 24);
          v45 = __OFSUB__(v43, v44);
          v42 = v43 - v44;
          v30 = v42 == 0;
          if (!v45)
          {
            break;
          }

          goto LABEL_289;
        case 3uLL:
          break;
        default:
LABEL_315:
          JUMPOUT(0);
      }
    }

    switch(v40)
    {
      case 1uLL:
        LODWORD(v46) = HIDWORD(v38) - v38;
        if (__OFSUB__(HIDWORD(v38), v38))
        {
          goto LABEL_280;
        }

        v46 = v46;
LABEL_44:
        if (v42 != v46)
        {
          goto LABEL_275;
        }

        v30 = v42 == 1;
        if (v42 < 1)
        {
          goto LABEL_72;
        }

        break;
      case 2uLL:
        v48 = *(v38 + 16);
        v47 = *(v38 + 24);
        v45 = __OFSUB__(v47, v48);
        v46 = v47 - v48;
        if (!v45)
        {
          goto LABEL_44;
        }

        goto LABEL_279;
      case 3uLL:
        if (v42)
        {
          goto LABEL_275;
        }

        goto LABEL_72;
      default:
        v46 = BYTE6(v37);
        goto LABEL_44;
    }

    v49 = v38 >> 32;
    switch(v36)
    {
      case 1:
        v183 = v4;
        if (v33 >> 32 < v33)
        {
          goto LABEL_299;
        }

        v54 = v33;
        sub_22E6CFB64(v38, v37);
        sub_22E6CFB64(v38, v37);
        sub_22E6CFB64(v38, v37);
        v52 = __DataStorage._bytes.getter();
        if (!v52)
        {
          goto LABEL_64;
        }

        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v54, v55))
        {
          goto LABEL_306;
        }

        v52 += v54 - v55;
LABEL_64:
        MEMORY[0x2318EBFC0]();
        v17 = v13;
        sub_22E6F2044(v52, v38, v37, __s1);
        sub_22E6CFBBC(v38, v37);
        sub_22E6CFBBC(v38, v37);
        sub_22E6CFBBC(v38, v37);
        v4 = v183;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_275;
        }

        break;
      case 2:
        v183 = v4;
        v50 = *(v33 + 16);
        v51 = *(v33 + 24);
        sub_22E6CFB64(v38, v37);
        sub_22E6CFB64(v38, v37);
        sub_22E6CFB64(v38, v37);
        v52 = __DataStorage._bytes.getter();
        if (!v52)
        {
          goto LABEL_54;
        }

        v53 = __DataStorage._offset.getter();
        if (__OFSUB__(v50, v53))
        {
          goto LABEL_305;
        }

        v52 += v50 - v53;
LABEL_54:
        if (!__OFSUB__(v51, v50))
        {
          goto LABEL_64;
        }

        goto LABEL_300;
      case 3:
        memset(__s1, 0, 14);
        if (!v40)
        {
          goto LABEL_66;
        }

        if (v40 == 2)
        {
          goto LABEL_70;
        }

        if (v49 >= v38)
        {
          goto LABEL_69;
        }

        goto LABEL_312;
      default:
        LOWORD(__s1[0]) = v33;
        BYTE2(__s1[0]) = BYTE2(v33);
        BYTE3(__s1[0]) = BYTE3(v33);
        BYTE4(__s1[0]) = v39;
        BYTE5(__s1[0]) = BYTE5(v33);
        BYTE6(__s1[0]) = BYTE6(v33);
        HIBYTE(__s1[0]) = HIBYTE(v33);
        LOWORD(__s1[1]) = v34;
        BYTE2(__s1[1]) = BYTE2(v34);
        BYTE3(__s1[1]) = BYTE3(v34);
        BYTE4(__s1[1]) = BYTE4(v34);
        BYTE5(__s1[1]) = BYTE5(v34);
        if (v40)
        {
          if (v40 == 1)
          {
            if (v49 < v38)
            {
              goto LABEL_311;
            }

LABEL_69:
            sub_22E6CFB64(v38, v37);
            sub_22E6CFB64(v38, v37);
            v56 = v37 & 0x3FFFFFFFFFFFFFFFLL;
            v57 = v38;
            v58 = v38 >> 32;
          }

          else
          {
LABEL_70:
            v59 = *(v38 + 16);
            v60 = *(v38 + 24);
            sub_22E6CFB64(v38, v37);
            sub_22E6CFB64(v38, v37);
            v56 = v37 & 0x3FFFFFFFFFFFFFFFLL;
            v57 = v59;
            v58 = v60;
          }

          v61 = sub_22E6F239C(v57, v58, v56, __s1);
          sub_22E6CFBBC(v38, v37);
          sub_22E6CFBBC(v38, v37);
          if ((v61 & 1) == 0)
          {
            goto LABEL_275;
          }
        }

        else
        {
LABEL_66:
          __s2 = v38;
          v197 = v37;
          v198 = BYTE2(v37);
          v199 = BYTE3(v37);
          v200 = BYTE4(v37);
          v201 = BYTE5(v37);
          if (memcmp(__s1, &__s2, BYTE6(v37)))
          {
            goto LABEL_275;
          }
        }

        break;
    }

LABEL_72:
    v62 = v25[7];
    v63 = &v194[v62];
    v64 = *&v194[v62];
    v65 = *&v194[v62 + 8];
    v66 = &v193[v62];
    v67 = v65 >> 62;
    v69 = *v66;
    v68 = v66[1];
    v70 = HIDWORD(*v63);
    v71 = v68 >> 62;
    if (v30)
    {
      v73 = 0;
      if (!v64 && v65 == 0xC000000000000000 && v68 >> 62 == 3)
      {
        v73 = 0;
        if (!v69 && v68 == 0xC000000000000000)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
      v73 = 0;
      switch(v67)
      {
        case 0uLL:
          v73 = BYTE6(v65);
          break;
        case 1uLL:
          if (__OFSUB__(v70, v64))
          {
            goto LABEL_292;
          }

          v73 = v70 - v64;
          break;
        case 2uLL:
          v75 = *(v64 + 16);
          v74 = *(v64 + 24);
          v45 = __OFSUB__(v74, v75);
          v73 = v74 - v75;
          if (!v45)
          {
            break;
          }

          goto LABEL_291;
        case 3uLL:
          break;
        default:
          goto LABEL_315;
      }
    }

    switch(v71)
    {
      case 1uLL:
        LODWORD(v76) = HIDWORD(v69) - v69;
        if (__OFSUB__(HIDWORD(v69), v69))
        {
          goto LABEL_281;
        }

        v76 = v76;
LABEL_97:
        if (v73 != v76)
        {
          goto LABEL_275;
        }

        if (v73 < 1)
        {
          goto LABEL_122;
        }

        break;
      case 2uLL:
        v78 = *(v69 + 16);
        v77 = *(v69 + 24);
        v45 = __OFSUB__(v77, v78);
        v76 = v77 - v78;
        if (!v45)
        {
          goto LABEL_97;
        }

        goto LABEL_282;
      case 3uLL:
        if (v73)
        {
          goto LABEL_275;
        }

        goto LABEL_122;
      default:
        v76 = BYTE6(v68);
        goto LABEL_97;
    }

    switch(v67)
    {
      case 1:
        if (v64 >> 32 < v64)
        {
          goto LABEL_301;
        }

        v82 = v4;
        v87 = v64;
        sub_22E6CFB64(v69, v68);
        sub_22E6CFB64(v69, v68);
        sub_22E6CFB64(v69, v68);
        v85 = __DataStorage._bytes.getter();
        if (!v85)
        {
          goto LABEL_116;
        }

        v88 = __DataStorage._offset.getter();
        if (__OFSUB__(v87, v88))
        {
          goto LABEL_308;
        }

        v85 += v87 - v88;
LABEL_116:
        MEMORY[0x2318EBFC0]();
        sub_22E6F2044(v85, v69, v68, __s1);
        sub_22E6CFBBC(v69, v68);
        sub_22E6CFBBC(v69, v68);
        sub_22E6CFBBC(v69, v68);
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_275;
        }

        v4 = v82;
        break;
      case 2:
        v82 = v4;
        v83 = *(v64 + 16);
        v84 = *(v64 + 24);
        sub_22E6CFB64(v69, v68);
        sub_22E6CFB64(v69, v68);
        sub_22E6CFB64(v69, v68);
        v85 = __DataStorage._bytes.getter();
        if (!v85)
        {
          goto LABEL_107;
        }

        v86 = __DataStorage._offset.getter();
        if (__OFSUB__(v83, v86))
        {
          goto LABEL_307;
        }

        v85 += v83 - v86;
LABEL_107:
        if (!__OFSUB__(v84, v83))
        {
          goto LABEL_116;
        }

        goto LABEL_302;
      case 3:
        memset(__s1, 0, 14);
        sub_22E6CFB64(v69, v68);
        sub_22E6CFB64(v69, v68);
        sub_22E6F2044(__s1, v69, v68, &__s2);
        sub_22E6CFBBC(v69, v68);
        sub_22E6CFBBC(v69, v68);
        if ((__s2 & 1) == 0)
        {
          goto LABEL_275;
        }

        break;
      default:
        LOWORD(__s1[0]) = v64;
        BYTE2(__s1[0]) = BYTE2(v64);
        BYTE3(__s1[0]) = BYTE3(v64);
        BYTE4(__s1[0]) = v70;
        BYTE5(__s1[0]) = BYTE5(v64);
        BYTE6(__s1[0]) = BYTE6(v64);
        HIBYTE(__s1[0]) = HIBYTE(v64);
        LOWORD(__s1[1]) = v65;
        BYTE2(__s1[1]) = BYTE2(v65);
        BYTE3(__s1[1]) = BYTE3(v65);
        BYTE4(__s1[1]) = BYTE4(v65);
        BYTE5(__s1[1]) = BYTE5(v65);
        if (v71)
        {
          if (v71 == 1)
          {
            if (v69 >> 32 < v69)
            {
              goto LABEL_313;
            }

            sub_22E6CFB64(v69, v68);
            sub_22E6CFB64(v69, v68);
            v79 = v68 & 0x3FFFFFFFFFFFFFFFLL;
            v80 = v69;
            v81 = v69 >> 32;
          }

          else
          {
            v89 = *(v69 + 16);
            v90 = *(v69 + 24);
            sub_22E6CFB64(v69, v68);
            sub_22E6CFB64(v69, v68);
            v79 = v68 & 0x3FFFFFFFFFFFFFFFLL;
            v80 = v89;
            v81 = v90;
          }

          v91 = sub_22E6F239C(v80, v81, v79, __s1);
          sub_22E6CFBBC(v69, v68);
          sub_22E6CFBBC(v69, v68);
          if ((v91 & 1) == 0)
          {
            goto LABEL_275;
          }
        }

        else
        {
          __s2 = v69;
          v197 = v68;
          v198 = BYTE2(v68);
          v199 = BYTE3(v68);
          v200 = BYTE4(v68);
          v201 = BYTE5(v68);
          if (memcmp(__s1, &__s2, BYTE6(v68)))
          {
            goto LABEL_275;
          }
        }

        break;
    }

LABEL_122:
    v92 = type metadata accessor for Asset(0);
    v93 = *(v92 + 20);
    v94 = *&v194[v93];
    v95 = *&v194[v93 + 8];
    v97 = *&v194[v93 + 16];
    v96 = *&v194[v93 + 24];
    v98 = &v193[v93];
    v100 = *v98;
    v99 = v98[1];
    v101 = v95 >> 62;
    v103 = v98[2];
    v102 = v98[3];
    v191 = v103;
    v192 = v102;
    v104 = v99 >> 62;
    v189 = v92;
    v190 = v94;
    if (v22)
    {
      v109 = 0;
      if (!v94 && v95 == 0xC000000000000000 && v99 >> 62 == 3)
      {
        v109 = 0;
        if (!v100 && v99 == 0xC000000000000000)
        {
          v106 = v95;
          sub_22E6CFB64(0, 0xC000000000000000);
          sub_22E6CFB64(v97, v96);
          v107 = 0;
          v108 = 0xC000000000000000;
LABEL_155:
          sub_22E6CFB64(v107, v108);
          sub_22E6CFB64(v191, v192);
          goto LABEL_174;
        }
      }
    }

    else
    {
      v109 = 0;
      switch(v101)
      {
        case 0uLL:
          v109 = BYTE6(v95);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v94), v94))
          {
            goto LABEL_296;
          }

          v109 = HIDWORD(v94) - v94;
          break;
        case 2uLL:
          v111 = *(v94 + 16);
          v110 = *(v94 + 24);
          v45 = __OFSUB__(v110, v111);
          v109 = v110 - v111;
          if (!v45)
          {
            break;
          }

          goto LABEL_295;
        case 3uLL:
          break;
        default:
          goto LABEL_315;
      }
    }

    switch(v104)
    {
      case 1uLL:
        LODWORD(v112) = HIDWORD(v100) - v100;
        if (__OFSUB__(HIDWORD(v100), v100))
        {
          goto LABEL_283;
        }

        v112 = v112;
LABEL_147:
        if (v109 != v112)
        {
          goto LABEL_275;
        }

        if (v109 < 1)
        {
LABEL_154:
          v117 = v94;
          v106 = v95;
          sub_22E6CFB64(v117, v95);
          sub_22E6CFB64(v97, v96);
          v107 = v100;
          v108 = v99;
          goto LABEL_155;
        }

        break;
      case 2uLL:
        v114 = *(v100 + 16);
        v113 = *(v100 + 24);
        v45 = __OFSUB__(v113, v114);
        v112 = v113 - v114;
        if (!v45)
        {
          goto LABEL_147;
        }

        goto LABEL_284;
      case 3uLL:
        if (v109)
        {
          goto LABEL_275;
        }

        goto LABEL_154;
      default:
        v112 = BYTE6(v99);
        goto LABEL_147;
    }

    switch(v101)
    {
      case 1:
        v182 = v96;
        v183 = v4;
        if (v94 >> 32 < v94)
        {
          goto LABEL_303;
        }

        sub_22E6CFB64(v100, v99);
        sub_22E6CFB64(v100, v99);
        sub_22E6CFB64(v94, v95);
        v181 = v97;
        sub_22E6CFB64(v97, v182);
        sub_22E6CFB64(v100, v99);
        sub_22E6CFB64(v191, v192);
        sub_22E6CFB64(v100, v99);
        v121 = __DataStorage._bytes.getter();
        if (!v121)
        {
          goto LABEL_168;
        }

        v124 = __DataStorage._offset.getter();
        if (__OFSUB__(v94, v124))
        {
          goto LABEL_310;
        }

        v121 += v94 - v124;
LABEL_168:
        v106 = v95;
        MEMORY[0x2318EBFC0]();
        sub_22E6F2044(v121, v100, v99, __s1);
        sub_22E6CFBBC(v100, v99);
        sub_22E6CFBBC(v100, v99);
        sub_22E6CFBBC(v100, v99);
        v96 = v182;
        v4 = v183;
        v97 = v181;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_274;
        }

        goto LABEL_174;
      case 2:
        v183 = v4;
        v118 = v96;
        v120 = *(v94 + 16);
        v119 = *(v94 + 24);
        sub_22E6CFB64(v100, v99);
        sub_22E6CFB64(v100, v99);
        sub_22E6CFB64(v94, v95);
        v181 = v97;
        v182 = v118;
        sub_22E6CFB64(v97, v118);
        sub_22E6CFB64(v100, v99);
        sub_22E6CFB64(v191, v192);
        sub_22E6CFB64(v100, v99);
        v121 = __DataStorage._bytes.getter();
        if (!v121)
        {
          goto LABEL_159;
        }

        v122 = __DataStorage._offset.getter();
        if (__OFSUB__(v120, v122))
        {
          goto LABEL_309;
        }

        v121 += v120 - v122;
LABEL_159:
        if (!__OFSUB__(v119, v120))
        {
          goto LABEL_168;
        }

        goto LABEL_304;
      case 3:
        memset(__s1, 0, 14);
        sub_22E6CFB64(v100, v99);
        v123 = v94;
        v106 = v95;
        sub_22E6CFB64(v123, v95);
        sub_22E6CFB64(v97, v96);
        sub_22E6CFB64(v100, v99);
        sub_22E6CFB64(v191, v192);
        sub_22E6CFB64(v100, v99);
        sub_22E6F2044(__s1, v100, v99, &__s2);
        sub_22E6CFBBC(v100, v99);
        sub_22E6CFBBC(v100, v99);
        if ((__s2 & 1) == 0)
        {
          goto LABEL_274;
        }

        goto LABEL_174;
      default:
        __s1[0] = v94;
        LOWORD(__s1[1]) = v95;
        BYTE2(__s1[1]) = BYTE2(v95);
        BYTE3(__s1[1]) = BYTE3(v95);
        BYTE4(__s1[1]) = BYTE4(v95);
        BYTE5(__s1[1]) = BYTE5(v95);
        if (!v104)
        {
          __s2 = v100;
          v197 = v99;
          v198 = BYTE2(v99);
          v199 = BYTE3(v99);
          v200 = BYTE4(v99);
          v201 = BYTE5(v99);
          v125 = v94;
          v106 = v95;
          sub_22E6CFB64(v125, v95);
          sub_22E6CFB64(v97, v96);
          sub_22E6CFB64(v100, v99);
          sub_22E6CFB64(v191, v192);
          if (memcmp(__s1, &__s2, BYTE6(v99)))
          {
            goto LABEL_274;
          }

LABEL_174:
          v129 = v191;
          v128 = v192;
          v130 = MEMORY[0x2318EC160](v97, v96, v191, v192);
          sub_22E6CFBBC(v100, v99);
          sub_22E6CFBBC(v129, v128);
          sub_22E6CFBBC(v190, v106);
          sub_22E6CFBBC(v97, v96);
          v11 = v185;
          if ((v130 & 1) == 0 || *&v194[*(v189 + 24)] != *&v193[*(v189 + 24)])
          {
            goto LABEL_275;
          }

          v131 = v4[8];
          v132 = &v185[v131];
          v133 = v185[v131 + 16];
          v134 = &v195[v131];
          if (v133)
          {
            if (!v134[16])
            {
              goto LABEL_275;
            }
          }

          else
          {
            if (v134[16])
            {
              goto LABEL_275;
            }

            if (*v132 != *v134 || *(v132 + 1) != *(v134 + 1))
            {
              goto LABEL_275;
            }
          }

          v136 = v4[9];
          if ((static URL.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v137 = v4[10];
          v138 = &v11[v137];
          v139 = &v195[v137];
          v140 = *&v11[v137] == *&v195[v137] && *&v11[v137 + 8] == *&v195[v137 + 8];
          if (!v140 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v141 = *(v138 + 2) == *(v139 + 2) && *(v138 + 3) == *(v139 + 3);
          if (!v141 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v142 = *(v138 + 4) == *(v139 + 4) && *(v138 + 5) == *(v139 + 5);
          if (!v142 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v143 = *(type metadata accessor for Credential(0) + 28);
          if ((static Date.== infix(_:_:)() & 1) == 0)
          {
            goto LABEL_275;
          }

          v144 = v4[11];
          v145 = *&v11[v144];
          v146 = *&v11[v144 + 8];
          v147 = &v195[v144];
          v148 = *v147;
          v149 = v147[1];
          v150 = v146 >> 62;
          if (v146 >> 62 != 3)
          {
            if (v150 == 2)
            {
              v154 = *(v145 + 16);
              v153 = *(v145 + 24);
              v45 = __OFSUB__(v153, v154);
              v151 = v153 - v154;
              if (!v45)
              {
                goto LABEL_220;
              }
            }

            else
            {
              if (v150 != 1)
              {
                v151 = BYTE6(v146);
                goto LABEL_220;
              }

              LODWORD(v151) = HIDWORD(v145) - v145;
              if (!__OFSUB__(HIDWORD(v145), v145))
              {
                v151 = v151;
LABEL_220:
                switch(v149 >> 62)
                {
                  case 1uLL:
                    LODWORD(v155) = HIDWORD(v148) - v148;
                    if (__OFSUB__(HIDWORD(v148), v148))
                    {
                      goto LABEL_285;
                    }

                    v155 = v155;
LABEL_229:
                    if (v151 == v155)
                    {
                      if (v151 < 1)
                      {
                        goto LABEL_232;
                      }

                      sub_22E6CFB64(v148, v149);
                      if (sub_22E6F21B0(v145, v146, v148, v149))
                      {
                        goto LABEL_232;
                      }
                    }

                    goto LABEL_275;
                  case 2uLL:
                    v157 = *(v148 + 16);
                    v156 = *(v148 + 24);
                    v45 = __OFSUB__(v156, v157);
                    v155 = v156 - v157;
                    if (!v45)
                    {
                      goto LABEL_229;
                    }

                    goto LABEL_286;
                  case 3uLL:
                    if (v151)
                    {
                      goto LABEL_275;
                    }

                    goto LABEL_232;
                  default:
                    v155 = BYTE6(v149);
                    goto LABEL_229;
                }
              }

LABEL_293:
              __break(1u);
            }

            __break(1u);
LABEL_295:
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            __break(1u);
LABEL_299:
            __break(1u);
LABEL_300:
            __break(1u);
LABEL_301:
            __break(1u);
LABEL_302:
            __break(1u);
LABEL_303:
            __break(1u);
LABEL_304:
            __break(1u);
LABEL_305:
            __break(1u);
LABEL_306:
            __break(1u);
LABEL_307:
            __break(1u);
LABEL_308:
            __break(1u);
LABEL_309:
            __break(1u);
LABEL_310:
            __break(1u);
LABEL_311:
            __break(1u);
LABEL_312:
            __break(1u);
LABEL_313:
            __break(1u);
LABEL_314:
            __break(1u);
          }

          v151 = 0;
          if (v145)
          {
            goto LABEL_220;
          }

          if (v146 != 0xC000000000000000 || v149 >> 62 != 3)
          {
            goto LABEL_220;
          }

          v151 = 0;
          if (v148 || v149 != 0xC000000000000000)
          {
            goto LABEL_220;
          }

LABEL_232:
          v158 = v4[12];
          v159 = *&v11[v158];
          v160 = *&v11[v158 + 8];
          v161 = &v195[v158];
          v162 = *v161;
          v163 = v161[1];
          v164 = v160 >> 62;
          if (v160 >> 62 != 3)
          {
            if (v164 == 2)
            {
              v168 = *(v159 + 16);
              v167 = *(v159 + 24);
              v45 = __OFSUB__(v167, v168);
              v165 = v167 - v168;
              if (v45)
              {
                goto LABEL_297;
              }
            }

            else if (v164 == 1)
            {
              LODWORD(v165) = HIDWORD(v159) - v159;
              if (__OFSUB__(HIDWORD(v159), v159))
              {
                goto LABEL_298;
              }

              v165 = v165;
            }

            else
            {
              v165 = BYTE6(v160);
            }

LABEL_250:
            switch(v163 >> 62)
            {
              case 1uLL:
                LODWORD(v169) = HIDWORD(v162) - v162;
                if (__OFSUB__(HIDWORD(v162), v162))
                {
                  goto LABEL_287;
                }

                v169 = v169;
LABEL_259:
                if (v165 == v169)
                {
                  if (v165 < 1)
                  {
                    goto LABEL_262;
                  }

                  sub_22E6CFB64(v162, v163);
                  if (sub_22E6F21B0(v159, v160, v162, v163))
                  {
                    goto LABEL_262;
                  }
                }

                goto LABEL_275;
              case 2uLL:
                v171 = *(v162 + 16);
                v170 = *(v162 + 24);
                v45 = __OFSUB__(v170, v171);
                v169 = v170 - v171;
                if (!v45)
                {
                  goto LABEL_259;
                }

                goto LABEL_288;
              case 3uLL:
                if (v165)
                {
                  goto LABEL_275;
                }

                goto LABEL_262;
              default:
                v169 = BYTE6(v163);
                goto LABEL_259;
            }
          }

          v165 = 0;
          if (v159)
          {
            goto LABEL_250;
          }

          if (v160 != 0xC000000000000000 || v163 >> 62 != 3)
          {
            goto LABEL_250;
          }

          v165 = 0;
          if (v162 || v163 != 0xC000000000000000)
          {
            goto LABEL_250;
          }

LABEL_262:
          v172 = v4[13];
          v173 = &v11[v172];
          v174 = *&v11[v172 + 8];
          v8 = v195;
          v175 = &v195[v172];
          v176 = *(v175 + 1);
          if (v174)
          {
            if (!v176)
            {
              goto LABEL_275;
            }

            if (*v173 != *v175 || v174 != v176)
            {
              v178 = *(v175 + 1);
              if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_275;
              }
            }

            v8 = v195;
            sub_22E6F3700(v195, type metadata accessor for AssetDownloadRequest);
            sub_22E6F3700(v11, type metadata accessor for AssetDownloadRequest);
          }

          else
          {
            sub_22E6F3700(v195, type metadata accessor for AssetDownloadRequest);
            sub_22E6F3700(v11, type metadata accessor for AssetDownloadRequest);
            if (v176)
            {
              goto LABEL_276;
            }
          }

          v13 = v17;
          v16 = v186 + v184;
          v15 = v187 + v184;
          result = 1;
          v12 = v188 - 1;
          if (v188 == 1)
          {
            goto LABEL_277;
          }

          continue;
        }

        v182 = v96;
        if (v104 == 1)
        {
          if (v100 >> 32 < v100)
          {
            goto LABEL_314;
          }

          sub_22E6CFB64(v100, v99);
          v115 = v94;
          v106 = v95;
          sub_22E6CFB64(v115, v95);
          sub_22E6CFB64(v97, v182);
          sub_22E6CFB64(v100, v99);
          sub_22E6CFB64(v191, v192);
          sub_22E6CFB64(v100, v99);
          v116 = sub_22E6F239C(v100, v100 >> 32, v99 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          sub_22E6CFBBC(v100, v99);
          sub_22E6CFBBC(v100, v99);
          v96 = v182;
        }

        else
        {
          v126 = *(v100 + 16);
          v183 = *(v100 + 24);
          sub_22E6CFB64(v100, v99);
          v127 = v94;
          v106 = v95;
          sub_22E6CFB64(v127, v95);
          v96 = v182;
          sub_22E6CFB64(v97, v182);
          sub_22E6CFB64(v100, v99);
          sub_22E6CFB64(v191, v192);
          sub_22E6CFB64(v100, v99);
          v116 = sub_22E6F239C(v126, v183, v99 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          sub_22E6CFBBC(v100, v99);
          sub_22E6CFBBC(v100, v99);
        }

        if (v116)
        {
          goto LABEL_174;
        }

LABEL_274:
        sub_22E6CFBBC(v100, v99);
        sub_22E6CFBBC(v191, v192);
        sub_22E6CFBBC(v190, v106);
        sub_22E6CFBBC(v97, v96);
        v11 = v185;
LABEL_275:
        sub_22E6F3700(v195, type metadata accessor for AssetDownloadRequest);
        sub_22E6F3700(v11, type metadata accessor for AssetDownloadRequest);
LABEL_276:
        result = 0;
LABEL_277:
        v180 = *MEMORY[0x277D85DE8];
        return result;
    }
  }
}

void sub_22E6EE424()
{
  sub_22E6EB570();
  v2 = v1;
  v4 = v3;
  v605 = *MEMORY[0x277D85DE8];
  v588 = type metadata accessor for AssetSkeleton();
  v5 = sub_22E6F3904(v588);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22E6F38F4();
  v589 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v13 = &v580 - v12;
  v14 = *(v4 + 16);
  if (v14 != *(v2 + 16) || !v14 || v4 == v2)
  {
    goto LABEL_312;
  }

  v587 = 0;
  sub_22E6F38E4(v11);
  v16 = v4 + v15;
  v17 = v2 + v15;
  v581 = *(v18 + 72);
  while (2)
  {
    sub_22E6F3698(v16, v13, type metadata accessor for AssetSkeleton);
    if (!v14)
    {
      __break(1u);
LABEL_314:
      __break(1u);
LABEL_315:
      __break(1u);
LABEL_316:
      __break(1u);
LABEL_317:
      __break(1u);
LABEL_318:
      __break(1u);
LABEL_319:
      __break(1u);
LABEL_320:
      __break(1u);
LABEL_321:
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      __break(1u);
LABEL_326:
      __break(1u);
LABEL_327:
      __break(1u);
LABEL_328:
      __break(1u);
LABEL_329:
      __break(1u);
LABEL_330:
      __break(1u);
LABEL_331:
      __break(1u);
LABEL_332:
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
LABEL_341:
      __break(1u);
LABEL_342:
      __break(1u);
LABEL_343:
      __break(1u);
LABEL_344:
      __break(1u);
LABEL_345:
      __break(1u);
LABEL_346:
      __break(1u);
LABEL_347:
      __break(1u);
LABEL_348:
      __break(1u);
LABEL_349:
      __break(1u);
LABEL_350:
      __break(1u);
LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
    }

    v583 = v16;
    v584 = v14;
    sub_22E6F38C0();
    v582 = v17;
    sub_22E6F3698(v17, v589, v19);
    sub_22E6F3AB0();
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_311;
    }

    v20 = type metadata accessor for Asset.ID(0);
    v21 = *(v20 + 20);
    v22 = *&v13[v21];
    v23 = *&v13[v21 + 8];
    v24 = (v589 + v21);
    v25 = v22 == *v24 && v23 == v24[1];
    if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_311;
    }

    v26 = *(v20 + 24);
    v27 = *&v13[v26];
    v28 = *&v13[v26 + 8];
    v29 = (v589 + v26);
    v30 = v28 >> 62;
    v32 = *v29;
    v31 = v29[1];
    v33 = v31 >> 62;
    if (v25)
    {
      if (v27)
      {
        v34 = 0;
      }

      else
      {
        v34 = v28 == 0xC000000000000000;
      }

      if (v34 && v31 >> 62 == 3 && !v32 && v31 == 0xC000000000000000)
      {
        goto LABEL_63;
      }

      v37 = 0;
    }

    else
    {
      v37 = 0;
      switch(v30)
      {
        case 0uLL:
          v37 = BYTE6(v28);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v27), v27))
          {
            goto LABEL_326;
          }

          v37 = HIDWORD(v27) - v27;
          break;
        case 2uLL:
          v39 = *(v27 + 16);
          v38 = *(v27 + 24);
          v40 = __OFSUB__(v38, v39);
          v37 = v38 - v39;
          if (!v40)
          {
            break;
          }

          goto LABEL_327;
        case 3uLL:
          break;
        default:
          goto LABEL_355;
      }
    }

    v41 = BYTE6(v31);
    switch(v33)
    {
      case 1uLL:
        LODWORD(v42) = HIDWORD(v32) - v32;
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_315;
        }

        v42 = v42;
LABEL_41:
        if (v37 != v42)
        {
          goto LABEL_311;
        }

        if (v37 < 1)
        {
          goto LABEL_63;
        }

        break;
      case 2uLL:
        v44 = *(v32 + 16);
        v43 = *(v32 + 24);
        v40 = __OFSUB__(v43, v44);
        v42 = v43 - v44;
        if (!v40)
        {
          goto LABEL_41;
        }

        goto LABEL_314;
      case 3uLL:
        if (v37)
        {
          goto LABEL_311;
        }

        goto LABEL_63;
      default:
        v42 = BYTE6(v31);
        goto LABEL_41;
    }

    v0 = v32;
    v45 = v32 >> 32;
    v46 = v32 >> 8;
    v47 = v32 >> 16;
    v48 = v32 >> 24;
    v49 = v32 >> 40;
    v50 = HIWORD(v32);
    v51 = HIBYTE(v32);
    v52 = v31 >> 8;
    switch(v30)
    {
      case 1:
        sub_22E6F3A64();
        if (v65 != v40)
        {
          goto LABEL_336;
        }

        v66 = sub_22E6F3808();
        sub_22E6CFB64(v66, v67);
        v68 = sub_22E6F3808();
        sub_22E6CFB64(v68, v69);
        v70 = sub_22E6F3808();
        sub_22E6CFB64(v70, v71);
        v61 = sub_22E6F3A3C();
LABEL_54:
        v72 = v587;
        v73 = sub_22E6F22D0(v61, v62, v63, v32, v31);
        goto LABEL_61;
      case 2:
        v53 = *(v27 + 16);
        v54 = *(v27 + 24);
        v55 = sub_22E6F3808();
        sub_22E6CFB64(v55, v56);
        v57 = sub_22E6F3808();
        sub_22E6CFB64(v57, v58);
        v59 = sub_22E6F3808();
        sub_22E6CFB64(v59, v60);
        v61 = sub_22E6F3A30();
        goto LABEL_54;
      case 3:
        sub_22E6F3964();
        if (!v64)
        {
          goto LABEL_55;
        }

        if (v64 == 2)
        {
          goto LABEL_59;
        }

        if (v45 >= v32)
        {
          goto LABEL_58;
        }

        goto LABEL_345;
      default:
        v602 = v27;
        LOWORD(v603) = v28;
        BYTE2(v603) = BYTE2(v28);
        HIBYTE(v603) = BYTE3(v28);
        LOBYTE(v604) = BYTE4(v28);
        HIBYTE(v604) = BYTE5(v28);
        if (v33)
        {
          if (v33 == 1)
          {
            if (v45 < v32)
            {
              goto LABEL_344;
            }

LABEL_58:
            v82 = sub_22E6F3808();
            sub_22E6CFB64(v82, v83);
            v84 = sub_22E6F3808();
            sub_22E6CFB64(v84, v85);
            sub_22E6F3AA4();
            v86 = sub_22E6F3A3C();
          }

          else
          {
LABEL_59:
            v90 = *(v32 + 16);
            v91 = *(v32 + 24);
            v92 = sub_22E6F3808();
            sub_22E6CFB64(v92, v93);
            v94 = sub_22E6F3808();
            sub_22E6CFB64(v94, v95);
            sub_22E6F3AA4();
            v86 = sub_22E6F3A30();
          }

          v72 = v587;
          v73 = sub_22E6F239C(v86, v87, v88, v89);
LABEL_61:
          v0 = v73;
          v96 = sub_22E6F3808();
          sub_22E6CFBBC(v96, v97);
          v98 = sub_22E6F3808();
          sub_22E6CFBBC(v98, v99);
          v587 = v72;
          if (v72)
          {
            goto LABEL_354;
          }

          if ((v0 & 1) == 0)
          {
            goto LABEL_311;
          }
        }

        else
        {
LABEL_55:
          LOBYTE(v590) = v32;
          sub_22E6F3994(v52, v51, v41, v50, v49, v48, v47, v46);
          LOBYTE(v597) = v31;
          HIBYTE(v597) = v74;
          v598 = v75;
          v599 = v76;
          v600 = v77;
          v601 = v78;
          v79 = sub_22E6F394C();
          if (memcmp(v79, v80, v81))
          {
            goto LABEL_311;
          }
        }

        break;
    }

LABEL_63:
    sub_22E6F3928(*(v20 + 28));
    sub_22E6F3A20(v100);
    if (v25)
    {
      v106 = 0;
      if (!v102 && v0 == 0xC000000000000000 && v101 >= 3)
      {
        v106 = 0;
        if (!v31 && v20 == 0xC000000000000000)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      v106 = 0;
      switch(v104)
      {
        case 0:
          v106 = BYTE6(v0);
          break;
        case 1:
          if (__OFSUB__(v103, v102))
          {
            goto LABEL_328;
          }

          v106 = v103 - v102;
          break;
        case 2:
          v108 = *(v102 + 16);
          v107 = *(v102 + 24);
          v40 = __OFSUB__(v107, v108);
          v106 = v107 - v108;
          if (!v40)
          {
            break;
          }

          goto LABEL_329;
        case 3:
          break;
        default:
          goto LABEL_355;
      }
    }

    v109 = BYTE6(v20);
    switch(v101)
    {
      case 1uLL:
        LODWORD(v110) = HIDWORD(v31) - v31;
        if (__OFSUB__(HIDWORD(v31), v31))
        {
          goto LABEL_317;
        }

        v110 = v110;
LABEL_88:
        if (v106 != v110)
        {
          goto LABEL_311;
        }

        if (v106 < 1)
        {
          goto LABEL_110;
        }

        break;
      case 2uLL:
        v112 = *(v31 + 16);
        v111 = *(v31 + 24);
        v40 = __OFSUB__(v111, v112);
        v110 = v111 - v112;
        if (!v40)
        {
          goto LABEL_88;
        }

        goto LABEL_316;
      case 3uLL:
        if (v106)
        {
          goto LABEL_311;
        }

        goto LABEL_110;
      default:
        v110 = BYTE6(v20);
        goto LABEL_88;
    }

    v113 = v31 >> 32;
    v114 = v31 >> 8;
    v115 = v31 >> 16;
    v116 = v31 >> 24;
    v117 = v31 >> 40;
    v118 = HIWORD(v31);
    v119 = HIBYTE(v31);
    v120 = v20 >> 8;
    switch(v104)
    {
      case 1:
        sub_22E6F3A64();
        if (v65 != v40)
        {
          goto LABEL_339;
        }

        v146 = sub_22E6F3798();
        sub_22E6CFB64(v146, v147);
        v148 = sub_22E6F3798();
        sub_22E6CFB64(v148, v149);
        v150 = sub_22E6F3798();
        sub_22E6CFB64(v150, v151);
        v136 = sub_22E6F3844();
LABEL_101:
        v152 = sub_22E6F3A48(v136, v137, v138);
        goto LABEL_108;
      case 2:
        v113 = *(v102 + 16);
        v129 = *(v102 + 24);
        v130 = sub_22E6F3798();
        sub_22E6CFB64(v130, v131);
        v132 = sub_22E6F3798();
        sub_22E6CFB64(v132, v133);
        v134 = sub_22E6F3798();
        sub_22E6CFB64(v134, v135);
        v136 = sub_22E6F38D8();
        goto LABEL_101;
      case 3:
        sub_22E6F3964();
        if (!v139)
        {
          goto LABEL_102;
        }

        if (v139 == 2)
        {
          v140 = *(v31 + 16);
          v141 = *(v31 + 24);
          v142 = sub_22E6F3798();
          sub_22E6CFB64(v142, v143);
          v144 = sub_22E6F3798();
          sub_22E6CFB64(v144, v145);
          v125 = sub_22E6F37E0();
        }

        else
        {
          if (v113 < v31)
          {
            goto LABEL_347;
          }

          v161 = sub_22E6F3798();
          sub_22E6CFB64(v161, v162);
          v163 = sub_22E6F3798();
          sub_22E6CFB64(v163, v164);
          v125 = sub_22E6F37F4();
        }

        goto LABEL_107;
      default:
        LOWORD(v602) = v102;
        BYTE2(v602) = BYTE2(v102);
        BYTE3(v602) = BYTE3(v102);
        BYTE4(v602) = v103;
        BYTE5(v602) = BYTE5(v102);
        BYTE6(v602) = BYTE6(v102);
        HIBYTE(v602) = HIBYTE(v102);
        LOWORD(v603) = v0;
        BYTE2(v603) = BYTE2(v0);
        HIBYTE(v603) = BYTE3(v0);
        LOBYTE(v604) = BYTE4(v0);
        HIBYTE(v604) = BYTE5(v0);
        if (v101)
        {
          if (v101 == 1)
          {
            if (v113 < v31)
            {
              goto LABEL_346;
            }

            v121 = sub_22E6F3798();
            sub_22E6CFB64(v121, v122);
            v123 = sub_22E6F3798();
            sub_22E6CFB64(v123, v124);
            v125 = sub_22E6F3844();
          }

          else
          {
            v165 = *(v31 + 16);
            v166 = *(v31 + 24);
            v167 = sub_22E6F3798();
            sub_22E6CFB64(v167, v168);
            v169 = sub_22E6F3798();
            sub_22E6CFB64(v169, v170);
            v125 = sub_22E6F38D8();
          }

LABEL_107:
          v113 = v587;
          v152 = sub_22E6F239C(v125, v126, v127, v128);
LABEL_108:
          v171 = v152;
          v172 = sub_22E6F3798();
          sub_22E6CFBBC(v172, v173);
          v174 = sub_22E6F3798();
          sub_22E6CFBBC(v174, v175);
          v587 = v113;
          if (v113)
          {
            goto LABEL_354;
          }

          if ((v171 & 1) == 0)
          {
            goto LABEL_311;
          }
        }

        else
        {
LABEL_102:
          LOBYTE(v590) = v31;
          sub_22E6F3994(v120, v119, v109, v118, v117, v116, v115, v114);
          LOBYTE(v597) = v20;
          HIBYTE(v597) = v153;
          v598 = v154;
          v599 = v155;
          v600 = v156;
          v601 = v157;
          v158 = sub_22E6F394C();
          if (memcmp(v158, v159, v160))
          {
            goto LABEL_311;
          }
        }

        break;
    }

LABEL_110:
    v176 = type metadata accessor for Asset(0);
    v177 = *(v176 + 20);
    v179 = *&v13[v177];
    v178 = *&v13[v177 + 8];
    v181 = *&v13[v177 + 16];
    v180 = *&v13[v177 + 24];
    v182 = (v589 + v177);
    v183 = *v182;
    v0 = v182[1];
    v184 = v178 >> 62;
    v186 = v182[2];
    v185 = v182[3];
    v187 = v0 >> 62;
    v585 = v176;
    if (v25)
    {
      v195 = 0;
      if (!v179 && v178 == 0xC000000000000000 && v0 >> 62 == 3)
      {
        v195 = 0;
        if (!v183 && v0 == 0xC000000000000000)
        {
          v189 = sub_22E6F3958();
          sub_22E6CFB64(v189, v190);
          v191 = sub_22E6F39CC();
          sub_22E6CFB64(v191, v192);
          v193 = sub_22E6F3958();
LABEL_143:
          sub_22E6CFB64(v193, v194);
          v227 = sub_22E6E3F40();
          sub_22E6CFB64(v227, v228);
          goto LABEL_159;
        }
      }
    }

    else
    {
      v195 = 0;
      switch(v184)
      {
        case 0uLL:
          v195 = BYTE6(v178);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v179), v179))
          {
            goto LABEL_331;
          }

          v195 = HIDWORD(v179) - v179;
          break;
        case 2uLL:
          v197 = *(v179 + 16);
          v196 = *(v179 + 24);
          v40 = __OFSUB__(v196, v197);
          v195 = v196 - v197;
          if (!v40)
          {
            break;
          }

          goto LABEL_330;
        case 3uLL:
          break;
        default:
          goto LABEL_355;
      }
    }

    switch(v187)
    {
      case 1uLL:
        LODWORD(v198) = HIDWORD(v183) - v183;
        if (__OFSUB__(HIDWORD(v183), v183))
        {
          goto LABEL_319;
        }

        v198 = v198;
LABEL_135:
        if (v195 != v198)
        {
          goto LABEL_311;
        }

        if (v195 < 1)
        {
LABEL_142:
          v223 = sub_22E6F382C();
          sub_22E6CFB64(v223, v224);
          v225 = sub_22E6F39CC();
          sub_22E6CFB64(v225, v226);
          v193 = sub_22E6F37B8();
          goto LABEL_143;
        }

        break;
      case 2uLL:
        v200 = *(v183 + 16);
        v199 = *(v183 + 24);
        v40 = __OFSUB__(v199, v200);
        v198 = v199 - v200;
        if (!v40)
        {
          goto LABEL_135;
        }

        goto LABEL_318;
      case 3uLL:
        if (v195)
        {
          goto LABEL_311;
        }

        goto LABEL_142;
      default:
        v198 = BYTE6(v0);
        goto LABEL_135;
    }

    v586 = v180;
    v201 = v183 >> 32;
    v202 = v183 >> 8;
    v203 = v183 >> 16;
    v204 = v183 >> 24;
    v205 = v183 >> 40;
    v206 = HIWORD(v183);
    switch(v184)
    {
      case 1:
        if (v179 >> 32 < v179)
        {
          goto LABEL_340;
        }

        v264 = sub_22E6F37B8();
        sub_22E6CFB64(v264, v265);
        v266 = sub_22E6F37B8();
        sub_22E6CFB64(v266, v267);
        v268 = sub_22E6F382C();
        sub_22E6CFB64(v268, v269);
        v270 = sub_22E6F3988();
        sub_22E6CFB64(v270, v271);
        v272 = sub_22E6F37B8();
        sub_22E6CFB64(v272, v273);
        v274 = sub_22E6E3F40();
        sub_22E6CFB64(v274, v275);
        v276 = sub_22E6F37B8();
        sub_22E6CFB64(v276, v277);
        v246 = sub_22E6F3844();
LABEL_150:
        v278 = v587;
        v279 = sub_22E6F22D0(v246, v247, v248, v183, v0);
        goto LABEL_157;
      case 2:
        v230 = *(v179 + 16);
        v231 = *(v179 + 24);
        v232 = sub_22E6F37B8();
        sub_22E6CFB64(v232, v233);
        v234 = sub_22E6F37B8();
        sub_22E6CFB64(v234, v235);
        v236 = sub_22E6F382C();
        sub_22E6CFB64(v236, v237);
        v238 = sub_22E6F3988();
        sub_22E6CFB64(v238, v239);
        v240 = sub_22E6F37B8();
        sub_22E6CFB64(v240, v241);
        v242 = sub_22E6E3F40();
        sub_22E6CFB64(v242, v243);
        v244 = sub_22E6F37B8();
        sub_22E6CFB64(v244, v245);
        v246 = sub_22E6F38D8();
        goto LABEL_150;
      case 3:
        sub_22E6F3964();
        if (!v249)
        {
          goto LABEL_151;
        }

        if (v249 == 2)
        {
          v250 = *(v183 + 16);
          v251 = *(v183 + 24);
          v252 = sub_22E6F37B8();
          sub_22E6CFB64(v252, v253);
          v254 = sub_22E6F382C();
          sub_22E6CFB64(v254, v255);
          v256 = sub_22E6F3988();
          sub_22E6CFB64(v256, v257);
          v258 = sub_22E6F37B8();
          sub_22E6CFB64(v258, v259);
          v260 = sub_22E6E3F40();
          sub_22E6CFB64(v260, v261);
          v262 = sub_22E6F37B8();
          sub_22E6CFB64(v262, v263);
          v219 = sub_22E6F37E0();
        }

        else
        {
          if (v201 < v183)
          {
            goto LABEL_349;
          }

          v289 = sub_22E6F37B8();
          sub_22E6CFB64(v289, v290);
          v291 = sub_22E6F382C();
          sub_22E6CFB64(v291, v292);
          v293 = sub_22E6F3988();
          sub_22E6CFB64(v293, v294);
          v295 = sub_22E6F37B8();
          sub_22E6CFB64(v295, v296);
          v297 = sub_22E6E3F40();
          sub_22E6CFB64(v297, v298);
          v299 = sub_22E6F37B8();
          sub_22E6CFB64(v299, v300);
          v219 = sub_22E6F37F4();
        }

        goto LABEL_156;
      default:
        v602 = v179;
        LOWORD(v603) = v178;
        BYTE2(v603) = BYTE2(v178);
        HIBYTE(v603) = BYTE3(v178);
        LOBYTE(v604) = BYTE4(v178);
        HIBYTE(v604) = BYTE5(v178);
        if (!v187)
        {
LABEL_151:
          LOBYTE(v590) = v183;
          sub_22E6F37C4(v176, v206, v205, v204, v203, v202);
          v596 = v280;
          LOBYTE(v597) = v0;
          sub_22E6F3814();
          v281 = sub_22E6F382C();
          sub_22E6CFB64(v281, v282);
          v180 = v586;
          sub_22E6CFB64(v181, v586);
          v283 = sub_22E6F37B8();
          sub_22E6CFB64(v283, v284);
          v285 = sub_22E6E3F40();
          sub_22E6CFB64(v285, v286);
          v287 = sub_22E6F394C();
          if (memcmp(v287, v288, BYTE6(v0)))
          {
            goto LABEL_310;
          }

          goto LABEL_159;
        }

        if (v187 == 1)
        {
          v580 = &v602 + BYTE6(v178);
          if (v201 < v183)
          {
            goto LABEL_348;
          }

          v207 = sub_22E6F37B8();
          sub_22E6CFB64(v207, v208);
          v209 = sub_22E6F382C();
          sub_22E6CFB64(v209, v210);
          v211 = sub_22E6F3988();
          sub_22E6CFB64(v211, v212);
          v213 = sub_22E6F37B8();
          sub_22E6CFB64(v213, v214);
          v215 = sub_22E6E3F40();
          sub_22E6CFB64(v215, v216);
          v217 = sub_22E6F37B8();
          sub_22E6CFB64(v217, v218);
          v219 = sub_22E6F3844();
        }

        else
        {
          v301 = *(v183 + 16);
          v580 = *(v183 + 24);
          v302 = sub_22E6F37B8();
          sub_22E6CFB64(v302, v303);
          v304 = sub_22E6F382C();
          sub_22E6CFB64(v304, v305);
          v306 = sub_22E6F3988();
          sub_22E6CFB64(v306, v307);
          v308 = sub_22E6F37B8();
          sub_22E6CFB64(v308, v309);
          v310 = sub_22E6E3F40();
          sub_22E6CFB64(v310, v311);
          v312 = sub_22E6F37B8();
          sub_22E6CFB64(v312, v313);
          v219 = sub_22E6F3A90();
        }

LABEL_156:
        v278 = v587;
        v279 = sub_22E6F239C(v219, v220, v221, v222);
LABEL_157:
        v314 = v279;
        v315 = sub_22E6F37B8();
        sub_22E6CFBBC(v315, v316);
        v317 = sub_22E6F37B8();
        sub_22E6CFBBC(v317, v318);
        v587 = v278;
        if (v278)
        {
          goto LABEL_354;
        }

        v180 = v586;
        if (v314)
        {
LABEL_159:
          v319 = v180 >> 62;
          v320 = v185 >> 62;
          if (v229)
          {
            v330 = 0;
            if (!v181 && v180 == 0xC000000000000000 && v185 >> 62 == 3)
            {
              v330 = 0;
              if (!v186 && v185 == 0xC000000000000000)
              {
                v322 = sub_22E6F37B8();
                sub_22E6CFBBC(v322, v323);
                v324 = sub_22E6F3958();
                sub_22E6CFBBC(v324, v325);
                v326 = sub_22E6F382C();
                sub_22E6CFBBC(v326, v327);
                v328 = sub_22E6F3958();
LABEL_192:
                sub_22E6CFBBC(v328, v329);
                v350 = v585;
                goto LABEL_211;
              }
            }
          }

          else
          {
            v330 = 0;
            switch(v319)
            {
              case 0uLL:
                v330 = BYTE6(v180);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v181), v181))
                {
                  goto LABEL_333;
                }

                v330 = HIDWORD(v181) - v181;
                break;
              case 2uLL:
                v332 = *(v181 + 16);
                v331 = *(v181 + 24);
                v40 = __OFSUB__(v331, v332);
                v330 = v331 - v332;
                if (!v40)
                {
                  break;
                }

                goto LABEL_332;
              case 3uLL:
                break;
              default:
                goto LABEL_355;
            }
          }

          switch(v320)
          {
            case 1uLL:
              LODWORD(v333) = HIDWORD(v186) - v186;
              if (__OFSUB__(HIDWORD(v186), v186))
              {
                goto LABEL_320;
              }

              v333 = v333;
LABEL_184:
              if (v330 != v333)
              {
                goto LABEL_310;
              }

              if (v330 < 1)
              {
LABEL_191:
                v344 = sub_22E6F37B8();
                sub_22E6CFBBC(v344, v345);
                v346 = sub_22E6E3F40();
                sub_22E6CFBBC(v346, v347);
                v348 = sub_22E6F382C();
                sub_22E6CFBBC(v348, v349);
                v328 = sub_22E6F39CC();
                goto LABEL_192;
              }

              v586 = v180;
              switch(v319)
              {
                case 1:
                  v580 = v13;
                  if (v181 >> 32 < v181)
                  {
                    goto LABEL_341;
                  }

                  v351 = v178;
                  v378 = sub_22E6E3F40();
                  sub_22E6CFB64(v378, v379);
                  v380 = sub_22E6E3F40();
                  sub_22E6CFB64(v380, v381);
                  v382 = sub_22E6E3F40();
                  sub_22E6CFB64(v382, v383);
                  v360 = v586;
                  v361 = sub_22E6F3844();
LABEL_199:
                  v180 = v587;
                  v384 = sub_22E6F22D0(v361, v362, v363, v186, v185);
                  v587 = v180;
                  if (v180)
                  {
                    goto LABEL_353;
                  }

                  v385 = v384;
                  v386 = sub_22E6F37B8();
                  sub_22E6CFBBC(v386, v387);
                  v388 = sub_22E6E3F40();
                  sub_22E6CFBBC(v388, v389);
                  sub_22E6CFBBC(v179, v351);
                  sub_22E6CFBBC(v181, v360);
                  v390 = sub_22E6E3F40();
                  sub_22E6CFBBC(v390, v391);
                  v392 = sub_22E6E3F40();
                  sub_22E6CFBBC(v392, v393);
                  v350 = v585;
                  v13 = v580;
                  if ((v385 & 1) == 0)
                  {
                    goto LABEL_311;
                  }

                  goto LABEL_211;
                case 2:
                  v580 = v13;
                  v351 = v178;
                  v352 = *(v181 + 16);
                  v353 = *(v181 + 24);
                  v354 = sub_22E6E3F40();
                  sub_22E6CFB64(v354, v355);
                  v356 = sub_22E6E3F40();
                  sub_22E6CFB64(v356, v357);
                  v358 = sub_22E6E3F40();
                  sub_22E6CFB64(v358, v359);
                  v360 = v586;
                  v361 = sub_22E6F38D8();
                  goto LABEL_199;
                case 3:
                  sub_22E6F3964();
                  if (!v371)
                  {
                    LOBYTE(v590) = v186;
                    sub_22E6F37C4(v364, v365, v366, v367, v368, v369);
                    v596 = v394;
                    LOBYTE(v597) = v185;
                    sub_22E6F3814();
                    v395 = sub_22E6E3F40();
                    sub_22E6CFB64(v395, v396);
                    v397 = sub_22E6F394C();
                    v180 = memcmp(v397, v398, BYTE6(v185));
                    v399 = sub_22E6F37B8();
                    sub_22E6CFBBC(v399, v400);
                    v401 = sub_22E6E3F40();
                    sub_22E6CFBBC(v401, v402);
                    v403 = sub_22E6F382C();
                    sub_22E6CFBBC(v403, v404);
                    v405 = sub_22E6F3988();
                    sub_22E6CFBBC(v405, v406);
                    v407 = sub_22E6E3F40();
                    sub_22E6CFBBC(v407, v408);
                    v350 = v585;
                    if (v180)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_211;
                  }

                  if (v371 == 2)
                  {
                    v372 = *(v186 + 16);
                    v373 = *(v186 + 24);
                    v374 = sub_22E6E3F40();
                    sub_22E6CFB64(v374, v375);
                    v376 = sub_22E6E3F40();
                    sub_22E6CFB64(v376, v377);
                    v340 = sub_22E6F37E0();
                  }

                  else
                  {
                    if (v370 < v186)
                    {
                      goto LABEL_351;
                    }

                    v424 = sub_22E6E3F40();
                    sub_22E6CFB64(v424, v425);
                    v426 = sub_22E6E3F40();
                    sub_22E6CFB64(v426, v427);
                    v340 = sub_22E6F37F4();
                  }

                  goto LABEL_209;
                default:
                  v602 = v181;
                  v180 = v586;
                  v603 = v586;
                  v604 = WORD2(v586);
                  if (v320)
                  {
                    if (v320 == 1)
                    {
                      v580 = &v602 + BYTE6(v586);
                      if (v186 >> 32 < v186)
                      {
                        goto LABEL_350;
                      }

                      v336 = sub_22E6E3F40();
                      sub_22E6CFB64(v336, v337);
                      v338 = sub_22E6E3F40();
                      sub_22E6CFB64(v338, v339);
                      v340 = sub_22E6F3844();
                    }

                    else
                    {
                      v428 = *(v186 + 16);
                      v580 = *(v186 + 24);
                      v429 = sub_22E6E3F40();
                      sub_22E6CFB64(v429, v430);
                      v431 = sub_22E6E3F40();
                      sub_22E6CFB64(v431, v432);
                      v340 = sub_22E6F3A90();
                    }

LABEL_209:
                    v180 = v587;
                    v433 = sub_22E6F239C(v340, v341, v342, v343);
                    v587 = v180;
                    if (v180)
                    {
LABEL_353:
                      v576 = sub_22E6E3F40();
                      sub_22E6CFBBC(v576, v577);
                      v578 = sub_22E6E3F40();
                      sub_22E6CFBBC(v578, v579);
LABEL_354:

                      __break(1u);
LABEL_355:
                      JUMPOUT(0);
                    }

                    v434 = v433;
                    v435 = sub_22E6F37B8();
                    sub_22E6CFBBC(v435, v436);
                    v437 = sub_22E6E3F40();
                    sub_22E6CFBBC(v437, v438);
                    v439 = sub_22E6F382C();
                    sub_22E6CFBBC(v439, v440);
                    v441 = sub_22E6F3988();
                    sub_22E6CFBBC(v441, v442);
                    v443 = sub_22E6E3F40();
                    sub_22E6CFBBC(v443, v444);
                    v445 = sub_22E6E3F40();
                    sub_22E6CFBBC(v445, v446);
                    v350 = v585;
                    if ((v434 & 1) == 0)
                    {
                      goto LABEL_311;
                    }
                  }

                  else
                  {
                    LOBYTE(v590) = v186;
                    sub_22E6F37C4(HIBYTE(v186), SBYTE6(v186), SBYTE5(v186), SBYTE3(v186), SBYTE2(v186), SBYTE1(v186));
                    v596 = v409;
                    LOBYTE(v597) = v185;
                    sub_22E6F3814();
                    v410 = sub_22E6E3F40();
                    sub_22E6CFB64(v410, v411);
                    v412 = sub_22E6F394C();
                    v414 = v179;
                    v179 = v181;
                    v181 = v13;
                    v415 = v178;
                    v416 = memcmp(v412, v413, BYTE6(v185));
                    v417 = sub_22E6F37B8();
                    sub_22E6CFBBC(v417, v418);
                    v419 = sub_22E6E3F40();
                    sub_22E6CFBBC(v419, v420);
                    v421 = v415;
                    v13 = v181;
                    sub_22E6CFBBC(v414, v421);
                    sub_22E6CFBBC(v179, v180);
                    v422 = sub_22E6E3F40();
                    sub_22E6CFBBC(v422, v423);
                    v350 = v585;
                    if (v416)
                    {
                      goto LABEL_311;
                    }
                  }

                  break;
              }

              break;
            case 2uLL:
              v335 = *(v186 + 16);
              v334 = *(v186 + 24);
              v40 = __OFSUB__(v334, v335);
              v333 = v334 - v335;
              if (!v40)
              {
                goto LABEL_184;
              }

              goto LABEL_321;
            case 3uLL:
              if (v330)
              {
                goto LABEL_310;
              }

              goto LABEL_191;
            default:
              v333 = BYTE6(v185);
              goto LABEL_184;
          }

LABEL_211:
          if (*&v13[*(v350 + 24)] != *(v589 + *(v350 + 24)))
          {
            goto LABEL_311;
          }

          sub_22E6F3928(v588[5]);
          sub_22E6F3A20(v447);
          if (v25)
          {
            v453 = 0;
            if (!v449 && v0 == 0xC000000000000000 && v448 >= 3)
            {
              v453 = 0;
              if (!v181 && v179 == 0xC000000000000000)
              {
                goto LABEL_255;
              }
            }
          }

          else
          {
            v453 = 0;
            switch(v451)
            {
              case 0:
                v453 = BYTE6(v0);
                break;
              case 1:
                LODWORD(v453) = v450 - v449;
                if (__OFSUB__(v450, v449))
                {
                  goto LABEL_335;
                }

                v453 = v453;
                break;
              case 2:
                v455 = *(v449 + 16);
                v454 = *(v449 + 24);
                v40 = __OFSUB__(v454, v455);
                v453 = v454 - v455;
                if (!v40)
                {
                  break;
                }

                goto LABEL_334;
              case 3:
                break;
              default:
                goto LABEL_355;
            }
          }

          switch(v448)
          {
            case 1uLL:
              LODWORD(v456) = HIDWORD(v181) - v181;
              if (__OFSUB__(HIDWORD(v181), v181))
              {
                goto LABEL_323;
              }

              v456 = v456;
LABEL_237:
              if (v453 != v456)
              {
                goto LABEL_311;
              }

              if (v453 < 1)
              {
                goto LABEL_255;
              }

              break;
            case 2uLL:
              v458 = *(v181 + 16);
              v457 = *(v181 + 24);
              v40 = __OFSUB__(v457, v458);
              v456 = v457 - v458;
              if (!v40)
              {
                goto LABEL_237;
              }

              goto LABEL_322;
            case 3uLL:
              if (v453)
              {
                goto LABEL_311;
              }

              goto LABEL_255;
            default:
              v456 = BYTE6(v179);
              goto LABEL_237;
          }

          switch(v451)
          {
            case 1:
              sub_22E6F3A64();
              if (v65 != v40)
              {
                goto LABEL_342;
              }

              v489 = sub_22E6F3798();
              sub_22E6CFB64(v489, v490);
              v491 = sub_22E6F3798();
              sub_22E6CFB64(v491, v492);
              v493 = sub_22E6F3798();
              sub_22E6CFB64(v493, v494);
              v474 = sub_22E6F3844();
LABEL_248:
              v495 = sub_22E6F3A48(v474, v475, v476);
              v587 = v180;
              v496 = sub_22E6F3798();
              sub_22E6CFBBC(v496, v497);
              v498 = sub_22E6F3798();
              sub_22E6CFBBC(v498, v499);
              goto LABEL_254;
            case 2:
              v180 = *(v449 + 16);
              v467 = *(v449 + 24);
              v468 = sub_22E6F3798();
              sub_22E6CFB64(v468, v469);
              v470 = sub_22E6F3798();
              sub_22E6CFB64(v470, v471);
              v472 = sub_22E6F3798();
              sub_22E6CFB64(v472, v473);
              v474 = sub_22E6F38D8();
              goto LABEL_248;
            case 3:
              sub_22E6F3964();
              if (v477)
              {
                if (v477 == 2)
                {
                  v479 = *(v181 + 16);
                  v480 = *(v181 + 24);
                  v481 = sub_22E6F3798();
                  sub_22E6CFB64(v481, v482);
                  v483 = sub_22E6F3798();
                  sub_22E6CFB64(v483, v484);
                  v485 = sub_22E6F37E0();
                }

                else
                {
                  if (v181 >> 32 < v181)
                  {
                    goto LABEL_352;
                  }

                  v503 = sub_22E6F3798();
                  sub_22E6CFB64(v503, v504);
                  v505 = sub_22E6F3798();
                  sub_22E6CFB64(v505, v506);
                  v485 = sub_22E6F37F4();
                }

                v180 = v587;
                v495 = sub_22E6F239C(v485, v486, v487, v488);
                v507 = sub_22E6F3798();
                sub_22E6CFBBC(v507, v508);
                v509 = sub_22E6F3798();
                sub_22E6CFBBC(v509, v510);
                v587 = v180;
                if (v180)
                {
                  goto LABEL_354;
                }

LABEL_254:
                if ((v495 & 1) == 0)
                {
                  goto LABEL_311;
                }
              }

              else
              {
                v590 = v181;
                v591 = BYTE2(v181);
                v592 = BYTE3(v181);
                v593 = v478;
                v594 = BYTE5(v181);
                v595 = BYTE6(v181);
                v596 = HIBYTE(v181);
                v597 = v179;
                v598 = BYTE2(v179);
                sub_22E6F3A00(SBYTE5(v179));
                v500 = sub_22E6F394C();
                if (memcmp(v500, v501, v502))
                {
                  goto LABEL_311;
                }
              }

              break;
            default:
              LOWORD(v602) = v449;
              BYTE2(v602) = BYTE2(v449);
              BYTE3(v602) = BYTE3(v449);
              BYTE4(v602) = v450;
              BYTE5(v602) = BYTE5(v449);
              BYTE6(v602) = BYTE6(v449);
              HIBYTE(v602) = HIBYTE(v449);
              LOWORD(v603) = v0;
              BYTE2(v603) = BYTE2(v0);
              HIBYTE(v603) = BYTE3(v0);
              LOBYTE(v604) = BYTE4(v0);
              HIBYTE(v604) = BYTE5(v0);
              v459 = sub_22E6F3798();
              sub_22E6CFB64(v459, v460);
              v461 = sub_22E6F3798();
              sub_22E6CFB64(v461, v462);
              v180 = v587;
              sub_22E6F2044(&v602, v181, v179, &v590);
              v587 = v180;
              v463 = sub_22E6F3798();
              sub_22E6CFBBC(v463, v464);
              v465 = sub_22E6F3798();
              sub_22E6CFBBC(v465, v466);
              if ((v590 & 1) == 0)
              {
                goto LABEL_311;
              }

              break;
          }

LABEL_255:
          sub_22E6F3928(v588[6]);
          sub_22E6F3A20(v511);
          if (v25)
          {
            v517 = 0;
            if (!v513 && v0 == 0xC000000000000000 && v512 >= 3)
            {
              v517 = 0;
              if (!v181 && v179 == 0xC000000000000000)
              {
                goto LABEL_291;
              }
            }
          }

          else
          {
            v517 = 0;
            switch(v515)
            {
              case 0:
                v517 = BYTE6(v0);
                break;
              case 1:
                LODWORD(v517) = v514 - v513;
                if (__OFSUB__(v514, v513))
                {
                  goto LABEL_337;
                }

                v517 = v517;
                break;
              case 2:
                v519 = *(v513 + 16);
                v518 = *(v513 + 24);
                v40 = __OFSUB__(v518, v519);
                v517 = v518 - v519;
                if (!v40)
                {
                  break;
                }

                goto LABEL_338;
              case 3:
                break;
              default:
                goto LABEL_355;
            }
          }

          switch(v512)
          {
            case 1uLL:
              LODWORD(v520) = HIDWORD(v181) - v181;
              if (__OFSUB__(HIDWORD(v181), v181))
              {
                goto LABEL_324;
              }

              v520 = v520;
LABEL_280:
              if (v517 != v520)
              {
                goto LABEL_311;
              }

              if (v517 >= 1)
              {
                switch(v515)
                {
                  case 1:
                    sub_22E6F3A64();
                    if (v65 != v40)
                    {
                      goto LABEL_343;
                    }

                    v548 = sub_22E6F3798();
                    sub_22E6CFB64(v548, v549);
                    v550 = sub_22E6F3798();
                    sub_22E6CFB64(v550, v551);
                    v552 = sub_22E6F3798();
                    sub_22E6CFB64(v552, v553);
                    v536 = sub_22E6F3844();
LABEL_290:
                    v554 = sub_22E6F3A48(v536, v537, v538);
                    v587 = v180;
                    v555 = sub_22E6F3798();
                    sub_22E6CFBBC(v555, v556);
                    v557 = sub_22E6F3798();
                    sub_22E6CFBBC(v557, v558);
                    if (v554)
                    {
                      goto LABEL_291;
                    }

                    goto LABEL_311;
                  case 2:
                    v180 = *(v513 + 16);
                    v529 = *(v513 + 24);
                    v530 = sub_22E6F3798();
                    sub_22E6CFB64(v530, v531);
                    v532 = sub_22E6F3798();
                    sub_22E6CFB64(v532, v533);
                    v534 = sub_22E6F3798();
                    sub_22E6CFB64(v534, v535);
                    v536 = sub_22E6F38D8();
                    goto LABEL_290;
                  case 3:
                    sub_22E6F3964();
                    v539 = sub_22E6F3798();
                    sub_22E6CFB64(v539, v540);
                    v541 = sub_22E6F3798();
                    sub_22E6CFB64(v541, v542);
                    v528 = sub_22E6F3A10();
                    goto LABEL_286;
                  default:
                    LOWORD(v602) = v513;
                    BYTE2(v602) = BYTE2(v513);
                    BYTE3(v602) = BYTE3(v513);
                    BYTE4(v602) = v514;
                    BYTE5(v602) = BYTE5(v513);
                    BYTE6(v602) = BYTE6(v513);
                    HIBYTE(v602) = HIBYTE(v513);
                    LOWORD(v603) = v0;
                    BYTE2(v603) = BYTE2(v0);
                    HIBYTE(v603) = BYTE3(v0);
                    LOBYTE(v604) = BYTE4(v0);
                    HIBYTE(v604) = BYTE5(v0);
                    v523 = sub_22E6F3798();
                    sub_22E6CFB64(v523, v524);
                    v525 = sub_22E6F3798();
                    sub_22E6CFB64(v525, v526);
                    v527 = &v590;
                    v528 = &v602;
LABEL_286:
                    v543 = v587;
                    sub_22E6F2044(v528, v181, v179, v527);
                    v587 = v543;
                    v544 = sub_22E6F3798();
                    sub_22E6CFBBC(v544, v545);
                    v546 = sub_22E6F3798();
                    sub_22E6CFBBC(v546, v547);
                    if ((v590 & 1) == 0)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_291;
                }
              }

              break;
            case 2uLL:
              v522 = *(v181 + 16);
              v521 = *(v181 + 24);
              v40 = __OFSUB__(v521, v522);
              v520 = v521 - v522;
              if (!v40)
              {
                goto LABEL_280;
              }

              goto LABEL_325;
            case 3uLL:
              if (v517)
              {
                goto LABEL_311;
              }

              break;
            default:
              v520 = BYTE6(v179);
              goto LABEL_280;
          }

LABEL_291:
          v559 = v588[7];
          v560 = &v13[v559];
          v561 = (v589 + v559);
          v562 = *&v13[v559] == *(v589 + v559) && *&v13[v559 + 8] == *(v589 + v559 + 8);
          if (!v562 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_311;
          }

          v563 = *(v560 + 2) == v561[2] && *(v560 + 3) == v561[3];
          if (!v563 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_311;
          }

          v564 = *(v560 + 4) == v561[4] && *(v560 + 5) == v561[5];
          if (!v564 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_311;
          }

          v565 = *(type metadata accessor for Credential(0) + 28);
          v566 = static Date.== infix(_:_:)();
          sub_22E6F3700(v589, type metadata accessor for AssetSkeleton);
          sub_22E6F3700(v13, type metadata accessor for AssetSkeleton);
          if ((v566 & 1) == 0)
          {
            goto LABEL_312;
          }

          v14 = v584 - 1;
          v17 = v582 + v581;
          v16 = v583 + v581;
          if (v584 == 1)
          {
            goto LABEL_312;
          }

          continue;
        }

LABEL_310:
        v567 = sub_22E6F37B8();
        sub_22E6CFBBC(v567, v568);
        v569 = sub_22E6E3F40();
        sub_22E6CFBBC(v569, v570);
        v571 = sub_22E6F382C();
        sub_22E6CFBBC(v571, v572);
        v573 = sub_22E6F39CC();
        sub_22E6CFBBC(v573, v574);
LABEL_311:
        sub_22E6F3700(v589, type metadata accessor for AssetSkeleton);
        sub_22E6F3700(v13, type metadata accessor for AssetSkeleton);
LABEL_312:
        v575 = *MEMORY[0x277D85DE8];
        sub_22E6EB538();
        return;
    }
  }
}

void sub_22E6EFD24()
{
  sub_22E6EB570();
  v1 = v0;
  v3 = v2;
  v326 = *MEMORY[0x277D85DE8];
  v316 = type metadata accessor for AssetUploadRequest();
  v4 = sub_22E6F3904(v316);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22E6F38F4();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v13 = &v305 - v12;
  v14 = *(v3 + 16);
  if (v14 != *(v1 + 16) || !v14 || v3 == v1)
  {
    goto LABEL_169;
  }

  sub_22E6F38E4(v11);
  v16 = v3 + v15;
  v17 = v1 + v15;
  v309 = *(v18 + 72);
  v310 = 0;
  while (2)
  {
    sub_22E6F3698(v16, v13, type metadata accessor for AssetUploadRequest);
    sub_22E6F3698(v17, v9, type metadata accessor for AssetUploadRequest);
    sub_22E6F382C();
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_168;
    }

    v19 = v316[5];
    v20 = *&v13[v19];
    v21 = *&v13[v19 + 8];
    v22 = (v9 + v19);
    v23 = v20 == *v22 && v21 == v22[1];
    if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_168;
    }

    v24 = v316[6];
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_168;
    }

    v25 = v316[7];
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_168;
    }

    v26 = v316[8];
    if ((static URL.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_168;
    }

    v28 = v316[9];
    v29 = *&v13[v28];
    v30 = *&v13[v28 + 8];
    v31 = *&v13[v28 + 16];
    v32 = *&v13[v28 + 24];
    v33 = (v9 + v28);
    v35 = *v33;
    v34 = v33[1];
    v36 = v30 >> 62;
    v38 = v33[2];
    v37 = v33[3];
    v39 = v34 >> 62;
    v314 = v37;
    v315 = v31;
    v311 = v29;
    v312 = v30;
    v313 = v34;
    if (v27)
    {
      v47 = 0;
      if (!v29 && v30 == 0xC000000000000000 && v34 >> 62 == 3)
      {
        v47 = 0;
        if (!v35 && v34 == 0xC000000000000000)
        {
          v41 = sub_22E6F3958();
          sub_22E6CFB64(v41, v42);
          v43 = sub_22E6F3838();
          sub_22E6CFB64(v43, v44);
          v45 = sub_22E6F3958();
          sub_22E6CFB64(v45, v46);
LABEL_51:
          sub_22E6CFB64(v38, v37);
          goto LABEL_52;
        }
      }
    }

    else
    {
      v47 = 0;
      switch(v36)
      {
        case 0uLL:
          v47 = BYTE6(v30);
          break;
        case 1uLL:
          if (__OFSUB__(HIDWORD(v29), v29))
          {
            goto LABEL_175;
          }

          v47 = HIDWORD(v29) - v29;
          break;
        case 2uLL:
          v49 = *(v29 + 16);
          v48 = *(v29 + 24);
          v50 = __OFSUB__(v48, v49);
          v47 = v48 - v49;
          if (!v50)
          {
            break;
          }

          goto LABEL_174;
        case 3uLL:
          break;
        default:
          goto LABEL_202;
      }
    }

    v51 = BYTE6(v34);
    switch(v39)
    {
      case 1uLL:
        LODWORD(v52) = HIDWORD(v35) - v35;
        if (__OFSUB__(HIDWORD(v35), v35))
        {
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
        }

        v52 = v52;
LABEL_39:
        if (v47 != v52)
        {
          goto LABEL_168;
        }

        if (v47 < 1)
        {
LABEL_50:
          sub_22E6CFB64(v29, v30);
          v68 = sub_22E6F3838();
          sub_22E6CFB64(v68, v69);
          v70 = sub_22E6F3970();
          sub_22E6CFB64(v70, v71);
          v37 = v314;
          goto LABEL_51;
        }

        break;
      case 2uLL:
        v54 = *(v35 + 16);
        v53 = *(v35 + 24);
        v50 = __OFSUB__(v53, v54);
        v52 = v53 - v54;
        if (!v50)
        {
          goto LABEL_39;
        }

        goto LABEL_171;
      case 3uLL:
        if (v47)
        {
          goto LABEL_168;
        }

        goto LABEL_50;
      default:
        v52 = BYTE6(v34);
        goto LABEL_39;
    }

    switch(v36)
    {
      case 1:
        v306 = v38;
        v307 = v17;
        v308 = v16;
        v154 = v29 >> 32;
        if (v29 >> 32 < v29)
        {
          goto LABEL_178;
        }

        v305 = v29;
        v155 = v29;
        sub_22E6CFB64(v35, v313);
        v156 = sub_22E6F397C();
        sub_22E6CFB64(v156, v157);
        sub_22E6CFB64(v155, v312);
        v158 = sub_22E6F3838();
        sub_22E6CFB64(v158, v159);
        v160 = sub_22E6F397C();
        sub_22E6CFB64(v160, v161);
        sub_22E6CFB64(v306, v314);
        v162 = sub_22E6F397C();
        sub_22E6CFB64(v162, v163);
        if (__DataStorage._bytes.getter())
        {
          v164 = __DataStorage._offset.getter();
          v165 = v305;
          if (__OFSUB__(v305, v164))
          {
            goto LABEL_183;
          }
        }

        else
        {
          v165 = v305;
        }

        v210 = v154 - v165;
        MEMORY[0x2318EBFC0]();
        v211 = sub_22E6F3778();
        sub_22E6F3ADC(v211, v212);
        v310 = v210;
        v213 = sub_22E6F3850();
        sub_22E6CFBBC(v213, v214);
        v215 = sub_22E6F3850();
        sub_22E6CFBBC(v215, v216);
        v217 = sub_22E6F3850();
        sub_22E6CFBBC(v217, v218);
        v17 = v307;
        v16 = v308;
        v38 = v306;
        if ((v320 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_52;
      case 2:
        v305 = v14;
        v307 = v17;
        v308 = v16;
        v114 = *(v29 + 16);
        v113 = *(v29 + 24);
        v115 = v29;
        v116 = v30;
        sub_22E6CFB64(v35, v313);
        v117 = sub_22E6F39B4();
        sub_22E6CFB64(v117, v118);
        sub_22E6CFB64(v115, v116);
        v119 = sub_22E6F3838();
        sub_22E6CFB64(v119, v120);
        v121 = sub_22E6F39B4();
        sub_22E6CFB64(v121, v122);
        v306 = v38;
        sub_22E6CFB64(v38, v314);
        v123 = sub_22E6F39B4();
        sub_22E6CFB64(v123, v124);
        if (__DataStorage._bytes.getter() && __OFSUB__(v114, __DataStorage._offset.getter()))
        {
          goto LABEL_182;
        }

        if (__OFSUB__(v113, v114))
        {
          goto LABEL_179;
        }

        MEMORY[0x2318EBFC0]();
        v125 = sub_22E6F3778();
        sub_22E6F3ADC(v125, v126);
        v310 = v113 - v114;
        v127 = sub_22E6F3850();
        sub_22E6CFBBC(v127, v128);
        v129 = sub_22E6F3850();
        sub_22E6CFBBC(v129, v130);
        v131 = sub_22E6F3850();
        sub_22E6CFBBC(v131, v132);
        v17 = v307;
        v16 = v308;
        v14 = v305;
        v38 = v306;
        if ((v320 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_52;
      case 3:
        sub_22E6F3964();
        v133 = v35;
        v134 = v32;
        v136 = v135;
        v138 = v137;
        sub_22E6CFB64(v133, v137);
        v139 = v136;
        v140 = v315;
        sub_22E6CFB64(v139, v312);
        v141 = v140;
        v32 = v134;
        v142 = v134;
        v35 = v133;
        sub_22E6CFB64(v141, v142);
        sub_22E6CFB64(v133, v138);
        v143 = sub_22E6F3A84();
        sub_22E6CFB64(v143, v144);
        sub_22E6CFB64(v133, v138);
        v145 = sub_22E6F3A10();
        v146 = v133;
        v147 = v38;
        v148 = v310;
        sub_22E6F2044(v145, v146, v138, v149);
        v310 = v148;
        v38 = v147;
        v150 = sub_22E6F397C();
        sub_22E6CFBBC(v150, v151);
        v152 = sub_22E6F397C();
        sub_22E6CFBBC(v152, v153);
        if ((v317 & 1) == 0)
        {
          goto LABEL_167;
        }

        goto LABEL_52;
      default:
        v320 = v29;
        v321 = v30;
        v322 = BYTE2(v30);
        v323 = BYTE3(v30);
        v324 = BYTE4(v30);
        v325 = BYTE5(v30);
        if (!v39)
        {
          v317 = v35;
          v318 = v313;
          v319 = BYTE2(v313);
          sub_22E6F3A00(SBYTE5(v313));
          sub_22E6CFB64(v231, v232);
          v233 = sub_22E6F3838();
          sub_22E6CFB64(v233, v234);
          v235 = sub_22E6F397C();
          sub_22E6CFB64(v235, v236);
          v237 = sub_22E6F3A84();
          sub_22E6CFB64(v237, v238);
          v239 = sub_22E6F394C();
          if (memcmp(v239, v240, v51))
          {
            goto LABEL_167;
          }

          goto LABEL_52;
        }

        v306 = v38;
        v307 = v17;
        v308 = v16;
        if (v39 == 1)
        {
          v55 = v314;
          if (v35 >> 32 < v35)
          {
            goto LABEL_186;
          }

          sub_22E6CFB64(v35, v313);
          sub_22E6CFB64(v311, v312);
          v56 = sub_22E6F3838();
          sub_22E6CFB64(v56, v57);
          v58 = sub_22E6F39B4();
          sub_22E6CFB64(v58, v59);
          sub_22E6CFB64(v306, v55);
          v60 = __DataStorage._bytes.getter();
          if (v60)
          {
            v61 = __DataStorage._offset.getter();
            if (__OFSUB__(v35, v61))
            {
              goto LABEL_191;
            }

            v60 += v35 - v61;
          }

          v62 = v313 & 0x3FFFFFFFFFFFFFFFLL;
          v63 = MEMORY[0x2318EBFC0]();
          if (!v60)
          {
            goto LABEL_195;
          }

          v64 = sub_22E6F3B5C(v63, (v35 >> 32) - v35);
          v65 = sub_22E6F39B4();
          sub_22E6CFBBC(v65, v66);
          v17 = v307;
          v16 = v308;
        }

        else
        {
          v241 = *(v35 + 24);
          v305 = *(v35 + 16);
          v242 = v29;
          v243 = v30;
          v244 = v313;
          sub_22E6CFB64(v35, v313);
          sub_22E6CFB64(v242, v243);
          v245 = sub_22E6F3838();
          sub_22E6CFB64(v245, v246);
          v247 = sub_22E6E3F40();
          sub_22E6CFB64(v247, v248);
          sub_22E6CFB64(v306, v314);
          v249 = __DataStorage._bytes.getter();
          if (v249)
          {
            v250 = v249;
            v251 = __DataStorage._offset.getter();
            v252 = v305;
            if (__OFSUB__(v305, v251))
            {
              goto LABEL_190;
            }

            v253 = &v305[v250 - v251];
            v254 = v313;
          }

          else
          {
            v253 = 0;
            v254 = v244;
            v252 = v305;
          }

          v50 = __OFSUB__(v241, v252);
          v278 = v241 - v252;
          if (v50)
          {
            goto LABEL_187;
          }

          v62 = v254 & 0x3FFFFFFFFFFFFFFFLL;
          v279 = MEMORY[0x2318EBFC0]();
          v17 = v307;
          if (!v253)
          {
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            v300 = sub_22E6F39C0();
            sub_22E6CFBBC(v300, v301);
            v302 = v14;
LABEL_201:
            sub_22E6CFBBC(v302, v62);
            __break(1u);
LABEL_202:
            JUMPOUT(0);
          }

          if (v279 >= v278)
          {
            v280 = v278;
          }

          else
          {
            v280 = v279;
          }

          v64 = memcmp(&v320, v253, v280);
          sub_22E6CFBBC(v35, v254);
          v16 = v308;
        }

        v38 = v306;
        if (!v64)
        {
LABEL_52:
          v72 = v32 >> 62;
          v73 = v314 >> 62;
          if (v67)
          {
            v81 = 0;
            if (!v315 && v32 == 0xC000000000000000 && v314 >> 62 == 3)
            {
              v81 = 0;
              if (!v38 && v314 == 0xC000000000000000)
              {
                v75 = sub_22E6F3970();
                sub_22E6CFBBC(v75, v76);
                v77 = sub_22E6F3958();
                sub_22E6CFBBC(v77, v78);
                sub_22E6CFBBC(v311, v312);
                v79 = sub_22E6F3958();
LABEL_90:
                sub_22E6CFBBC(v79, v80);
                goto LABEL_91;
              }
            }
          }

          else
          {
            v81 = 0;
            switch(v72)
            {
              case 0uLL:
                v81 = BYTE6(v32);
                break;
              case 1uLL:
                if (__OFSUB__(HIDWORD(v315), v315))
                {
                  goto LABEL_176;
                }

                v81 = HIDWORD(v315) - v315;
                break;
              case 2uLL:
                v83 = *(v315 + 16);
                v82 = *(v315 + 24);
                v50 = __OFSUB__(v82, v83);
                v81 = v82 - v83;
                if (!v50)
                {
                  break;
                }

                goto LABEL_177;
              case 3uLL:
                break;
              default:
                goto LABEL_202;
            }
          }

          v84 = BYTE6(v314);
          switch(v73)
          {
            case 1uLL:
              LODWORD(v85) = HIDWORD(v38) - v38;
              if (__OFSUB__(HIDWORD(v38), v38))
              {
                goto LABEL_172;
              }

              v85 = v85;
LABEL_77:
              if (v81 != v85)
              {
                goto LABEL_167;
              }

              if (v81 < 1)
              {
LABEL_89:
                v101 = sub_22E6F3970();
                sub_22E6CFBBC(v101, v102);
                v103 = sub_22E6F3A84();
                sub_22E6CFBBC(v103, v104);
                sub_22E6CFBBC(v311, v312);
                v79 = sub_22E6F3838();
                goto LABEL_90;
              }

              switch(v72)
              {
                case 1:
                  v305 = v35;
                  v203 = v38;
                  v307 = v17;
                  v308 = v16;
                  v204 = v315 >> 32;
                  if (v315 >> 32 < v315)
                  {
                    goto LABEL_180;
                  }

                  v205 = v315;
                  sub_22E6CFB64(v203, v314);
                  v206 = sub_22E6F3850();
                  sub_22E6CFB64(v206, v207);
                  v208 = sub_22E6F3850();
                  sub_22E6CFB64(v208, v209);
                  if (__DataStorage._bytes.getter() && __OFSUB__(v205, __DataStorage._offset.getter()))
                  {
                    goto LABEL_185;
                  }

                  v219 = v315;
                  v62 = v32 & 0x3FFFFFFFFFFFFFFFLL;
                  MEMORY[0x2318EBFC0]();
                  v220 = sub_22E6F3778();
                  sub_22E6F3AFC(v220, v221);
                  v222 = sub_22E6F3850();
                  sub_22E6CFBBC(v222, v223);
                  v310 = v204 - v205;
                  if (v204 != v205)
                  {
                    v303 = sub_22E6F3850();
                    sub_22E6CFBBC(v303, v304);
                    v302 = v203;
                    goto LABEL_201;
                  }

                  sub_22E6CFBBC(v305, v313);
                  v224 = sub_22E6F3850();
                  sub_22E6CFBBC(v224, v225);
                  sub_22E6CFBBC(v311, v312);
                  sub_22E6CFBBC(v219, v32);
                  v226 = v320;
                  v227 = sub_22E6F39B4();
                  sub_22E6CFBBC(v227, v228);
                  v229 = sub_22E6F39B4();
                  sub_22E6CFBBC(v229, v230);
                  v17 = v307;
                  v16 = v308;
                  if ((v226 & 1) == 0)
                  {
                    goto LABEL_168;
                  }

                  goto LABEL_91;
                case 2:
                  v166 = v35;
                  v305 = v14;
                  v307 = v17;
                  v308 = v16;
                  v167 = v38;
                  v168 = *(v315 + 16);
                  v169 = *(v315 + 24);
                  v170 = sub_22E6F39C0();
                  sub_22E6CFB64(v170, v171);
                  v172 = sub_22E6F39C0();
                  sub_22E6CFB64(v172, v173);
                  v174 = v167;
                  v175 = sub_22E6F39C0();
                  sub_22E6CFB64(v175, v176);
                  if (__DataStorage._bytes.getter() && __OFSUB__(v168, __DataStorage._offset.getter()))
                  {
                    goto LABEL_184;
                  }

                  v14 = v305;
                  v50 = __OFSUB__(v169, v168);
                  v177 = v169 - v168;
                  if (v50)
                  {
                    goto LABEL_181;
                  }

                  v62 = v32 & 0x3FFFFFFFFFFFFFFFLL;
                  MEMORY[0x2318EBFC0]();
                  v178 = sub_22E6F3778();
                  sub_22E6F3AFC(v178, v179);
                  v180 = sub_22E6F3850();
                  sub_22E6CFBBC(v180, v181);
                  v17 = v307;
                  v310 = v177;
                  if (v177)
                  {
                    sub_22E6CFBBC(v174, v32 & 0x3FFFFFFFFFFFFFFFLL);
                    v302 = v174;
                    goto LABEL_201;
                  }

                  sub_22E6CFBBC(v166, v313);
                  sub_22E6CFBBC(v174, v32 & 0x3FFFFFFFFFFFFFFFLL);
                  sub_22E6CFBBC(v311, v312);
                  v182 = sub_22E6F3838();
                  sub_22E6CFBBC(v182, v183);
                  v184 = v320;
                  v185 = sub_22E6F3A3C();
                  sub_22E6CFBBC(v185, v186);
                  v187 = sub_22E6F3A3C();
                  sub_22E6CFBBC(v187, v188);
                  v16 = v308;
                  if ((v184 & 1) == 0)
                  {
                    goto LABEL_168;
                  }

                  break;
                case 3:
                  v305 = v14;
                  sub_22E6F3964();
                  v62 = v314;
                  sub_22E6CFB64(v38, v314);
                  sub_22E6CFB64(v38, v62);
                  v189 = sub_22E6F3A10();
                  v190 = v38;
                  v14 = v38;
                  v191 = v310;
                  sub_22E6F2044(v189, v190, v62, v192);
                  v310 = v191;
                  if (v191)
                  {
                    goto LABEL_198;
                  }

                  v193 = sub_22E6F3970();
                  sub_22E6CFBBC(v193, v194);
                  v195 = sub_22E6F39C0();
                  sub_22E6CFBBC(v195, v196);
                  sub_22E6CFBBC(v311, v312);
                  v197 = sub_22E6F3838();
                  sub_22E6CFBBC(v197, v198);
                  v199 = sub_22E6F39C0();
                  sub_22E6CFBBC(v199, v200);
                  v201 = sub_22E6F39C0();
                  sub_22E6CFBBC(v201, v202);
                  v14 = v305;
                  if ((v317 & 1) == 0)
                  {
                    goto LABEL_168;
                  }

                  goto LABEL_91;
                default:
                  v320 = v315;
                  v321 = v32;
                  v322 = BYTE2(v32);
                  v323 = BYTE3(v32);
                  v324 = BYTE4(v32);
                  v325 = BYTE5(v32);
                  if (v73)
                  {
                    v307 = v17;
                    v308 = v16;
                    v306 = v38;
                    if (v73 == 1)
                    {
                      v88 = v38;
                      v89 = v38 >> 32;
                      if (v89 < v88)
                      {
                        goto LABEL_188;
                      }

                      v90 = v88;
                      sub_22E6CFB64(v88, v314);
                      v91 = __DataStorage._bytes.getter();
                      if (v91)
                      {
                        v92 = __DataStorage._offset.getter();
                        if (__OFSUB__(v90, v92))
                        {
                          goto LABEL_193;
                        }

                        v91 += v90 - v92;
                      }

                      v93 = v314;
                      v62 = v314 & 0x3FFFFFFFFFFFFFFFLL;
                      v94 = MEMORY[0x2318EBFC0]();
                      if (!v91)
                      {
                        goto LABEL_197;
                      }

                      v95 = sub_22E6F3B5C(v94, v89 - v90);
                      v96 = sub_22E6F3970();
                      sub_22E6CFBBC(v96, v97);
                      v98 = v306;
                      sub_22E6CFBBC(v306, v93);
                      sub_22E6CFBBC(v311, v312);
                      v99 = sub_22E6F3838();
                      sub_22E6CFBBC(v99, v100);
                      sub_22E6CFBBC(v98, v93);
                      v17 = v307;
                      v16 = v308;
                      if (v95)
                      {
                        goto LABEL_168;
                      }
                    }

                    else
                    {
                      v305 = v14;
                      v270 = v38;
                      v271 = *(v38 + 16);
                      v272 = *(v270 + 24);
                      v273 = v314;
                      sub_22E6CFB64(v270, v314);
                      v274 = __DataStorage._bytes.getter();
                      if (v274)
                      {
                        v275 = v274;
                        v276 = __DataStorage._offset.getter();
                        if (__OFSUB__(v271, v276))
                        {
                          goto LABEL_192;
                        }

                        v14 = (v271 - v276 + v275);
                        v277 = v314;
                      }

                      else
                      {
                        v14 = 0;
                        v277 = v273;
                      }

                      v50 = __OFSUB__(v272, v271);
                      v281 = v272 - v271;
                      if (v50)
                      {
                        goto LABEL_189;
                      }

                      v62 = v277 & 0x3FFFFFFFFFFFFFFFLL;
                      v282 = MEMORY[0x2318EBFC0]();
                      v17 = v307;
                      if (!v14)
                      {
                        goto LABEL_196;
                      }

                      if (v282 >= v281)
                      {
                        v283 = v281;
                      }

                      else
                      {
                        v283 = v282;
                      }

                      v284 = memcmp(&v320, v14, v283);
                      v285 = sub_22E6F3970();
                      sub_22E6CFBBC(v285, v286);
                      v287 = sub_22E6F3A30();
                      sub_22E6CFBBC(v287, v288);
                      sub_22E6CFBBC(v311, v312);
                      v289 = sub_22E6F3838();
                      sub_22E6CFBBC(v289, v290);
                      v291 = sub_22E6F3A30();
                      sub_22E6CFBBC(v291, v292);
                      v16 = v308;
                      v14 = v305;
                      if (v284)
                      {
                        goto LABEL_168;
                      }
                    }
                  }

                  else
                  {
                    LOWORD(v317) = v38;
                    BYTE2(v317) = BYTE2(v38);
                    BYTE3(v317) = BYTE3(v38);
                    BYTE4(v317) = BYTE4(v38);
                    BYTE5(v317) = BYTE5(v38);
                    v255 = HIBYTE(v38);
                    BYTE6(v317) = BYTE6(v38);
                    v305 = v14;
                    v256 = v38;
                    v257 = v314;
                    HIBYTE(v317) = v255;
                    v318 = v314;
                    v319 = BYTE2(v314);
                    sub_22E6F3A00(SBYTE5(v314));
                    v258 = sub_22E6F39CC();
                    sub_22E6CFB64(v258, v259);
                    v260 = sub_22E6F394C();
                    v262 = memcmp(v260, v261, v84);
                    v263 = sub_22E6F3970();
                    sub_22E6CFBBC(v263, v264);
                    v265 = sub_22E6F39CC();
                    sub_22E6CFBBC(v265, v266);
                    sub_22E6CFBBC(v311, v312);
                    v267 = sub_22E6F3838();
                    sub_22E6CFBBC(v267, v268);
                    v269 = v256;
                    v14 = v305;
                    sub_22E6CFBBC(v269, v257);
                    if (v262)
                    {
                      goto LABEL_168;
                    }
                  }

                  goto LABEL_91;
              }

              break;
            case 2uLL:
              v87 = *(v38 + 16);
              v86 = *(v38 + 24);
              v50 = __OFSUB__(v86, v87);
              v85 = v86 - v87;
              if (!v50)
              {
                goto LABEL_77;
              }

              goto LABEL_173;
            case 3uLL:
              if (v81)
              {
                goto LABEL_167;
              }

              goto LABEL_89;
            default:
              v85 = BYTE6(v314);
              goto LABEL_77;
          }

LABEL_91:
          v105 = v316[10];
          v106 = &v13[v105];
          v107 = (v9 + v105);
          v108 = *&v13[v105] == *(v9 + v105) && *&v13[v105 + 8] == *(v9 + v105 + 8);
          if (!v108 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_168;
          }

          v109 = *(v106 + 2) == v107[2] && *(v106 + 3) == v107[3];
          if (!v109 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_168;
          }

          v110 = *(v106 + 4) == v107[4] && *(v106 + 5) == v107[5];
          if (!v110 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_168;
          }

          v111 = *(type metadata accessor for Credential(0) + 28);
          v112 = static Date.== infix(_:_:)();
          sub_22E6F3700(v9, type metadata accessor for AssetUploadRequest);
          sub_22E6F3700(v13, type metadata accessor for AssetUploadRequest);
          if ((v112 & 1) == 0)
          {
            goto LABEL_169;
          }

          v17 += v309;
          v16 += v309;
          if (!--v14)
          {
            goto LABEL_169;
          }

          continue;
        }

LABEL_167:
        v293 = sub_22E6F3970();
        sub_22E6CFBBC(v293, v294);
        v295 = sub_22E6F3A84();
        sub_22E6CFBBC(v295, v296);
        sub_22E6CFBBC(v311, v312);
        v297 = sub_22E6F3838();
        sub_22E6CFBBC(v297, v298);
LABEL_168:
        sub_22E6F3700(v9, type metadata accessor for AssetUploadRequest);
        sub_22E6F3700(v13, type metadata accessor for AssetUploadRequest);
LABEL_169:
        v299 = *MEMORY[0x277D85DE8];
        sub_22E6EB538();
        return;
    }
  }
}

uint64_t sub_22E6F0D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudAssets_Asset(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_22E6F38F4();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      sub_22E6F38E4(v10);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v18 = *(v17 + 72);
      do
      {
        sub_22E6F3698(v15, v12, type metadata accessor for CloudAssets_Asset);
        sub_22E6F3698(v16, v8, type metadata accessor for CloudAssets_Asset);
        sub_22E6F3AB0();
        sub_22E6E58AC();
        v20 = v19;
        sub_22E6F3700(v8, type metadata accessor for CloudAssets_Asset);
        sub_22E6F3700(v12, type metadata accessor for CloudAssets_Asset);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v16 += v18;
        v15 += v18;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

void sub_22E6F0F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22E6EB570();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for CloudAssets_Signal.Event(0);
  v27 = sub_22E6F3904(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  sub_22E6F38F4();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v36 = &a9 - v35;
  v37 = *(v25 + 16);
  if (v37 == *(v23 + 16) && v37 && v25 != v23)
  {
    sub_22E6F38E4(v34);
    v39 = v25 + v38;
    v40 = v23 + v38;
    v42 = *(v41 + 72);
    while (1)
    {
      v43 = sub_22E6F3798();
      sub_22E6F3698(v43, v44, v45);
      v46 = sub_22E6F3844();
      sub_22E6F3698(v46, v47, v48);
      v49 = *v36;
      v50 = *v32;
      if (v36[8])
      {
        v49 = *v36 != 0;
      }

      if (*(v32 + 8) == 1)
      {
        if (v50)
        {
          if (v49 != 1)
          {
            break;
          }
        }

        else if (v49)
        {
          break;
        }
      }

      else if (v49 != v50)
      {
        break;
      }

      if (*(v36 + 2) != *(v32 + 16))
      {
        break;
      }

      v51 = *(v26 + 24);
      type metadata accessor for UnknownStorage();
      sub_22E6F3650(&qword_27DA6CC78, MEMORY[0x277D216C8]);
      v52 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_22E6F3700(v32, type metadata accessor for CloudAssets_Signal.Event);
      sub_22E6F3700(v36, type metadata accessor for CloudAssets_Signal.Event);
      if (v52)
      {
        v40 += v42;
        v39 += v42;
        if (--v37)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    sub_22E6F3700(v32, type metadata accessor for CloudAssets_Signal.Event);
    v53 = sub_22E6F382C();
    sub_22E6F3700(v53, v54);
  }

LABEL_20:
  sub_22E6EB538();
}

uint64_t sub_22E6F1190(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7165526863746162 && a2 == 0xED00007374736575;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65526D6165727473 && a2 == 0xEE00737473657571)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22E6F1268(char a1)
{
  if (a1)
  {
    return 0x65526D6165727473;
  }

  else
  {
    return 0x7165526863746162;
  }
}

uint64_t sub_22E6F12B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22E6F1354@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E6CFE14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22E6F1380(uint64_t a1)
{
  v2 = sub_22E6F190C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F13BC(uint64_t a1)
{
  v2 = sub_22E6F190C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F1400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E6F1190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E6F1428(uint64_t a1)
{
  v2 = sub_22E6F1864();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F1464(uint64_t a1)
{
  v2 = sub_22E6F1864();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E6F14A0(uint64_t a1)
{
  v2 = sub_22E6F18B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E6F14DC(uint64_t a1)
{
  v2 = sub_22E6F18B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadRequestMessage.encode(to:)(void *a1)
{
  v3 = sub_22E6CF1CC(&qword_27DA6CCC8, &qword_22E7286B0);
  v4 = sub_22E6CF988(v3);
  v39 = v5;
  v40 = v4;
  v7 = *(v6 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = sub_22E6CF1CC(&qword_27DA6CCD0, &qword_22E7286B8);
  v12 = sub_22E6CF988(v11);
  v37 = v13;
  v38 = v12;
  v15 = *(v14 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v42 = sub_22E6CF1CC(&qword_27DA6CCD8, &qword_22E7286C0);
  sub_22E6CF988(v42);
  v20 = v19;
  v22 = *(v21 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v23);
  v41 = *v1;
  v24 = *(v1 + 8);
  v25 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6F1864();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v24)
  {
    LOBYTE(v43) = 1;
    sub_22E6F18B8();
    sub_22E6F3B1C();
    v43 = v41;
    sub_22E6CF1CC(&qword_27DA6CCF0, &qword_22E7286C8);
    sub_22E6F3878();
    sub_22E6F2F84(v26, v27);
    v28 = v40;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v39 + 8))(v10, v28);
  }

  else
  {
    LOBYTE(v43) = 0;
    sub_22E6F190C();
    sub_22E6F3B1C();
    v43 = v41;
    sub_22E6CF1CC(&qword_27DA6CCF0, &qword_22E7286C8);
    sub_22E6F3878();
    sub_22E6F2F84(v29, v30);
    v31 = v38;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v37 + 8))(v18, v31);
  }

  v32 = *(v20 + 8);
  v33 = sub_22E6F3798();
  return v34(v33);
}

unint64_t sub_22E6F1864()
{
  result = qword_27DA6CCE0;
  if (!qword_27DA6CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CCE0);
  }

  return result;
}

unint64_t sub_22E6F18B8()
{
  result = qword_27DA6CCE8;
  if (!qword_27DA6CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CCE8);
  }

  return result;
}

unint64_t sub_22E6F190C()
{
  result = qword_27DA6CD00;
  if (!qword_27DA6CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6CD00);
  }

  return result;
}

uint64_t DownloadRequestMessage.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  MEMORY[0x2318ECB90](*(v1 + 8));

  return sub_22E6F2604(a1, v3);
}

Swift::Int DownloadRequestMessage.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v2);
  sub_22E6F2604(v4, v1);
  return Hasher._finalize()();
}

void DownloadRequestMessage.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_22E6CF1CC(&qword_27DA6CD08, &qword_22E7286D0);
  v57 = sub_22E6CF988(v3);
  v58 = v4;
  v6 = *(v5 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22E6CF1CC(&qword_27DA6CD10, &qword_22E7286D8);
  sub_22E6CF988(v8);
  v56 = v9;
  v11 = *(v10 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v12);
  v14 = v55 - v13;
  v15 = sub_22E6CF1CC(&qword_27DA6CD18, &unk_22E7286E0);
  sub_22E6CF988(v15);
  v59 = v16;
  v18 = *(v17 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v19);
  v21 = v55 - v20;
  v22 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E6F1864();
  v23 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    goto LABEL_10;
  }

  v55[2] = v8;
  v55[3] = v14;
  v61 = a1;
  v24 = v60;
  v25 = KeyedDecodingContainer.allKeys.getter();
  sub_22E6F2500(v25, 0);
  if (v28 == v29 >> 1)
  {
    v30 = v21;
LABEL_9:
    v39 = type metadata accessor for DecodingError();
    swift_allocError();
    v41 = v40;
    v42 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v41 = &type metadata for DownloadRequestMessage;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v59 + 8))(v30, v15);
    a1 = v61;
LABEL_10:
    sub_22E6CF2F4(a1);
    return;
  }

  v55[1] = 0;
  if (v28 >= (v29 >> 1))
  {
    __break(1u);
  }

  else
  {
    v31 = *(v27 + v28);
    sub_22E6F35D4(v28 + 1, v29 >> 1, v26, v27, v28, v29);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 != v35 >> 1)
    {
      v30 = v21;
      goto LABEL_9;
    }

    v36 = v31;
    if (v31)
    {
      LODWORD(v56) = v31;
      LOBYTE(v62) = 1;
      sub_22E6F18B8();
      sub_22E6F3B3C();
      sub_22E6CF1CC(&qword_27DA6CCF0, &qword_22E7286C8);
      sub_22E6F3890();
      sub_22E6F2F84(v37, v38);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v45 = *(v58 + 8);
      v46 = sub_22E6F397C();
      v47(v46);
      v48 = sub_22E6F3918();
      v49(v48);
      v50 = v62;
      v36 = v56;
    }

    else
    {
      LOBYTE(v62) = 0;
      sub_22E6F190C();
      sub_22E6F3B3C();
      sub_22E6CF1CC(&qword_27DA6CCF0, &qword_22E7286C8);
      sub_22E6F3890();
      sub_22E6F2F84(v43, v44);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v51 = sub_22E6F3A70();
      v52(v51);
      v53 = sub_22E6F3918();
      v54(v53);
      v50 = v62;
      v24 = v60;
    }

    *v24 = v50;
    *(v24 + 8) = v36;
    sub_22E6CF2F4(v61);
  }
}

Swift::Int sub_22E6F1FB4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v2);
  sub_22E6F2604(v4, v1);
  return Hasher._finalize()();
}

void sub_22E6F2044(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      v7 = sub_22E6F239C(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v7 = 1;
LABEL_10:
        *a4 = v7 & 1;
        v10 = *MEMORY[0x277D85DE8];
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a2;
      v12 = a3;
      v13 = BYTE2(a3);
      v14 = BYTE3(a3);
      v15 = BYTE4(a3);
      v16 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v7 = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      goto LABEL_10;
  }
}

uint64_t sub_22E6F21B0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = result;
  switch(a2 >> 62)
  {
    case 1uLL:
      v16 = result >> 32;
      if (result >> 32 >= result)
      {
        v17 = result;
        sub_22E6CFB64(a3, a4);
        v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
        v13 = v17;
        v14 = v16;
        goto LABEL_8;
      }

      __break(1u);
      return result;
    case 2uLL:
      v11 = *(result + 16);
      v10 = *(result + 24);
      sub_22E6CFB64(a3, a4);
      v12 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v13 = v11;
      v14 = v10;
LABEL_8:
      v15 = sub_22E6F22D0(v13, v14, v12, a3, a4);
      goto LABEL_9;
    case 3uLL:
      sub_22E6CFB64(a3, a4);
      v9 = 0;
      v8 = 0;
      goto LABEL_5;
    default:
      sub_22E6CFB64(a3, a4);
      v8 = a2 & 0xFFFFFFFFFFFFFFLL;
      v9 = v7;
LABEL_5:
      v15 = sub_22E6F2454(v9, v8, a3, a4);
LABEL_9:
      v18 = v15;
      sub_22E6CFBBC(a3, a4);
      return v18 & 1;
  }
}

uint64_t sub_22E6F22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x2318EBFC0]();
  sub_22E6F2044(v11, a4, a5, &v13);
  sub_22E6CFBBC(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return v12 & 1;
}

uint64_t sub_22E6F239C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = MEMORY[0x2318EBFC0]();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t sub_22E6F2454(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  __s1 = a1;
  v13 = WORD2(a2);
  v12 = a2;
  sub_22E6F2044(&__s1, a3, a4, &v10);
  sub_22E6CFBBC(a3, a4);
  if (!v4)
  {
    v7 = v10;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void sub_22E6F2500(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22E6F37A4();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_22E6F2538(uint64_t a1, uint64_t a2)
{
  sub_22E6F3ABC(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      if (*v4)
      {
        MEMORY[0x2318ECB90](1);
      }

      else
      {
        v5 = *(v4 - 1);
        MEMORY[0x2318ECB90](0);
        MEMORY[0x2318ECBB0](v5);
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

void sub_22E6F259C(uint64_t a1, uint64_t a2)
{
  sub_22E6F3ABC(a1, a2);
  if (v2)
  {
    v4 = (v3 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      String.hash(into:)();

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_22E6F2604(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AssetDownloadRequest();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x2318ECB90](v8);
  if (v8)
  {
    v10 = v3[6];
    v64 = &v7[v3[5]];
    v65 = v10;
    v11 = &v7[v3[7]];
    v12 = type metadata accessor for Asset.ID(0);
    v13 = v12[6];
    v62 = &v11[v12[5]];
    v61 = &v11[v13];
    v60 = &v11[v12[7]];
    v14 = type metadata accessor for Asset(0);
    v15 = *(v14 + 20);
    v16 = *(v14 + 24);
    v63 = v11;
    v58 = &v11[v15];
    v59 = v16;
    v17 = v3[9];
    v56 = &v7[v3[8]];
    v57 = v17;
    v18 = &v7[v3[10]];
    v19 = *(type metadata accessor for Credential(0) + 28);
    v20 = v3[12];
    v54 = &v7[v3[11]];
    v55 = v19;
    v53 = &v7[v20];
    v21 = &v7[v3[13]];
    v22 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v51 = *(v4 + 72);
    v52 = v21;
    v66 = v7;
    do
    {
      v67 = v8;
      sub_22E6F3698(v22, v7, type metadata accessor for AssetDownloadRequest);
      type metadata accessor for UUID();
      sub_22E6F3650(&qword_27DA6C5F0, MEMORY[0x277CC95F0]);
      dispatch thunk of Hashable.hash(into:)();
      v23 = *v64;
      v24 = *(v64 + 1);
      String.hash(into:)();
      type metadata accessor for URL();
      sub_22E6F3650(&qword_27DA6C5F8, MEMORY[0x277CC9260]);
      dispatch thunk of Hashable.hash(into:)();
      v25 = v63;
      dispatch thunk of Hashable.hash(into:)();
      v26 = *v62;
      v27 = *(v62 + 1);
      String.hash(into:)();
      v28 = *v61;
      v29 = *(v61 + 1);
      Data.hash(into:)();
      v30 = *v60;
      v31 = *(v60 + 1);
      Data.hash(into:)();
      v32 = *v58;
      v33 = *(v58 + 1);
      v35 = *(v58 + 2);
      v34 = *(v58 + 3);
      sub_22E6CFB64(v35, v34);
      Data.hash(into:)();
      Data.hash(into:)();
      sub_22E6CFBBC(v35, v34);
      MEMORY[0x2318ECB90](*&v25[v59]);
      if (v56[16] == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v37 = *v56;
        v36 = *(v56 + 1);
        Hasher._combine(_:)(1u);
        MEMORY[0x2318ECB90](v37);
        MEMORY[0x2318ECB90](v36);
      }

      v7 = v66;
      dispatch thunk of Hashable.hash(into:)();
      v38 = *v18;
      v39 = *(v18 + 1);
      String.hash(into:)();
      v40 = *(v18 + 2);
      v41 = *(v18 + 3);
      String.hash(into:)();
      v42 = *(v18 + 4);
      v43 = *(v18 + 5);
      String.hash(into:)();
      type metadata accessor for Date();
      sub_22E6F3650(&qword_27DA6C768, MEMORY[0x277CC9578]);
      dispatch thunk of Hashable.hash(into:)();
      v44 = *v54;
      v45 = *(v54 + 1);
      Data.hash(into:)();
      v46 = *v53;
      v47 = *(v53 + 1);
      Data.hash(into:)();
      v48 = v67;
      if (*(v52 + 1))
      {
        v49 = *v52;
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = sub_22E6F3700(v7, type metadata accessor for AssetDownloadRequest);
      v22 += v51;
      v8 = v48 - 1;
    }

    while (v8);
  }

  return result;
}