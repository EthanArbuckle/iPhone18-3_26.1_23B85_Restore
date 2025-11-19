uint64_t sub_1A8897764(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A88C72E8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A8716570;

  return sub_1A8897338(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t IMRemoteIntentFilePersistenceManager.touchFilePaths(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  sub_1A88C8788();
  v10 = sub_1A88C87A8();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = v3;

  sub_1A8865C1C(0, 0, v9, &unk_1A88F8FD0, v11);

  return sub_1A85EF638(v9, &unk_1EB3090D0);
}

uint64_t sub_1A8897C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = sub_1A8897D20;

  return sub_1A8896C7C();
}

uint64_t sub_1A8897D20(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A8897E20, 0, 0);
}

uint64_t sub_1A8897E20()
{
  if (*(v0 + 56))
  {
    if (qword_1EB302380 != -1)
    {
      swift_once();
    }

    v1 = qword_1EB309050;

    return MEMORY[0x1EEE6DFA0](sub_1A8897EF8, v1, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1A8897EF8()
{
  sub_1A88885D8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6DFA0](sub_1A889B0C0, 0, 0);
}

uint64_t sub_1A8897F70(uint64_t a1)
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
  v10[1] = sub_1A8716570;

  return sub_1A8897C88(a1, v4, v5, v6, v7, v9, v8);
}

id IMRemoteIntentFilePersistenceManager.init()()
{
  *(v0 + OBJC_IVAR___IMRemoteIntentFilePersistenceManager__manifest) = 0;
  v2.super_class = IMRemoteIntentFilePersistenceManager;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1A889827C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  if (qword_1EB302348 != -1)
  {
    swift_once();
  }

  v11 = sub_1A88C7E58();
  sub_1A85EF0E4(v11, qword_1EB308C58);

  v12 = sub_1A88C7E38();
  v13 = sub_1A88C89B8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315394;
    *(v14 + 4) = sub_1A85F0394(a1, a2, &v26);
    *(v14 + 12) = 2080;
    sub_1A88C72E8();
    sub_1A87173B4(&qword_1EB303178);
    v15 = sub_1A88C8908();
    v17 = v4;
    v18 = a1;
    v19 = sub_1A85F0394(v15, v16, &v26);

    *(v14 + 14) = v19;
    a1 = v18;
    v4 = v17;
    _os_log_impl(&dword_1A85E5000, v12, v13, "manifestDidEvictGUID: %s with files: %s", v14, 0x16u);
    v20 = v25;
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v20, -1, -1);
    MEMORY[0x1AC571F20](v14, -1, -1);
  }

  v21 = sub_1A88C87A8();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v4;
  v22[5] = a3;
  v22[6] = a1;
  v22[7] = a2;

  v23 = v4;
  sub_1A885A178(0, 0, v10, &unk_1A88F9030, v22);
}

uint64_t sub_1A8898550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_1A8898608;

  return sub_1A88987F8(a5, a6, a7);
}

uint64_t sub_1A8898608()
{

  return MEMORY[0x1EEE6DFA0](sub_1A8898704, 0, 0);
}

uint64_t sub_1A8898704()
{
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A8898798, v0, 0);
}

uint64_t sub_1A8898798()
{
  sub_1A889A6A4(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1A88987F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB309050;
  v4[8] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A8898898, v5, 0);
}

uint64_t sub_1A8898898()
{
  v0[9] = *(*(sub_1A870CCE0(&unk_1EB309060) - 8) + 64);
  v1 = swift_task_alloc();
  v0[10] = v1;
  if (qword_1EB302388 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1A88989A8;
  v3 = v0[5];
  v4 = v0[6];

  return sub_1A88A9364(v1, v3, v4);
}

uint64_t sub_1A88989A8()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A8898AB8, v1, 0);
}

uint64_t sub_1A8898AB8()
{
  v32 = v0;
  v0[2] = v0[4];
  v1 = v0[10];
  v2 = sub_1A88C72E8();
  v0[12] = v2;
  v3 = *(v2 - 8);
  v4 = v3;
  v0[13] = v3;
  v0[14] = *(v3 + 64);
  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = swift_task_alloc();
  sub_1A8854C88(v1, v6);
  if ((*(v4 + 48))(v6, 1, v2) == 1)
  {

    sub_1A85EF638(v6, &unk_1EB309060);

    if (qword_1EB302348 != -1)
    {
LABEL_23:
      swift_once();
    }

    v7 = sub_1A88C7E58();
    sub_1A85EF0E4(v7, qword_1EB308C58);

    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89B8();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[5];
      v10 = v0[6];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1A85F0394(v11, v10, &v31);
      *(v12 + 12) = 2080;
      sub_1A87173B4(&qword_1EB303178);
      v14 = sub_1A88C8908();
      v16 = sub_1A85F0394(v14, v15, &v31);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1A85E5000, v8, v9, "Deleting evicted file paths for guid: %s, files: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v13, -1, -1);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }

    v17 = v0[13];
    v18 = v0[2];
    v19 = -1 << *(v18 + 32);
    if (-v19 < 64)
    {
      v20 = ~(-1 << -v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v18 + 56);
    v22 = swift_task_alloc();
    v23 = 0;
    v24 = (63 - v19) >> 6;
    if (v21)
    {
      while (1)
      {
        v25 = v23;
LABEL_14:
        v26 = v0[12];
        v27 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        (*(v17 + 16))(v22, *(v18 + 48) + *(v17 + 72) * (v27 | (v25 << 6)), v26);
        sub_1A889A23C(v22);
        (*(v17 + 8))(v22, v26);
        if (!v21)
        {
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
LABEL_10:
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v25 >= v24)
      {
        break;
      }

      v21 = *(v18 + 56 + 8 * v25);
      ++v23;
      if (v21)
      {
        v23 = v25;
        goto LABEL_14;
      }
    }

    sub_1A85EF638(v0[10], &unk_1EB309060);

    v30 = v0[1];

    return v30();
  }

  else
  {
    (*(v4 + 32))(v5, v6, v2);

    v28 = swift_task_alloc();
    v0[16] = v28;
    *v28 = v0;
    v28[1] = sub_1A8898F80;

    return sub_1A8896C7C();
  }
}

uint64_t sub_1A8898F80(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A8899098, v2, 0);
}

uint64_t sub_1A8899098()
{
  v56 = v0;
  v1 = &unk_1EB302000;
  if (v0[17] && ((v3 = v0[5], v2 = v0[6], , v4 = _s17IMSharedUtilities34RemoteIntentFilePersistedNodeStoreCyAA0cde4ListG0CSgSScig_0(v3, v2), , !v4) ? (, v8 = MEMORY[0x1E69E7CD0]) : (v5 = sub_1A889B068(), v6 = *(v5 + 104), v7 = type metadata accessor for RemoteIntentFileListNode(0), v6(v7, v5), , , v8 = v0[3]), v9 = sub_1A88BB130(v0[15], v8), , (v9 & 1) != 0))
  {
    if (qword_1EB302348 != -1)
    {
      swift_once();
    }

    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[13];
    v13 = sub_1A88C7E58();
    sub_1A85EF0E4(v13, qword_1EB308C58);
    v14 = swift_task_alloc();
    (*(v12 + 16))(v14, v10, v11);
    v15 = sub_1A88C7E38();
    v16 = sub_1A88C89D8();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[12];
    v18 = v0[13];
    if (v17)
    {
      v20 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v55 = v53;
      *v20 = 136315394;
      *(v20 + 4) = sub_1A85F0394(0xD000000000000019, 0x80000001A8920A60, &v55);
      *(v20 + 12) = 2080;
      sub_1A87173B4(&qword_1EB304508);
      v21 = v16;
      v22 = sub_1A88C9348();
      v24 = v23;
      v25 = *(v18 + 8);
      v25(v14, v19);
      v26 = sub_1A85F0394(v22, v24, &v55);
      v1 = &unk_1EB302000;

      *(v20 + 14) = v26;
      _os_log_impl(&dword_1A85E5000, v15, v21, "%s url was in progress when manifest evicted it, we will not delete it: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v53, -1, -1);
      MEMORY[0x1AC571F20](v20, -1, -1);
    }

    else
    {

      v25 = *(v18 + 8);
      v25(v14, v19);
    }

    v0 = v54;
    v27 = v54[15];
    v28 = v54[12];

    v29 = swift_task_alloc();
    sub_1A8899AE4(v27, v29);
    sub_1A85EF638(v29, &unk_1EB309060);
    v25(v27, v28);
  }

  else
  {
    (*(v0[13] + 8))(v0[15], v0[12]);
  }

  if (v1[105] != -1)
  {
LABEL_31:
    swift_once();
  }

  v30 = sub_1A88C7E58();
  sub_1A85EF0E4(v30, qword_1EB308C58);

  v31 = sub_1A88C7E38();
  v32 = sub_1A88C89B8();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = v0[5];
    v33 = v0[6];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_1A85F0394(v34, v33, &v55);
    *(v35 + 12) = 2080;
    sub_1A87173B4(&qword_1EB303178);
    v37 = sub_1A88C8908();
    v39 = sub_1A85F0394(v37, v38, &v55);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_1A85E5000, v31, v32, "Deleting evicted file paths for guid: %s, files: %s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v36, -1, -1);
    MEMORY[0x1AC571F20](v35, -1, -1);
  }

  v40 = v0[13];
  v41 = v0[2];
  v42 = -1 << *(v41 + 32);
  if (-v42 < 64)
  {
    v43 = ~(-1 << -v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(v41 + 56);
  v45 = swift_task_alloc();
  v46 = 0;
  v47 = (63 - v42) >> 6;
  v0 = (v40 + 16);
  if (v44)
  {
    while (1)
    {
      v48 = v46;
LABEL_25:
      v49 = v54[12];
      v50 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
      (*(v40 + 16))(v45, *(v41 + 48) + *(v40 + 72) * (v50 | (v48 << 6)), v49);
      sub_1A889A23C(v45);
      (*(v40 + 8))(v45, v49);
      if (!v44)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
LABEL_21:
    v48 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v48 >= v47)
    {
      break;
    }

    v44 = *(v41 + 56 + 8 * v48);
    ++v46;
    if (v44)
    {
      v46 = v48;
      goto LABEL_25;
    }
  }

  sub_1A85EF638(v54[10], &unk_1EB309060);

  v51 = v54[1];

  return v51();
}

unint64_t type metadata accessor for IMRemoteIntentFilePersistenceManager()
{
  result = qword_1EB308C78;
  if (!qword_1EB308C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB308C78);
  }

  return result;
}

uint64_t sub_1A8899748(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A88C72E8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A8714B6C;

  return sub_1A8897338(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1A8899884()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1A88998D4(uint64_t a1)
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
  v10[1] = sub_1A8716570;

  return sub_1A8898550(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1A88999A8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1A88C9528();
  sub_1A88C8268();
  v6 = sub_1A88C9578();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A88C9398() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A87C2B08();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1A8899DB4(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1A8899AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1A88C72E8();
  v23 = v2;
  v5 = *v2;
  sub_1A87173B4(&qword_1EB303178);
  v31 = a1;
  v6 = sub_1A88C8228();
  v29 = v5 + 56;
  v30 = v5;
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  v9 = *(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8));
  v25 = *(v4 - 8);
  v26 = v4 - 8;
  if (((v9 >> v8) & 1) == 0)
  {
    return (*(v25 + 56))(v24, 1, 1, v4);
  }

  v27 = ~v7;
  v10 = *(v25 + 64);
  v28 = *(v25 + 72);
  v11 = *(v25 + 16);
  v22 = v25;
  v12 = (v25 + 8);
  while (1)
  {
    MEMORY[0x1EEE9AC00](v6);
    v13 = v28 * v8;
    v11(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), *(v30 + 48) + v28 * v8, v4);
    sub_1A87173B4(&qword_1EB303180);
    v14 = sub_1A88C8298();
    v6 = (*v12)(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    if (v14)
    {
      break;
    }

    v8 = (v8 + 1) & v27;
    if (((*(v29 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return (*(v25 + 56))(v24, 1, 1, v4);
    }
  }

  v16 = v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v16;
  v32 = *v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A87C2DB4();
    v18 = v32;
  }

  v19 = v22;
  v20 = v24;
  (*(v22 + 32))(v24, *(v18 + 48) + v13, v4);
  sub_1A8899F78(v8);
  *v16 = v32;
  return (*(v19 + 56))(v20, 0, 1, v4);
}

unint64_t sub_1A8899DB4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1A88C8D08();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1A88C9528();

        sub_1A88C8268();
        v10 = sub_1A88C9578();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1A8899F78(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = v2;
    v9 = sub_1A88C8D08();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      v11 = sub_1A88C72E8();
      v40 = v11;
      v12 = *(v11 - 8);
      v13 = v12[2];
      v37 = v12 + 2;
      v38 = v13;
      v14 = v12[8];
      v15 = v12[9];
      v35 = v15;
      v36 = v14;
      v34 = (v12 + 1);
      v16 = v7;
      v39 = v4;
      do
      {
        MEMORY[0x1EEE9AC00](v11);
        v18 = v16;
        v19 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        v20 = v15 * v6;
        v21 = v40;
        v38(v19, *(v3 + 48) + v15 * v6, v40);
        v22 = v3;
        sub_1A87173B4(&qword_1EB303178);
        v23 = sub_1A88C8228();
        v24 = v19;
        v16 = v18;
        v11 = (*v34)(v24, v21);
        v25 = v23 & v18;
        if (v8 >= v10)
        {
          if (v25 >= v10 && v8 >= v25)
          {
LABEL_16:
            v3 = v22;
            v28 = *(v22 + 48);
            v15 = v35;
            v29 = v35 * v8;
            v11 = v28 + v35 * v8;
            if (v35 * v8 < v20 || v11 >= v28 + v20 + v35)
            {
              v11 = swift_arrayInitWithTakeFrontToBack();
              v8 = v6;
            }

            else
            {
              v8 = v6;
              if (v29 != v20)
              {
                v11 = swift_arrayInitWithTakeBackToFront();
                v8 = v6;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v10 || v8 >= v25)
        {
          goto LABEL_16;
        }

        v3 = v22;
        v15 = v35;
LABEL_5:
        v6 = (v6 + 1) & v18;
        v4 = v39;
      }

      while (((*(v39 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v8) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v30 = *(v3 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v32;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1A889A23C(uint64_t a1)
{
  v34[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  sub_1A88C72A8();
  v4 = sub_1A88C82A8();

  v5 = [v3 fileExistsAtPath_];

  if (v5)
  {
    v6 = [v2 defaultManager];
    v7 = sub_1A88C7238();
    v34[0] = 0;
    v8 = [v6 removeItemAtURL:v7 error:v34];

    v9 = v34[0];
    if (v8)
    {

      v10 = v9;
    }

    else
    {
      v33 = v34[0];
      v11 = v34[0];
      v12 = sub_1A88C7168();

      swift_willThrow();
      if (qword_1EB302348 != -1)
      {
        swift_once();
      }

      v13 = sub_1A88C7E58();
      sub_1A85EF0E4(v13, qword_1EB308C58);
      v14 = sub_1A88C72E8();
      v15 = *(v14 - 8);
      MEMORY[0x1EEE9AC00](v14);
      v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v17, a1, v14);
      v18 = v12;
      v19 = sub_1A88C7E38();
      v20 = sub_1A88C89C8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v33 = &v31;
        v22 = v21;
        v23 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v34[0] = v32;
        *v22 = 136315650;
        *(v22 + 4) = sub_1A85F0394(0x5F286574656C6564, 0xEA0000000000293ALL, v34);
        *(v22 + 12) = 2080;
        sub_1A87173B4(&qword_1EB304508);
        v24 = sub_1A88C9348();
        v26 = v25;
        (*(v15 + 8))(v17, v14);
        v27 = sub_1A85F0394(v24, v26, v34);

        *(v22 + 14) = v27;
        *(v22 + 22) = 2112;
        v28 = v12;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 24) = v29;
        *v23 = v29;
        _os_log_impl(&dword_1A85E5000, v19, v20, "%s Error attempting to remove file: %s. Error: %@", v22, 0x20u);
        sub_1A85EF638(v23, &qword_1EB306540);
        MEMORY[0x1AC571F20](v23, -1, -1);
        v30 = v32;
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v30, -1, -1);
        MEMORY[0x1AC571F20](v22, -1, -1);
      }

      else
      {

        (*(v15 + 8))(v17, v14);
      }
    }
  }
}

void sub_1A889A6A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A88C72E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A870CCE0(&unk_1EB309060);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v58 - v9;
  if (qword_1EB302388 != -1)
  {
    swift_once();
  }

  v11 = off_1EB309058;
  if (!swift_unknownObjectWeakLoadStrong() || (v12 = v11[10], ObjectType = swift_getObjectType(), v14 = (*(v12 + 8))(a1, a2, ObjectType, v12), swift_unknownObjectRelease(), !v14))
  {
    (*(v5 + 56))(v10, 1, 1, v4);
LABEL_10:
    sub_1A85EF638(v10, &unk_1EB309060);
    if (qword_1EB302348 != -1)
    {
      swift_once();
    }

    v19 = sub_1A88C7E58();
    sub_1A85EF0E4(v19, qword_1EB308C58);

    v20 = sub_1A88C7E38();
    v21 = sub_1A88C89B8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v63 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A8920A40, &v63);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1A85F0394(a1, a2, &v63);
      _os_log_impl(&dword_1A85E5000, v20, v21, "%s Did not find an original file transfer URL for guid: %s. Skipping search for previews.", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v23, -1, -1);
      MEMORY[0x1AC571F20](v22, -1, -1);
    }

    return;
  }

  v15 = [v14 localURL];
  v16 = MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16)
  {
    v18 = v16;
    sub_1A88C7288();

    (*(v5 + 56))(v17, 0, 1, v4);
  }

  else
  {

    (*(v5 + 56))(v17, 1, 1, v4);
  }

  sub_1A8859EE0(v17, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    goto LABEL_10;
  }

  v24 = v62;
  (*(v5 + 32))(v62, v10, v4);
  v25 = IMPreviewExtension();
  if (!v25)
  {
    if (qword_1EB302348 != -1)
    {
      swift_once();
    }

    v46 = sub_1A88C7E58();
    sub_1A85EF0E4(v46, qword_1EB308C58);
    v47 = sub_1A88C7E38();
    v48 = sub_1A88C89C8();
    if (!os_log_type_enabled(v47, v48))
    {
      goto LABEL_31;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v63 = v50;
    *v49 = 136315138;
    *(v49 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A8920A40, &v63);
    _os_log_impl(&dword_1A85E5000, v47, v48, "%s Did not find a preview extension to use when looking for media object previews to delete.", v49, 0xCu);
    sub_1A85F1084(v50);
    MEMORY[0x1AC571F20](v50, -1, -1);
    v51 = v49;
    goto LABEL_30;
  }

  v26 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1A88C7238();
  v29 = IMAttachmentPreviewFileURL(v28, v26, 0);

  if (!v29)
  {
    if (qword_1EB302348 != -1)
    {
      swift_once();
    }

    v52 = sub_1A88C7E58();
    sub_1A85EF0E4(v52, qword_1EB308C58);

    v47 = sub_1A88C7E38();
    v53 = sub_1A88C89C8();

    v54 = os_log_type_enabled(v47, v53);
    v24 = v62;
    if (!v54)
    {
      goto LABEL_31;
    }

    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v63 = v56;
    *v55 = 136315394;
    *(v55 + 4) = sub_1A85F0394(0xD00000000000001FLL, 0x80000001A8920A40, &v63);
    *(v55 + 12) = 2080;
    *(v55 + 14) = sub_1A85F0394(a1, a2, &v63);
    _os_log_impl(&dword_1A85E5000, v47, v53, "%s Could not construct a preview URL for guid: %s.", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v56, -1, -1);
    v51 = v55;
LABEL_30:
    MEMORY[0x1AC571F20](v51, -1, -1);
LABEL_31:

    (*(v5 + 8))(v24, v4);
    return;
  }

  v61 = &v58;
  sub_1A88C7288();

  v30 = [objc_opt_self() defaultManager];
  sub_1A88C72A8();
  v31 = sub_1A88C82A8();

  v32 = [v30 fileExistsAtPath_];

  if (v32)
  {
    if (qword_1EB302348 != -1)
    {
      swift_once();
    }

    v33 = sub_1A88C7E58();
    v34 = sub_1A85EF0E4(v33, qword_1EB308C58);
    MEMORY[0x1EEE9AC00](v34);
    v35 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v35, v35, v4);

    v36 = sub_1A88C7E38();
    v37 = sub_1A88C89D8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v60 = &v58;
      v39 = v38;
      v59 = swift_slowAlloc();
      v63 = v59;
      *v39 = 136315394;
      *(v39 + 4) = sub_1A85F0394(a1, a2, &v63);
      *(v39 + 12) = 2080;
      sub_1A87173B4(&qword_1EB304508);
      v40 = sub_1A88C9348();
      v42 = v41;
      v43 = *(v5 + 8);
      v43(v35, v4);
      v44 = sub_1A85F0394(v40, v42, &v63);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_1A85E5000, v36, v37, "Deleting an additional preview url found during eviction for %s: %s", v39, 0x16u);
      v45 = v59;
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v45, -1, -1);
      MEMORY[0x1AC571F20](v39, -1, -1);
    }

    else
    {

      v43 = *(v5 + 8);
      v43(v35, v4);
    }

    v57 = v62;
    sub_1A889A23C(v27);
  }

  else
  {
    v43 = *(v5 + 8);
    v57 = v62;
  }

  v43(v27, v4);
  v43(v57, v4);
}

unint64_t sub_1A889B068()
{
  result = qword_1EB3048D8;
  if (!qword_1EB3048D8)
  {
    type metadata accessor for RemoteIntentFileListNode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3048D8);
  }

  return result;
}

uint64_t static RemoteIntentMirrorFileRepresentation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1A88C7278() & 1) != 0 && (v4 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0), (sub_1A88C7B18()) && ((v5 = *(v4 + 24), v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), v9 || (sub_1A88C9398()))
  {
    v10 = *(a1 + *(v4 + 28)) ^ *(a2 + *(v4 + 28)) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1A889B274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return sub_1A889B5B4(v6, a2);
}

double RemoteIntentRequestAttachments<>.intentRepresentation(contextID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  v12 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  return RemoteIntentRequestAttachmentsRepresentation.init(request:contextID:)(v9, v14, a2, a3, a4);
}

uint64_t sub_1A889B4CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A88C74B8();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);

  return sub_1A889BA68(v8, v6, a2);
}

uint64_t sub_1A889B5B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v4 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = v31 - v5;
  v6 = sub_1A870CCE0(&qword_1EB305898);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v31 - v13;
  v15 = sub_1A88C7B88();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v31[1] = v16 + 56;
  v32 = v17;
  v17(v14, 1, 1, v15);
  sub_1A8728D80(v14, v12, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v36 = sub_1A88C7A88();
  sub_1A85EF638(v14, &qword_1EB305898);
  v39[0] = 0;
  v39[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v35 = sub_1A88C7A88();
  v39[3] = &type metadata for RemoteIntentRequestAttachmentBroadcasts;
  v39[4] = sub_1A87648E8();
  v40 = a1;
  v18 = sub_1A88C7488();
  v20 = v19;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v21 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v21);
  (*(v23 + 104))(v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v2)
  {
    v24 = sub_1A88C74B8();
    (*(*(v24 - 8) + 8))(v40, v24);

    sub_1A87B4964(v39);
  }

  else
  {

    v26 = sub_1A88C7D78();
    (*(*(v26 - 8) + 56))(v33, 1, 1, v26);

    sub_1A88C7B38();
    v32(v9, 0, 1, v15);
    sub_1A8728D80(v9, v14, &qword_1EB305898);
    v27 = v36;
    sub_1A88C7AB8();
    sub_1A85EF638(v9, &qword_1EB305898);
    v37 = v18;
    v38 = v20;
    v28 = v35;
    sub_1A88C7AB8();
    v29 = sub_1A88C74B8();
    (*(*(v29 - 8) + 8))(v40, v29);
    result = sub_1A87B4964(v39);
    v30 = v34;
    *v34 = v27;
    v30[1] = v28;
  }

  return result;
}

uint64_t sub_1A889BA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v5 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35 = &v33 - v6;
  v7 = sub_1A870CCE0(&qword_1EB305898);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = sub_1A88C7B88();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v33 = v17 + 56;
  v34 = v18;
  v18(v15, 1, 1, v16);
  sub_1A8728D80(v15, v13, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v39 = sub_1A88C7A88();
  sub_1A85EF638(v15, &qword_1EB305898);
  v42[0] = 0;
  v42[1] = 0;
  sub_1A870CCE0(&qword_1EB3059B8);
  swift_allocObject();
  v38 = sub_1A88C7A88();
  v42[3] = &type metadata for TransferFilesWithGUIDsRequest;
  v42[4] = sub_1A87A8974();
  v42[0] = a1;
  v43 = a2;
  v19 = sub_1A88C7488();
  v21 = v20;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v22 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v22);
  (*(v24 + 104))(&v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  v25 = v37;
  sub_1A88C6E78();
  if (v25)
  {
    v26 = sub_1A88C74B8();
    (*(*(v26 - 8) + 8))(v43, v26);

    sub_1A87B4964(v42);
  }

  else
  {

    v28 = sub_1A88C7D78();
    (*(*(v28 - 8) + 56))(v35, 1, 1, v28);

    sub_1A88C7B38();
    v34(v10, 0, 1, v16);
    sub_1A8728D80(v10, v15, &qword_1EB305898);
    v29 = v39;
    sub_1A88C7AB8();
    sub_1A85EF638(v10, &qword_1EB305898);
    v40 = v19;
    v41 = v21;
    v30 = v38;
    sub_1A88C7AB8();
    v31 = sub_1A88C74B8();
    (*(*(v31 - 8) + 8))(v43, v31);
    result = sub_1A87B4964(v42);
    v32 = v36;
    *v36 = v29;
    v32[1] = v30;
  }

  return result;
}

double RemoteIntentRequestAttachmentsRepresentation.init(request:contextID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v40 = a5;
  v10 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v35 - v11;
  v12 = sub_1A870CCE0(&qword_1EB305898);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = sub_1A88C7B88();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v37 = v19 + 56;
  v38 = v20;
  v20(v17, 1, 1, v18);
  *&v43 = sub_1A889F200(v17);
  *(&v43 + 1) = sub_1A87B42E8();
  v21 = *(a4 + 8);
  v42[3] = a3;
  v42[4] = v21;
  v22 = sub_1A871E00C(v42);
  v23 = *(a3 - 8);
  v24 = *(v23 + 16);
  v46 = a1;
  v24(v22, a1, a3);
  v41 = a2;
  v36 = sub_1A88C7488();
  v26 = v25;
  sub_1A88C6E98();
  swift_allocObject();
  sub_1A88C6E88();
  v27 = sub_1A88C6E58();
  MEMORY[0x1EEE9AC00](v27);
  (*(v29 + 104))(&v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6967FC0]);
  sub_1A88C6E68();
  sub_1A877B7BC();
  sub_1A88C6E78();
  if (v5)
  {

    v30 = sub_1A88C74B8();
    (*(*(v30 - 8) + 8))(v41, v30);
    (*(v23 + 8))(v46, a3);
    sub_1A87B4964(v42);
  }

  else
  {

    v32 = sub_1A88C7D78();
    (*(*(v32 - 8) + 56))(v39, 1, 1, v32);

    v33 = v36;
    sub_1A88C7B38();
    v38(v15, 0, 1, v18);
    RemoteIntentRequestAttachmentsRepresentation.requestFile.setter(v15);
    v44 = v33;
    v45 = v26;
    sub_1A88C7AB8();
    v34 = sub_1A88C74B8();
    (*(*(v34 - 8) + 8))(v41, v34);
    (*(v23 + 8))(v46, a3);
    sub_1A87B4964(v42);
    result = *&v43;
    *v40 = v43;
  }

  return result;
}

uint64_t RemoteIntentMirrorFile.mirrorURL.setter(uint64_t a1)
{
  v3 = sub_1A88C72E8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RemoteIntentMirrorFile.dataURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemoteIntentMirrorFile(0) + 20);
  v4 = sub_1A88C72E8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RemoteIntentMirrorFile.transferGUID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RemoteIntentMirrorFile(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RemoteIntentMirrorFile.removedOnCompletion.setter(char a1)
{
  result = type metadata accessor for RemoteIntentMirrorFile(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t RemoteIntentMirrorFile.init(mirrorURL:dataURL:transferGUID:compressedFile:removedOnCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v14 = sub_1A88C72E8();
  v15 = *(*(v14 - 8) + 32);
  v15(a7, a1, v14);
  v16 = type metadata accessor for RemoteIntentMirrorFile(0);
  result = (v15)(a7 + v16[5], a2, v14);
  v18 = (a7 + v16[6]);
  *v18 = a3;
  v18[1] = a4;
  *(a7 + v16[7]) = a5;
  *(a7 + v16[8]) = a6;
  return result;
}

uint64_t RemoteIntentMirrorFile.toIntentFile()()
{
  v1 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(type metadata accessor for RemoteIntentMirrorFile(0) + 20);
  v5 = sub_1A88C72E8();
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + v4);
  v8 = sub_1A88C7D78();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  sub_1A88C6CC8();
  return sub_1A88C6CB8();
}

uint64_t sub_1A889C8C8()
{
  v1 = *v0;
  v2 = 0x5255726F7272696DLL;
  v3 = 0x726566736E617274;
  v4 = 0x73736572706D6F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4C525561746164;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A889C980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A88A016C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A889C9A8(uint64_t a1)
{
  v2 = sub_1A889F6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A889C9E4(uint64_t a1)
{
  v2 = sub_1A889F6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentMirrorFile.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308C80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  sub_1A870C278(a1, a1[3]);
  sub_1A889F6BC();
  sub_1A88C95C8();
  v13 = 0;
  sub_1A88C72E8();
  sub_1A87173B4(&qword_1EB304948);
  sub_1A88C92C8();
  if (!v1)
  {
    type metadata accessor for RemoteIntentMirrorFile(0);
    v12 = 1;
    sub_1A88C92C8();
    v11 = 2;
    sub_1A88C9278();
    v10 = 3;
    sub_1A88C9288();
    v9 = 4;
    sub_1A88C9288();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RemoteIntentMirrorFile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = sub_1A870CCE0(&qword_1EB308C90);
  v4 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v6 = v26 - v5;
  v7 = type metadata accessor for RemoteIntentMirrorFile(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A870C278(a1, a1[3]);
  sub_1A889F6BC();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v31 = a1;
  v32 = v4;
  v27 = v7;
  v29 = v9;
  v10 = sub_1A88C72E8();
  v30 = v26;
  v28 = *(v10 - 8);
  v11 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = 0;
  sub_1A87173B4(&qword_1EB3048C0);
  v13 = v34;
  sub_1A88C9158();
  v26[0] = *(v28 + 32);
  v26[1] = v28 + 32;
  v14 = (v26[0])(v29, v26 - v12, v10);
  v30 = v26;
  MEMORY[0x1EEE9AC00](v14);
  v15 = v26 - v12;
  v38 = 1;
  sub_1A88C9158();
  v16 = v27;
  v17 = v29;
  (v26[0])(&v29[v27[5]], v15, v10);
  v37 = 2;
  v30 = 0;
  v18 = sub_1A88C9108();
  v19 = v17;
  v20 = v31;
  v21 = v32;
  v22 = (v19 + v16[6]);
  *v22 = v18;
  v22[1] = v23;
  v36 = 3;
  *(v19 + v16[7]) = sub_1A88C9118() & 1;
  v35 = 4;
  v24 = sub_1A88C9118();
  (*(v21 + 8))(v6, v13);
  *(v19 + v16[8]) = v24 & 1;
  sub_1A889F710(v19, v33, type metadata accessor for RemoteIntentMirrorFile);
  sub_1A85F1084(v20);
  return sub_1A889F870(v19, type metadata accessor for RemoteIntentMirrorFile);
}

uint64_t _s17IMSharedUtilities22RemoteIntentMirrorFileV9mirrorURL10Foundation0H0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A88C72E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A889D1F8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_1A889D29C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t RemoteIntentMirrorFileRepresentation.hash(into:)()
{
  v0 = sub_1A88C7D78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A870CCE0(&qword_1EB3045E0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - v6;
  v7 = sub_1A88C72E8();
  v25 = sub_1A87173B4(&qword_1EB303178);
  sub_1A88C8238();
  type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  sub_1A88C8268();
  sub_1A88C9548();
  sub_1A88C7B78();
  sub_1A88C8268();

  v8 = sub_1A88C7B68();
  v31 = v1;
  v32 = v0;
  if (v9)
  {
    sub_1A88C9548();
  }

  else
  {
    v10 = v8;
    sub_1A88C9548();
    MEMORY[0x1AC56FE20](v10);
  }

  v11 = sub_1A870CCE0(&unk_1EB309060);
  v28 = &v25;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = sub_1A88C7B58();
  v27 = &v25;
  MEMORY[0x1EEE9AC00](v14);
  sub_1A8728D80(&v25 - v13, &v25 - v13, &unk_1EB309060);
  v15 = *(v7 - 8);
  v16 = (*(v15 + 48))(&v25 - v13, 1, v7);
  if (v16 == 1)
  {
    sub_1A88C9548();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v16);
    v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 32))(v18, &v25 - v13, v7);
    sub_1A88C9548();
    sub_1A88C8238();
    (*(v15 + 8))(v18, v7);
  }

  sub_1A85EF638(&v25 - v13, &unk_1EB309060);
  v19 = v32;
  v20 = v30;
  sub_1A88C7B48();
  v21 = v29;
  sub_1A8728D80(v20, v29, &qword_1EB3045E0);
  v22 = v31;
  if ((*(v31 + 48))(v21, 1, v19) == 1)
  {
    sub_1A88C9548();
  }

  else
  {
    v23 = v26;
    (*(v22 + 32))(v26, v21, v19);
    sub_1A88C9548();
    sub_1A889F954(&qword_1EB308C98, MEMORY[0x1E69E8450]);
    sub_1A88C8238();
    (*(v22 + 8))(v23, v19);
  }

  return sub_1A85EF638(v20, &qword_1EB3045E0);
}

uint64_t RemoteIntentMirrorFileRepresentation.hashValue.getter()
{
  sub_1A88C9528();
  RemoteIntentMirrorFileRepresentation.hash(into:)();
  return sub_1A88C9578();
}

uint64_t sub_1A889D83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1A88C7278() & 1) != 0 && (sub_1A88C7B18() & 1) != 0 && ((v6 = *(a3 + 24), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_1A88C9398()))
  {
    v11 = *(a1 + *(a3 + 28)) ^ *(a2 + *(a3 + 28)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1A889D8D4()
{
  sub_1A88C9528();
  RemoteIntentMirrorFileRepresentation.hash(into:)();
  return sub_1A88C9578();
}

uint64_t sub_1A889D918()
{
  sub_1A88C9528();
  RemoteIntentMirrorFileRepresentation.hash(into:)();
  return sub_1A88C9578();
}

uint64_t RemoteIntentRequestAttachmentRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_1A88C79C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EB308CA0;
  sub_1A870CCE0(qword_1EB3058B0);
  swift_allocObject();
  *(v1 + v7) = sub_1A88C7A68();
  v8 = qword_1EB308CA8;
  sub_1A870CCE0(&qword_1EB308CB0);
  swift_allocObject();
  *(v1 + v8) = sub_1A88C7A68();
  v9 = qword_1EB308CB8;
  sub_1A870CCE0(&qword_1EB308CC0);
  swift_allocObject();
  *(v1 + v9) = sub_1A88C7A68();
  v10 = qword_1EB308CC8;
  sub_1A870CCE0(&qword_1EB308CD0);
  swift_allocObject();
  *(v1 + v10) = sub_1A88C7A68();
  (*(v4 + 16))(v6, a1, v3);
  v11 = sub_1A88C7A28();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_1A889DB98()
{
}

uint64_t RemoteIntentRequestAttachmentRepresentation.deinit()
{
  v0 = sub_1A88C7A18();

  return v0;
}

uint64_t RemoteIntentRequestAttachmentRepresentation.__deallocating_deinit()
{
  sub_1A88C7A18();

  return swift_deallocClassInstance();
}

uint64_t sub_1A889DD10(uint64_t a1)
{
  v3 = sub_1A889F954(&qword_1EB308D10, type metadata accessor for RemoteIntentRequestAttachmentRepresentation);

  return MEMORY[0x1EEDEC120](a1, v1, v3);
}

uint64_t sub_1A889DD80()
{
  v1 = sub_1A889F954(&qword_1EB308D00, type metadata accessor for RemoteIntentRequestAttachmentRepresentation);

  return MEMORY[0x1EEDEBE30](v0, v1);
}

uint64_t sub_1A889DDE0(uint64_t a1)
{
  v3 = sub_1A889F954(&qword_1EB308D10, type metadata accessor for RemoteIntentRequestAttachmentRepresentation);

  return MEMORY[0x1EEDEC110](a1, v1, v3);
}

uint64_t sub_1A889DE6C()
{

  sub_1A88C7A78();
}

uint64_t sub_1A889DEBC()
{

  sub_1A88C7A78();

  return v1;
}

uint64_t RemoteIntentRequestAttachmentsOutputRepresentation.decodeResponse()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = sub_1A88C7B88();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  sub_1A870CCE0(&qword_1EB305898);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A889E028, 0, 0);
}

uint64_t sub_1A889E028()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  sub_1A889DE6C();
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[13];
  if (v4)
  {
    sub_1A85EF638(v0[13], &qword_1EB305898);
    sub_1A87B3B00();
    swift_allocError();
    *v6 = xmmword_1A88EA2E0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
    sub_1A85EF638(v5, &qword_1EB305898);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1A889E1D4;

    return MEMORY[0x1EEDEC0C0]();
  }
}

uint64_t sub_1A889E1D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[15] = a1;
  v5[16] = a2;
  v5[17] = v2;

  (*(v4[11] + 8))(v4[12], v4[10]);
  if (v2)
  {
    v6 = sub_1A87B3A2C;
  }

  else
  {
    v6 = sub_1A889E348;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1A889E348()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(*(*(AssociatedConformanceWitness + 8) + 8) + 24))(v3, v1, AssociatedTypeWitness);
  v6 = v2;
  if (v2)
  {
    sub_1A88C6E48();
    swift_allocObject();
    sub_1A88C6E38();
    v7 = *(sub_1A88C6E08() - 8);
    swift_task_alloc();
    (*(v7 + 104))();
    sub_1A88C6E18();

    sub_1A877B8B8();
    sub_1A88C6E28();
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);

    v14 = *(v0 + 32);
    v15 = *(v0 + 16);
    v10 = *(v0 + 48);
    sub_1A87B3B00();
    swift_allocError();
    *v11 = v15;
    *(v11 + 16) = v14;
    *(v11 + 32) = v10;
    swift_willThrow();

    sub_1A871CD60(v9, v8);
  }

  else
  {
    sub_1A871CD60(*(v0 + 120), *(v0 + 128));
  }

  v12 = *(v0 + 8);

  return v12();
}

void *RemoteIntentRequestAttachmentsOutputRepresentation.auxiliaryOutputRepresentation()()
{
  v0 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v41 - v5;
  v7 = sub_1A870CCE0(&qword_1EB305898);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v53 = sub_1A88C7B88();
  v10 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A889DEBC();
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = v12;
  v14 = v12 & 0xFFFFFFFFFFFFFF8;
  if (v12 >> 62)
  {
LABEL_29:
    v15 = sub_1A88C8D38();
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_30:
    v46 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_4:
  v44 = v6;
  v45 = v4;
  v43 = v0;
  v16 = 0;
  v57 = v13 & 0xC000000000000001;
  v51 = (v10 + 6);
  v52 = v9;
  v47 = (v10 + 1);
  v48 = (v10 + 4);
  v41 = (v10 + 2);
  v46 = MEMORY[0x1E69E7CC0];
  v10 = &unk_1EB309060;
  v9 = &unk_1A88EB3C0;
  v42 = v1;
  v55 = v15;
  v56 = v13;
  v54 = v14;
  do
  {
    v1 = v16;
    while (1)
    {
      if (v57)
      {
        v0 = MEMORY[0x1AC56F710](v1, v13);
        v17 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v1 >= *(v14 + 16))
        {
          goto LABEL_28;
        }

        v0 = *(v13 + 8 * v1 + 32);

        v17 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      v59 = v17;
      v4 = sub_1A88C72E8();
      v58 = &v41;
      v18 = *(v4 - 1);
      MEMORY[0x1EEE9AC00](v4);
      v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = sub_1A870CCE0(v10);
      v6 = &v41;
      MEMORY[0x1EEE9AC00](v21 - 8);
      v22 = v10;
      v24 = &v41 - v23;

      sub_1A88C7A78();

      if ((*(v18 + 48))(v24, 1, v4) != 1)
      {
        break;
      }

      sub_1A85EF638(v24, v22);
      v10 = v22;
LABEL_7:
      v14 = v54;
LABEL_8:
      ++v1;
      v13 = v56;
      v9 = &unk_1A88EB3C0;
      if (v59 == v55)
      {
        goto LABEL_31;
      }
    }

    (*(v18 + 32))(v20, v24, v4);

    v25 = v52;
    sub_1A88C7A78();

    v6 = v53;
    if ((*v51)(v25, 1, v53) == 1)
    {
      (*(v18 + 8))(v20, v4);

      sub_1A85EF638(v25, &qword_1EB305898);
      v10 = &unk_1EB309060;
      goto LABEL_7;
    }

    v50 = v20;
    v26 = v49;
    (*v48)(v49, v25, v6);

    sub_1A88C7A78();

    v27 = v61;
    if (!v61)
    {

      (*v47)(v26, v6);
      (*(v18 + 8))(v50, v4);
      v14 = v54;
      v10 = &unk_1EB309060;
      goto LABEL_8;
    }

    v28 = v60;

    sub_1A88C7A78();

    v29 = v60;
    v30 = v44;
    (*(v18 + 16))(v44, v50, v4);
    v31 = v6;
    v32 = v43;
    (*v41)(v30 + *(v43 + 20), v26, v31);
    v33 = (v30 + *(v32 + 24));
    *v33 = v28;
    v33[1] = v27;
    *(v30 + *(v32 + 28)) = v29 & 1;
    sub_1A889F710(v30, v45, type metadata accessor for RemoteIntentMirrorFileRepresentation);
    v34 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1A8735A88(0, v34[2] + 1, 1, v34);
    }

    v35 = v42;
    v6 = v53;
    v14 = v54;
    v37 = v34[2];
    v36 = v34[3];
    v46 = v34;
    if (v37 >= v36 >> 1)
    {
      v46 = sub_1A8735A88(v36 > 1, v37 + 1, 1, v46);
    }

    sub_1A889F870(v44, type metadata accessor for RemoteIntentMirrorFileRepresentation);
    (*v47)(v49, v6);
    (*(v18 + 8))(v50, v4);
    v38 = v45;
    v39 = v46;
    v46[2] = v37 + 1;
    sub_1A8760254(v38, v39 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v37);
    v13 = v56;
    v16 = v59;
    v10 = &unk_1EB309060;
    v9 = &unk_1A88EB3C0;
  }

  while (v59 != v55);
LABEL_31:

  return v46;
}

uint64_t RemoteIntentRequestAttachmentsOutputRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_1A88C79C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EB308CD8;
  sub_1A870CCE0(qword_1EB3058B0);
  swift_allocObject();
  *(v1 + v7) = sub_1A88C7A68();
  v8 = qword_1EB308CE0;
  sub_1A870CCE0(&qword_1EB308CE8);
  swift_allocObject();
  *(v1 + v8) = sub_1A88C7A68();
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_1A88C7A28();
  (*(v4 + 8))(a1, v3);
  return v9;
}

uint64_t sub_1A889EF10()
{
}

uint64_t RemoteIntentRequestAttachmentsOutputRepresentation.deinit()
{
  v0 = sub_1A88C7A18();

  return v0;
}

uint64_t RemoteIntentRequestAttachmentsOutputRepresentation.__deallocating_deinit()
{
  RemoteIntentRequestAttachmentsOutputRepresentation.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A889EFC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A8714B6C;

  return RemoteIntentRequestAttachmentsOutputRepresentation.decodeResponse()(a1);
}

void *sub_1A889F064@<X0>(void *a1@<X8>)
{
  result = RemoteIntentRequestAttachmentsOutputRepresentation.auxiliaryOutputRepresentation()();
  *a1 = result;
  return result;
}

uint64_t sub_1A889F0D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEC120](a1, v1, WitnessTable);
}

uint64_t sub_1A889F128()
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEBE30](v0, WitnessTable);
}

uint64_t sub_1A889F170(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEC110](a1, v1, WitnessTable);
}

uint64_t sub_1A889F200(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB305898);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A8728D80(a1, &v6 - v3, &qword_1EB305898);
  sub_1A870CCE0(&qword_1EB3059C0);
  swift_allocObject();
  v4 = sub_1A88C7A88();
  sub_1A85EF638(a1, &qword_1EB305898);
  return v4;
}

uint64_t sub_1A889F334(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1A870CCE0(&qword_1EB305898);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  sub_1A8728D80(a1, v10 - v5, &qword_1EB305898);
  v8 = *a2;
  v7 = a2[1];
  v10[0] = v8;
  v10[1] = v7;

  RemoteIntentRequestAttachmentsRepresentation.requestFile.setter(v6);
}

uint64_t RemoteIntentRequestAttachmentsRepresentation.requestFile.setter(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB305898);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A8728D80(a1, &v5 - v3, &qword_1EB305898);
  sub_1A88C7AB8();
  return sub_1A85EF638(a1, &qword_1EB305898);
}

void (*RemoteIntentRequestAttachmentsRepresentation.requestFile.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A88C7A98();
  return sub_1A879972C;
}

uint64_t sub_1A889F5A8@<X0>(uint64_t *a1@<X8>)
{
  result = RemoteIntentRequestAttachmentsRepresentation.contextID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A889F5E4()
{

  RemoteIntentRequestAttachmentsRepresentation.contextID.setter();
}

unint64_t sub_1A889F6BC()
{
  result = qword_1EB308C88;
  if (!qword_1EB308C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308C88);
  }

  return result;
}

uint64_t sub_1A889F710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void (*RemoteIntentRequestAttachmentsRepresentation.contextID.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A88C7A98();
  return sub_1A879A91C;
}

uint64_t sub_1A889F870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A889F8D0(uint64_t a1)
{
  *(a1 + 8) = sub_1A889F954(&qword_1EB3077B0, type metadata accessor for RemoteIntentMirrorFile);
  result = sub_1A889F954(&qword_1EB3077C0, type metadata accessor for RemoteIntentMirrorFile);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A889F954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A889FCCC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A889FDA0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A889FE04()
{
  result = sub_1A88C72E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A889FEB4()
{
  result = sub_1A88C72E8();
  if (v1 <= 0x3F)
  {
    result = sub_1A88C7B88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A88A0018()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A88A0068()
{
  result = qword_1EB308E70;
  if (!qword_1EB308E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308E70);
  }

  return result;
}

unint64_t sub_1A88A00C0()
{
  result = qword_1EB308E78;
  if (!qword_1EB308E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308E78);
  }

  return result;
}

unint64_t sub_1A88A0118()
{
  result = qword_1EB308E80;
  if (!qword_1EB308E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308E80);
  }

  return result;
}

uint64_t sub_1A88A016C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5255726F7272696DLL && a2 == 0xE90000000000004CLL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C525561746164 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC00000044495547 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEE00656C69466465 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A8920BC0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A88A036C()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB308E88);
  sub_1A85EF0E4(v0, qword_1EB308E88);
  return sub_1A88C7E48();
}

uint64_t sub_1A88A040C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 32);
  *(v0 + 40) = v2;
  v3 = *(v1 + 40);
  *(v0 + 64) = v3;
  if (v3 == 255)
  {
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    v7 = sub_1A870CCE0(&qword_1EB305830);
    *v6 = v0;
    v6[1] = sub_1A88A05C0;
    v8 = *(v0 + 32);

    return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x6946726F7272696DLL, 0xEB0000000073656CLL, sub_1A88A126C, v8, v7);
  }

  else if (v3)
  {
    *(v0 + 24) = v2;
    sub_1A88A1248(v2, 1);
    sub_1A870CCE0(&unk_1EB3037B0);
    swift_willThrowTypedImpl();
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_1A88A1230(v2, v3);
    v9 = *(v0 + 8);

    return v9(v2);
  }
}

uint64_t sub_1A88A05C0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1A88A0744;
  }

  else
  {
    v2 = sub_1A88A06D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A88A06D4()
{
  v1 = *(v0 + 16);
  sub_1A88A1230(*(v0 + 40), *(v0 + 64));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A88A075C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB303D10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = *(a2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 48) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A8736298(0, v8[2] + 1, 1, v8);
    *(a2 + 48) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1A8736298(v10 > 1, v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_1A88A08DC(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1A870CCE0(&qword_1EB303D10);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = *(v3 + 40);
  if (v9 == 255)
  {
    *(v3 + 32) = a1;
    *(v3 + 40) = a2 & 1;
    sub_1A88A1248(a1, a2 & 1);
    sub_1A88A1248(a1, a2 & 1);
    LOBYTE(v9) = a2;
    if (*(v3 + 56))
    {
LABEL_10:

      sub_1A870CCE0(&qword_1EB305830);
      sub_1A870CCE0(&unk_1EB3037B0);
      sub_1A88C8848();
    }
  }

  else
  {
    a1 = *(v3 + 32);
    v10 = *(v3 + 16);
    sub_1A88A1248(a1, v9 & 1);
    if (qword_1EB302358 != -1)
    {
      swift_once();
    }

    v11 = sub_1A88C7E58();
    sub_1A85EF0E4(v11, qword_1EB308E88);

    v12 = sub_1A88C7E38();
    v13 = sub_1A88C89C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v32 = v29;
      *v14 = 136315138;
      v15 = MEMORY[0x1AC56EED0](v10, MEMORY[0x1E69E6158]);
      v17 = v16;

      v18 = sub_1A85F0394(v15, v17, &v32);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1A85E5000, v12, v13, "Mirror file request for %s is already complete, but we attempted to complete it again with a new result. This is a programmer error.", v14, 0xCu);
      v19 = v29;
      sub_1A85F1084(v29);
      MEMORY[0x1AC571F20](v19, -1, -1);
      MEMORY[0x1AC571F20](v14, -1, -1);
    }

    else
    {
    }

    if (*(v3 + 56))
    {
      goto LABEL_10;
    }
  }

  v20 = *(v3 + 48);
  v21 = *(v20 + 16);
  if (v21)
  {
    v29 = v3;
    v22 = *(v30 + 16);
    v23 = v20 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v24 = *(v30 + 72);
    v25 = (v30 + 8);
    v30 = v20;

    v26 = v31;
    do
    {
      v22(v8, v23, v26);
      v32 = a1;
      if (v9)
      {
        v27 = a1;
        sub_1A88C86E8();
      }

      else
      {

        sub_1A88C86F8();
      }

      v26 = v31;
      (*v25)(v8, v31);
      v23 += v24;
      --v21;
    }

    while (v21);

    v3 = v29;
  }

  sub_1A87D18A8(a1, v9 & 1);
  *(v3 + 48) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A88A0C94()
{
  v1 = *(v0 + 16);
  result = MEMORY[0x1AC56FE00](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {

      sub_1A88C8268();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1A88A0D10()
{

  sub_1A88A1254(*(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1A88A0D88()
{
  sub_1A88C9528();
  v1 = *(v0 + 16);
  MEMORY[0x1AC56FE00](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1A88C8268();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_1A88C9578();
}

unint64_t sub_1A88A0E18()
{
  result = qword_1EB308EA0;
  if (!qword_1EB308EA0)
  {
    type metadata accessor for RemoteIntentFileMirrorRequestTask();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308EA0);
  }

  return result;
}

uint64_t sub_1A88A0EC0()
{
  sub_1A88C9528();
  v1 = *(*v0 + 16);
  MEMORY[0x1AC56FE00](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {

      sub_1A88C8268();

      v3 += 16;
      --v2;
    }

    while (v2);
  }

  return sub_1A88C9578();
}

BOOL sub_1A88A0F4C(uint64_t a1, uint64_t a2)
{
  if (sub_1A87F7778(*(a1 + 16), *(a2 + 16)))
  {
    v4 = *(a1 + 24) ^ *(a2 + 24) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  if (v6 == 255 || v8 == 255)
  {
    if (v6 != 255 || (v4 & 1) == 0)
    {
      return 0;
    }

    sub_1A88A1230(*(a2 + 32), *(a2 + 40));
    if (v8 == 255)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (v6)
  {
    if ((v8 & v4 & 1) == 0)
    {
      return 0;
    }

    swift_getErrorValue();
    sub_1A88A1230(v7, v8);
    sub_1A88A1230(v5, v6);
    v9 = sub_1A88C94C8();
    v11 = v10;
    swift_getErrorValue();
    if (v9 == sub_1A88C94C8() && v11 == v12)
    {

LABEL_17:
      v14 = *(a2 + 56);
      if (*(a1 + 56))
      {
        if (v14)
        {

          sub_1A870CCE0(&qword_1EB305830);
          sub_1A870CCE0(&unk_1EB3037B0);
          v15 = sub_1A88C8828();
          sub_1A88A1254(v5, v6);
          sub_1A88A1254(v7, v8);

          if (v15)
          {
            return *(*(a1 + 48) + 16) == *(*(a2 + 48) + 16);
          }

          return 0;
        }

        sub_1A88A1254(v5, v6);
        sub_1A88A1254(v7, v8);
      }

      else
      {

        sub_1A88A1254(v5, v6);
        sub_1A88A1254(v7, v8);
        if (!v14)
        {
          return *(*(a1 + 48) + 16) == *(*(a2 + 48) + 16);
        }
      }

      return 0;
    }

    v16 = sub_1A88C9398();

    if (v16)
    {
      goto LABEL_17;
    }

LABEL_13:
    sub_1A88A1254(v7, v8);
    sub_1A88A1254(v5, v6);
    return 0;
  }

  result = 0;
  if ((v8 & 1) == 0 && ((v4 ^ 1) & 1) == 0)
  {
    sub_1A88A1230(*(a2 + 32), *(a2 + 40));
    sub_1A88A1230(v5, v6);
    if (sub_1A87F7808(v5, v7))
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  return result;
}

id sub_1A88A1230(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1A88A1248(result, a2 & 1);
  }

  return result;
}

id sub_1A88A1248(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1A88A1254(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1A87D18A8(a1, a2 & 1);
  }
}

id IMActionComposeVideo.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMActionComposeVideo.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(0x6D754E656E6F6870, 0xEB00000000726562), (v5 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v4, v9);

    if (swift_dynamicCast())
    {
      v6 = sub_1A88C82A8();

      v7 = [v2 initWithPhoneNumber_];

      return v7;
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id IMActionComposeVideo.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMActionComposeVideo()
{
  result = qword_1EB308EC0;
  if (!qword_1EB308EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB308EC0);
  }

  return result;
}

uint64_t sub_1A88A172C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A88A1788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1A88A17EC(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = a4;
  v9 = type metadata accessor for RemoteIntentUnreadCountReport();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v22 - v14;
  [a1 unreadCountChanged_];
  if ((v8 == 2 || (a4 & 1) == 0) && a3)
  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v22[1] = MEMORY[0x1E69E7CC0];
      sub_1A88C8F08();
      sub_1A85E9718(0, &qword_1ED8C9210);
      v17 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v18 = *(v10 + 72);
      do
      {
        sub_1A8720FCC(v17, v15);
        sub_1A8720FCC(v15, v13);
        IMUnreadCountReport.init(remoteIntentRepresentation:)(v13);
        sub_1A8721030(v15);
        sub_1A88C8ED8();
        sub_1A88C8F18();
        sub_1A88C8F28();
        sub_1A88C8EE8();
        v17 += v18;
        --v16;
      }

      while (v16);
    }

    v19 = objc_allocWithZone(IMUnreadCountReportDelta);
    sub_1A85E9718(0, &qword_1ED8C9210);
    v20 = sub_1A88C85E8();

    v21 = [v19 initWithDeletedGUIDs:0 updatedReports:v20 isReplacement:1 fromStamp:0 toStamp:0];

    [a1 unreadCountReportsUpdated_];
  }
}

uint64_t sub_1A88A1A34(void *a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a3;
  v5 = sub_1A870CCE0(&qword_1EB308F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88A2754();
  sub_1A88C95C8();
  v13 = 0;
  sub_1A88C92A8();
  if (!v3)
  {
    v10[1] = v10[0];
    v12 = 1;
    sub_1A870CCE0(&qword_1EB307EC8);
    sub_1A886D604(&qword_1EB307ED0, &qword_1EB307ED8);
    sub_1A88C9228();
    v11 = 2;
    sub_1A88C91D8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A88A1C34()
{
  v1 = 0x7374726F706572;
  if (*v0 != 1)
  {
    v1 = 0x79636167654C7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F43646165726E75;
  }
}

uint64_t sub_1A88A1C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A88A23F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A88A1CC0(uint64_t a1)
{
  v2 = sub_1A88A2754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88A1CFC(uint64_t a1)
{
  v2 = sub_1A88A2754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88A1D38()
{
  v0 = qword_1EB308EC8;

  return v0;
}

uint64_t sub_1A88A1D70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A88A250C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1A88A1DEC(uint64_t a1)
{
  result = sub_1A88A1E14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88A1E14()
{
  result = qword_1EB308EE8;
  if (!qword_1EB308EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308EE8);
  }

  return result;
}

unint64_t sub_1A88A1E68(uint64_t a1)
{
  result = sub_1A88A1E90();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88A1E90()
{
  result = qword_1EB308EF0;
  if (!qword_1EB308EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308EF0);
  }

  return result;
}

uint64_t sub_1A88A1EE4(void *a1)
{
  v15 = sub_1A870CCE0(&qword_1EB308F48);
  v23 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v12 - v3;
  v5 = *v1;
  v6 = v1[1];
  v14 = *(v1 + 16);
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[6];
  v12 = v1[5];
  v13 = v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88A2A30();

  sub_1A88C95C8();
  v16 = v5;
  v17 = v6;
  v18 = v14;
  v19 = v13;
  v20 = v8;
  v21 = v12;
  v22 = v9;
  sub_1A8782398();
  v10 = v15;
  sub_1A88C92C8();

  return (*(v23 + 8))(v4, v10);
}

uint64_t sub_1A88A20AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB308F38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88A2A30();
  sub_1A88C95A8();
  if (!v2)
  {
    sub_1A87821BC();
    sub_1A88C9158();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v15;
    v11 = v16;
    *a2 = v13;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 40) = v11;
  }

  return sub_1A85F1084(a1);
}

uint64_t sub_1A88A2234(uint64_t a1)
{
  v2 = sub_1A88A2A30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88A2270(uint64_t a1)
{
  v2 = sub_1A88A2A30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88A22AC()
{
  v0 = qword_1EB308ED8;

  return v0;
}

void sub_1A88A22E4(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  sub_1A85E9718(0, &qword_1ED8C92F8);
  v11[0] = v3;
  v11[1] = v4;
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v9;
  v16 = v8;

  v10 = IMUnreadCountReportDelta.init(remoteIntentRepresentation:)(v11);
  [a1 unreadCountReportsUpdated_];
}

uint64_t sub_1A88A23F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43646165726E75 && a2 == 0xEB00000000746E75;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374726F706572 && a2 == 0xE700000000000000 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79636167654C7369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A88A250C(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308EF8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1A870C278(a1, v7);
  sub_1A88A2754();
  sub_1A88C95A8();
  if (v1)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    v9[31] = 0;
    v7 = sub_1A88C9138();
    sub_1A870CCE0(&qword_1EB307EC8);
    v9[30] = 1;
    sub_1A886D604(&qword_1EB307EE8, &qword_1EB307EF0);
    sub_1A88C90B8();
    v9[29] = 2;
    sub_1A88C9068();
    (*(v4 + 8))(v6, v3);
    sub_1A85F1084(a1);
  }

  return v7;
}

unint64_t sub_1A88A2754()
{
  result = qword_1EB308F00;
  if (!qword_1EB308F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F00);
  }

  return result;
}

unint64_t sub_1A88A27CC()
{
  result = qword_1EB308F10;
  if (!qword_1EB308F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F10);
  }

  return result;
}

uint64_t sub_1A88A284C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A88A2888(uint64_t a1)
{
  result = sub_1A88A28B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88A28B0()
{
  result = qword_1EB308F18;
  if (!qword_1EB308F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F18);
  }

  return result;
}

unint64_t sub_1A88A2904(uint64_t a1)
{
  result = sub_1A88A292C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88A292C()
{
  result = qword_1EB308F20;
  if (!qword_1EB308F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F20);
  }

  return result;
}

unint64_t sub_1A88A2984()
{
  result = qword_1EB308F28;
  if (!qword_1EB308F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F28);
  }

  return result;
}

unint64_t sub_1A88A29DC()
{
  result = qword_1EB308F30;
  if (!qword_1EB308F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F30);
  }

  return result;
}

unint64_t sub_1A88A2A30()
{
  result = qword_1EB308F40;
  if (!qword_1EB308F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F40);
  }

  return result;
}

unint64_t sub_1A88A2A98()
{
  result = qword_1EB308F50;
  if (!qword_1EB308F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F50);
  }

  return result;
}

unint64_t sub_1A88A2AF0()
{
  result = qword_1EB308F58;
  if (!qword_1EB308F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F58);
  }

  return result;
}

unint64_t sub_1A88A2B48()
{
  result = qword_1EB308F60;
  if (!qword_1EB308F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F60);
  }

  return result;
}

id PluginSettingsProvider.initiallyDisabledHashtagImages.getter()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A88C82A8();
    v1 = [v1 BOOLForKey_];
  }

  return v1;
}

void PluginSettingsProvider.initiallyDisabledHashtagImages.setter(char a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = sub_1A88C82A8();
    [v2 setBool:a1 & 1 forKey:v4];
  }
}

void (*PluginSettingsProvider.initiallyDisabledHashtagImages.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v1;
  *(a1 + 8) = v3;
  if (v3)
  {
    v4 = sub_1A88C82A8();
    v5 = [v3 BOOLForKey_];

    v6 = sub_1A870EB24;
  }

  else
  {
    v5 = 0;
    v6 = nullsub_12;
  }

  result = v6;
  *(a1 + 16) = v5;
  return result;
}

void *PluginSettingsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1A88C82A8();
  v3 = [v1 initWithSuiteName_];

  v0[2] = v3;
  v0[3] = 0xD000000000000020;
  v0[4] = 0x80000001A8916F40;
  return v0;
}

void *PluginSettingsProvider.init()()
{
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1A88C82A8();
  v3 = [v1 initWithSuiteName_];

  v0[2] = v3;
  v0[3] = 0xD000000000000020;
  v0[4] = 0x80000001A8916F40;
  return v0;
}

uint64_t PluginSettingsProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void (*sub_1A88A2EB4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = PluginSettingsProvider.initiallyDisabledHashtagImages.modify(v2);
  return sub_1A870FA54;
}

BOOL sub_1A88A2F78()
{
  type metadata accessor for TranslationLanguage();
  LOBYTE(v5[0]) = 0;
  v0 = Locale.displayName(context:)(v5);
  v2 = v1;
  LOBYTE(v5[0]) = 0;
  Locale.displayName(context:)(v5);
  v5[0] = v0;
  v5[1] = v2;
  sub_1A8722620();
  v3 = sub_1A88C8C78();

  return v3 == -1;
}

BOOL sub_1A88A303C()
{
  type metadata accessor for TranslationLanguage();
  LOBYTE(v5[0]) = 0;
  v0 = Locale.displayName(context:)(v5);
  v2 = v1;
  LOBYTE(v5[0]) = 0;
  Locale.displayName(context:)(v5);
  v5[0] = v0;
  v5[1] = v2;
  sub_1A8722620();
  v3 = sub_1A88C8C78();

  return v3 != -1;
}

void TranslationLanguage.status.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t TranslationLanguage.status.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

uint64_t TranslationLanguage.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TranslationLanguage() + 20);
  v4 = sub_1A88C75E8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TranslationLanguage.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TranslationLanguage() + 20);
  v4 = sub_1A88C75E8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TranslationLanguage.downloadSize.setter(uint64_t a1)
{
  result = type metadata accessor for TranslationLanguage();
  *(v1 + *(result + 24)) = a1;
  return result;
}

BOOL sub_1A88A334C()
{
  type metadata accessor for TranslationLanguage();
  LOBYTE(v5[0]) = 0;
  v0 = Locale.displayName(context:)(v5);
  v2 = v1;
  LOBYTE(v5[0]) = 0;
  Locale.displayName(context:)(v5);
  v5[0] = v0;
  v5[1] = v2;
  sub_1A8722620();
  v3 = sub_1A88C8C78();

  return v3 != -1;
}

uint64_t TranslationLanguageStatus.debugDescription.getter()
{
  if (*(v0 + 9) != 1)
  {
    return 0x64616F6C6E776F64;
  }

  v1 = *(v0 + 8);
  if (*v0 ^ 1 | v1)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  else
  {
    v2 = 0x656C6C6174736E69;
  }

  if (*v0 | v1)
  {
    return v2;
  }

  else
  {
    return 0x616C696176616E75;
  }
}

BOOL _s17IMSharedUtilities19TranslationLanguageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (*&v4 | v5)
    {
      if (*&v4 ^ 1 | *(a1 + 8))
      {
        if (!*(a2 + 9) || __PAIR128__(v7, *&v6) < 2)
        {
          return 0;
        }
      }

      else if (!*(a2 + 9) || *&v6 ^ 1 | v7)
      {
        return 0;
      }
    }

    else if (!*(a2 + 9) || *&v6 | v7)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 9))
    {
      return 0;
    }

    if (v5)
    {
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v7 & 1) != 0 || v4 != v6)
    {
      return 0;
    }
  }

  v8 = type metadata accessor for TranslationLanguage();
  if (MEMORY[0x1AC56DE00](a1 + *(v8 + 20), a2 + *(v8 + 20)))
  {
    return *(a1 + *(v8 + 24)) == *(a2 + *(v8 + 24));
  }

  return 0;
}

BOOL _s17IMSharedUtilities25TranslationLanguageStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) != 1)
  {
    if ((*(a2 + 9) & 1) == 0)
    {
      if (v3)
      {
        if (v5)
        {
          return 1;
        }
      }

      else if ((v5 & 1) == 0 && v2 == v4)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!(*&v2 | v3))
  {
    v6 = *&v4 | v5;
    return *(a2 + 9) && v6 == 0;
  }

  if (!(*&v2 ^ 1 | *(a1 + 8)))
  {
    return *(a2 + 9) && !(*&v4 ^ 1 | v5);
  }

  if (!*(a2 + 9))
  {
    return 0;
  }

  result = 1;
  if (*&v4 <= 1uLL)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TranslationLanguage()
{
  result = qword_1EB300678;
  if (!qword_1EB300678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s17IMSharedUtilities19TranslationLanguageV1loiySbAC_ACtFZ_0()
{
  type metadata accessor for TranslationLanguage();
  LOBYTE(v5[0]) = 0;
  v0 = Locale.displayName(context:)(v5);
  v2 = v1;
  LOBYTE(v5[0]) = 0;
  Locale.displayName(context:)(v5);
  v5[0] = v0;
  v5[1] = v2;
  sub_1A8722620();
  v3 = sub_1A88C8C78();

  return v3 == -1;
}

unint64_t sub_1A88A37BC()
{
  result = qword_1EB308F68;
  if (!qword_1EB308F68)
  {
    type metadata accessor for TranslationLanguage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F68);
  }

  return result;
}

uint64_t sub_1A88A383C()
{
  result = sub_1A88C75E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TranslationLanguageStatus(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TranslationLanguageStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TranslationLanguageStatus(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1A88A3924(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A88A3940(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

__n128 sub_1A88A3978(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A88A399C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A88A39F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1A88A3A70()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  *&v30 = sub_1A88C82E8();
  *(&v30 + 1) = v3;
  v4 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v5 = v1[1];
  if (v5)
  {
    v6 = *v1;
    v31 = v4;
    *&v30 = v6;
    *(&v30 + 1) = v5;
    sub_1A85E99B0(&v30, v29);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v29, v32, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v32);
    v33 = v2;
  }

  else
  {
    sub_1A88BEFF8(v32, &v30);
    sub_1A860169C(&v30);
    sub_1A8717360(v32);
  }

  *&v30 = sub_1A88C82E8();
  *(&v30 + 1) = v8;
  v9 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  v10 = v1[3];
  if (v10)
  {
    v11 = v1[2];
    v31 = v9;
    *&v30 = v11;
    *(&v30 + 1) = v10;
    sub_1A85E99B0(&v30, v29);

    v12 = v33;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v29, v32, v13);
    sub_1A8717360(v32);
    v33 = v12;
  }

  else
  {
    sub_1A88BEFF8(v32, &v30);
    sub_1A860169C(&v30);
    sub_1A8717360(v32);
  }

  *&v30 = sub_1A88C82E8();
  *(&v30 + 1) = v14;
  sub_1A88C8D88();
  v15 = v1[5];
  if (v15)
  {
    v16 = v1[4];
    v31 = v9;
    *&v30 = v16;
    *(&v30 + 1) = v15;
    sub_1A85E99B0(&v30, v29);

    v17 = v33;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v29, v32, v18);
    sub_1A8717360(v32);
    v33 = v17;
  }

  else
  {
    sub_1A88BEFF8(v32, &v30);
    sub_1A860169C(&v30);
    sub_1A8717360(v32);
  }

  *&v30 = sub_1A88C82E8();
  *(&v30 + 1) = v19;
  sub_1A88C8D88();
  v20 = v1[7];
  if (v20)
  {
    v21 = v1[6];
    v31 = v9;
    *&v30 = v21;
    *(&v30 + 1) = v20;
    sub_1A85E99B0(&v30, v29);

    v22 = v33;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v29, v32, v23);
    sub_1A8717360(v32);
    v33 = v22;
  }

  else
  {
    sub_1A88BEFF8(v32, &v30);
    sub_1A860169C(&v30);
    sub_1A8717360(v32);
  }

  *&v30 = sub_1A88C82E8();
  *(&v30 + 1) = v24;
  sub_1A88C8D88();
  v25 = *(v1 + 64);
  if (v25 == 7)
  {
    sub_1A88BEFF8(v32, &v30);
    sub_1A860169C(&v30);
    sub_1A8717360(v32);
    return v33;
  }

  else
  {
    v31 = MEMORY[0x1E69E6530];
    *&v30 = v25 - 1;
    sub_1A85E99B0(&v30, v29);
    v27 = v33;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v29, v32, v28);
    sub_1A8717360(v32);
    return v27;
  }
}

uint64_t sub_1A88A3E1C(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB308F88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A88A4C6C();
  sub_1A88C95C8();
  v10[15] = 0;
  sub_1A88C91C8();
  if (!v2)
  {
    v10[14] = 1;
    sub_1A88C91C8();
    v10[13] = 2;
    sub_1A88C91C8();
    v10[12] = 3;
    sub_1A88C91C8();
    v10[11] = *(v3 + 64);
    v10[10] = 4;
    sub_1A88A4D7C();
    sub_1A88C9228();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A88A403C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A88A432C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A88A4118()
{
  v1 = *v0;
  v2 = 0x44496E6F73726570;
  v3 = 0x74616D726F666E75;
  v4 = 0x437972746E756F63;
  if (v1 != 3)
  {
    v4 = 0x737574617473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65436E6F73726570;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A88A41D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A88A46E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A88A41F8(uint64_t a1)
{
  v2 = sub_1A88A4C6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88A4234(uint64_t a1)
{
  v2 = sub_1A88A4C6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1A88A4270@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A88A48A0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_1A88A42DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A88A4340(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1A88A432C(uint64_t a1)
{
  if ((a1 + 1) < 7)
  {
    return a1 + 1;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_1A88A4340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_1A88C82E8();
  v33 = v4;
  sub_1A88C8D88();
  if (!*(a1 + 16) || (v5 = sub_1A8602F10(v34), (v6 & 1) == 0))
  {
    sub_1A8717360(v34);
    goto LABEL_6;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v5, &v35);
  sub_1A8717360(v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v7 = 7;
    goto LABEL_7;
  }

  v7 = sub_1A88A432C(v32);
LABEL_7:
  v35 = sub_1A88C82E8();
  v36 = v8;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v9 = sub_1A8602F10(v34), (v10 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v9, &v35);
    sub_1A8717360(v34);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v32;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v33;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_1A8717360(v34);
    v12 = 0;
    v13 = 0;
  }

  v35 = sub_1A88C82E8();
  v36 = v14;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v15 = sub_1A8602F10(v34), (v16 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v15, &v35);
    sub_1A8717360(v34);
    v17 = swift_dynamicCast();
    if (v17)
    {
      v18 = v32;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v33;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_1A8717360(v34);
    v18 = 0;
    v19 = 0;
  }

  v35 = sub_1A88C82E8();
  v36 = v20;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v21 = sub_1A8602F10(v34), (v22 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v21, &v35);
    sub_1A8717360(v34);
    v23 = swift_dynamicCast();
    if (v23)
    {
      v24 = v32;
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v25 = v33;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_1A8717360(v34);
    v24 = 0;
    v25 = 0;
  }

  v35 = sub_1A88C82E8();
  v36 = v26;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v27 = sub_1A8602F10(v34), (v28 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v27, &v35);
    sub_1A8717360(v34);

    result = swift_dynamicCast();
    v30 = v32;
    v31 = v33;
    if (!result)
    {
      v30 = 0;
      v31 = 0;
    }
  }

  else
  {

    result = sub_1A8717360(v34);
    v30 = 0;
    v31 = 0;
  }

  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 24) = v19;
  *(a2 + 32) = v24;
  *(a2 + 40) = v25;
  *(a2 + 48) = v30;
  *(a2 + 56) = v31;
  *(a2 + 64) = v7;
  return result;
}

uint64_t sub_1A88A46E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E6F73726570 && a2 == 0xE800000000000000;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65436E6F73726570 && a2 == 0xEF4449636972746ELL || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616D726F666E75 && a2 == 0xEF656D614E646574 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A88A48A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB308F70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88A4C6C();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v35[0]) = 0;
  v9 = sub_1A88C9058();
  v29 = v10;
  LOBYTE(v35[0]) = 1;
  v11 = sub_1A88C9058();
  v28 = v12;
  v25 = v11;
  LOBYTE(v35[0]) = 2;
  v24 = sub_1A88C9058();
  v27 = v13;
  LOBYTE(v35[0]) = 3;
  v23 = sub_1A88C9058();
  v26 = v14;
  v38 = 4;
  sub_1A88A4CC0();
  sub_1A88C90B8();
  (*(v6 + 8))(v8, v5);
  v37 = v39;
  v16 = v28;
  v15 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  v17 = v25;
  *&v31 = v25;
  *(&v31 + 1) = v28;
  v18 = v27;
  *&v32 = v24;
  *(&v32 + 1) = v27;
  v19 = v26;
  *&v33 = v23;
  *(&v33 + 1) = v26;
  v34 = v39;
  sub_1A88A4D14(&v30, v35);
  sub_1A85F1084(a1);
  v35[0] = v9;
  v35[1] = v15;
  v35[2] = v17;
  v35[3] = v16;
  v35[4] = v24;
  v35[5] = v18;
  v35[6] = v23;
  v35[7] = v19;
  v36 = v37;
  result = sub_1A88A4D4C(v35);
  v21 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v21;
  *(a2 + 64) = v34;
  v22 = v31;
  *a2 = v30;
  *(a2 + 16) = v22;
  return result;
}

unint64_t sub_1A88A4C6C()
{
  result = qword_1EB308F78;
  if (!qword_1EB308F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F78);
  }

  return result;
}

unint64_t sub_1A88A4CC0()
{
  result = qword_1EB308F80;
  if (!qword_1EB308F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F80);
  }

  return result;
}

unint64_t sub_1A88A4D7C()
{
  result = qword_1EB308F90;
  if (!qword_1EB308F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F90);
  }

  return result;
}

unint64_t sub_1A88A4DF4()
{
  result = qword_1EB308F98;
  if (!qword_1EB308F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308F98);
  }

  return result;
}

unint64_t sub_1A88A4E4C()
{
  result = qword_1EB308FA0;
  if (!qword_1EB308FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308FA0);
  }

  return result;
}

unint64_t sub_1A88A4EA4()
{
  result = qword_1EB308FA8;
  if (!qword_1EB308FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308FA8);
  }

  return result;
}

unint64_t sub_1A88A4EFC()
{
  result = qword_1EB308FB0;
  if (!qword_1EB308FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308FB0);
  }

  return result;
}

unint64_t sub_1A88A4F50()
{
  result = qword_1EB308FB8;
  if (!qword_1EB308FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308FB8);
  }

  return result;
}

uint64_t sub_1A88A4FA4()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB308FC0);
  sub_1A85EF0E4(v0, qword_1EB308FC0);
  return sub_1A88C7E48();
}

uint64_t IMMadridEligibilityController.__allocating_init(serviceInfoProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t IMMadridEligibilityController.init(serviceInfoProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1A88A50E8(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 48))(ObjectType, v6);
    v19 = a1;
    v20 = a2;
    MEMORY[0x1EEE9AC00](v8);
    v18 = &v19;
    if (sub_1A85EF698(sub_1A87C4A70, v17, v8))
    {
      swift_unknownObjectRelease();

      return 1;
    }

    v9 = sub_1A88C82A8();
    v10 = MEMORY[0x1AC570A50]();

    if (v10 && (v11 = sub_1A88C82A8(), v12 = IMCanonicalizeFormattedString(), v11, v12))
    {
      v13 = sub_1A88C82E8();
      v15 = v14;

      v19 = v13;
      v20 = v15;
      MEMORY[0x1EEE9AC00](v16);
      v18 = &v19;
      LOBYTE(v13) = sub_1A85EF698(sub_1A87C4A70, v17, v8);

      swift_unknownObjectRelease();

      if (v13)
      {
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A88A52C0(uint64_t a1, uint64_t a2)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 24);
  v6 = sub_1A88C82A8();
  v7 = MEMORY[0x1AC570A50]();

  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v12 = 0;
    return v12 & 1;
  }

  v8 = sub_1A88C82A8();
  ObjectType = swift_getObjectType();
  (*(v5 + 56))(a1, a2, ObjectType, v5);
  if (v10)
  {
    v11 = sub_1A88C82A8();
  }

  else
  {
    v11 = 0;
  }

  v13 = IMInternationalForPhoneNumberWithOptions();

  if (v13)
  {
    a1 = sub_1A88C82E8();
    a2 = v14;
  }

  else
  {
  }

  v15 = (*(v5 + 64))(ObjectType, v5);
  v18[0] = a1;
  v18[1] = a2;
  MEMORY[0x1EEE9AC00](v15);
  v17[2] = v18;
  v12 = sub_1A85EF698(sub_1A87C4A70, v17, v15);

  swift_unknownObjectRelease();

  return v12 & 1;
}

uint64_t sub_1A88A5494(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    v5 = [a1 senderLastAddressedHandle];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1A88C82E8();
      v9 = v8;

      LOBYTE(v6) = sub_1A88A52C0(v7, v9);

      if (v6)
      {
        swift_unknownObjectRelease();
        return 1;
      }
    }

    v10 = [a1 senderLastAddressedSIMID];
    if (v10 && (v11 = v10, v12 = sub_1A88C82E8(), v14 = v13, v11, ObjectType = swift_getObjectType(), v16 = (*(v4 + 32))(v12, v14, ObjectType, v4), v18 = v17, , v18))
    {
      v19 = sub_1A88A52C0(v16, v18);
      swift_unknownObjectRelease();

      if (v19)
      {
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A88A55F4()
{
  sub_1A870CCE0(&unk_1EB306530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E2770;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v1;
  *(inited + 48) = sub_1A88C82E8();
  *(inited + 56) = v2;
  v3 = sub_1A85EDE50(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1EB308FD8 = v3;
  return result;
}

uint64_t sub_1A88A56AC(void *a1, uint64_t a2, unint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = *((*(v8 + 40))(ObjectType, v8) + 16);

    if (v10 || ((*(v8 + 8))(ObjectType, v8) & 1) == 0)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = [a1 serviceOfLastMessage];
      if (!v11)
      {
        if (qword_1EB302360 != -1)
        {
          swift_once();
        }

        v23 = sub_1A88C7E58();
        sub_1A85EF0E4(v23, qword_1EB308FC0);

        v17 = sub_1A88C7E38();
        v24 = sub_1A88C89D8();

        if (!os_log_type_enabled(v17, v24))
        {
          goto LABEL_25;
        }

        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v33 = v26;
        *v25 = 136446210;
        *(v25 + 4) = sub_1A85F0394(a2, a3, &v33);
        _os_log_impl(&dword_1A85E5000, v17, v24, "No phone numbers registered - iMessage is eligible for request %{public}s because this is a new chat", v25, 0xCu);
        sub_1A85F1084(v26);
        MEMORY[0x1AC571F20](v26, -1, -1);
        v22 = v25;
        goto LABEL_19;
      }

      v12 = v11;
      v13 = sub_1A88C82E8();
      v15 = v14;

      if (qword_1EB302368 != -1)
      {
        swift_once();
      }

      if (sub_1A88BB038(v13, v15, qword_1EB308FD8))
      {
        if (qword_1EB302360 != -1)
        {
          swift_once();
        }

        v16 = sub_1A88C7E58();
        sub_1A85EF0E4(v16, qword_1EB308FC0);

        v17 = sub_1A88C7E38();
        v18 = sub_1A88C89D8();

        if (!os_log_type_enabled(v17, v18))
        {

          goto LABEL_25;
        }

        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33 = v20;
        *v19 = 136446466;
        *(v19 + 4) = sub_1A85F0394(a2, a3, &v33);
        *(v19 + 12) = 2080;
        v21 = sub_1A85F0394(v13, v15, &v33);

        *(v19 + 14) = v21;
        _os_log_impl(&dword_1A85E5000, v17, v18, "No phone numbers registered - iMessage is eligible for request %{public}s because last used service is %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v20, -1, -1);
        v22 = v19;
LABEL_19:
        MEMORY[0x1AC571F20](v22, -1, -1);
LABEL_25:
        swift_unknownObjectRelease();

        return 1;
      }

      if (qword_1EB302360 != -1)
      {
        swift_once();
      }

      v27 = sub_1A88C7E58();
      sub_1A85EF0E4(v27, qword_1EB308FC0);

      v28 = sub_1A88C7E38();
      v29 = sub_1A88C89D8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v33 = v31;
        *v30 = 136446466;
        *(v30 + 4) = sub_1A85F0394(a2, a3, &v33);
        *(v30 + 12) = 2080;
        v32 = sub_1A85F0394(v13, v15, &v33);

        *(v30 + 14) = v32;
        _os_log_impl(&dword_1A85E5000, v28, v29, "No phone numbers registered - iMessage is ineligible for request %{public}s because last used service is %s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v31, -1, -1);
        MEMORY[0x1AC571F20](v30, -1, -1);
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1A88A5BB8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_14:
    v29 = 0;
    return v29 & 1;
  }

  v112 = a3;
  v113 = a4;
  v10 = *(v5 + 24);
  v11 = *(a2 + 16);
  v114 = v10;
  if (v11)
  {
    v12 = a1;
    v13 = a2 + 40;
    v14 = v11 + 1;
    do
    {
      if (!--v14)
      {
        ObjectType = swift_getObjectType();
        v34 = (v114[1])(ObjectType);
        goto LABEL_22;
      }

      v15 = v13 + 16;

      v16 = sub_1A88C82A8();
      v17 = MEMORY[0x1AC570A30]();

      v13 = v15;
    }

    while ((v17 & 1) != 0);
    v18 = a2 + 40;
    v19 = v11 + 1;
    v10 = v114;
    a1 = v12;
    while (--v19)
    {
      v20 = v18 + 16;

      v21 = sub_1A88C82A8();

      v22 = MEMORY[0x1AC570A60](v21);

      v18 = v20;
      if (v22)
      {
        if (qword_1EB302360 != -1)
        {
          swift_once();
        }

        v23 = sub_1A88C7E58();
        sub_1A85EF0E4(v23, qword_1EB308FC0);
        v24 = v113;

        v25 = sub_1A88C7E38();
        v26 = sub_1A88C89D8();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v115[0] = v28;
          *v27 = 136446210;
          *(v27 + 4) = sub_1A85F0394(v112, v24, v115);
          _os_log_impl(&dword_1A85E5000, v25, v26, "%{public}s Can't send over iMessage to Emergency SOS via Satellite", v27, 0xCu);
          sub_1A85F1084(v28);
          MEMORY[0x1AC571F20](v28, -1, -1);
          MEMORY[0x1AC571F20](v27, -1, -1);
        }

        goto LABEL_13;
      }
    }
  }

  v31 = swift_getObjectType();
  if (v10[2](v31, v10))
  {
    v32 = v113;
    if (v10[3](v31, v10) & 1) != 0 && (sub_1A88A56AC(a1, v112, v113))
    {
      swift_unknownObjectRelease();
      v29 = 1;
      return v29 & 1;
    }

    v35 = [a1 senderLastAddressedHandle];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1A88C82E8();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v110 = a1;
    v40 = [a1 senderLastAddressedSIMID];
    if (v40)
    {
      v41 = v40;
      v111 = sub_1A88C82E8();
      v43 = v42;

      if (!v39)
      {
        if (!v43)
        {
LABEL_39:
          v29 = (v114[1])(v31);
          if (qword_1EB302360 != -1)
          {
            swift_once();
          }

          v49 = sub_1A88C7E58();
          sub_1A85EF0E4(v49, qword_1EB308FC0);

          v50 = sub_1A88C7E38();
          v51 = sub_1A88C89D8();

          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v115[0] = v53;
            *v52 = 136446466;
            *(v52 + 4) = sub_1A85F0394(v112, v32, v115);
            *(v52 + 12) = 1024;
            *(v52 + 14) = v29 & 1;
            _os_log_impl(&dword_1A85E5000, v50, v51, "%{public}s Alias is nil, but iMessage enabled: %{BOOL}d", v52, 0x12u);
            sub_1A85F1084(v53);
            MEMORY[0x1AC571F20](v53, -1, -1);
            MEMORY[0x1AC571F20](v52, -1, -1);
          }

LABEL_100:
          swift_unknownObjectRelease();

          return v29 & 1;
        }

        v44 = v114[4];

        v37 = (v44)(v111, v43, v31, v114);
        v39 = v45;

        if (!v39)
        {

          goto LABEL_39;
        }
      }
    }

    else
    {
      if (!v39)
      {
        goto LABEL_39;
      }

      v43 = 0;
      v111 = 0;
    }

    v46 = sub_1A88A50E8(v37, v39);
    v107 = v114[1];
    v108 = v114 + 1;
    if ((v107(v31) & 1) != 0 || !v43)
    {
      if (v46)
      {
        v109 = v37;
        v29 = 1;
        goto LABEL_89;
      }
    }

    else
    {
      v109 = v37;
      v47 = v114[5];

      v48 = v47(v31, v114);
      v115[0] = v111;
      v115[1] = v43;
      MEMORY[0x1EEE9AC00](v48);
      v105[2] = v115;
      LOBYTE(v47) = sub_1A85EF698(sub_1A87C49BC, v105, v48);

      if (v47)
      {

        v29 = 1;
        v32 = v113;
LABEL_89:
        if (qword_1EB302360 != -1)
        {
          swift_once();
        }

        v92 = sub_1A88C7E58();
        sub_1A85EF0E4(v92, qword_1EB308FC0);

        v50 = sub_1A88C7E38();
        v93 = sub_1A88C89D8();

        if (os_log_type_enabled(v50, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v115[0] = v95;
          *v94 = 136446978;
          *(v94 + 4) = sub_1A85F0394(v112, v32, v115);
          *(v94 + 12) = 1024;
          *(v94 + 14) = v29 & 1;
          *(v94 + 18) = 2080;
          v96 = sub_1A85F0394(v109, v39, v115);

          *(v94 + 20) = v96;
          *(v94 + 28) = 2080;
          if (v43)
          {
            v97 = v111;
          }

          else
          {
            v97 = 0x3E6C696E3CLL;
          }

          if (v43)
          {
            v98 = v43;
          }

          else
          {
            v98 = 0xE500000000000000;
          }

          v99 = sub_1A85F0394(v97, v98, v115);

          *(v94 + 30) = v99;
          _os_log_impl(&dword_1A85E5000, v50, v93, "%{public}s iMessage enabled for multiple subscriptions: %{BOOL}d alias: %s sim: %s", v94, 0x26u);
          swift_arrayDestroy();
          MEMORY[0x1AC571F20](v95, -1, -1);
          MEMORY[0x1AC571F20](v94, -1, -1);
        }

        else
        {
        }

        goto LABEL_100;
      }

      if (qword_1EB302360 != -1)
      {
        swift_once();
      }

      v54 = sub_1A88C7E58();
      sub_1A85EF0E4(v54, qword_1EB308FC0);
      v32 = v113;

      v55 = sub_1A88C7E38();
      v56 = sub_1A88C89D8();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v106 = v55;
        v58 = v57;
        v59 = swift_slowAlloc();
        v115[0] = v59;
        *v58 = 136446466;
        *(v58 + 4) = sub_1A85F0394(v112, v32, v115);
        *(v58 + 12) = 2080;
        v60 = v56;
        v61 = sub_1A85F0394(v111, v43, v115);

        *(v58 + 14) = v61;
        v62 = v106;
        _os_log_impl(&dword_1A85E5000, v106, v60, "%{public}s SIMID %s not found in registered good list", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v59, -1, -1);
        MEMORY[0x1AC571F20](v58, -1, -1);
      }

      else
      {
      }

      v37 = v109;
    }

    v63 = v110;
    if (sub_1A88A5494(v110))
    {
      if (qword_1EB302360 != -1)
      {
        swift_once();
      }

      v64 = sub_1A88C7E58();
      sub_1A85EF0E4(v64, qword_1EB308FC0);

      v25 = sub_1A88C7E38();
      v65 = sub_1A88C89D8();

      if (os_log_type_enabled(v25, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v115[0] = v67;
        *v66 = 136446722;
        *(v66 + 4) = sub_1A85F0394(v112, v32, v115);
        *(v66 + 12) = 2080;
        v68 = sub_1A85F0394(v37, v39, v115);

        *(v66 + 14) = v68;
        *(v66 + 22) = 2080;
        if (v43)
        {
          v69 = v111;
        }

        else
        {
          v69 = 0x3E6C696E3CLL;
        }

        if (v43)
        {
          v70 = v43;
        }

        else
        {
          v70 = 0xE500000000000000;
        }

        v71 = sub_1A85F0394(v69, v70, v115);

        *(v66 + 24) = v71;
        _os_log_impl(&dword_1A85E5000, v25, v65, "%{public}s alias %s SIMID %s not registered but active in CT. deferring to other services", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v67, -1, -1);
        MEMORY[0x1AC571F20](v66, -1, -1);
      }

      else
      {
      }

LABEL_13:
      swift_unknownObjectRelease();

      goto LABEL_14;
    }

    if ((sub_1A88A5494(v63) & 1) == 0)
    {
      if (qword_1EB302360 != -1)
      {
        swift_once();
      }

      v82 = sub_1A88C7E58();
      sub_1A85EF0E4(v82, qword_1EB308FC0);

      v83 = sub_1A88C7E38();
      v84 = sub_1A88C89D8();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v115[0] = v86;
        *v85 = 136446722;
        *(v85 + 4) = sub_1A85F0394(v112, v32, v115);
        *(v85 + 12) = 2080;
        v87 = sub_1A85F0394(v37, v39, v115);

        *(v85 + 14) = v87;
        *(v85 + 22) = 2080;
        if (v43)
        {
          v88 = v111;
        }

        else
        {
          v88 = 0x3E6C696E3CLL;
        }

        if (v43)
        {
          v89 = v43;
        }

        else
        {
          v89 = 0xE500000000000000;
        }

        v90 = sub_1A85F0394(v88, v89, v115);

        *(v85 + 24) = v90;
        _os_log_impl(&dword_1A85E5000, v83, v84, "%{public}s alias %s SIMID %s no longer a valid subscription, defaulting to whether iMessage is available", v85, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v86, -1, -1);
        MEMORY[0x1AC571F20](v85, -1, -1);
      }

      else
      {
      }

      v29 = (v107)(v31, v114);
      swift_unknownObjectRelease();
      return v29 & 1;
    }

    v109 = v37;
    if (!v43)
    {
      goto LABEL_88;
    }

    v72 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v72 = v111 & 0xFFFFFFFFFFFFLL;
    }

    if (!v72)
    {
      goto LABEL_88;
    }

    v73 = v110;
    v74 = [v110 lastUsedServiceName];
    if (!v74)
    {
      goto LABEL_87;
    }

    v75 = [v73 lastUsedServiceName];
    if (v75)
    {
      v76 = v75;
      v77 = sub_1A88C82E8();
      v79 = v78;

      v80 = sub_1A88C82E8();
      if (v79)
      {
        if (v77 == v80 && v79 == v81)
        {

          goto LABEL_87;
        }

        v91 = sub_1A88C9398();

        if (v91)
        {
LABEL_87:
          if ((sub_1A88A52C0(v109, v39) & 1) == 0)
          {
            v29 = (v107)(v31, v114);
            if (qword_1EB302360 != -1)
            {
              swift_once();
            }

            v100 = sub_1A88C7E58();
            sub_1A85EF0E4(v100, qword_1EB308FC0);

            v101 = sub_1A88C7E38();
            v102 = sub_1A88C89D8();

            if (os_log_type_enabled(v101, v102))
            {
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              v115[0] = v104;
              *v103 = 136446722;
              *(v103 + 4) = sub_1A85F0394(v112, v32, v115);
              *(v103 + 12) = 2080;
              *(v103 + 14) = sub_1A85F0394(v109, v39, v115);
              *(v103 + 22) = 1024;
              *(v103 + 24) = v29 & 1;
              _os_log_impl(&dword_1A85E5000, v101, v102, "%{public}s alias %s is not from an active CT subscription. set hasAccountsOnService=%{BOOL}d", v103, 0x1Cu);
              swift_arrayDestroy();
              MEMORY[0x1AC571F20](v104, -1, -1);
              MEMORY[0x1AC571F20](v103, -1, -1);
            }

            goto LABEL_89;
          }
        }

LABEL_88:
        v29 = 0;
        goto LABEL_89;
      }
    }

    else
    {
      sub_1A88C82E8();
    }

    v29 = 0;
    goto LABEL_89;
  }

  v34 = v10[1](v31, v10);
LABEL_22:
  swift_unknownObjectRelease();
  return v34 & 1;
}

uint64_t IMMadridEligibilityController.__deallocating_deinit()
{
  sub_1A88699EC(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A88A6D4C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1A870CCE0(&qword_1EB309010);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1A870C278(a1, a1[3]);
  sub_1A88A753C();
  sub_1A88C95C8();
  v14 = a2;
  v13 = 0;
  sub_1A870CCE0(&qword_1EB303C30);
  sub_1A873162C(&qword_1EB303C48);
  sub_1A88C92C8();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_1A88C92C8();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A88A6F34()
{
  if (*v0)
  {
    return 0x64656B636F6C62;
  }

  else
  {
    return 0x73694C776F6C6C61;
  }
}

uint64_t sub_1A88A6F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73694C776F6C6C61 && a2 == 0xE900000000000074;
  if (v6 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656B636F6C62 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A88C9398();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A88A7058(uint64_t a1)
{
  v2 = sub_1A88A753C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88A7094(uint64_t a1)
{
  v2 = sub_1A88A753C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A88A70D0()
{
  v0 = qword_1EB308FE0;

  return v0;
}

void sub_1A88A7108(void *a1)
{
  v2 = sub_1A88C88C8();
  v3 = sub_1A88C88C8();
  [a1 updateNicknameHandlesForSharing:v2 blocked:v3];
}

uint64_t sub_1A88A71A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A88A7318(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1A88A71F0(uint64_t a1)
{
  *(a1 + 8) = sub_1A877B768();
  result = sub_1A877B714();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A88A7220(uint64_t a1)
{
  result = sub_1A88A7248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88A7248()
{
  result = qword_1EB308FF0;
  if (!qword_1EB308FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308FF0);
  }

  return result;
}

unint64_t sub_1A88A729C(uint64_t a1)
{
  result = sub_1A88A72C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88A72C4()
{
  result = qword_1EB308FF8;
  if (!qword_1EB308FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308FF8);
  }

  return result;
}

uint64_t sub_1A88A7318(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB309000);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A88A753C();
  sub_1A88C95A8();
  sub_1A870CCE0(&qword_1EB303C30);
  v9 = 0;
  sub_1A873162C(&qword_1EB303C38);
  sub_1A88C9158();
  v7 = v10;
  v9 = 1;
  sub_1A88C9158();
  (*(v3 + 8))(v5, v2);
  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A88A753C()
{
  result = qword_1EB309008;
  if (!qword_1EB309008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB309008);
  }

  return result;
}

unint64_t sub_1A88A75A4()
{
  result = qword_1EB309018;
  if (!qword_1EB309018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB309018);
  }

  return result;
}

unint64_t sub_1A88A75FC()
{
  result = qword_1EB309020;
  if (!qword_1EB309020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB309020);
  }

  return result;
}

unint64_t sub_1A88A7654()
{
  result = qword_1EB309028;
  if (!qword_1EB309028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB309028);
  }

  return result;
}

uint64_t sub_1A88A76AC()
{
  sub_1A88C7EC8();
  sub_1A85FC5FC(&qword_1ED8C9480, 255, MEMORY[0x1E69E7F60]);
  sub_1A870CCE0(&unk_1EB3081F0);
  sub_1A85EB85C();
  return sub_1A88C8CE8();
}

uint64_t sub_1A88A7768@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = *MEMORY[0x1E69E7F28];
  v3 = sub_1A88C7EA8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A88A77E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (*(v5 + 16) && (v6 = sub_1A85F5F40(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_1A88A7868(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_1A85F5F40(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 32);
    v12 = *(v3 + 32);
    *(v3 + 32) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A87B230C();
      v10 = v12;
    }

    sub_1A87B32C4(v8, v10);
    *(v3 + 32) = v10;
  }

  return swift_endAccess();
}

uint64_t sub_1A88A792C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1A88A77E0(a2, a3);

  if (v6)
  {
    swift_beginAccess();
    *(v6 + 48) = a1;

    v7 = v6;
  }

  else
  {
    sub_1A870CCE0(&unk_1EB3090F0);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = a2;
    v7[5] = a3;
    v7[6] = a1;
  }

  sub_1A888761C(v7);
}

uint64_t sub_1A88A7A2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_1A85F5F40(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    swift_endAccess();

    swift_beginAccess();
    v11 = *(v10 + 48);

    return v11;
  }

  else
  {
    swift_endAccess();

    return 0;
  }
}

uint64_t sub_1A88A7B08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_1A85F5F40(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    swift_endAccess();

    sub_1A88A7C3C(v10);
    swift_beginAccess();
    v11 = v10[4];
    v12 = v10[5];

    sub_1A88A7868(v11, v12);

    swift_beginAccess();
    v13 = v10[6];

    return v13;
  }

  else
  {
    swift_endAccess();

    return 0;
  }
}

uint64_t sub_1A88A7C3C(void *a1)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (v4)
  {
    swift_beginAccess();
    v5 = a1[4];
    v6 = a1[5];
    swift_beginAccess();
    v7 = v5 == v4[4] && v6 == v4[5];
    if (v7 || (sub_1A88C9398() & 1) != 0)
    {
      swift_beginAccess();
      v8 = a1[6];
      swift_beginAccess();
      v9 = v4[6];

      v10 = sub_1A875F8D4(v8, v9);

      if (v10)
      {
        swift_beginAccess();
        v11 = a1[3];
        v12 = *(v1 + 16);
        swift_beginAccess();
        *(v12 + 16) = v11;
      }
    }
  }

  v13 = *(v1 + 16);
  swift_beginAccess();
  v14 = *(v13 + 24);
  if (v14)
  {
    swift_beginAccess();
    v15 = a1[4];
    v16 = a1[5];
    swift_beginAccess();
    v17 = v15 == v14[4] && v16 == v14[5];
    if (v17 || (sub_1A88C9398() & 1) != 0)
    {
      swift_beginAccess();
      v18 = a1[6];
      swift_beginAccess();
      v19 = v14[6];

      v20 = sub_1A875F8D4(v18, v19);

      if (v20)
      {
        swift_beginAccess();
        v21 = a1[2];
        v22 = *(v1 + 16);
        swift_beginAccess();
        *(v22 + 24) = v21;
      }
    }
  }

  swift_beginAccess();
  v23 = a1[2];
  swift_beginAccess();
  v24 = a1[3];
  if (!v23)
  {

    if (!v24)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  swift_beginAccess();
  *(v23 + 24) = v24;
  swift_retain_n();
  swift_retain_n();

  if (v24)
  {
LABEL_19:
    swift_beginAccess();
    *(v24 + 16) = v23;
  }

LABEL_20:

  a1[3] = 0;

  a1[2] = 0;
}

uint64_t sub_1A88A7FA4(uint64_t a1)
{
  v2 = sub_1A85FC5FC(&unk_1EB3090E0, 255, type metadata accessor for RemoteIntentFilePersistedNodeStore);
  v3 = v2[3];
  v4 = type metadata accessor for RemoteIntentFilePersistedNodeStore();

  v5 = v3(v4, v2);

  if (v5)
  {
    v6 = _s17IMSharedUtilities24RemoteIntentFileListNodeC2eeoiySbAC_ACtFZ_0(a1, v5);

    if (v6)
    {
      v7 = sub_1A85FC5FC(&qword_1EB3048D8, 255, type metadata accessor for RemoteIntentFileListNode);
      v8 = *(v7 + 72);
      v9 = type metadata accessor for RemoteIntentFileListNode(0);
      v10 = v8(v9, v7);
      v11 = v2[4];

      v11(v10, v4, v2);
    }
  }

  v12 = v2[6];

  v13 = v12(v4, v2);

  if (v13)
  {
    v14 = _s17IMSharedUtilities24RemoteIntentFileListNodeC2eeoiySbAC_ACtFZ_0(a1, v13);

    if (v14)
    {
      v15 = sub_1A85FC5FC(&qword_1EB3048D8, 255, type metadata accessor for RemoteIntentFileListNode);
      v16 = *(v15 + 48);
      v17 = type metadata accessor for RemoteIntentFileListNode(0);
      v18 = v16(v17, v15);
      v19 = v2[7];

      v19(v18, v4, v2);
    }
  }

  v20 = sub_1A85FC5FC(&qword_1EB3048D8, 255, type metadata accessor for RemoteIntentFileListNode);
  v21 = *(v20 + 48);
  v22 = type metadata accessor for RemoteIntentFileListNode(0);
  v23 = v21(v22, v20);
  v24 = (*(v20 + 72))(v22, v20);
  if (v23)
  {
    v25 = *(v20 + 80);

    v25(v24, v22, v20);
  }

  if (v24)
  {
    v26 = *(v20 + 56);

    v26(v23, v22, v20);
  }

  (*(v20 + 80))(0, v22, v20);
  (*(v20 + 56))(0, v22, v20);
}

uint64_t sub_1A88A8378@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E7F40];
  v3 = sub_1A88C7EA8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1A88A83EC()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB309030);
  sub_1A85EF0E4(v0, qword_1EB309030);
  return sub_1A88C7E48();
}

id sub_1A88A8470()
{
  result = [objc_opt_self() sharedManager];
  qword_1EB309048 = result;
  return result;
}

uint64_t sub_1A88A84AC()
{
  type metadata accessor for RemoteIntentFileDownloadActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EB309050 = v0;
  return result;
}

uint64_t RemoteIntentFileDownloadActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A88A8568()
{
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1A88A85C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RemoteIntentFileDownloadActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_1A88A85FC()
{
  type metadata accessor for RemoteIntentFileDownloadManager();
  v0 = swift_allocObject();
  result = sub_1A88A86C4();
  off_1EB309058 = v0;
  return result;
}

uint64_t sub_1A88A865C(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1A88A86C4()
{
  v1 = v0;
  *(v0 + 16) = 104857600;
  *(v0 + 24) = xmmword_1A88FA500;
  *(v0 + 40) = 8;
  *(v0 + 48) = 0x405E000000000000;
  *(v0 + 56) = xmmword_1A88FA510;
  *(v0 + 80) = 0;
  swift_unknownObjectWeakInit();
  sub_1A870CCE0(&qword_1EB309128);
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v2[4] = MEMORY[0x1E69E7CC8];
  sub_1A870CCE0(qword_1EB309130);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v1 + 88) = v4;
  *(v1 + 96) = v3;
  v5 = MEMORY[0x1E69E7CC0];
  *(v1 + 104) = v3;
  *(v1 + 112) = v5;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = v5;
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v6 = sub_1A88C7E58();
  sub_1A85EF0E4(v6, qword_1EB309030);
  v7 = sub_1A88C7E38();
  v8 = sub_1A88C89D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A85E5000, v7, v8, "Initialized RemoteIntentFileDownloadManager. Adding observer to RemoteIntentPersonaManager", v9, 2u);
    MEMORY[0x1AC571F20](v9, -1, -1);
  }

  return v1;
}

uint64_t sub_1A88A886C(uint64_t a1)
{
  *(v1 + 64) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void sub_1A88A88BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v3 + 80), ObjectType = swift_getObjectType(), v19 = (*(v7 + 8))(a1, a2, ObjectType, v7), swift_unknownObjectRelease(), v19))
  {
    if ([v19 existsAtLocalPath])
    {
      v9 = [v19 localURL];
      v10 = sub_1A870CCE0(&unk_1EB309060);
      MEMORY[0x1EEE9AC00](v10 - 8);
      v12 = &v18 - v11;
      if (v9)
      {
        sub_1A88C7288();

        v13 = sub_1A88C72E8();
        (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
      }

      else
      {

        v17 = sub_1A88C72E8();
        (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
      }

      sub_1A8761C7C(v12, a3, &unk_1EB309060);
    }

    else
    {
      v16 = sub_1A88C72E8();
      (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
    }
  }

  else
  {
    v14 = sub_1A88C72E8();
    v15 = *(*(v14 - 8) + 56);

    v15(a3, 1, 1, v14);
  }
}

uint64_t sub_1A88A8B54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = v1;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  v6 = a1 + 40;
  v54 = a1 + 40;
  while (2)
  {
    v55 = v5;
    for (i = (v6 + 16 * v4); ; i += 2)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_35;
      }

      v10 = *(i - 1);
      v66 = *i;
      v65 = sub_1A88C72E8();
      v67 = *(v65 - 8);
      MEMORY[0x1EEE9AC00](v65);
      v59 = v11;
      v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = sub_1A870CCE0(&unk_1EB309060);
      v64 = &v53;
      v13 = *(*(v12 - 8) + 64);
      MEMORY[0x1EEE9AC00](v12 - 8);
      v63 = &v53 - v14;
      if (swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

LABEL_5:
      v9 = v63;
      (*(v67 + 56))(v63, 1, 1, v65);
LABEL_6:
      sub_1A85EF638(v9, &unk_1EB309060);
      ++v4;
      if (v8 == v2)
      {
        return v55;
      }
    }

    v61 = v4 + 1;
    v62 = &v53;
    v15 = *(v3 + 80);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    v18 = v66;

    v56 = v10;
    v19 = v17(v10, v18, ObjectType, v15);
    swift_unknownObjectRelease();
    if (!v19)
    {

      v3 = v57;
      v2 = v58;
      v8 = v61;
      goto LABEL_5;
    }

    if ([v19 existsAtLocalPath])
    {
      v20 = [v19 localURL];
      v21 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (MEMORY[0x1EEE9AC00](v20))
      {
        sub_1A88C7288();

        v22 = 0;
        v19 = v20;
      }

      else
      {
        v22 = 1;
      }

      v8 = v61;

      v23 = v65;
      (*(v67 + 56))(v21, v22, 1, v65);
      v24 = v21;
      v9 = v63;
      sub_1A8761C7C(v24, v63, &unk_1EB309060);
      v2 = v58;
    }

    else
    {
      v9 = v63;
      v23 = v65;
      (*(v67 + 56))(v63, 1, 1);

      v2 = v58;
      v8 = v61;
    }

    if ((*(v67 + 48))(v9, 1, v23) == 1)
    {

      v3 = v57;
      goto LABEL_6;
    }

    v25 = v67;
    v26 = *(v67 + 32);
    v27 = v60;
    v28 = v26(v60, v9, v23);
    MEMORY[0x1EEE9AC00](v28);
    v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v30, v27, v23);
    v31 = v55;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v31;
    v33 = v56;
    v34 = v66;
    v35 = sub_1A85F5F40(v56, v66);
    v37 = v31[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      goto LABEL_36;
    }

    v41 = v36;
    if (v31[3] >= v40)
    {
      v3 = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = v35;
        sub_1A87B0D88();
        v35 = v51;
      }
    }

    else
    {
      sub_1A88786D4(v40, isUniquelyReferenced_nonNull_native);
      v35 = sub_1A85F5F40(v33, v34);
      v3 = v57;
      if ((v41 & 1) != (v42 & 1))
      {
        goto LABEL_38;
      }
    }

    v5 = v68;
    if ((v41 & 1) == 0)
    {
      v68[(v35 >> 6) + 8] |= 1 << v35;
      v45 = (v5[6] + 16 * v35);
      v46 = v66;
      v47 = v67;
      *v45 = v56;
      v45[1] = v46;
      v48 = v65;
      v26((v5[7] + *(v47 + 72) * v35), v30, v65);
      (*(v47 + 8))(v60, v48);
      v49 = v5[2];
      v39 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (!v39)
      {
        v5[2] = v50;
        goto LABEL_29;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      result = sub_1A88C9488();
      __break(1u);
      return result;
    }

    v43 = v67;
    v44 = v65;
    (*(v67 + 40))(v68[7] + *(v67 + 72) * v35, v30, v65);

    (*(v43 + 8))(v60, v44);
LABEL_29:
    v6 = v54;
    v4 = v61;
    v2 = v58;
    if (v61 != v58)
    {
      continue;
    }

    return v5;
  }
}

uint64_t sub_1A88A915C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong() && (v7 = *(v3 + 80), ObjectType = swift_getObjectType(), v9 = (*(v7 + 8))(a1, a2, ObjectType, v7), swift_unknownObjectRelease(), v9))
  {
    v10 = [v9 localURL];
    v11 = sub_1A870CCE0(&unk_1EB309060);
    MEMORY[0x1EEE9AC00](v11 - 8);
    v13 = &v19 - v12;
    if (v10)
    {
      sub_1A88C7288();

      v14 = sub_1A88C72E8();
      (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
    }

    else
    {

      v18 = sub_1A88C72E8();
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    }

    return sub_1A8761C7C(v13, a3, &unk_1EB309060);
  }

  else
  {
    v15 = sub_1A88C72E8();
    v16 = *(*(v15 - 8) + 56);

    return v16(a3, 1, 1, v15);
  }
}

uint64_t sub_1A88A9364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB309050;
  v4[6] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88A9404, v5, 0);
}

uint64_t sub_1A88A9404()
{
  v1 = v0[4];
  v2 = v0[3];

  v3 = sub_1A88A7A2C(v2, v1);
  v0[7] = v3;

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1A88A9550;
    v5 = v0[2];

    return sub_1A8758E28(v5);
  }

  else
  {
    v7 = v0[2];
    v8 = sub_1A88C72E8();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1A88A9550()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1A88A9720;
  }

  else
  {
    v4 = sub_1A88A967C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A88A967C()
{

  v1 = *(v0 + 16);
  v2 = sub_1A88C72E8();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A88A9720()
{
  v18 = v0;
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB309030);
  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1A85F0394(0xD000000000000023, 0x80000001A8920DC0, &v17);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1A85E5000, v4, v5, "%s error while awaiting task completion: %@. Returning nil.", v8, 0x16u);
    sub_1A85EF638(v9, &qword_1EB306540);
    MEMORY[0x1AC571F20](v9, -1, -1);
    sub_1A85F1084(v10);
    MEMORY[0x1AC571F20](v10, -1, -1);
    MEMORY[0x1AC571F20](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[2];
  v14 = sub_1A88C72E8();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = v0[1];

  return v15();
}

uint64_t sub_1A88A997C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = MEMORY[0x1E69E7CC8];
    v30 = a1 + 40;
LABEL_3:
    v31 = v4;
    v5 = (v3 + 16 * v2);
    for (i = v2; i < v1; ++i)
    {
      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_25;
      }

      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = *(*(v32 + 88) + 16);
      swift_beginAccess();
      v10 = *(v9 + 32);
      v11 = *(v10 + 16);

      if (v11)
      {
        v12 = sub_1A85F5F40(v8, v7);
        if (v13)
        {
          v14 = *(*(v10 + 56) + 8 * v12);
          swift_endAccess();

          swift_beginAccess();
          v15 = *(v14 + 48);
          swift_retain_n();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v17 = sub_1A85F5F40(v8, v7);
          v19 = v31[2];
          v20 = (v18 & 1) == 0;
          v21 = __OFADD__(v19, v20);
          v22 = v19 + v20;
          if (!v21)
          {
            v23 = v18;
            if (v31[3] >= v22)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v28 = v17;
                sub_1A87B1008();
                v17 = v28;
              }
            }

            else
            {
              sub_1A8878A7C(v22, isUniquelyReferenced_nonNull_native);
              v17 = sub_1A85F5F40(v8, v7);
              if ((v23 & 1) != (v24 & 1))
              {
                goto LABEL_28;
              }
            }

            v3 = v30;
            v4 = v31;
            if (v23)
            {
              *(v31[7] + 8 * v17) = v15;

              if (v2 != v1)
              {
                goto LABEL_3;
              }

              return v4;
            }

            v31[(v17 >> 6) + 8] |= 1 << v17;
            v25 = (v31[6] + 16 * v17);
            *v25 = v8;
            v25[1] = v7;
            *(v31[7] + 8 * v17) = v15;

            v26 = v31[2];
            v21 = __OFADD__(v26, 1);
            v27 = v26 + 1;
            if (!v21)
            {
              v31[2] = v27;
              if (v2 != v1)
              {
                goto LABEL_3;
              }

              return v4;
            }

LABEL_27:
            __break(1u);
LABEL_28:
            result = sub_1A88C9488();
            __break(1u);
            return result;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      swift_endAccess();

      v5 += 2;
      if (v2 == v1)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1A88A9C30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88A9CC8, v3, 0);
}

uint64_t sub_1A88A9CC8()
{
  v68 = v0;
  v1 = v0[2];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_66:
    v3 = sub_1A88C8D38();
    v4 = v0[2];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[2];
  }

  v5 = MEMORY[0x1E69E7CC0];
  v0[4] = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    v1 = v5;
    if (*(v5 + 2))
    {
LABEL_47:
      if (qword_1EB302370 != -1)
      {
        swift_once();
      }

      v37 = sub_1A88C7E58();
      sub_1A85EF0E4(v37, qword_1EB309030);

      v38 = sub_1A88C7E38();
      v39 = sub_1A88C89D8();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v67 = v41;
        *v40 = 136315394;
        v42 = MEMORY[0x1E69E6158];
        v43 = MEMORY[0x1AC56EED0](v5, MEMORY[0x1E69E6158]);
        v45 = sub_1A85F0394(v43, v44, &v67);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2080;
        v46 = MEMORY[0x1AC56EED0](v1, v42);
        v48 = v47;

        v49 = sub_1A85F0394(v46, v48, &v67);

        *(v40 + 14) = v49;
        _os_log_impl(&dword_1A85E5000, v38, v39, "downloadTransfersForMessages: Kicking off download of transfer guids: %s from message guids: %s.", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v41, -1, -1);
        MEMORY[0x1AC571F20](v40, -1, -1);
      }

      else
      {
      }

      v50 = swift_task_alloc();
      v0[5] = v50;
      *v50 = v0;
      v50[1] = sub_1A88AA3D8;

      return sub_1A88AA4FC(v5);
    }

    else
    {
LABEL_55:

      if (qword_1EB302370 != -1)
      {
LABEL_70:
        swift_once();
      }

      v51 = sub_1A88C7E58();
      sub_1A85EF0E4(v51, qword_1EB309030);

      v52 = sub_1A88C7E38();
      v53 = sub_1A88C89D8();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v67 = v55;
        *v54 = 136315138;
        v56 = MEMORY[0x1AC56EED0](v1, MEMORY[0x1E69E6158]);
        v58 = v57;

        v59 = sub_1A85F0394(v56, v58, &v67);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_1A85E5000, v52, v53, "downloadTransfersForMessages: no attachment transfer guids to download for message guids: %s", v54, 0xCu);
        sub_1A85F1084(v55);
        MEMORY[0x1AC571F20](v55, -1, -1);
        MEMORY[0x1AC571F20](v54, -1, -1);
      }

      else
      {
      }

      v60 = sub_1A87386D4(MEMORY[0x1E69E7CC0]);
      v61 = v0[1];

      return v61(v60);
    }
  }

  v6 = 0;
  v7 = v1 & 0xC000000000000001;
  v1 = (v4 + 32);
  v8 = &selRef_attributionInfo;
  while (2)
  {
    v9 = v6;
    while (1)
    {
      if (v7)
      {
        v10 = MEMORY[0x1AC56F710](v9, v0[2]);
      }

      else
      {
        if (v9 >= *(v2 + 16))
        {
          goto LABEL_63;
        }

        v10 = *&v1[8 * v9];
      }

      v11 = v10;
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v12 = [v10 v8[507]];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v6 == v3)
      {
        goto LABEL_28;
      }
    }

    v64 = v0;
    v13 = v12;
    v0 = sub_1A88C85F8();

    v14 = v0[2];
    v15 = *(v5 + 2);
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      __break(1u);
      goto LABEL_68;
    }

    v17 = v0;
    v0 = v0[2];
    v65 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v19 = *(v5 + 3) >> 1, v19 < v16))
    {
      if (v15 <= v16)
      {
        v20 = v16;
      }

      else
      {
        v20 = v15;
      }

      v5 = sub_1A85F1B30(isUniquelyReferenced_nonNull_native, v20, 1, v5);
      v19 = *(v5 + 3) >> 1;
    }

    v8 = &selRef_attributionInfo;
    v21 = v0;
    if (!v65[2])
    {
      v0 = v64;

      if (!v21)
      {
LABEL_27:

        v0[4] = v5;
        if (v6 != v3)
        {
          continue;
        }

LABEL_28:
        v63 = v5;
        v26 = 0;
        v66 = MEMORY[0x1E69E7CC0];
LABEL_29:
        v27 = v26;
        while (1)
        {
          if (v7)
          {
            v28 = MEMORY[0x1AC56F710](v27, v0[2]);
          }

          else
          {
            if (v27 >= *(v2 + 16))
            {
              goto LABEL_65;
            }

            v28 = *&v1[8 * v27];
          }

          v29 = v28;
          v26 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_64;
          }

          v30 = [v28 guid];
          if (v30)
          {
            v31 = v30;
            v32 = sub_1A88C82E8();
            v62 = v33;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v66 = sub_1A85F1B30(0, *(v66 + 2) + 1, 1, v66);
            }

            v35 = *(v66 + 2);
            v34 = *(v66 + 3);
            if (v35 >= v34 >> 1)
            {
              v66 = sub_1A85F1B30((v34 > 1), v35 + 1, 1, v66);
            }

            *(v66 + 2) = v35 + 1;
            v36 = &v66[16 * v35];
            *(v36 + 4) = v32;
            *(v36 + 5) = v62;
            if (v26 != v3)
            {
              goto LABEL_29;
            }

LABEL_46:
            v5 = v63;
            v1 = v66;
            if (!*(v63 + 2))
            {
              goto LABEL_55;
            }

            goto LABEL_47;
          }

          ++v27;
          if (v26 == v3)
          {
            goto LABEL_46;
          }
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    break;
  }

  if (v19 - *(v5 + 2) < v0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  swift_arrayInitWithCopy();
  v0 = v64;

  if (!v21)
  {
    goto LABEL_27;
  }

  v23 = *(v5 + 2);
  v24 = __OFADD__(v23, v21);
  v25 = v21 + v23;
  if (!v24)
  {
    *(v5 + 2) = v25;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A88AA3D8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1A88AA4FC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB309050;
  v2[5] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88AA598, v3, 0);
}

uint64_t sub_1A88AA598()
{
  v85 = v0;
  v1 = v0;
  v2 = v0[3];
  v88 = *(v2 + 16);
  if (!v88)
  {
    v3 = sub_1A87386D4(MEMORY[0x1E69E7CC0]);
    goto LABEL_27;
  }

  v3 = sub_1A88A8B54(v2);
  v0[6] = v3;
  v4 = sub_1A88728C8(v2);
  v5 = &unk_1EB302000;
  if (*(v4 + 16))
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v6 = sub_1A88C7E58();
    sub_1A85EF0E4(v6, qword_1EB309030);

    v7 = sub_1A88C7E38();
    v8 = sub_1A88C89D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v84[0] = v10;
      *v9 = 136315138;
      v11 = sub_1A88C8908();
      v13 = sub_1A85F0394(v11, v12, v84);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1A85E5000, v7, v8, "Some guids are not allowed for download: %s", v9, 0xCu);
      sub_1A85F1084(v10);
      MEMORY[0x1AC571F20](v10, -1, -1);
      MEMORY[0x1AC571F20](v9, -1, -1);
    }
  }

  v15 = sub_1A8737F40(v14);

  v16 = *(v3 + 16);
  if (v16)
  {
    v83 = v1;
    v17 = sub_1A87365FC(v16, 0);
    v18 = sub_1A8739EC4(v84, v17 + 32, v16, v3);
    v1 = v84[2];

    sub_1A85EF290();
    if (v18 != v16)
    {
      __break(1u);
LABEL_65:
      swift_once();
      goto LABEL_21;
    }

    v5 = &unk_1EB302000;
    v1 = v83;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1A8737F40(v17);

  if (*(v19 + 16) <= *(v15 + 16) >> 3)
  {
    v84[0] = v15;
    sub_1A8736C1C(v19);

    v20 = v84[0];
  }

  else
  {
    v20 = sub_1A8736D48(v19, v15);
  }

  if (*(v4 + 16) <= *(v20 + 16) >> 3)
  {
    v84[0] = v20;
    sub_1A8736C1C(v4);

    v17 = v84[0];
  }

  else
  {
    v17 = sub_1A8736D48(v4, v20);
  }

  v1[7] = v17;
  if (!*(v17 + 16))
  {

    if (v5[110] == -1)
    {
LABEL_24:
      v30 = sub_1A88C7E58();
      sub_1A85EF0E4(v30, qword_1EB309030);

      v31 = sub_1A88C7E38();
      v32 = sub_1A88C89D8();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = v1[3];
        v34 = swift_slowAlloc();
        v35 = v3;
        v36 = swift_slowAlloc();
        v84[0] = v36;
        *v34 = 136315138;
        v37 = MEMORY[0x1AC56EED0](v33, MEMORY[0x1E69E6158]);
        v39 = sub_1A85F0394(v37, v38, v84);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1A85E5000, v31, v32, "downloadTransfers: all file transfers have already been downloaded, or are disallowed: %s. Returning existing file urls.", v34, 0xCu);
        sub_1A85F1084(v36);
        v40 = v36;
        v3 = v35;
        MEMORY[0x1AC571F20](v40, -1, -1);
        MEMORY[0x1AC571F20](v34, -1, -1);
      }

      goto LABEL_27;
    }

LABEL_67:
    swift_once();
    goto LABEL_24;
  }

  if (v5[110] != -1)
  {
    goto LABEL_65;
  }

LABEL_21:
  v21 = sub_1A88C7E58();
  v22 = sub_1A85EF0E4(v21, qword_1EB309030);
  v1[8] = v22;

  v23 = sub_1A88C7E38();
  v24 = sub_1A88C89D8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v84[0] = v26;
    *v25 = 134218498;
    *(v25 + 4) = *(v17 + 16);

    *(v25 + 12) = 2048;
    *(v25 + 14) = v88;

    *(v25 + 22) = 2080;
    v27 = sub_1A88C8908();
    v29 = sub_1A85F0394(v27, v28, v84);

    *(v25 + 24) = v29;
    _os_log_impl(&dword_1A85E5000, v23, v24, "downloadTransfers: %ld guids are not yet downloaded, out of %ld total requested: %s", v25, 0x20u);
    sub_1A85F1084(v26);
    MEMORY[0x1AC571F20](v26, -1, -1);
    MEMORY[0x1AC571F20](v25, -1, -1);
  }

  else
  {
  }

  v43 = *(v17 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  if (!v43)
  {
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_35;
  }

  v88 = v22;
  v3 = v1;
  v45 = sub_1A87365FC(v43, 0);
  v46 = sub_1A85F1C3C(v84, v45 + 4, v43, v17);
  v1 = v84[3];

  sub_1A85EF290();
  if (v46 != v43)
  {
    __break(1u);
    goto LABEL_67;
  }

  v1 = v3;
  v44 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v1[9] = sub_1A88A997C(v45);

  v48 = sub_1A85F11E0(v47);
  if (*(v48 + 16) <= *(v17 + 16) >> 3)
  {
    v84[0] = v17;
    sub_1A8736C1C(v48);

    v49 = v84[0];
  }

  else
  {
    v49 = sub_1A8736D48(v48, v17);
  }

  v1[10] = v49;
  if (*(v49 + 16))
  {

    v50 = sub_1A88C7E38();
    v51 = sub_1A88C89D8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      *(v52 + 4) = *(v49 + 16);

      _os_log_impl(&dword_1A85E5000, v50, v51, "downloadTransfers: Fetching mirrors for %ld guids.", v52, 0xCu);
      MEMORY[0x1AC571F20](v52, -1, -1);
    }

    else
    {
    }

    v57 = swift_task_alloc();
    v1[11] = v57;
    *v57 = v1;
    v57[1] = sub_1A88AB214;

    return sub_1A88B2C78(v49);
  }

  v53 = sub_1A88C7E38();
  v54 = sub_1A88C89D8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_1A85E5000, v53, v54, "downloadTransfers: All guids are already in progress. Waiting for them to complete.", v55, 2u);
    MEMORY[0x1AC571F20](v55, -1, -1);
  }

  v1[13] = v44;
  v56 = v1[9];
  if (*(v56 + 16))
  {

    goto LABEL_50;
  }

  v58 = *(v44 + 16);

  if (v58)
  {
LABEL_50:

    v59 = MEMORY[0x1E69E7CC0];

    v60 = sub_1A88C7E38();
    v61 = sub_1A88C89D8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134218240;
      *(v62 + 4) = *(v59 + 16);

      *(v62 + 12) = 2048;
      *(v62 + 14) = *(v56 + 16);

      _os_log_impl(&dword_1A85E5000, v60, v61, "downloadTransfers: Downloading %ld mirror files, and waiting for: %ld in progress downloads.", v62, 0x16u);
      MEMORY[0x1AC571F20](v62, -1, -1);
    }

    else
    {
    }

    v63 = *(v56 + 16);
    v64 = v1[9];
    if (v63)
    {
      v65 = sub_1A85F2008(*(v56 + 16), 0);
      v66 = sub_1A87375AC(v84, (v65 + 32), v63, v64);
      sub_1A85EF290();
      if (v66 == v63)
      {
LABEL_57:
        v1[14] = v65;
        v68 = v1[4];
        v67 = v1[5];
        v69 = sub_1A870CCE0(&unk_1EB309070);
        v71 = sub_1A85FC5FC(&qword_1EB303CB0, v70, type metadata accessor for RemoteIntentFileDownloadActor);
        v72 = swift_task_alloc();
        v1[15] = v72;
        v72[2] = v59;
        v72[3] = v68;
        v72[4] = v65;
        v73 = sub_1A870CCE0(&unk_1EB309080);
        v74 = swift_task_alloc();
        v1[16] = v74;
        *v74 = v1;
        v74[1] = sub_1A88AB884;
        v87 = v73;

        return MEMORY[0x1EEE6DBF8](v1 + 2, v69, v73, v67, v71, &unk_1A88FA560, v72, v69);
      }

      __break(1u);
    }

    v65 = MEMORY[0x1E69E7CC0];
    goto LABEL_57;
  }

  v75 = sub_1A88C7E38();
  v76 = sub_1A88C89C8();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v84[0] = v78;
    *v77 = 136315138;
    v79 = sub_1A88C8908();
    v81 = v80;

    v82 = sub_1A85F0394(v79, v81, v84);

    *(v77 + 4) = v82;
    _os_log_impl(&dword_1A85E5000, v75, v76, "downloadTransfers: Could not finish downloading because we failed to retrieve mirror files or any active downloads for guids: %s", v77, 0xCu);
    sub_1A85F1084(v78);
    MEMORY[0x1AC571F20](v78, -1, -1);
    MEMORY[0x1AC571F20](v77, -1, -1);
  }

  else
  {
  }

  v3 = v1[6];
LABEL_27:
  v41 = v1[1];

  return v41(v3);
}

uint64_t sub_1A88AB214(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A88AB32C, v2, 0);
}

uint64_t sub_1A88AB32C()
{
  v40 = v0;
  if (!*(v0[12] + 16))
  {

    v1 = sub_1A88C7E38();
    v2 = sub_1A88C89C8();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v39 = v4;
      *v3 = 136315138;
      v5 = sub_1A88C8908();
      v7 = v6;

      v8 = sub_1A85F0394(v5, v7, &v39);

      *(v3 + 4) = v8;
      _os_log_impl(&dword_1A85E5000, v1, v2, "downloadTransfers: Some GUIDs could not be downloaded because they failed to return mirror file representations: %s", v3, 0xCu);
      sub_1A85F1084(v4);
      MEMORY[0x1AC571F20](v4, -1, -1);
      MEMORY[0x1AC571F20](v3, -1, -1);

      goto LABEL_6;
    }
  }

LABEL_6:
  v9 = v0[12];
  v0[13] = v9;
  v10 = v0[9];
  v11 = *(v10 + 16);

  if (v11)
  {

    goto LABEL_9;
  }

  v12 = *(v9 + 16);

  if (v12)
  {
LABEL_9:

    v13 = sub_1A88C7E38();
    v14 = sub_1A88C89D8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218240;
      *(v15 + 4) = *(v9 + 16);

      *(v15 + 12) = 2048;
      *(v15 + 14) = *(v10 + 16);

      _os_log_impl(&dword_1A85E5000, v13, v14, "downloadTransfers: Downloading %ld mirror files, and waiting for: %ld in progress downloads.", v15, 0x16u);
      MEMORY[0x1AC571F20](v15, -1, -1);
    }

    else
    {
    }

    v16 = *(v10 + 16);
    v17 = v0[9];
    if (v16)
    {
      v18 = sub_1A85F2008(*(v10 + 16), 0);
      v19 = sub_1A87375AC(&v39, (v18 + 32), v16, v17);
      sub_1A85EF290();
      if (v19 == v16)
      {
LABEL_16:
        v0[14] = v18;
        v21 = v0[4];
        v20 = v0[5];
        v22 = sub_1A870CCE0(&unk_1EB309070);
        v24 = sub_1A85FC5FC(&qword_1EB303CB0, v23, type metadata accessor for RemoteIntentFileDownloadActor);
        v25 = swift_task_alloc();
        v0[15] = v25;
        v25[2] = v9;
        v25[3] = v21;
        v25[4] = v18;
        v26 = sub_1A870CCE0(&unk_1EB309080);
        v27 = swift_task_alloc();
        v0[16] = v27;
        *v27 = v0;
        v27[1] = sub_1A88AB884;
        v42 = v26;

        return MEMORY[0x1EEE6DBF8](v0 + 2, v22, v26, v20, v24, &unk_1A88FA560, v25, v22);
      }

      __break(1u);
    }

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v28 = sub_1A88C7E38();
  v29 = sub_1A88C89C8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v30 = 136315138;
    v32 = sub_1A88C8908();
    v34 = v33;

    v35 = sub_1A85F0394(v32, v34, &v39);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_1A85E5000, v28, v29, "downloadTransfers: Could not finish downloading because we failed to retrieve mirror files or any active downloads for guids: %s", v30, 0xCu);
    sub_1A85F1084(v31);
    MEMORY[0x1AC571F20](v31, -1, -1);
    MEMORY[0x1AC571F20](v30, -1, -1);
  }

  else
  {
  }

  v36 = v0[6];
  v37 = v0[1];

  return v37(v36);
}

uint64_t sub_1A88AB884()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1A88AB9F0, v1, 0);
}

uint64_t sub_1A88AB9F0()
{
  v20 = v0;
  v1 = v0[6];
  v2 = v0[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19[0] = v1;
  sub_1A88B3420(v2, sub_1A87372B8, 0, isUniquelyReferenced_nonNull_native, v19);

  v4 = v19[0];

  v5 = sub_1A88C7E38();
  v6 = sub_1A88C89D8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v18 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19[0] = v10;
    *v9 = 134218754;
    *(v9 + 4) = *(v4 + 16);

    *(v9 + 12) = 2048;
    v11 = *(v2 + 16);

    *(v9 + 14) = v11;

    *(v9 + 22) = 2048;
    v12 = *(v8 + 16);

    *(v9 + 24) = v12;

    *(v9 + 32) = 2080;
    v13 = MEMORY[0x1AC56EED0](v18, MEMORY[0x1E69E6158]);
    v15 = sub_1A85F0394(v13, v14, v19);

    *(v9 + 34) = v15;
    _os_log_impl(&dword_1A85E5000, v5, v6, "downloadTransfers: Completed with %ld total results, of which %ld were newly downloaded, and %ld were already present on disk. All requested guids: %s", v9, 0x2Au);
    sub_1A85F1084(v10);
    MEMORY[0x1AC571F20](v10, -1, -1);
    MEMORY[0x1AC571F20](v9, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v16 = v0[1];

  return v16(v4);
}

uint64_t sub_1A88ABC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) - 8);
  v5[22] = v6;
  v5[23] = *(v6 + 64);
  v5[24] = swift_task_alloc();
  sub_1A870CCE0(&unk_1EB3090D0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB309050;
  v5[29] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88ABDE8, v7, 0);
}

uint64_t sub_1A88ABDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 152);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v4 + 176);
    v54 = **(v4 + 144);
    v8 = *(v7 + 80);
    v9 = v5 + ((v8 + 32) & ~v8);
    v52 = *(v7 + 72);
    v51 = (v8 + 40) & ~v8;
    v10 = sub_1A88C87A8();
    v11 = *(v10 - 8);
    v50 = *(v11 + 56);
    v49 = (v11 + 48);
    v48 = (v11 + 8);
    do
    {
      v57 = v6;
      v14 = *(v4 + 216);
      v13 = *(v4 + 224);
      v15 = *(v4 + 192);
      v16 = *(v4 + 160);
      v50(v13, 1, 1, v10);
      sub_1A87601F0(v9, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v16;
      sub_1A8760254(v15, v17 + v51);
      sub_1A8728D80(v13, v14, &unk_1EB3090D0);
      LODWORD(v14) = (*v49)(v14, 1, v10);

      v18 = *(v4 + 216);
      if (v14 == 1)
      {
        sub_1A85EF638(*(v4 + 216), &unk_1EB3090D0);
      }

      else
      {
        sub_1A88C8798();
        (*v48)(v18, v10);
      }

      if (v17[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v19 = sub_1A88C86D8();
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = 0;
        v21 = 0;
      }

      v22 = swift_allocObject();
      *(v22 + 16) = &unk_1A88FA888;
      *(v22 + 24) = v17;

      sub_1A870CCE0(&unk_1EB309070);
      v23 = v21 | v19;
      if (v21 | v19)
      {
        v23 = v4 + 16;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 32) = v19;
        *(v4 + 40) = v21;
      }

      v12 = *(v4 + 224);
      *(v4 + 80) = 1;
      *(v4 + 88) = v23;
      *(v4 + 96) = v54;
      swift_task_create();

      sub_1A85EF638(v12, &unk_1EB3090D0);
      v9 += v52;
      v6 = v57 - 1;
    }

    while (v57 != 1);
  }

  v24 = *(v4 + 168);
  if (v24 >> 62)
  {
    v25 = sub_1A88C8D38();
    if (v25)
    {
      goto LABEL_14;
    }

LABEL_28:
    v41 = sub_1A870CCE0(&qword_1EB309118);
    *(v4 + 240) = v41;
    *(v4 + 248) = *(v41 - 8);
    *(v4 + 256) = swift_task_alloc();
    *(v4 + 264) = sub_1A870CCE0(&unk_1EB309070);
    sub_1A88C8718();
    sub_1A870CCE0(&qword_1EB309120);
    *(v4 + 272) = swift_task_alloc();
    v43 = sub_1A85FC5FC(&qword_1EB303CB0, v42, type metadata accessor for RemoteIntentFileDownloadActor);
    v44 = MEMORY[0x1E69E7CC8];
    *(v4 + 280) = v43;
    *(v4 + 288) = v44;
    v45 = *(v4 + 232);
    v46 = swift_task_alloc();
    *(v4 + 296) = v46;
    *v46 = v4;
    v46[1] = sub_1A88AC5A8;
    v25 = *(v4 + 272);
    a4 = *(v4 + 240);
    a2 = v45;
    a3 = v43;

    return MEMORY[0x1EEE6D8A8](v25, a2, a3, a4);
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_28;
  }

LABEL_14:
  if (v25 >= 1)
  {
    v26 = 0;
    v58 = v24 & 0xC000000000000001;
    v53 = *(v4 + 168) + 32;
    v55 = v25;
    v56 = **(v4 + 144);
    while (1)
    {
      if (v58)
      {
        v28 = MEMORY[0x1AC56F710](v26, *(v4 + 168));
      }

      else
      {
        v28 = *(v53 + 8 * v26);
      }

      v29 = *(v4 + 200);
      v30 = *(v4 + 208);
      v31 = sub_1A88C87A8();
      v32 = *(v31 - 8);
      (*(v32 + 56))(v30, 1, 1, v31);
      v33 = swift_allocObject();
      v33[2] = 0;
      v34 = v33 + 2;
      v33[3] = 0;
      v33[4] = v28;
      sub_1A8728D80(v30, v29, &unk_1EB3090D0);
      LODWORD(v29) = (*(v32 + 48))(v29, 1, v31);

      v35 = *(v4 + 200);
      if (v29 == 1)
      {
        sub_1A85EF638(*(v4 + 200), &unk_1EB3090D0);
        if (*v34)
        {
          goto LABEL_24;
        }
      }

      else
      {
        sub_1A88C8798();
        (*(v32 + 8))(v35, v31);
        if (*v34)
        {
LABEL_24:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v36 = sub_1A88C86D8();
          v37 = v38;
          swift_unknownObjectRelease();
          goto LABEL_25;
        }
      }

      v36 = 0;
      v37 = 0;
LABEL_25:
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_1A88FA8A0;
      *(v39 + 24) = v33;

      sub_1A870CCE0(&unk_1EB309070);
      v40 = v37 | v36;
      if (v37 | v36)
      {
        v40 = v4 + 48;
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        *(v4 + 64) = v36;
        *(v4 + 72) = v37;
      }

      ++v26;
      v27 = *(v4 + 208);
      *(v4 + 104) = 1;
      *(v4 + 112) = v40;
      *(v4 + 120) = v56;
      swift_task_create();

      sub_1A85EF638(v27, &unk_1EB3090D0);
      if (v55 == v26)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6D8A8](v25, a2, a3, a4);
}

uint64_t sub_1A88AC5A8()
{
  v1 = *(*v0 + 232);

  return MEMORY[0x1EEE6DFA0](sub_1A88AC6B8, v1, 0);
}

uint64_t sub_1A88AC6B8()
{
  v1 = v0[33];
  v2 = v0[34];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[36];
    v4 = v0[17];
    (*(v0[31] + 8))(v0[32], v0[30]);

    *v4 = v3;

    v5 = v0[1];

    return v5();
  }

  v38 = *v2;
  v39 = v2[1];
  v7 = *(v1 + 48);
  v8 = sub_1A88C72E8();
  v9 = *(v8 - 8);
  v10 = swift_task_alloc();
  v11 = &unk_1EB309060;
  sub_1A870CCE0(&unk_1EB309060);
  v12 = swift_task_alloc();
  sub_1A8761C7C(v2 + v7, v12, &unk_1EB309060);
  if ((*(v9 + 48))(v12, 1, v8) == 1)
  {

    sub_1A85EF638(v12, &unk_1EB309060);

    goto LABEL_21;
  }

  v13 = v0[36];
  v37 = *(v9 + 32);
  v37(v10, v12, v8);

  v14 = swift_task_alloc();
  (*(v9 + 16))(v14, v10, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[16] = v13;
  v16 = v38;
  v17 = sub_1A85F5F40(v38, v39);
  v19 = *(v13 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  LOBYTE(v11) = v18;
  if (*(v0[36] + 24) >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_14:
      if (v11)
      {
LABEL_15:
        v24 = v17;

        v25 = v0[16];
        (*(v9 + 40))(v25[7] + *(v9 + 72) * v24, v14, v8);
        (*(v9 + 8))(v10, v8);
LABEL_20:

        v0[36] = v25;
LABEL_21:
        v34 = v0[35];
        v35 = v0[29];
        v36 = swift_task_alloc();
        v0[37] = v36;
        *v36 = v0;
        v36[1] = sub_1A88AC5A8;
        v28 = v0[34];
        v31 = v0[30];
        v29 = v35;
        v30 = v34;

        return MEMORY[0x1EEE6D8A8](v28, v29, v30, v31);
      }

LABEL_18:
      v25 = v0[16];
      v25[(v17 >> 6) + 8] |= 1 << v17;
      v27 = (v25[6] + 16 * v17);
      *v27 = v16;
      v27[1] = v39;
      v37(v25[7] + *(v9 + 72) * v17, v14, v8);
      v28 = (*(v9 + 8))(v10, v8);
      v32 = v25[2];
      v21 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v21)
      {
        __break(1u);
        return MEMORY[0x1EEE6D8A8](v28, v29, v30, v31);
      }

      v25[2] = v33;
      goto LABEL_20;
    }

LABEL_17:
    v26 = v17;
    sub_1A87B0D88();
    v17 = v26;
    v16 = v38;
    if (v11)
    {
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  sub_1A88786D4(v22, isUniquelyReferenced_nonNull_native);
  v17 = sub_1A85F5F40(v38, v39);
  if ((v11 & 1) == (v23 & 1))
  {
    goto LABEL_14;
  }

  return sub_1A88C9488();
}

uint64_t sub_1A88ACBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v7 = sub_1A88C72E8();
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  sub_1A870CCE0(&unk_1EB309060);
  v8 = swift_task_alloc();
  v5[7] = v8;
  v9 = swift_task_alloc();
  v5[8] = v9;
  *v9 = v5;
  v9[1] = sub_1A88ACCF4;

  return sub_1A88AD55C(v8, a5);
}

uint64_t sub_1A88ACCF4()
{

  if (v0)
  {

    v1 = sub_1A88ACE0C;
  }

  else
  {
    v1 = sub_1A88ACF2C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A88ACE0C()
{
  v1 = v0[7];
  v2 = v0[4];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0[5] + 56);
  v5(v1, 1, 1, v2);
  sub_1A85EF638(v1, &unk_1EB309060);

  v6 = *(sub_1A870CCE0(&unk_1EB309070) + 48);
  v7 = (v3 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24));
  v8 = v7[1];
  *v4 = *v7;
  v4[1] = v8;
  v5(v4 + v6, 1, 1, v2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1A88ACF2C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v12 = v0[3];
  v6 = *(v4 + 56);
  v6(v1, 0, 1, v3);
  v7 = *(v4 + 32);
  v7(v2, v1, v3);

  v8 = *(sub_1A870CCE0(&unk_1EB309070) + 48);
  v9 = (v12 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24));
  v10 = v9[1];
  *v5 = *v9;
  *(v5 + 1) = v10;
  v7(&v5[v8], v2, v3);
  v6(&v5[v8], 0, 1, v3);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A88AD07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A88AD09C, 0, 0);
}

uint64_t sub_1A88AD09C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v3 = (v1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v2);
  v0[4] = *v3;
  v0[5] = v3[1];
  v4 = sub_1A88C72E8();
  v0[6] = v4;
  v0[7] = *(v4 - 8);
  v0[8] = swift_task_alloc();
  sub_1A870CCE0(&unk_1EB309060);
  v5 = swift_task_alloc();
  v0[9] = v5;

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1A88AD214;

  return sub_1A8758E28(v5);
}

uint64_t sub_1A88AD214()
{

  if (v0)
  {

    v1 = sub_1A88AD32C;
  }

  else
  {
    v1 = sub_1A88AD42C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A88AD32C()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = *(v0[7] + 56);
  v6(v1, 1, 1, v2);
  sub_1A85EF638(v1, &unk_1EB309060);

  v7 = *(sub_1A870CCE0(&unk_1EB309070) + 48);
  *v5 = v4;
  v5[1] = v3;
  v6(v5 + v7, 1, 1, v2);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1A88AD42C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v12 = v0[5];
  v6 = v0[2];
  v7 = *(v4 + 56);
  v7(v2, 0, 1, v3);
  v8 = *(v4 + 32);
  v8(v1, v2, v3);

  v9 = *(sub_1A870CCE0(&unk_1EB309070) + 48);
  *v6 = v5;
  *(v6 + 1) = v12;
  v8(&v6[v9], v1, v3);
  v7(&v6[v9], 0, 1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1A88AD55C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v3[9] = swift_task_alloc();
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB309050;
  v3[10] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88AD62C, v4, 0);
}

uint64_t sub_1A88AD62C()
{
  v70 = v0;
  v1 = (*(v0 + 48) + *(*(v0 + 64) + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1A88C72E8();
  *(v0 + 88) = v4;
  v5 = *(v4 - 8);
  *(v0 + 96) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v7 = *(v5 + 16);
  v7();

  v8 = sub_1A88A7A2C(v2, v3);
  *(v0 + 112) = v8;

  if (v8)
  {
    v9 = v3;
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v10 = sub_1A88C7E58();
    sub_1A85EF0E4(v10, qword_1EB309030);

    v11 = sub_1A88C7E38();
    v12 = sub_1A88C89D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v2;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v69[0] = v15;
      *v14 = 136315138;
      v16 = sub_1A85F0394(v13, v9, v69);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1A85E5000, v11, v12, "downloadMirrorFile[%s]: Mirror is already being downloaded. Waiting on existing download.", v14, 0xCu);
      sub_1A85F1084(v15);
      MEMORY[0x1AC571F20](v15, -1, -1);
      MEMORY[0x1AC571F20](v14, -1, -1);
    }

    else
    {
    }

    v36 = swift_task_alloc();
    *(v0 + 120) = v36;
    *v36 = v0;
    v36[1] = sub_1A88AE0F4;
    v37 = *(v0 + 40);

    return sub_1A8758E28(v37);
  }

  v64 = v7;
  v66 = v6;
  v17 = swift_task_alloc();
  sub_1A870CCE0(&unk_1EB309060);
  v18 = swift_task_alloc();
  v65 = v2;
  v67 = v3;
  sub_1A88A88BC(v2, v3, v18);
  v19 = v4;
  if ((*(v5 + 48))(v18, 1, v4) != 1)
  {
    v68 = *(v5 + 32);
    v68(v17, v18, v4);

    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v39 = sub_1A88C7E58();
    sub_1A85EF0E4(v39, qword_1EB309030);

    v40 = sub_1A88C7E38();
    v41 = sub_1A88C89D8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v69[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1A85F0394(v2, v67, v69);
      _os_log_impl(&dword_1A85E5000, v40, v41, "downloadMirrorFile[%s]: File transfer already has a valid localURL.", v42, 0xCu);
      sub_1A85F1084(v43);
      v44 = v43;
      v19 = v4;
      MEMORY[0x1AC571F20](v44, -1, -1);
      MEMORY[0x1AC571F20](v42, -1, -1);
    }

    (*(v5 + 8))(v66, v19);
    v68(*(v0 + 40), v17, v19);

    v45 = *(v0 + 8);
    goto LABEL_24;
  }

  v20 = *(v0 + 48);
  sub_1A85EF638(v18, &unk_1EB309060);

  v21 = sub_1A8872268(v20);
  v23 = v21;
  v24 = v22;
  v26 = v25;
  if (v25 < 2u || v21 | v22)
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v27 = sub_1A88C7E58();
    sub_1A85EF0E4(v27, qword_1EB309030);

    sub_1A8872EFC(v23, v24, v26);
    v28 = sub_1A88C7E38();
    v29 = sub_1A88C89D8();
    sub_1A8872F14(v23, v24, v26);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v69[0] = v31;
      *v30 = 136315394;
      v32 = sub_1A85F0394(v65, v67, v69);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      *(v0 + 16) = v23;
      *(v0 + 24) = v24;
      *(v0 + 32) = v26;
      sub_1A8872EFC(v23, v24, v26);
      v33 = sub_1A88C8338();
      v35 = sub_1A85F0394(v33, v34, v69);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1A85E5000, v28, v29, "downloadMirrorFile[%s]: not allowed to download transfer. Reason: %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC571F20](v31, -1, -1);
      MEMORY[0x1AC571F20](v30, -1, -1);
    }

    else
    {
    }

    sub_1A8760454();
    swift_allocError();
    *v46 = v23;
    *(v46 + 8) = v24;
    *(v46 + 16) = v26;
    swift_willThrow();
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v45 = *(v0 + 8);
LABEL_24:

    return v45();
  }

  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v47 = sub_1A88C7E58();
  sub_1A85EF0E4(v47, qword_1EB309030);
  v48 = swift_task_alloc();
  (v64)(v48, v66, v4);

  v49 = sub_1A88C7E38();
  v50 = sub_1A88C89D8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = v4;
    v53 = swift_slowAlloc();
    v69[0] = v53;
    *v51 = 136315394;
    *(v51 + 4) = sub_1A85F0394(v65, v67, v69);
    *(v51 + 12) = 2080;
    sub_1A8746020();
    v54 = sub_1A88C9348();
    v56 = v55;
    (*(v5 + 8))(v48, v52);
    v57 = sub_1A85F0394(v54, v56, v69);

    *(v51 + 14) = v57;
    _os_log_impl(&dword_1A85E5000, v49, v50, "downloadMirrorFile[%s]: Starting task to download from remote path: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v53, -1, -1);
    MEMORY[0x1AC571F20](v51, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v48, v4);
  }

  v58 = *(v0 + 72);
  v59 = *(v0 + 48);

  sub_1A87601F0(v59, v58);
  type metadata accessor for RemoteIntentFileDownloadTask();
  v60 = swift_allocObject();
  *(v60 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_totalBytes) = 0;
  *(v60 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_numberOfAttempts) = 0;
  *(v0 + 136) = v60;
  *(v60 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_isCancelled) = 0;
  v61 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result;
  v62 = sub_1A870CCE0(&unk_1EB309090);
  (*(*(v62 - 8) + 56))(v60 + v61, 1, 1, v62);
  *(v60 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_continuations) = MEMORY[0x1E69E7CC0];
  *(v60 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_activeTask) = 0;
  sub_1A8760254(v58, v60 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile);
  sub_1A88AF428(v60);
  v63 = swift_task_alloc();
  *(v0 + 144) = v63;
  *v63 = v0;
  v63[1] = sub_1A88AE2BC;

  return sub_1A88AE718(v60);
}

uint64_t sub_1A88AE0F4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1A88AE5E0;
  }

  else
  {
    v4 = sub_1A88AE220;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A88AE220()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A88AE2BC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v2;
  v3[1] = sub_1A88AE414;
  v4 = *(v1 + 40);

  return sub_1A8758E28(v4);
}

uint64_t sub_1A88AE414()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1A88AE67C;
  }

  else
  {
    v4 = sub_1A88AE540;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A88AE540()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A88AE5E0()
{

  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A88AE67C()
{

  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A88AE718(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1A870CCE0(&unk_1EB3090D0);
  v2[4] = swift_task_alloc();
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB309050;
  v2[5] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88AE7EC, v3, 0);
}

uint64_t sub_1A88AE7EC()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v3 = (v1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v2);
  v0[6] = *v3;
  v0[7] = v3[1];

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1A88AE8BC;
  v5 = v0[2];

  return sub_1A88AF5F4(v5);
}

uint64_t sub_1A88AE8BC(char a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A88AE9D4, v2, 0);
}

uint64_t sub_1A88AE9D4()
{
  v25 = v0;
  if (*(v0 + 72) == 1)
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v1 = sub_1A88C7E58();
    sub_1A85EF0E4(v1, qword_1EB309030);

    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1A85F0394(v5, v4, &v24);
      v8 = "startTask[%s]: Resumed after being suspended.";
LABEL_10:
      _os_log_impl(&dword_1A85E5000, v2, v3, v8, v6, 0xCu);
      sub_1A85F1084(v7);
      MEMORY[0x1AC571F20](v7, -1, -1);
      MEMORY[0x1AC571F20](v6, -1, -1);
    }
  }

  else
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB309030);

    v2 = sub_1A88C7E38();
    v3 = sub_1A88C89D8();

    if (os_log_type_enabled(v2, v3))
    {
      v11 = *(v0 + 48);
      v10 = *(v0 + 56);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v24 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_1A85F0394(v11, v10, &v24);
      v8 = "startTask[%s]: Kicking off download.";
      goto LABEL_10;
    }
  }

  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  v17 = *(v0 + 16);
  v16 = *(v0 + 24);
  sub_1A88AFC10(v17);
  sub_1A88C8778();
  v18 = sub_1A88C87A8();
  (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
  v20 = sub_1A85FC5FC(&qword_1EB303CB0, v19, type metadata accessor for RemoteIntentFileDownloadActor);
  v21 = swift_allocObject();
  v21[2] = v15;
  v21[3] = v20;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v13;
  v21[7] = v12;

  sub_1A885A178(0, 0, v14, &unk_1A88FA848, v21);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1A88AED40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB309050;
  v7[6] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88AEDE0, v8, 0);
}

uint64_t sub_1A88AEDE0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v0[7] = sub_1A88AFDBC(v0[3]);
  v4 = *(v3 + 64);
  v0[8] = v4;
  v5 = sub_1A870CCE0(&unk_1EB3090C0);
  v0[9] = v5;
  v0[10] = *(*(v5 - 8) + 64);
  v6 = swift_task_alloc();
  v0[11] = v6;
  v7 = swift_allocObject();
  v0[12] = v7;
  v7[2] = v4;
  v7[3] = v2;
  v7[4] = v1;
  swift_unknownObjectRetain_n();

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_1A88AEF38;

  return sub_1A8759B94(v6, sub_1A88B4920, v7);
}

uint64_t sub_1A88AEF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 112) = v3;

  if (v3)
  {
    v9 = *(v8 + 48);
    v10 = sub_1A88AF21C;
  }

  else
  {
    v11 = *(v8 + 72);
    v12 = *(v8 + 48);

    *(v8 + 120) = a3;
    *(v8 + 128) = a2;
    *(v8 + 136) = a1;
    *(v8 + 144) = v11[12];
    *(v8 + 148) = v11[16];
    *(v8 + 152) = v11[20];
    v10 = sub_1A88AF0A0;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1A88AF0A0()
{
  v2 = *(v0 + 148);
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 72);
  v7 = *(v0 + 24);
  *(v5 + *(v0 + 144)) = *(v0 + 136);
  *(v5 + v2) = v3;
  *(v5 + v1) = v4;
  swift_getObjectType();
  sub_1A88C8AF8();
  v8 = swift_task_alloc();
  sub_1A8728D80(v5, v8, &unk_1EB3090C0);
  sub_1A88B0C28(v7, v8, *(v8 + v6[12]), *(v8 + v6[16]), *(v8 + v6[20]));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1A85EF638(v5, &unk_1EB3090C0);
  v9 = sub_1A88C72E8();
  (*(*(v9 - 8) + 8))(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A88AF21C()
{
  v1 = v0[14];
  v2 = v0[3];

  swift_unknownObjectRelease();

  swift_getObjectType();
  sub_1A88C8AF8();
  sub_1A88B09E8(v1, v2);
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A88AF2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1A870CCE0(&unk_1EB3090C0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = sub_1A88C72E8();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  *&v13[v11[14]] = a2;
  *&v13[v11[18]] = a3;
  *&v13[v11[22]] = a4;
  if (a5)
  {
    v15 = sub_1A88C82A8();
    [a5 fileTransfer:v15 updatedWithCurrentBytes:a2 totalBytes:a3 averageTransferRate:a4];
  }

  return sub_1A85EF638(v13, &unk_1EB3090C0);
}

uint64_t sub_1A88AF428(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v5 = (a1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v4);
  v6 = *v5;
  v7 = v5[1];

  sub_1A88A792C(a1, v6, v7);

  v8 = *(*(v2 + 88) + 16);
  result = swift_beginAccess();
  if (*(*(v8 + 32) + 16) >= 0x41uLL)
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v10 = sub_1A88C7E58();
    sub_1A85EF0E4(v10, qword_1EB309030);
    v11 = sub_1A88C7E38();
    v12 = sub_1A88C89C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = 64;
      _os_log_impl(&dword_1A85E5000, v11, v12, "Download task limit reached: %ld. Removing and cancelling oldest download.", v13, 0xCu);
      MEMORY[0x1AC571F20](v13, -1, -1);
    }

    v14 = *(*(v2 + 88) + 16);
    result = swift_beginAccess();
    if (*(v14 + 16))
    {
      swift_beginAccess();

      sub_1A88B1D2C(v15);
    }
  }

  return result;
}

uint64_t sub_1A88AF5F4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB309050;
  v2[7] = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88AF690, v3, 0);
}

uint64_t sub_1A88AF690()
{
  v16 = v0;
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(*(v1 + 104) + 16);
  v0[8] = v2;
  if (v2 < 8)
  {
    v13 = v0[1];

    return v13(0);
  }

  else
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v3 = sub_1A88C7E58();
    sub_1A85EF0E4(v3, qword_1EB309030);

    v4 = sub_1A88C7E38();
    v5 = sub_1A88C89D8();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[5];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315394;
      v9 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
      v10 = v6 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v9;
      *(v7 + 4) = sub_1A85F0394(*v10, *(v10 + 8), &v15);
      *(v7 + 12) = 2048;
      *(v7 + 14) = v2;
      _os_log_impl(&dword_1A85E5000, v4, v5, "suspendTaskIfNecessary[%s]: Suspending because we hit the maximum concurrent downloads (%ld). The download will resume when the next task finishes.", v7, 0x16u);
      sub_1A85F1084(v8);
      MEMORY[0x1AC571F20](v8, -1, -1);
      MEMORY[0x1AC571F20](v7, -1, -1);
    }

    sub_1A85FC5FC(&qword_1EB303CB0, v11, type metadata accessor for RemoteIntentFileDownloadActor);
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_1A88AF960;

    return MEMORY[0x1EEE6DDE0]();
  }
}

uint64_t sub_1A88AF960()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A88AFA70, v1, 0);
}

uint64_t sub_1A88AFA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB303D00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = *(a2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 112) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1A8735ED8(0, v8[2] + 1, 1, v8);
    *(a2 + 112) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1A8735ED8(v10 > 1, v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 112) = v8;
  return result;
}

void sub_1A88AFC10(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v5 = (a1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v4);
  v6 = *v5;
  v7 = v5[1];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = *(v2 + 104);
  *(v2 + 104) = 0x8000000000000000;
  sub_1A87AC3E4(a1, v6, v7, isUniquelyReferenced_nonNull_native);

  *(v2 + 104) = v14[0];
  swift_endAccess();
  v9 = *(a1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_numberOfAttempts);
  v10 = __CFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_numberOfAttempts) = v11;
    swift_beginAccess();
    sub_1A8728D80(v2 + 120, v17, &unk_1EB3090A0);
    if (v18)
    {
      sub_1A86061B4(v17, v14);
      sub_1A85EF638(v17, &unk_1EB3090A0);
      v12 = v15;
      v13 = v16;
      sub_1A870C278(v14, v15);
      (*(v13 + 8))(v6, v7, v12, v13);
      sub_1A85F1084(v14);
    }

    else
    {
      sub_1A85EF638(v17, &unk_1EB3090A0);
    }

    sub_1A88B19DC();
  }
}

uint64_t sub_1A88AFDBC(uint64_t a1)
{
  v2 = sub_1A88C7EC8();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1A88C7EF8();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A88C7EA8();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v41 - v8;
  v9 = sub_1A88C7F28();
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = sub_1A88C8AB8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v19 = sub_1A88C7E58();
  sub_1A85EF0E4(v19, qword_1EB309030);

  v20 = sub_1A88C7E38();
  v21 = sub_1A88C89D8();

  v22 = os_log_type_enabled(v20, v21);
  v54 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315394;
    v25 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
    v26 = v54 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v25;
    *(v23 + 4) = sub_1A85F0394(*v26, *(v26 + 8), aBlock);
    *(v23 + 12) = 2048;
    *(v23 + 14) = 0x405E000000000000;
    _os_log_impl(&dword_1A85E5000, v20, v21, "Starting timeout timer for %s with timeout: %f", v23, 0x16u);
    sub_1A85F1084(v24);
    MEMORY[0x1AC571F20](v24, -1, -1);
    MEMORY[0x1AC571F20](v23, -1, -1);
  }

  sub_1A85E9718(0, &qword_1EB3007E0);
  sub_1A88C8AA8();
  sub_1A85E9718(0, &qword_1ED8C95A0);
  v27 = sub_1A88C8A38();
  v55 = sub_1A88C8AC8();

  (*(v16 + 8))(v18, v15);
  ObjectType = swift_getObjectType();
  v41 = ObjectType;
  sub_1A88C7F08();
  sub_1A88C7F58();
  v29 = v46;
  v45 = *(v45 + 8);
  (v45)(v12, v46);
  v30 = v42;
  v31 = v43;
  v32 = *(v42 + 104);
  v33 = v47;
  v32(v47, *MEMORY[0x1E69E7F40], v43);
  v34 = v44;
  *v44 = 0;
  v32(v34, *MEMORY[0x1E69E7F28], v31);
  MEMORY[0x1AC56F410](v14, v33, v34, ObjectType);
  v35 = *(v30 + 8);
  v35(v34, v31);
  v35(v33, v31);
  (v45)(v14, v29);
  aBlock[4] = sub_1A88B4788;
  aBlock[5] = v54;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB8B28;
  v36 = _Block_copy(aBlock);

  v37 = v48;
  _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  v38 = v50;
  sub_1A88A76AC();
  v39 = v55;
  sub_1A88C8AE8();
  _Block_release(v36);
  (*(v52 + 8))(v38, v53);
  (*(v49 + 8))(v37, v51);

  sub_1A88C8B08();
  return v39;
}

uint64_t sub_1A88B046C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&unk_1EB3090D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  sub_1A85EF0E4(v5, qword_1EB309030);

  v6 = sub_1A88C7E38();
  v7 = sub_1A88C89C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
    v11 = a1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v10;
    *(v8 + 4) = sub_1A85F0394(*v11, *(v11 + 8), &v20);
    _os_log_impl(&dword_1A85E5000, v6, v7, "Timed out download for: %s. Cancelling task.", v8, 0xCu);
    sub_1A85F1084(v9);
    MEMORY[0x1AC571F20](v9, -1, -1);
    MEMORY[0x1AC571F20](v8, -1, -1);
  }

  v12 = sub_1A88C87A8();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = qword_1EB302380;

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_1EB309050;
  v16 = sub_1A85FC5FC(&qword_1EB303CB0, v14, type metadata accessor for RemoteIntentFileDownloadActor);
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = a1;

  sub_1A885A178(0, 0, v4, &unk_1A88FA830, v17);
}

uint64_t sub_1A88B072C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88B07C4, v5, 0);
}

uint64_t sub_1A88B07C4()
{
  v15 = v0;
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_activeTask))
  {
    v2 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
    v3 = (v1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v2);
    v5 = *v3;
    v4 = v3[1];

    sub_1A870CCE0(&unk_1EB3090C0);
    sub_1A870CCE0(&unk_1EB3037B0);
    sub_1A88C8848();
    if (qword_1EB302160 != -1)
    {
      swift_once();
    }

    v6 = sub_1A88C7E58();
    sub_1A85EF0E4(v6, qword_1EB304A98);

    v7 = sub_1A88C7E38();
    v8 = sub_1A88C89D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      v11 = sub_1A85F0394(v5, v4, &v14);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_1A85E5000, v7, v8, "download[%s]: Cancelled.", v9, 0xCu);
      sub_1A85F1084(v10);
      MEMORY[0x1AC571F20](v10, -1, -1);
      MEMORY[0x1AC571F20](v9, -1, -1);
    }

    else
    {
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A88B09E8(void *a1, uint64_t a2)
{
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v4 = sub_1A88C7E58();
  sub_1A85EF0E4(v4, qword_1EB309030);

  v5 = a1;
  v6 = sub_1A88C7E38();
  v7 = sub_1A88C89C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v8 = 136315394;
    v11 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
    v12 = a2 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v11;
    *(v8 + 4) = sub_1A85F0394(*v12, *(v12 + 8), v20);
    *(v8 + 12) = 2112;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_1A85E5000, v6, v7, "Caught error while downloading %s. We will schedule a retry if necessary. Error: %@", v8, 0x16u);
    sub_1A85EF638(v9, &qword_1EB306540);
    MEMORY[0x1AC571F20](v9, -1, -1);
    sub_1A85F1084(v10);
    MEMORY[0x1AC571F20](v10, -1, -1);
    MEMORY[0x1AC571F20](v8, -1, -1);
  }

  v15 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v16 = (a2 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v15);
  v17 = *v16;
  v18 = v16[1];
  swift_beginAccess();

  sub_1A87F3A20(0, v17, v18);
  swift_endAccess();
  return sub_1A88B20C8(a2);
}

uint64_t sub_1A88B0C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_1A870CCE0(&unk_1EB3090C0);
  v13 = *(*(v12 - 1) + 64);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v72 - v14;
  v16 = sub_1A88C72E8();
  v86 = *(v16 - 8);
  v87 = v16;
  (*(v86 + 16))(&v72 - v14, a2);
  *&v15[v12[12]] = a3;
  *&v15[v12[16]] = a4;
  v77 = v12;
  *&v15[v12[20]] = a5;
  v80 = a1;
  v17 = a1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v82 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  v83 = v17;
  v18 = (v17 + *(v82 + 24));
  v19 = *v18;
  v20 = v18[1];
  swift_beginAccess();

  v88 = v19;
  sub_1A87F3A20(0, v19, v20);
  swift_endAccess();
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v84 = v6;
  v21 = sub_1A88C7E58();
  v22 = sub_1A85EF0E4(v21, qword_1EB309030);
  v79 = &v72;
  MEMORY[0x1EEE9AC00](v22);
  v23 = &v72 - v14;
  v24 = sub_1A8728D80(&v72 - v14, &v72 - v14, &unk_1EB3090C0);
  v78 = &v72;
  MEMORY[0x1EEE9AC00](v24);
  v25 = v13;
  v26 = &v72 - v14;
  v89 = &v72 - v14;
  sub_1A8728D80(&v72 - v14, &v72 - v14, &unk_1EB3090C0);

  v81 = v22;
  v27 = sub_1A88C7E38();
  v28 = sub_1A88C89A8();

  v29 = os_log_type_enabled(v27, v28);
  v85 = v13;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v93[0] = v76;
    *v30 = 136315650;
    v31 = sub_1A85F0394(v88, v20, v93);
    v72 = &v72;
    *(v30 + 4) = v31;
    *(v30 + 12) = 2048;
    MEMORY[0x1EEE9AC00](v31);
    v32 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_1A8728D80(v23, &v72 - v32, &unk_1EB3090C0);
    v75 = v27;
    v33 = v77;
    v34 = *(&v72 + v77[12] - v32);
    v73 = v20;
    v74 = v28;
    v35 = *(v86 + 8);
    v36 = v87;
    v35(&v72 - v32, v87);
    v37 = sub_1A85EF638(v23, &unk_1EB3090C0);
    *(v30 + 14) = v34;
    *(v30 + 22) = 2048;
    MEMORY[0x1EEE9AC00](v37);
    sub_1A8728D80(v26, &v72 - v32, &unk_1EB3090C0);
    v38 = *(&v72 + v33[16] - v32);
    v35(&v72 - v32, v36);
    v39 = v73;
    sub_1A85EF638(v26, &unk_1EB3090C0);
    *(v30 + 24) = v38;
    v25 = v85;
    v40 = v75;
    _os_log_impl(&dword_1A85E5000, v75, v74, "finishedTask[%s] success: Marking task complete for with %llu / %llu total bytes downloaded.", v30, 0x20u);
    v41 = v76;
    sub_1A85F1084(v76);
    MEMORY[0x1AC571F20](v41, -1, -1);
    MEMORY[0x1AC571F20](v30, -1, -1);
  }

  else
  {
    sub_1A85EF638(v26, &unk_1EB3090C0);
    sub_1A85EF638(v23, &unk_1EB3090C0);

    v39 = v20;
  }

  v42 = sub_1A870CCE0(&unk_1EB309090);
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = &v72 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A8728D80(v89, v46, &unk_1EB3090C0);
  v48 = v86;
  v47 = v87;
  (*(v86 + 32))(v45, v46, v87);
  swift_storeEnumTagMultiPayload();
  sub_1A87594A4(v45);
  sub_1A85EF638(v45, &unk_1EB309090);
  v49 = v84;

  v50 = v88;
  sub_1A88A7B08(v88, v39);

  swift_beginAccess();

  sub_1A87F3A20(0, v50, v39);
  swift_endAccess();
  swift_beginAccess();
  sub_1A8728D80(v49 + 120, v93, &unk_1EB3090A0);
  v51 = v39;
  if (v93[3])
  {
    sub_1A86061B4(v93, v90);
    sub_1A85EF638(v93, &unk_1EB3090A0);
    v52 = v91;
    v53 = v92;
    sub_1A870C278(v90, v91);
    (*(v53 + 16))(v50, v39, v52, v53);
    sub_1A85F1084(v90);
  }

  else
  {
    sub_1A85EF638(v93, &unk_1EB3090A0);
  }

  v54 = *(v49 + 64);
  v55 = v89;
  if (v54)
  {
    swift_unknownObjectRetain();
    v56 = sub_1A88C82A8();
    [v54 fileTransferFinishedRemoteIntentDownload_];

    swift_unknownObjectRelease();
  }

  v57 = *(v83 + *(v82 + 28));

  v58 = sub_1A88C7E38();
  v59 = sub_1A88C89A8();

  v60 = os_log_type_enabled(v58, v59);
  if (v57 == 1)
  {
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v93[0] = v62;
      *v61 = 136315138;
      *(v61 + 4) = sub_1A85F0394(v50, v51, v93);
      _os_log_impl(&dword_1A85E5000, v58, v59, "finishedTask[%s] success: Adding directory contents to persistence manager", v61, 0xCu);
      sub_1A85F1084(v62);
      MEMORY[0x1AC571F20](v62, -1, -1);
      MEMORY[0x1AC571F20](v61, -1, -1);
    }

    sub_1A88B408C(v55, v50, v51);
  }

  else
  {
    if (v60)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v93[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_1A85F0394(v50, v51, v93);
      _os_log_impl(&dword_1A85E5000, v58, v59, "finishedTask[%s] success: Adding single file to persistence manager", v63, 0xCu);
      sub_1A85F1084(v64);
      MEMORY[0x1AC571F20](v64, -1, -1);
      MEMORY[0x1AC571F20](v63, -1, -1);
    }

    if (qword_1EB302378 != -1)
    {
      v65 = swift_once();
    }

    v66 = qword_1EB309048;
    MEMORY[0x1EEE9AC00](v65);
    v68 = &v72 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A8728D80(v55, v68, &unk_1EB3090C0);
    v69 = sub_1A88C7238();
    (*(v48 + 8))(v68, v47);
    v70 = sub_1A88C82A8();
    [v66 touchFilePath:v69 forGUID:v70];
  }

  sub_1A88B19DC();
  sub_1A88B1B2C();
  return sub_1A85EF638(v55, &unk_1EB3090C0);
}

void sub_1A88B1634(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v6 = (a1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v5);
  v8 = *v6;
  v7 = v6[1];
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v9 = sub_1A88C7E58();
  sub_1A85EF0E4(v9, qword_1EB309030);

  v10 = a2;
  v11 = sub_1A88C7E38();
  v12 = sub_1A88C89C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28[0] = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_1A85F0394(v8, v7, v28);
    *(v13 + 12) = 2112;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_1A85E5000, v11, v12, "finishedTask[%s] error: Marking task failed with: %@", v13, 0x16u);
    sub_1A85EF638(v14, &qword_1EB306540);
    MEMORY[0x1AC571F20](v14, -1, -1);
    sub_1A85F1084(v15);
    MEMORY[0x1AC571F20](v15, -1, -1);
    MEMORY[0x1AC571F20](v13, -1, -1);
  }

  v18 = sub_1A870CCE0(&unk_1EB309090);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25[-1] - v19;
  *(&v25[-1] - v19) = a2;
  swift_storeEnumTagMultiPayload();
  v21 = a2;
  sub_1A87594A4(v20);
  sub_1A85EF638(v20, &unk_1EB309090);

  sub_1A88A7B08(v8, v7);

  swift_beginAccess();

  sub_1A87F3A20(0, v8, v7);
  swift_endAccess();
  swift_beginAccess();
  sub_1A8728D80(v3 + 120, v28, &unk_1EB3090A0);
  if (v28[3])
  {
    sub_1A86061B4(v28, v25);
    sub_1A85EF638(v28, &unk_1EB3090A0);
    v22 = v26;
    v23 = v27;
    sub_1A870C278(v25, v26);
    (*(v23 + 24))(v8, v7, v22, v23);
    sub_1A85F1084(v25);
  }

  else
  {
    sub_1A85EF638(v28, &unk_1EB3090A0);
  }

  sub_1A88B19DC();
  sub_1A88B1B2C();
}

void sub_1A88B19DC()
{
  v1 = *(v0[11] + 16);
  swift_beginAccess();
  v2 = *(*(v1 + 32) + 16);
  swift_beginAccess();
  v3 = *(v0[12] + 16);
  v4 = *(v0[14] + 16);
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  sub_1A85EF0E4(v5, qword_1EB309030);
  v6 = sub_1A88C7E38();
  v7 = sub_1A88C89D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218496;
    *(v8 + 4) = v2;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v4;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v3;
    _os_log_impl(&dword_1A85E5000, v6, v7, "logCurrentTaskInfo: %ld total tasks, %ld suspended tasks, %ld tasks waiting for retry.", v8, 0x20u);
    MEMORY[0x1AC571F20](v8, -1, -1);
  }
}

void sub_1A88B1B2C()
{
  v1 = sub_1A870CCE0(&qword_1EB303D00);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - v3;
  v5 = (v0 + 112);
  v6 = *(*(v0 + 112) + 16);
  if (v6)
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v7 = sub_1A88C7E58();
    sub_1A85EF0E4(v7, qword_1EB309030);
    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89D8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = v6;
      _os_log_impl(&dword_1A85E5000, v8, v9, "Resuming next suspended task. Currently suspended count: %ld", v10, 0xCu);
      MEMORY[0x1AC571F20](v10, -1, -1);
    }

    v11 = *v5;
    if (*(*v5 + 16))
    {
      (*(v2 + 16))(v4, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);
      if (*(v11 + 16))
      {
        sub_1A88B3FCC(0, 1);
        sub_1A88C86F8();
        (*(v2 + 8))(v4, v1);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1A88B1D2C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&unk_1EB3090B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20 - v3;
  v5 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result;
  swift_beginAccess();
  sub_1A8728D80(a1 + v5, v4, &unk_1EB3090B0);
  v6 = sub_1A870CCE0(&unk_1EB309090);
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1A85EF638(v4, &unk_1EB3090B0);
  if (v5 != 1)
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v15 = sub_1A88C7E58();
    sub_1A85EF0E4(v15, qword_1EB309030);

    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89C8();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v16 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
    v17 = a1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v16;
    *(v10 + 4) = sub_1A85F0394(*v17, *(v17 + 8), &v20);
    v14 = "cancelTask[%s]: Attempted to cancel task which is already marked complete.";
    goto LABEL_11;
  }

  if (*(a1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_isCancelled))
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v7 = sub_1A88C7E58();
    sub_1A85EF0E4(v7, qword_1EB309030);

    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89C8();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_12;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    v12 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
    v13 = a1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v12;
    *(v10 + 4) = sub_1A85F0394(*v13, *(v13 + 8), &v20);
    v14 = "cancelTask[%s] Attempted to cancel task which is already cancelled.";
LABEL_11:
    _os_log_impl(&dword_1A85E5000, v8, v9, v14, v10, 0xCu);
    sub_1A85F1084(v11);
    MEMORY[0x1AC571F20](v11, -1, -1);
    MEMORY[0x1AC571F20](v10, -1, -1);
LABEL_12:

    return;
  }

  sub_1A875F468();
  sub_1A8760454();
  v18 = swift_allocError();
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = -2;
  sub_1A88B1634(a1, v18);
}

uint64_t sub_1A88B20C8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_remoteFile;
  v5 = (a1 + *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) + 24) + v4);
  v7 = *v5;
  v6 = v5[1];
  if (*(a1 + OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_isCancelled))
  {
    v8 = qword_1EB302370;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1A88C7E58();
    sub_1A85EF0E4(v9, qword_1EB309030);

    v10 = sub_1A88C7E38();
    v11 = sub_1A88C89C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v37[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1A85F0394(v7, v6, v37);
      _os_log_impl(&dword_1A85E5000, v10, v11, "scheduleRetry[%s]: Can't retry task because it was already cancelled. When a task is cancelled it is expected to be marked as complete in the calling context.", v12, 0xCu);
      sub_1A85F1084(v13);
      MEMORY[0x1AC571F20](v13, -1, -1);
      MEMORY[0x1AC571F20](v12, -1, -1);
    }

    swift_beginAccess();
    sub_1A87F3A20(0, v7, v6);
    return swift_endAccess();
  }

  v14 = sub_1A870CCE0(&unk_1EB3090B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC17IMSharedUtilities28RemoteIntentFileDownloadTask_result;
  swift_beginAccess();
  sub_1A8728D80(a1 + v17, v16, &unk_1EB3090B0);
  v18 = sub_1A870CCE0(&unk_1EB309090);
  LODWORD(v17) = (*(*(v18 - 8) + 48))(v16, 1, v18);

  sub_1A85EF638(v16, &unk_1EB3090B0);
  if (v17 != 1)
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v26 = sub_1A88C7E58();
    sub_1A85EF0E4(v26, qword_1EB309030);

    v27 = sub_1A88C7E38();
    v28 = sub_1A88C89C8();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_23;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1A85F0394(v7, v6, v36);
    v31 = "scheduleRetry[%s]: Can't retry task because it was already marked as complete.";
    goto LABEL_22;
  }

  v19 = sub_1A88A7A2C(v7, v6);

  if (!v19)
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v32 = sub_1A88C7E58();
    sub_1A85EF0E4(v32, qword_1EB309030);

    v27 = sub_1A88C7E38();
    v28 = sub_1A88C89C8();

    if (!os_log_type_enabled(v27, v28))
    {
      goto LABEL_23;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v36[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_1A85F0394(v7, v6, v36);
    v31 = "scheduleRetry[%s]: Can't retry task because it is no longer a tracked task.";
LABEL_22:
    _os_log_impl(&dword_1A85E5000, v27, v28, v31, v29, 0xCu);
    sub_1A85F1084(v30);
    MEMORY[0x1AC571F20](v30, -1, -1);
    MEMORY[0x1AC571F20](v29, -1, -1);
LABEL_23:

    swift_beginAccess();
    sub_1A87F3A20(0, v7, v6);
    return swift_endAccess();
  }

  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v20 = sub_1A88C7E58();
  sub_1A85EF0E4(v20, qword_1EB309030);

  v21 = sub_1A88C7E38();
  v22 = sub_1A88C89D8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1A85F0394(v7, v6, v36);
    _os_log_impl(&dword_1A85E5000, v21, v22, "scheduleRetry[%s]: Scheduling a retry.", v23, 0xCu);
    sub_1A85F1084(v24);
    MEMORY[0x1AC571F20](v24, -1, -1);
    MEMORY[0x1AC571F20](v23, -1, -1);
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v2 + 96);
  *(v2 + 96) = 0x8000000000000000;
  sub_1A87AC3E4(a1, v7, v6, isUniquelyReferenced_nonNull_native);

  *(v2 + 96) = v35;
  return swift_endAccess();
}

uint64_t RemoteIntentFileDownloadManager.deinit()
{
  swift_unknownObjectRelease();
  sub_1A88699EC(v0 + 72);

  sub_1A85EF638(v0 + 120, &unk_1EB3090A0);

  return v0;
}

uint64_t RemoteIntentFileDownloadManager.__deallocating_deinit()
{
  RemoteIntentFileDownloadManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A88B27DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A870CCE0(&qword_1EB303EA8);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v40 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  if (v12)
  {
    v42 = v1[2];
    v43 = v4;
    v44 = a1;
    v13 = v10;
LABEL_11:
    v41 = (v12 - 1) & v12;
    v17 = __clz(__rbit64(v12)) | (v13 << 6);
    v18 = (*(v8 + 48) + 16 * v17);
    v19 = v18[1];
    v40[0] = *v18;
    v20 = v8;
    v21 = sub_1A88C72E8();
    v40[1] = v40;
    v22 = *(v21 - 8);
    MEMORY[0x1EEE9AC00](v21);
    v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v24, *(v20 + 56) + *(v25 + 72) * v17, v21);
    v26 = sub_1A870CCE0(&qword_1EB309110);
    v27 = *(v26 + 48);
    *v7 = v40[0];
    *(v7 + 1) = v19;
    v28 = v21;
    v8 = v20;
    (*(v22 + 32))(&v7[v27], v24, v28);
    (*(*(v26 - 8) + 56))(v7, 0, 1, v26);

    v30 = v41;
    v11 = v42;
    v16 = v13;
    v4 = v43;
    a1 = v44;
LABEL_12:
    *v1 = v8;
    v1[1] = v9;
    v1[2] = v11;
    v1[3] = v16;
    v1[4] = v30;
    v31 = v1[5];
    MEMORY[0x1EEE9AC00](v29);
    v32 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A8761C7C(v7, v32, &qword_1EB303EA8);
    v33 = sub_1A870CCE0(&qword_1EB309110);
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    if (v34 == 1)
    {
      v35 = sub_1A870CCE0(&unk_1EB309100);
      return (*(*(v35 - 8) + 56))(a1, 1, 1, v35);
    }

    else
    {
      MEMORY[0x1EEE9AC00](v34);
      v37 = v40 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A8761C7C(v32, v37, &qword_1EB309110);
      v31(v37);
      sub_1A85EF638(v37, &qword_1EB309110);
      v38 = sub_1A870CCE0(&unk_1EB309100);
      return (*(*(v38 - 8) + 56))(a1, 0, 1, v38);
    }
  }

  else
  {
    v14 = (v11 + 64) >> 6;
    if (v14 <= v10 + 1)
    {
      v15 = v10 + 1;
    }

    else
    {
      v15 = (v11 + 64) >> 6;
    }

    v16 = v15 - 1;
    while (1)
    {
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v13 >= v14)
      {
        v39 = sub_1A870CCE0(&qword_1EB309110);
        v29 = (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
        v30 = 0;
        goto LABEL_12;
      }

      v12 = *(v9 + 8 * v13);
      ++v10;
      if (v12)
      {
        v42 = v1[2];
        v43 = v4;
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A88B2C78(uint64_t a1)
{
  *(v1 + 16) = a1;
  if (qword_1EB302380 != -1)
  {
    swift_once();
  }

  v2 = qword_1EB309050;
  *(v1 + 24) = qword_1EB309050;

  return MEMORY[0x1EEE6DFA0](sub_1A88B2D14, v2, 0);
}

uint64_t sub_1A88B2D14()
{
  if (*(v0[2] + 16))
  {
    if (qword_1EB3021E8 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_1A88B2E24;
    v2 = v0[2];

    return sub_1A87AE3C8(v2);
  }

  else
  {
    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }
}

uint64_t sub_1A88B2E24(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v1;

  v5 = *(v3 + 24);
  if (v1)
  {
    v6 = sub_1A88B310C;
  }

  else
  {
    v6 = sub_1A88B2F58;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1A88B2F58()
{
  v13 = v0;
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {
    if (qword_1EB302370 != -1)
    {
      swift_once();
    }

    v2 = sub_1A88C7E58();
    sub_1A85EF0E4(v2, qword_1EB309030);

    v3 = sub_1A88C7E38();
    v4 = sub_1A88C89C8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = sub_1A88C8908();
      v9 = sub_1A85F0394(v7, v8, &v12);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1A85E5000, v3, v4, "Received empty list of mirror files for guids: %s", v5, 0xCu);
      sub_1A85F1084(v6);
      MEMORY[0x1AC571F20](v6, -1, -1);
      MEMORY[0x1AC571F20](v5, -1, -1);
    }

    v1 = *(v0 + 40);
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_1A88B310C()
{
  v19 = v0;
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1EB309030);

  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    v10 = sub_1A88C8908();
    v12 = sub_1A85F0394(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1A85E5000, v4, v5, "Caught error while fetching mirrors for guids: %s. Error: %@. Returning an empty array of mirrors.", v7, 0x16u);
    sub_1A85EF638(v8, &qword_1EB306540);
    MEMORY[0x1AC571F20](v8, -1, -1);
    sub_1A85F1084(v9);
    MEMORY[0x1AC571F20](v9, -1, -1);
    MEMORY[0x1AC571F20](v7, -1, -1);
  }

  v15 = *(v0 + 8);
  v16 = MEMORY[0x1E69E7CC0];

  return v15(v16);
}

uint64_t sub_1A88B335C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1A8716570;

  return sub_1A88ABC88(a1, a2, v6, v7, v8);
}

uint64_t sub_1A88B3420(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;
  v12 = sub_1A870CCE0(&qword_1EB303E98);
  v40[0] = v40;
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (v40 - v13);

  v40[1] = a3;

  for (i = v14; ; v14 = i)
  {
    sub_1A88B27DC(v14);
    v15 = sub_1A870CCE0(&unk_1EB309100);
    if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
    {
      sub_1A85EF290();
    }

    v16 = sub_1A88C72E8();
    v43 = v40;
    v17 = *(v16 - 8);
    MEMORY[0x1EEE9AC00](v16);
    v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = *v14;
    v20 = v14[1];
    v22 = v14 + *(v15 + 48);
    v24 = v23;
    v42 = *(v17 + 32);
    v42(v19, v22);
    v25 = *v52;
    v44 = v21;
    v27 = sub_1A85F5F40(v21, v20);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_1A87B0D88();
      }
    }

    else
    {
      sub_1A88786D4(v30, a4 & 1);
      v32 = sub_1A85F5F40(v44, v20);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_20;
      }

      v27 = v32;
    }

    v34 = *v52;
    if (v31)
    {

      (*(v17 + 40))(v34[7] + *(v17 + 72) * v27, v19, v24);
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v44;
      v35[1] = v20;
      (v42)(v34[7] + *(v17 + 72) * v27, v19, v24);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_19;
      }

      v34[2] = v38;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

uint64_t dispatch thunk of RemoteIntentFileDownloadManager.completeAnyInProgressDownload(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 456) + **(*v3 + 456));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1A8714B6C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of RemoteIntentFileDownloadManager.downloadTransfersForMessages(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 480) + **(*v1 + 480));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A876FA4C;

  return v6(a1);
}

uint64_t dispatch thunk of RemoteIntentFileDownloadManager.downloadTransfers(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 488) + **(*v1 + 488));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A876EDC8;

  return v6(a1);
}

uint64_t dispatch thunk of RemoteIntentFileDownloadManager.downloadMirrorFile(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 504) + **(*v2 + 504));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A8714B6C;

  return v8(a1, a2);
}

uint64_t sub_1A88B3D98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A88B3DAC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 17))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 0xA)
  {
    return v4 - 9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A88B3DF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -9 - a2;
    }
  }

  return result;
}

uint64_t sub_1A88B3E40(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_1A88B3E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1A870CCE0(&qword_1EB303D00);
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

unint64_t sub_1A88B3FCC(unint64_t result, uint64_t a2)
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A8735ED8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A88B3E78(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1A88B408C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v70 = a2;
  v71[1] = *MEMORY[0x1E69E9840];
  if (qword_1EB302370 != -1)
  {
    swift_once();
  }

  v5 = sub_1A88C7E58();
  v6 = sub_1A85EF0E4(v5, qword_1EB309030);
  v7 = sub_1A88C72E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  v67 = v8 + 16;
  v68 = v9;
  v66 = v11;
  v11(v10, a1, v7);

  v69 = v6;
  v12 = sub_1A88C7E38();
  v13 = sub_1A88C89A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    LODWORD(v63) = v13;
    v15 = v7;
    v16 = v14;
    v71[0] = swift_slowAlloc();
    v64 = v8;
    v17 = v71[0];
    *v16 = 136315394;
    *(v16 + 4) = sub_1A85F0394(v70, a3, v71);
    *(v16 + 12) = 2080;
    sub_1A8746020();
    v18 = sub_1A88C9348();
    v20 = v19;
    v65 = *(v64 + 8);
    v65(v10, v15);
    v21 = sub_1A85F0394(v18, v20, v71);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1A85E5000, v12, v63, "touchFilePath[%s] adding contents of %s", v16, 0x16u);
    swift_arrayDestroy();
    v22 = v17;
    v8 = v64;
    MEMORY[0x1AC571F20](v22, -1, -1);
    v23 = v16;
    v7 = v15;
    MEMORY[0x1AC571F20](v23, -1, -1);
  }

  else
  {

    v65 = *(v8 + 8);
    v65(v10, v7);
  }

  v24 = [objc_opt_self() defaultManager];
  v25 = sub_1A88C7238();
  v71[0] = 0;
  v26 = [v24 contentsOfDirectoryAtURL:v25 includingPropertiesForKeys:0 options:0 error:v71];

  v27 = v71[0];
  if (v26)
  {
    v28 = v8;
    v29 = sub_1A88C85F8();
    v30 = v27;

    v33 = *(v29 + 16);
    if (v33)
    {
      v34 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v58[1] = v29;
      v35 = v29 + v34;
      v36 = *(v28 + 72);
      v62 = v28 + 8;
      v63 = v36;
      *&v32 = 136315394;
      v59 = v32;
      v64 = a3;
      v60 = a1;
      do
      {
        MEMORY[0x1EEE9AC00](v31);
        v38 = v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
        v66(v38, v35, v7);

        v39 = v7;
        v40 = sub_1A88C7E38();
        v41 = sub_1A88C89A8();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v61 = v58;
          v44 = v43;
          v71[0] = v43;
          *v42 = v59;
          *(v42 + 4) = sub_1A85F0394(v70, a3, v71);
          *(v42 + 12) = 2080;
          sub_1A8746020();
          v45 = sub_1A88C9348();
          v47 = v46;
          v65(v38, v39);
          v48 = sub_1A85F0394(v45, v47, v71);

          *(v42 + 14) = v48;
          _os_log_impl(&dword_1A85E5000, v40, v41, "touchFilePath[%s] touching file %s", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1AC571F20](v44, -1, -1);
          MEMORY[0x1AC571F20](v42, -1, -1);
        }

        else
        {

          v65(v38, v39);
        }

        v7 = v39;
        if (qword_1EB302378 != -1)
        {
          swift_once();
        }

        v49 = qword_1EB309048;
        v50 = sub_1A88C7238();
        a3 = v64;
        v51 = sub_1A88C82A8();
        [v49 touchFilePath:v50 forGUID:v51];

        v35 += v63;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    v52 = v71[0];
    v53 = sub_1A88C7168();

    swift_willThrow();

    v54 = sub_1A88C7E38();
    v55 = sub_1A88C89C8();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v71[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_1A85F0394(v70, a3, v71);
      _os_log_impl(&dword_1A85E5000, v54, v55, "touchFilePath[%s]: could not list directory items", v56, 0xCu);
      sub_1A85F1084(v57);
      MEMORY[0x1AC571F20](v57, -1, -1);
      MEMORY[0x1AC571F20](v56, -1, -1);
    }
  }
}

uint64_t sub_1A88B4790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8716570;

  return sub_1A88B072C(a1, v4, v5, v6);
}

uint64_t sub_1A88B484C(uint64_t a1)
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
  v10[1] = sub_1A8716570;

  return sub_1A88AED40(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1A88B492C(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoteIntentMirrorFileRepresentation(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1A8716570;

  return sub_1A88ACBB0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1A88B4A24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8716570;

  return sub_1A8853528(a1, v4);
}

uint64_t sub_1A88B4ADC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A8716570;

  return sub_1A88AD07C(a1, v4, v5, v6);
}

IMActionRequestLocation_optional __swiftcall IMActionRequestLocation.init(dictionary:)(Swift::OpaquePointer dictionary)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1A88C8188();

  v3 = [v1 initWithDictionary_];

  result.value.super.isa = v3;
  result.is_nil = v5;
  result.value.sendPush = v4;
  return result;
}

id IMActionRequestLocation.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_1A85F5F40(0x68737550646E6573, 0xE800000000000000), (v5 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v4, v9);

    sub_1A85E9718(0, &qword_1ED8C9450);
    if (swift_dynamicCast())
    {
      v6 = [v2 initWithSendPush_];

      return v6;
    }
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

IMActionRequestLocation __swiftcall IMActionRequestLocation.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  result.super.isa = [v0 init];
  result.sendPush = v1;
  return result;
}

uint64_t WallpaperMetadata.fontName.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontName);

  return v1;
}

id sub_1A88B5068()
{
  v1 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A88B511C(uint64_t a1)
{
  v3 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1A88B5174(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t WallpaperMetadata.type.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMWallpaperMetadata_Impl_type);

  return v1;
}

void *sub_1A88B52E8()
{
  v1 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A88B5394(uint64_t a1)
{
  v3 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1A88B53EC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_1A88B54AC(void *a1)
{
  v3 = sub_1A88C82A8();
  v4 = sub_1A88C82A8();
  [a1 encodeObject:v3 forKey:v4];

  v5 = sub_1A88C7758();
  v6 = sub_1A88C82A8();
  [a1 encodeObject:v5 forKey:v6];

  v7 = sub_1A88C7758();
  v8 = sub_1A88C82A8();
  [a1 encodeObject:v7 forKey:v8];

  v9 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = sub_1A88C82A8();
  [a1 encodeObject:v10 forKey:v11];

  v12 = sub_1A88C86C8();
  v13 = sub_1A88C82A8();
  [a1 encodeObject:v12 forKey:v13];

  v14 = sub_1A88C82A8();
  v15 = sub_1A88C82A8();
  [a1 encodeObject:v14 forKey:v15];

  v16 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  v17 = *(v1 + v16);
  if (v17)
  {
    v18 = v17;
    v19 = sub_1A88C82A8();
    [a1 encodeObject:v18 forKey:v19];
  }
}

id WallpaperMetadata.__allocating_init(fontName:fontSize:fontWeight:fontColor:isVertical:type:backgroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v20 = objc_allocWithZone(v10);
  v21 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontNameKey];
  *v21 = 0x656D614E746E6F66;
  *(v21 + 1) = 0xEB0000000079654BLL;
  v22 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontSizeKey];
  *v22 = 0x657A6953746E6F66;
  *(v22 + 1) = 0xEB0000000079654BLL;
  v23 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey];
  strcpy(&v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey], "fontWeightKey");
  *(v23 + 7) = -4864;
  v24 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey];
  strcpy(&v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey], "fontColorKey");
  v24[13] = 0;
  *(v24 + 7) = -5120;
  v25 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey];
  strcpy(&v20[OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey], "isVerticalKey");
  *(v25 + 7) = -4864;
  v26 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_typeKey];
  *v26 = 0x79654B65707974;
  *(v26 + 1) = 0xE700000000000000;
  v27 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColorKey];
  *v27 = 0xD000000000000012;
  *(v27 + 1) = 0x80000001A89210A0;
  v28 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  *&v20[OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor] = 0;
  v29 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontName];
  *v29 = a1;
  *(v29 + 1) = a2;
  *&v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontSize] = a8;
  *&v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeight] = a9;
  v30 = sub_1A878D05C(a3);

  v31 = type metadata accessor for WallpaperMetadataColor();
  v32 = objc_allocWithZone(v31);
  *&v20[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor] = WallpaperMetadataColor.init(dictionaryRepresentation:)(v30);
  v20[OBJC_IVAR___IMWallpaperMetadata_Impl_isVertical] = a4;
  v33 = &v20[OBJC_IVAR___IMWallpaperMetadata_Impl_type];
  *v33 = a5;
  *(v33 + 1) = a6;
  if (a7)
  {
    v34 = sub_1A878D05C(a7);

    v35 = objc_allocWithZone(v31);
    v36 = WallpaperMetadataColor.init(dictionaryRepresentation:)(v34);
    swift_beginAccess();
    v37 = *&v20[v28];
    *&v20[v28] = v36;
  }

  v39.receiver = v20;
  v39.super_class = v10;
  return objc_msgSendSuper2(&v39, sel_init);
}

id WallpaperMetadata.init(fontName:fontSize:fontWeight:fontColor:isVertical:type:backgroundColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v15 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontNameKey];
  *v15 = 0x656D614E746E6F66;
  *(v15 + 1) = 0xEB0000000079654BLL;
  v16 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontSizeKey];
  *v16 = 0x657A6953746E6F66;
  *(v16 + 1) = 0xEB0000000079654BLL;
  v17 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey];
  strcpy(&v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey], "fontWeightKey");
  *(v17 + 7) = -4864;
  v18 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey];
  strcpy(&v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey], "fontColorKey");
  v18[13] = 0;
  *(v18 + 7) = -5120;
  v19 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey];
  strcpy(&v9[OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey], "isVerticalKey");
  *(v19 + 7) = -4864;
  v20 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_typeKey];
  *v20 = 0x79654B65707974;
  *(v20 + 1) = 0xE700000000000000;
  v21 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColorKey];
  *v21 = 0xD000000000000012;
  *(v21 + 1) = 0x80000001A89210A0;
  v22 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  *&v9[OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor] = 0;
  v23 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontName];
  *v23 = a1;
  *(v23 + 1) = a2;
  *&v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontSize] = a8;
  *&v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeight] = a9;
  v24 = sub_1A878D05C(a3);

  v25 = type metadata accessor for WallpaperMetadataColor();
  v26 = objc_allocWithZone(v25);
  *&v9[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor] = WallpaperMetadataColor.init(dictionaryRepresentation:)(v24);
  v9[OBJC_IVAR___IMWallpaperMetadata_Impl_isVertical] = a4;
  v27 = &v9[OBJC_IVAR___IMWallpaperMetadata_Impl_type];
  *v27 = a5;
  *(v27 + 1) = a6;
  if (a7)
  {
    v28 = sub_1A878D05C(a7);

    v29 = objc_allocWithZone(v25);
    v30 = WallpaperMetadataColor.init(dictionaryRepresentation:)(v28);
    swift_beginAccess();
    v31 = *&v10[v22];
    *&v10[v22] = v30;
  }

  v33.receiver = v10;
  v33.super_class = type metadata accessor for WallpaperMetadata();
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t WallpaperMetadata.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontNameKey);
  *v4 = 0x656D614E746E6F66;
  v4[1] = 0xEB0000000079654BLL;
  v5 = (v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontSizeKey);
  *v5 = 0x657A6953746E6F66;
  v5[1] = 0xEB0000000079654BLL;
  v6 = v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey;
  strcpy((v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey), "fontWeightKey");
  *(v6 + 14) = -4864;
  v7 = v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey;
  strcpy((v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey), "fontColorKey");
  *(v7 + 13) = 0;
  *(v7 + 14) = -5120;
  v8 = v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey;
  strcpy((v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey), "isVerticalKey");
  *(v8 + 14) = -4864;
  v9 = (v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_typeKey);
  *v9 = 0x79654B65707974;
  v9[1] = 0xE700000000000000;
  v10 = (v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColorKey);
  *v10 = 0xD000000000000012;
  v10[1] = 0x80000001A89210A0;
  v11 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  *(v2 + OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor) = 0;
  sub_1A85E9718(0, &unk_1ED8C9440);
  v12 = sub_1A88C8B68();
  if (v12)
  {
    v15 = 0;
    v16 = 0;
    v13 = v12;
    sub_1A88C82D8();
  }

  type metadata accessor for WallpaperMetadata();
  swift_deallocPartialClassInstance();
  return 0;
}

id WallpaperMetadata.init(dictionaryRepresentation:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___IMWallpaperMetadata_Impl_fontNameKey];
  *v4 = 0x656D614E746E6F66;
  v4[1] = 0xEB0000000079654BLL;
  v5 = &v1[OBJC_IVAR___IMWallpaperMetadata_Impl_fontSizeKey];
  *v5 = 0x657A6953746E6F66;
  v5[1] = 0xEB0000000079654BLL;
  v6 = &v1[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey];
  strcpy(&v1[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey], "fontWeightKey");
  *(v6 + 7) = -4864;
  v7 = &v1[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey];
  strcpy(&v1[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey], "fontColorKey");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v8 = &v1[OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey];
  strcpy(&v1[OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey], "isVerticalKey");
  *(v8 + 7) = -4864;
  v9 = &v1[OBJC_IVAR___IMWallpaperMetadata_Impl_typeKey];
  *v9 = 0x79654B65707974;
  v9[1] = 0xE700000000000000;
  v10 = &v1[OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColorKey];
  *v10 = 0xD000000000000012;
  v10[1] = 0x80000001A89210A0;
  v11 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  *&v2[OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor] = 0;
  if (!*(a1 + 16) || (v56 = v11, v12 = sub_1A85F5F40(0x656D614E746E6F66, 0xEB0000000079654BLL), (v13 & 1) == 0) || (sub_1A85F1028(*(a1 + 56) + 32 * v12, v60), (swift_dynamicCast() & 1) == 0))
  {

LABEL_24:

    type metadata accessor for WallpaperMetadata();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v54 = v59;
  if (!*(a1 + 16) || (v55 = a1, v14 = *v5, v15 = v5[1], , v50 = sub_1A85F5F40(v14, v15), LOBYTE(v14) = v16, , (v14 & 1) == 0) || (sub_1A85F1028(*(v55 + 56) + 32 * v50, v60), (swift_dynamicCast() & 1) == 0) || !*(v55 + 16) || (v17 = v58, v18 = *v6, v19 = *(v6 + 1), , v51 = sub_1A85F5F40(v18, v19), LOBYTE(v18) = v20, , (v18 & 1) == 0) || (sub_1A85F1028(*(v55 + 56) + 32 * v51, v60), (swift_dynamicCast() & 1) == 0) || !*(v55 + 16) || (v21 = v58, v22 = *v8, v23 = *(v8 + 1), , v52 = sub_1A85F5F40(v22, v23), LOBYTE(v22) = v24, , (v22 & 1) == 0) || (sub_1A85F1028(*(v55 + 56) + 32 * v52, v60), (swift_dynamicCast() & 1) == 0) || !*(v55 + 16) || (v49 = v58, v25 = *v9, v26 = v9[1], , v53 = sub_1A85F5F40(v25, v26), LOBYTE(v25) = v27, , (v25 & 1) == 0) || (sub_1A85F1028(*(v55 + 56) + 32 * v53, v60), (swift_dynamicCast() & 1) == 0))
  {

    v11 = v56;
    goto LABEL_24;
  }

  v28 = v59;
  if (!*(v55 + 16) || (v48 = v58, v29 = *v7, v30 = *(v7 + 1), , v31 = sub_1A85F5F40(v29, v30), v33 = v32, , (v33 & 1) == 0) || (sub_1A85F1028(*(v55 + 56) + 32 * v31, v60), sub_1A870CCE0(&unk_1EB3091D0), (swift_dynamicCast() & 1) == 0))
  {

    v11 = v56;
    goto LABEL_24;
  }

  v34 = v58;
  v35 = &v2[OBJC_IVAR___IMWallpaperMetadata_Impl_fontName];
  *v35 = v58;
  v35[1] = v54;
  *&v2[OBJC_IVAR___IMWallpaperMetadata_Impl_fontSize] = v17;
  *&v2[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeight] = v21;
  v36 = &v2[OBJC_IVAR___IMWallpaperMetadata_Impl_type];
  *v36 = v48;
  v36[1] = v28;
  v2[OBJC_IVAR___IMWallpaperMetadata_Impl_isVertical] = v49;
  v37 = type metadata accessor for WallpaperMetadataColor();
  v38 = objc_allocWithZone(v37);
  *&v2[OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor] = WallpaperMetadataColor.init(dictionaryRepresentation:)(v34);
  if (*(v55 + 16) && (v39 = *v10, v40 = v10[1], , v41 = sub_1A85F5F40(v39, v40), v43 = v42, , (v43 & 1) != 0))
  {
    sub_1A85F1028(*(v55 + 56) + 32 * v41, v60);

    if (swift_dynamicCast())
    {
      v44 = objc_allocWithZone(v37);
      v45 = WallpaperMetadataColor.init(dictionaryRepresentation:)(v58);
      swift_beginAccess();
      v46 = *&v2[v56];
      *&v2[v56] = v45;
    }
  }

  else
  {
  }

  v57.receiver = v2;
  v57.super_class = type metadata accessor for WallpaperMetadata();
  return objc_msgSendSuper2(&v57, sel_init);
}

uint64_t sub_1A88B6A54(uint64_t a1)
{
  sub_1A87303E8(a1, v19);
  if (v20)
  {
    type metadata accessor for WallpaperMetadata();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontName) == *&v18[OBJC_IVAR___IMWallpaperMetadata_Impl_fontName] && *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontName + 8) == *&v18[OBJC_IVAR___IMWallpaperMetadata_Impl_fontName + 8];
      if (v2 || (sub_1A88C9398()) && *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontSize) == *&v18[OBJC_IVAR___IMWallpaperMetadata_Impl_fontSize] && *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeight) == *&v18[OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeight] && *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_isVertical) == v18[OBJC_IVAR___IMWallpaperMetadata_Impl_isVertical] && (*(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_type) == *&v18[OBJC_IVAR___IMWallpaperMetadata_Impl_type] && *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_type + 8) == *&v18[OBJC_IVAR___IMWallpaperMetadata_Impl_type + 8] || (sub_1A88C9398()))
      {
        v5 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
        swift_beginAccess();
        v6 = *(v1 + v5);
        v7 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
        swift_beginAccess();
        v8 = *&v18[v7];
        if (v6)
        {
          if (v8)
          {
            type metadata accessor for WallpaperMetadataColor();
            v9 = v8;
            v10 = v6;
            v11 = sub_1A88C8BA8();

            if (v11)
            {
              goto LABEL_23;
            }
          }
        }

        else if (!v8)
        {
LABEL_23:
          sub_1A85E9718(0, &qword_1EB3091E0);
          v12 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
          swift_beginAccess();
          v13 = *(v1 + v12);
          v14 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
          swift_beginAccess();
          v15 = *&v18[v14];
          v16 = v13;
          v17 = v15;
          v3 = sub_1A88C8BA8();

          return v3 & 1;
        }
      }
    }
  }

  else
  {
    sub_1A860169C(v19);
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t sub_1A88B6CCC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontNameKey);
  v3 = *(v0 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontNameKey + 8);
  v4 = *(v0 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontName);
  v5 = *(v0 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontName + 8);
  v6 = MEMORY[0x1E69E6158];
  v48 = MEMORY[0x1E69E6158];
  *&v47 = v4;
  *(&v47 + 1) = v5;
  sub_1A85E99B0(&v47, v46);

  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v46, v2, v3, isUniquelyReferenced_nonNull_native);
  v9 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontSizeKey);
  v10 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontSizeKey + 8);
  v11 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontSize);
  v12 = MEMORY[0x1E69E7DE0];
  v48 = MEMORY[0x1E69E7DE0];
  *&v47 = v11;
  sub_1A85E99B0(&v47, v46);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v46, v9, v10, v13);
  v14 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey);
  v15 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeightKey + 8);
  v16 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontWeight);
  v48 = v12;
  *&v47 = v16;
  sub_1A85E99B0(&v47, v46);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v46, v14, v15, v17);
  v18 = v7;
  v19 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey);
  v20 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_fontColorKey + 8);
  v21 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  v22 = *(v1 + v21);
  v23 = sub_1A88B7BEC();

  v24 = sub_1A870CCE0(&unk_1EB3091D0);
  v48 = v24;
  *&v47 = v23;
  sub_1A85E99B0(&v47, v46);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v46, v19, v20, v25);
  v26 = v18;
  v27 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey);
  v28 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_isVerticalKey + 8);
  v29 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_isVertical);
  v48 = MEMORY[0x1E69E6370];
  LOBYTE(v47) = v29;
  sub_1A85E99B0(&v47, v46);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v46, v27, v28, v30);
  v31 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_typeKey);
  v32 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_typeKey + 8);
  v33 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_type);
  v34 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_type + 8);
  v48 = v6;
  *&v47 = v33;
  *(&v47 + 1) = v34;
  sub_1A85E99B0(&v47, v46);

  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC700(v46, v31, v32, v35);
  v36 = v26;
  v37 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  v38 = *(v1 + v37);
  if (v38)
  {
    v39 = v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColorKey;
    v40 = *(v1 + OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColorKey);
    v41 = *(v39 + 8);
    v42 = v38;
    v43 = sub_1A88B7BEC();
    v48 = v24;
    *&v47 = v43;
    sub_1A85E99B0(&v47, v46);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC700(v46, v40, v41, v44);
  }

  return v36;
}

id WallpaperMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1A88B7218(void *a1)
{
  v2 = sub_1A88C7758();
  v3 = sub_1A88C82A8();
  [a1 encodeObject:v2 forKey:v3];

  v4 = sub_1A88C7758();
  v5 = sub_1A88C82A8();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_1A88C7758();
  v7 = sub_1A88C82A8();
  [a1 encodeObject:v6 forKey:v7];

  v8 = sub_1A88C7758();
  v9 = sub_1A88C82A8();
  [a1 encodeObject:v8 forKey:v9];
}

id WallpaperMetadataColor.__allocating_init(red:green:blue:alpha:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___IMWallpaperMetadataColor_Impl_redKey];
  *v10 = 6579570;
  *(v10 + 1) = 0xE300000000000000;
  v11 = &v9[OBJC_IVAR___IMWallpaperMetadataColor_Impl_greenKey];
  *v11 = 0x6E65657267;
  *(v11 + 1) = 0xE500000000000000;
  v12 = &v9[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blueKey];
  *v12 = 1702194274;
  *(v12 + 1) = 0xE400000000000000;
  v13 = &v9[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alphaKey];
  *v13 = 0x6168706C61;
  *(v13 + 1) = 0xE500000000000000;
  *&v9[OBJC_IVAR___IMWallpaperMetadataColor_Impl_red] = a1;
  *&v9[OBJC_IVAR___IMWallpaperMetadataColor_Impl_green] = a2;
  *&v9[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blue] = a3;
  *&v9[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alpha] = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

id WallpaperMetadataColor.init(red:green:blue:alpha:)(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR___IMWallpaperMetadataColor_Impl_redKey];
  *v5 = 6579570;
  *(v5 + 1) = 0xE300000000000000;
  v6 = &v4[OBJC_IVAR___IMWallpaperMetadataColor_Impl_greenKey];
  *v6 = 0x6E65657267;
  *(v6 + 1) = 0xE500000000000000;
  v7 = &v4[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blueKey];
  *v7 = 1702194274;
  *(v7 + 1) = 0xE400000000000000;
  v8 = &v4[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alphaKey];
  *v8 = 0x6168706C61;
  *(v8 + 1) = 0xE500000000000000;
  *&v4[OBJC_IVAR___IMWallpaperMetadataColor_Impl_red] = a1;
  *&v4[OBJC_IVAR___IMWallpaperMetadataColor_Impl_green] = a2;
  *&v4[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blue] = a3;
  *&v4[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alpha] = a4;
  v10.receiver = v4;
  v10.super_class = type metadata accessor for WallpaperMetadataColor();
  return objc_msgSendSuper2(&v10, sel_init);
}

id WallpaperMetadataColor.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A88B7E88();

  return v4;
}

id WallpaperMetadataColor.init(coder:)(void *a1)
{
  v2 = sub_1A88B7E88();

  return v2;
}

id WallpaperMetadataColor.init(dictionaryRepresentation:)(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR___IMWallpaperMetadataColor_Impl_redKey];
  *v4 = 6579570;
  *(v4 + 1) = 0xE300000000000000;
  v5 = &v2[OBJC_IVAR___IMWallpaperMetadataColor_Impl_greenKey];
  *v5 = 0x6E65657267;
  v5[1] = 0xE500000000000000;
  v6 = &v2[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blueKey];
  *v6 = 1702194274;
  v6[1] = 0xE400000000000000;
  v7 = &v2[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alphaKey];
  *v7 = 0x6168706C61;
  v7[1] = 0xE500000000000000;
  v8 = 1.0;
  v9 = 1.0;
  if (*(a1 + 16))
  {
    v10 = sub_1A85F5F40(6579570, 0xE300000000000000);
    v9 = 1.0;
    if (v11)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v10, v33);
      if (swift_dynamicCast())
      {
        v9 = v31;
      }

      else
      {
        v9 = 1.0;
      }
    }
  }

  *&v2[OBJC_IVAR___IMWallpaperMetadataColor_Impl_red] = v9;
  if (*(a1 + 16))
  {
    v14 = v5;
    v12 = *v5;
    v13 = v14[1];

    v15 = sub_1A85F5F40(v12, v13);
    v17 = v16;

    if (v17)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v15, v33);
      if (swift_dynamicCast())
      {
        v8 = v31;
      }
    }
  }

  *&v2[OBJC_IVAR___IMWallpaperMetadataColor_Impl_green] = v8;
  v18 = 1.0;
  if (*(a1 + 16))
  {
    v19 = *v6;
    v20 = v6[1];

    v21 = sub_1A85F5F40(v19, v20);
    v23 = v22;

    if (v23)
    {
      sub_1A85F1028(*(a1 + 56) + 32 * v21, v33);
      if (swift_dynamicCast())
      {
        v18 = v31;
      }
    }
  }

  *&v2[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blue] = v18;
  if (!*(a1 + 16) || (v24 = *v7, v25 = v7[1], , v26 = sub_1A85F5F40(v24, v25), v28 = v27, , (v28 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v26, v33);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v29 = 1.0;
    goto LABEL_20;
  }

  v29 = v31;
LABEL_20:
  *&v2[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alpha] = v29;
  v32.receiver = v2;
  v32.super_class = type metadata accessor for WallpaperMetadataColor();
  return objc_msgSendSuper2(&v32, sel_init);
}

BOOL sub_1A88B79DC(uint64_t a1)
{
  sub_1A87303E8(a1, v6);
  if (v7)
  {
    type metadata accessor for WallpaperMetadataColor();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_red) == *&v5[OBJC_IVAR___IMWallpaperMetadataColor_Impl_red] && *(v1 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_green) == *&v5[OBJC_IVAR___IMWallpaperMetadataColor_Impl_green] && *(v1 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_blue) == *&v5[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blue])
      {
        v2 = *(v1 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_alpha);
        v3 = *&v5[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alpha];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_1A860169C(v6);
  }

  return 0;
}

uint64_t sub_1A88B7AD0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1A860169C(v10);
  return v8 & 1;
}

id sub_1A88B7B70(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A88C8188();

  return v5;
}

unint64_t sub_1A88B7BEC()
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E6D90;
  v2 = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_redKey + 8);
  *(inited + 32) = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_redKey);
  *(inited + 40) = v2;
  v3 = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_red);
  v4 = MEMORY[0x1E69E7DE0];
  *(inited + 72) = MEMORY[0x1E69E7DE0];
  *(inited + 48) = v3;
  v5 = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_greenKey + 8);
  *(inited + 80) = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_greenKey);
  *(inited + 88) = v5;
  v6 = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_green);
  *(inited + 120) = v4;
  *(inited + 96) = v6;
  v7 = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_blueKey + 8);
  *(inited + 128) = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_blueKey);
  *(inited + 136) = v7;
  v8 = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_blue);
  *(inited + 168) = v4;
  *(inited + 144) = v8;
  v9 = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_alphaKey + 8);
  *(inited + 176) = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_alphaKey);
  *(inited + 184) = v9;
  v10 = *(v0 + OBJC_IVAR___IMWallpaperMetadataColor_Impl_alpha);
  *(inited + 216) = v4;
  *(inited + 192) = v10;

  v11 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A870CCE0(&qword_1EB303720);
  swift_arrayDestroy();
  return v11;
}

id sub_1A88B7DD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1A88B7E88()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___IMWallpaperMetadataColor_Impl_redKey];
  *v2 = 6579570;
  *(v2 + 1) = 0xE300000000000000;
  v3 = &v0[OBJC_IVAR___IMWallpaperMetadataColor_Impl_greenKey];
  *v3 = 0x6E65657267;
  *(v3 + 1) = 0xE500000000000000;
  v4 = &v0[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blueKey];
  *v4 = 1702194274;
  *(v4 + 1) = 0xE400000000000000;
  v5 = &v0[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alphaKey];
  *v5 = 0x6168706C61;
  *(v5 + 1) = 0xE500000000000000;
  sub_1A85E9718(0, &qword_1ED8C9450);
  v6 = sub_1A88C8B68();
  v7 = 1.0;
  v8 = 1.0;
  if (v6)
  {
    v9 = v6;
    [v6 doubleValue];
    v8 = v10;
  }

  *&v0[OBJC_IVAR___IMWallpaperMetadataColor_Impl_red] = v8;

  v11 = sub_1A88C8B68();

  if (v11)
  {
    [v11 doubleValue];
    v7 = v12;
  }

  *&v0[OBJC_IVAR___IMWallpaperMetadataColor_Impl_blue] = v7;

  v13 = sub_1A88C8B68();

  v14 = 1.0;
  v15 = 1.0;
  if (v13)
  {
    [v13 doubleValue];
    v15 = v16;
  }

  *&v0[OBJC_IVAR___IMWallpaperMetadataColor_Impl_green] = v15;

  v17 = sub_1A88C8B68();

  if (v17)
  {
    [v17 doubleValue];
    v14 = v18;
  }

  *&v1[OBJC_IVAR___IMWallpaperMetadataColor_Impl_alpha] = v14;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for WallpaperMetadataColor();
  return objc_msgSendSuper2(&v20, sel_init);
}

uint64_t sub_1A88B8374()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB309228);
  sub_1A85EF0E4(v0, qword_1EB309228);
  return sub_1A88C7E48();
}

id sub_1A88B840C(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v3 = [v2 readCachedChatBotRenderInformation:a1 forChatBot:a2 withError:v7];
  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_1A88C7168();

    swift_willThrow();
  }

  return v3;
}

id sub_1A88B84E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if ([v3 fetchRenderInformation:a1 forChatBot:a2 withOperationID:a3 withError:v6])
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1A88C7168();

  return swift_willThrow();
}

id sub_1A88B85A8(uint64_t a1, unint64_t a2)
{
  if (!IMSharedHelperRetrieveSimDetailsFromTelephony())
  {
    if (qword_1EB302390 != -1)
    {
      swift_once();
    }

    v15 = sub_1A88C7E58();
    sub_1A85EF0E4(v15, qword_1EB309228);
    v16 = sub_1A88C7E38();
    v17 = sub_1A88C89A8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1A85E5000, v16, v17, "ChatBot Brand - Refusing to look up CT subscription context as this platform is data-only.", v18, 2u);
      MEMORY[0x1AC571F20](v18, -1, -1);
    }

    return 0;
  }

  if (a2)
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 ctSubscriptionInfo];

    if (v5)
    {
      v6 = sub_1A88C82A8();
      v7 = [v5 __im_subscriptionContextForForSimID_];

      if (v7)
      {
        v8 = v7;
        if (qword_1EB302390 != -1)
        {
          swift_once();
        }

        v9 = sub_1A88C7E58();
        sub_1A85EF0E4(v9, qword_1EB309228);

        v10 = sub_1A88C7E38();
        v11 = sub_1A88C89C8();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v27 = v13;
          *v12 = 136315138;
          *(v12 + 4) = sub_1A85F0394(a1, a2, &v27);
          _os_log_impl(&dword_1A85E5000, v10, v11, "ChatBot Brand - Using the subscription from simID: %s.", v12, 0xCu);
          sub_1A85F1084(v13);
          MEMORY[0x1AC571F20](v13, -1, -1);
          MEMORY[0x1AC571F20](v12, -1, -1);
        }

        return v8;
      }
    }

    return 0;
  }

  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 ctSubscriptionInfo];

  if (!v20)
  {
    return 0;
  }

  v21 = [v20 preferredOrDefaultSubscriptionContext];

  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  if (qword_1EB302390 != -1)
  {
    swift_once();
  }

  v23 = sub_1A88C7E58();
  sub_1A85EF0E4(v23, qword_1EB309228);
  v24 = sub_1A88C7E38();
  v25 = sub_1A88C89C8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1A85E5000, v24, v25, "ChatBot Brand - Invalid simID. Will use detault subscription.", v26, 2u);
    MEMORY[0x1AC571F20](v26, -1, -1);
  }

  return v22;
}

id IMRichCards.init(dictionary:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1A88C8188();

  v2 = [v0 initWithDictionary_];

  return v2;
}

id IMRichCards.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A88C82E8();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_1A85F5F40(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_1A85F1028(*(a1 + 56) + 32 * v6, v12);

  sub_1A870CCE0(&qword_1EB303B30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1A870CCE0(&unk_1EB3091D0);
  v9 = sub_1A88C85E8();

  v10 = [v2 initWithCardArray_];

  if (v10)
  {

    return v10;
  }

  return 0;
}

id sub_1A88B8C74(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
LABEL_2:
  v5 = v2;
  while (v4 != v5)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_13:
      if (!sub_1A88C8D38())
      {
        goto LABEL_14;
      }

LABEL_11:
      type metadata accessor for IMRichCard(0);
      v9 = sub_1A88C85E8();

      v10 = [v12 initWithCards_];

      return v10;
    }

    v2 = v5 + 1;
    v6 = objc_allocWithZone(IMRichCard);

    v7 = sub_1A88C8188();

    v8 = [v6 initWithDictionary_];

    v5 = v2;
    if (v8)
    {
      MEMORY[0x1AC56EEA0]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A88C8638();
      }

      sub_1A88C8678();
      v3 = v13;
      goto LABEL_2;
    }
  }

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_14:

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1A88B8EAC()
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = sub_1A88C82E8();
  *(inited + 40) = v2;
  v3 = [v0 cards];
  type metadata accessor for IMRichCard(0);
  v4 = sub_1A88C85F8();

  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1AC56F710](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 dictionaryRepresentation];
      v12 = sub_1A88C81A8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1A8735464(0, v7[2] + 1, 1, v7);
      }

      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1A8735464((v13 > 1), v14 + 1, 1, v7);
      }

      v7[2] = v14 + 1;
      v7[v14 + 4] = v12;
      ++v6;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(inited + 72) = sub_1A870CCE0(&qword_1EB303B30);
  *(inited + 48) = v7;
  v15 = sub_1A8738AAC(inited);
  swift_setDeallocating();
  sub_1A85EF638(inited + 32, &qword_1EB303720);
  return v15;
}

unint64_t sub_1A88B912C()
{
  sub_1A870CCE0(&qword_1EB303718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A88E14F0;
  *(inited + 32) = 0x7364726163;
  v16 = inited;
  v17 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v2 = [v0 cards];
  type metadata accessor for IMRichCard(0);
  v3 = sub_1A88C85F8();

  if (v3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A88C8D38())
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC56F710](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 relayDictionaryRepresentation];
      v11 = sub_1A88C81A8();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1A8735464(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = sub_1A8735464((v12 > 1), v13 + 1, 1, v6);
      }

      v6[2] = v13 + 1;
      v6[v13 + 4] = v11;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *(v16 + 72) = sub_1A870CCE0(&qword_1EB303B30);
  *(v16 + 48) = v6;
  v14 = sub_1A8738AAC(v16);
  swift_setDeallocating();
  sub_1A85EF638(v17, &qword_1EB303720);
  return v14;
}

id sub_1A88B93A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_1A88C8188();

  return v5;
}

void *sub_1A88B9424()
{
  v1 = [v0 cards];
  type metadata accessor for IMRichCard(0);
  v2 = sub_1A88C85F8();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_16:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A88C8D38();
  if (!v3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1A871D7D8(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC56F710](v5, v2);
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 chipList];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 suggestedReplies];
        type metadata accessor for IMChipReply();
        v12 = sub_1A88C85F8();
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      v14 = *(v15 + 16);
      v13 = *(v15 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1A871D7D8((v13 > 1), v14 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v14 + 1;
      *(v15 + 8 * v14 + 32) = v12;
    }

    while (v3 != v5);

    return v6;
  }

  __break(1u);
  return result;
}

void *sub_1A88B9620()
{
  v1 = [v0 cards];
  type metadata accessor for IMRichCard(0);
  v2 = sub_1A88C85F8();

  if (v2 >> 62)
  {
LABEL_27:
    v3 = sub_1A88C8D38();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_28:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v19 = v5;
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1AC56F710](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v9 = [v7 chipList];
      if (v9)
      {
        break;
      }

LABEL_6:
      ++v6;
      if (v4 == v3)
      {
        v5 = v19;
        goto LABEL_29;
      }
    }

    v10 = v9;
    v11 = [v9 suggestedActions];
    type metadata accessor for IMChipAction();
    v12 = sub_1A88C85F8();

    if (v12 >> 62)
    {
      v13 = sub_1A88C8D38();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1A87364A4(0, v19[2] + 1, 1, v19);
    }

    v16 = v14[2];
    v15 = v14[3];
    v17 = v14;
    if (v16 >= v15 >> 1)
    {
      v17 = sub_1A87364A4((v15 > 1), v16 + 1, 1, v14);
    }

    v17[2] = v16 + 1;
    v5 = v17;
    v17[v16 + 4] = v12;
  }

  while (v4 != v3);
LABEL_29:

  return v5;
}

id sub_1A88B9884(void *a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  v6 = a1;
  a3();

  sub_1A870CCE0(a4);
  v7 = sub_1A88C85E8();

  return v7;
}

void sub_1A88B9904(uint64_t a1)
{
  v3 = [v1 cards];
  type metadata accessor for IMRichCard(0);
  v4 = sub_1A88C85F8();

  if (v4 >> 62)
  {
    v5 = sub_1A88C8D38();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1AC56F710](i, v4);
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 updateUrlToTransferMap_];
  }

LABEL_10:
}

uint64_t sub_1A88B9A78()
{
  v1 = [v0 cards];
  type metadata accessor for IMRichCard(0);
  v2 = sub_1A88C85F8();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    return 0;
  }

LABEL_18:
  v3 = sub_1A88C8D38();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1AC56F710](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = [v5 title];
    if (v8)
    {
      break;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_11;
    }
  }

  v10 = v8;

  v11 = [v6 title];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1A88C82E8();

    return v13;
  }

  return 0;
}

uint64_t sub_1A88B9C68()
{
  v1 = [v0 cards];
  type metadata accessor for IMRichCard(0);
  v2 = sub_1A88C85F8();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A88C8D38();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1A88C8F08();
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1AC56F710](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      sub_1A870CCE0(&qword_1EB303098);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1A88E27C0;
      *(v8 + 32) = v7;
      v9 = objc_allocWithZone(IMRichCards);
      v10 = v7;
      v11 = sub_1A88C85E8();

      [v9 initWithCards_];

      sub_1A88C8ED8();
      sub_1A88C8F18();
      sub_1A88C8F28();
      sub_1A88C8EE8();
    }

    while (v3 != v5);

    return v12;
  }

  return result;
}

uint64_t IMRichCards.isEqual(_:)(uint64_t a1)
{
  sub_1A87303E8(a1, v9);
  if (!v10)
  {
    sub_1A85EF638(v9, &qword_1EB3057B0);
    goto LABEL_5;
  }

  type metadata accessor for IMRichCards();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v2 = [v1 cards];
  type metadata accessor for IMRichCard(0);
  v3 = sub_1A88C85F8();

  v4 = [v8 cards];
  v5 = sub_1A88C85F8();

  v6 = sub_1A87F7A4C(v3, v5);

  return v6 & 1;
}

uint64_t IMRichCards.hash.getter()
{
  sub_1A88C9588();
  v1 = [v0 cards];
  type metadata accessor for IMRichCard(0);
  v2 = sub_1A88C85F8();

  sub_1A87F85A4(v4, v2);

  return sub_1A88C9568();
}

id IMRichCards.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMRichCards()
{
  result = qword_1EB309248;
  if (!qword_1EB309248)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB309248);
  }

  return result;
}

uint64_t Set<>.simFilterModes.getter(uint64_t a1)
{
  return sub_1A85FF92C(a1, Set<>.simFilterModes.getter);
}

{

  return sub_1A85FD270(a1, &qword_1EB3002F0, &qword_1EB3002F8, sub_1A88BA358, sub_1A86045F0);
}

BOOL sub_1A88BA394(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EB3002E0 != -1)
  {
    v3 = v1;
    swift_once();
    v1 = v3;
  }

  return !sub_1A85FCEB4(v1, off_1EB3002E8);
}

uint64_t Set<>.transactionalFilters.getter(uint64_t a1)
{

  return sub_1A85FD270(a1, &qword_1EB3002B0, &qword_1EB3002B8, sub_1A88BA498, sub_1A85FC86C);
}

uint64_t Set<>.promotionalFilters.getter(uint64_t a1)
{

  return sub_1A85FD270(a1, &qword_1EB3002C8, &qword_1EB3002D0, sub_1A88BA560, sub_1A85FCE8C);
}

BOOL sub_1A88BA59C(uint64_t *a1, void *a2, uint64_t *a3)
{
  v3 = *a1;
  if (*a2 != -1)
  {
    v5 = v3;
    v6 = a3;
    swift_once();
    v3 = v5;
    a3 = v6;
  }

  return sub_1A85FCEB4(v3, *a3);
}

uint64_t Set<>.compactDescription.getter(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (!v5)
  {
    do
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (v12 >= v6)
      {

        MEMORY[0x1AC56ECB0](93, 0xE100000000000000);
        return 91;
      }

      v10 = *(v2 + 8 * v12);
      ++v9;
    }

    while (!v10);
    v9 = v12;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_16;
    }

LABEL_12:
    v5 = (v10 - 1) & v10;
    v13 = sub_1A88C9348();
    MEMORY[0x1AC56ECB0](v13);

    v14 = v8 == *(a1 + 16) - 1;
    v8 = v11;
    if (!v14)
    {
      result = MEMORY[0x1AC56ECB0](32, 0xE100000000000000);
      v8 = v11;
    }
  }

  v10 = v5;
  v11 = v8 + 1;
  if (!__OFADD__(v8, 1))
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A88BA774(uint64_t (*a1)(void))
{
  sub_1A8601A58();
  v2 = a1();

  v3 = *(v2 + 16);
  if (v3)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A88C8F08();
    v4 = v2 + 56;
    result = sub_1A88C8CF8();
    v6 = result;
    v7 = 0;
    v21 = v2 + 64;
    v22 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v10 = *(v2 + 36);
      sub_1A88C8C28();
      v11 = v2;
      sub_1A88C8ED8();
      sub_1A88C8F18();
      sub_1A88C8F28();
      result = sub_1A88C8EE8();
      v8 = 1 << *(v2 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v12 = *(v4 + 8 * v9);
      if ((v12 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v10 != *(v2 + 36))
      {
        goto LABEL_25;
      }

      v13 = v12 & (-2 << (v6 & 0x3F));
      if (v13)
      {
        v8 = __clz(__rbit64(v13)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = v9 << 6;
        v15 = v9 + 1;
        v16 = (v21 + 8 * v9);
        while (v15 < (v8 + 63) >> 6)
        {
          v18 = *v16++;
          v17 = v18;
          v14 += 64;
          ++v15;
          if (v18)
          {
            result = sub_1A88BADD8(v6, v10, 0);
            v8 = __clz(__rbit64(v17)) + v14;
            goto LABEL_17;
          }
        }

        result = sub_1A88BADD8(v6, v10, 0);
LABEL_17:
        v2 = v11;
      }

      ++v7;
      v6 = v8;
      if (v7 == v22)
      {

        v19 = v23;
        goto LABEL_20;
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

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v20 = sub_1A85FF280(v19);

    return v20;
  }

  return result;
}

uint64_t sub_1A88BA9DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A870CCE0(&qword_1EB304708);
  result = sub_1A88C8DD8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1A88C9528();

    sub_1A88C8268();
    result = sub_1A88C9578();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_1A88BAC00(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1A88BAC90(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1A88BAC90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + 8 * v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1A85FD584(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A88BADD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1A88BADE4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v25 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v21[0] = v21;
  v24 = sub_1A88C72E8();
  v6 = *(v24 - 8);
  result = MEMORY[0x1EEE9AC00](v24);
  v22 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v8;
  v9 = 0;
  v10 = (v3 + 63) >> 6;
  v21[2] = v6 + 32;
  v21[3] = v6 + 16;
  for (v21[1] = v6 + 8; v5; result = (*(v6 + 8))(v18, v13))
  {
    v11 = v9;
LABEL_9:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v24;
    v14 = v22;
    v15 = (*(v6 + 16))(v22, *(v25 + 48) + *(v6 + 72) * (v12 | (v11 << 6)), v24);
    v26 = v21;
    v16 = MEMORY[0x1EEE9AC00](v15);
    v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v16);
    v20 = v21 - v19;
    (*(v6 + 32))(v21 - v19, v14, v13);
    sub_1A87C1CC8(v18, v20);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return v27;
    }

    v5 = *(v2 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A88BB038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A88C9528();
  sub_1A88C8268();
  v6 = sub_1A88C9578();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A88C9398() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A88BB130(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1A88C72E8(), sub_1A87173B4(&qword_1EB303178), v5 = sub_1A88C8228(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, v17 = a2 + 56, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v16 = a1;
    v14 = ~v6;
    v8 = *(v4 - 8);
    v15 = v8[2];
    v9 = v8[8];
    v10 = v8[9];
    v11 = (v8 + 1);
    do
    {
      MEMORY[0x1EEE9AC00](v5);
      v15(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *(a2 + 48) + v10 * v7, v4);
      sub_1A87173B4(&qword_1EB303180);
      v12 = sub_1A88C8298();
      v5 = (*v11)(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      if (v12)
      {
        break;
      }

      v7 = (v7 + 1) & v14;
    }

    while (((*(v17 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t IMConversationListFilterMode.action.getter(uint64_t a1)
{
  if (qword_1EB3002C8 != -1)
  {
    swift_once();
  }

  if (sub_1A85FCEB4(a1, qword_1EB3002D0))
  {
    return 3;
  }

  if (qword_1EB3002B0 != -1)
  {
    swift_once();
  }

  if (sub_1A85FCEB4(a1, qword_1EB3002B8))
  {
    return 4;
  }

  if ((a1 - 3) > 6)
  {
    return 0;
  }

  return qword_1A88FAA80[a1 - 3];
}

Swift::Bool __swiftcall IMConversationListFilterMode.subscriptionMatches(lastAddressedHandle:lastAddressedSIMID:)(Swift::String_optional lastAddressedHandle, Swift::String_optional lastAddressedSIMID)
{
  object = lastAddressedSIMID.value._object;
  countAndFlagsBits = lastAddressedSIMID.value._countAndFlagsBits;
  v5 = lastAddressedHandle.value._object;
  v6 = lastAddressedHandle.value._countAndFlagsBits;
  v7 = IMConversationListFilterMode.subscriptionContext.getter(v2);
  if (v7)
  {
    v8 = v7;
    if (v5)
    {
      v9 = [v7 phoneNumber];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1A88C82E8();
        v13 = v12;

        if (v11 != v6 || v13 != v5)
        {
          v15 = sub_1A88C9398();

          if (v15)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }

LABEL_20:

LABEL_21:
        LOBYTE(v7) = 1;
        return v7;
      }
    }

    else if (object)
    {
      v16 = [v7 labelID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_1A88C82E8();
        v20 = v19;

        if (v18 == countAndFlagsBits && v20 == object)
        {
          goto LABEL_20;
        }

        v22 = sub_1A88C9398();

        if (v22)
        {
          goto LABEL_21;
        }

LABEL_19:
        LOBYTE(v7) = 0;
        return v7;
      }
    }

    goto LABEL_19;
  }

  return v7;
}

id IMConversationListFilterMode.nsNumber.getter(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInteger_];
}

uint64_t sub_1A88BB61C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_1A85FC730(a2);
  if (qword_1EB3002B0 != -1)
  {
    swift_once();
  }

  v6 = sub_1A85FC8BC(v5, v4);
  if (qword_1EB3002C8 != -1)
  {
    swift_once();
  }

  result = sub_1A85FC8BC(v7, v6);
  *a3 = result;
  return result;
}

void sub_1A88BB750()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (qword_1ED8C8FE8 != -1)
  {
    swift_once();
  }

  v3 = sub_1A88C7E58();
  sub_1A85EF0E4(v3, qword_1ED8C8AA8);
  oslog = sub_1A88C7E38();
  v4 = sub_1A88C89D8();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (v2)
    {
      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    else
    {
      v8 = IMConversationListFilterMode.stringValue.getter(v1);
      v7 = v9;
    }

    v10 = sub_1A85F0394(v8, v7, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1A85E5000, oslog, v4, "didSet cachedDefaultPrimaryFilterMode: %s", v5, 0xCu);
    sub_1A85F1084(v6);
    MEMORY[0x1AC571F20](v6, -1, -1);
    MEMORY[0x1AC571F20](v5, -1, -1);
  }
}

void sub_1A88BB8CC(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 36));
  if (*(a1 + 16))
  {

    os_unfair_lock_unlock((a1 + 36));
  }

  else
  {
    *(a1 + 16) = 1;
    os_unfair_lock_unlock((a1 + 36));
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = sub_1A88C82A8();
    CFNotificationCenterAddObserver(v2, 0, sub_1A88BB9A8, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_1A88BB9A8()
{
  if (qword_1ED8C8AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_1ED8CA4B8;

  os_unfair_lock_lock((v0 + 36));
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  sub_1A88BB750();
  os_unfair_lock_unlock((v0 + 36));
  v1 = [objc_opt_self() defaultCenter];
  [v1 postNotificationName:@"IMDefaultPrimaryConversationListFilterModeChangedNotification" object:0];
}

uint64_t sub_1A88BBA94(uint64_t a1)
{
  swift_getKeyPath();

  os_unfair_lock_lock((a1 + 36));
  sub_1A88BC1B0((a1 + 16), &v4);
  os_unfair_lock_unlock((a1 + 36));

  if (v5 != 1)
  {
    return v4;
  }

  v2 = sub_1A88BC0AC();
  os_unfair_lock_lock((a1 + 36));
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  sub_1A88BB750();
  os_unfair_lock_unlock((a1 + 36));
  return v2;
}

uint64_t sub_1A88BBB5C()
{
  sub_1A870CCE0(&qword_1EB309258);
  result = swift_allocObject();
  *(result + 36) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 1;
  qword_1ED8CA4B8 = result;
  return result;
}

uint64_t sub_1A88BBBAC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v1 = (v0 + 16);
  v5[4] = sub_1A88BC0A4;
  v5[5] = v0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A88BBD88;
  v5[3] = &unk_1F1BB8CE0;
  v2 = _Block_copy(v5);

  IMConversationListFilterModeEnumerateCases(v2);
  _Block_release(v2);
  swift_beginAccess();
  v3 = *v1;

  qword_1EB3002A8 = v3;
  return result;
}

uint64_t sub_1A88BBCB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A85FD07C(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1A85FD07C((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = a1;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_1A88BBD88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t IMConversationListFilterMode.isValid.getter(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    if (!a1)
    {
      return 0;
    }

    if (IMSharedHelperMessageSIMFilteringEnabled())
    {
      return 1;
    }

    if (qword_1EB3002F0 != -1)
    {
      swift_once();
    }

    return !sub_1A85FCEB4(a1, qword_1EB3002F8);
  }

  else
  {
    if (qword_1ED8C8AC8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = sub_1A88BBA94(qword_1ED8CA4B8);
    swift_endAccess();
    return v2 == a1;
  }
}

uint64_t IMConversationListFilterMode.subAction.getter(uint64_t a1)
{
  if ((a1 - 13) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_1A88FAAB8[a1 - 13];
  }
}

uint64_t IMConversationListFilterMode.subscriptionContext.getter(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 ctSubscriptionInfo];

  if (!v3)
  {
    return 0;
  }

  if (a1 == 11)
  {
    v4 = 1;
LABEL_7:
    v5 = [v3 __im_subscriptionContextForForSlotID_];

    return v5;
  }

  if (a1 == 12)
  {
    v4 = 2;
    goto LABEL_7;
  }

  result = sub_1A88C8FB8();
  __break(1u);
  return result;
}

uint64_t IMConversationListFilterMode.subscriptionSlot.getter(uint64_t a1)
{
  if (a1 == 11)
  {
    return 1;
  }

  if (a1 == 12)
  {
    return 2;
  }

  result = sub_1A88C8FB8();
  __break(1u);
  return result;
}

uint64_t sub_1A88BC0AC()
{
  v0 = objc_opt_self();
  v1 = [v0 filteringKeySet];
  v2 = [v1 BOOLValue];

  if (v2)
  {
    return 2;
  }

  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isIntroductionsEnabled];

  if (v5 && ([v0 isFilterUnknownSendersEnabled] & 1) != 0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A88BC1B0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 1), a1[16]);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t _s27DefaultFilterModeControllerV5StateVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s27DefaultFilterModeControllerV5StateVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

IMFilterHelpers __swiftcall IMFilterHelpers.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMFilterHelpers()
{
  result = qword_1EB309260;
  if (!qword_1EB309260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB309260);
  }

  return result;
}

uint64_t sub_1A88BC67C()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPriorityMessagesEnabled];

  if (!v1)
  {
    v21 = 0;
    return v21 & 1;
  }

  v2 = sub_1A870CCE0(&qword_1EB306460);
  v28[5] = v28;
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v28 - v4;
  v6 = sub_1A88C75E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7598();
  sub_1A88C7588();
  v10 = (*(v7 + 8))(v9, v6);
  v28[4] = v28;
  MEMORY[0x1EEE9AC00](v10);
  v11 = v28 - v4;
  sub_1A88C7568();
  v12 = sub_1A88C7578();
  v13 = *(v12 - 8);
  (*(v13 + 56))(v28 - v4, 0, 1, v12);
  v14 = sub_1A870CCE0(&qword_1EB309268);
  v28[3] = v28;
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v28 - v16;
  v18 = *(v15 + 56);
  sub_1A88BCC64(v28 - v4, v28 - v16);
  sub_1A88BCC64(v28 - v4, &v17[v18]);
  v19 = *(v13 + 48);
  v20 = v19(v17, 1, v12);
  if (v20 != 1)
  {
    v28[2] = v28;
    MEMORY[0x1EEE9AC00](v20);
    v22 = v28 - v4;
    sub_1A88BCC64(v17, v28 - v4);
    v23 = v19(&v17[v18], 1, v12);
    if (v23 != 1)
    {
      v28[1] = v28;
      MEMORY[0x1EEE9AC00](v23);
      v25 = v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 32))(v25, &v17[v18], v12);
      sub_1A88BCCD4();
      v21 = sub_1A88C8298();
      v26 = *(v13 + 8);
      v26(v25, v12);
      sub_1A85EF638(v11, &qword_1EB306460);
      sub_1A85EF638(v5, &qword_1EB306460);
      v26(v22, v12);
      sub_1A85EF638(v17, &qword_1EB306460);
      return v21 & 1;
    }

    sub_1A85EF638(v11, &qword_1EB306460);
    sub_1A85EF638(v5, &qword_1EB306460);
    (*(v13 + 8))(v22, v12);
    goto LABEL_8;
  }

  sub_1A85EF638(v11, &qword_1EB306460);
  sub_1A85EF638(v5, &qword_1EB306460);
  if (v19(&v17[v18], 1, v12) != 1)
  {
LABEL_8:
    sub_1A85EF638(v17, &qword_1EB309268);
    v21 = 0;
    return v21 & 1;
  }

  sub_1A85EF638(v17, &qword_1EB306460);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1A88BCB68()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isPriorityMessagesEnabled];

  if (v1)
  {
    v2 = @"com.apple.MobileSMS";
    v3 = sub_1A88C82A8();
    v4 = IMGetDomainBoolForKey();

    if (v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = [objc_opt_self() receiverIsCandidateForAppleSMSFilter];
    }

    v6 = v5 | [objc_opt_self() isTextMessageExtensionEnabled];
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1A88BCC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A870CCE0(&qword_1EB306460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A88BCCD4()
{
  result = qword_1EB300780;
  if (!qword_1EB300780)
  {
    sub_1A88C7578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB300780);
  }

  return result;
}

uint64_t static IMGroupNameAndPhotoHelper.shouldDisplayGroupNameAndPhoto<A>(with:handles:isKnownContact:)(uint64_t a1)
{
  v2 = IMSharedHelperGroupNameAndPhotoEnabled();
  if (v2)
  {
    if (IMSharedHelperGroupNameAndPhotoRequiresParticipantContact() || a1)
    {
      sub_1A88C86B8();
      swift_getWitnessTable();
      LOBYTE(v2) = sub_1A88C84E8();
    }

    else
    {
      LOBYTE(v2) = 1;
    }
  }

  return v2 & 1;
}

uint64_t IMMessageFilterActionResponse.filterMode.getter(uint64_t result)
{
  if (result > 1)
  {
    switch(result)
    {
      case 2:
        return 9;
      case 3:
        return 5;
      case 4:
        return result;
    }

    goto LABEL_14;
  }

  if (result)
  {
    if (result == 1)
    {
      return 3;
    }

LABEL_14:
    v2 = (result >> 4) - 1;
    if (v2 >= 0xC)
    {
      return IMMessageFilterActionResponse.filterMode.getter(result & 0xF);
    }

    else
    {
      return qword_1A88FAB58[v2];
    }
  }

  if (qword_1ED8C8AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = sub_1A88BBA94(qword_1ED8CA4B8);
  swift_endAccess();
  return v1;
}

uint64_t IMMessageFilterActionResponse.subFilterMode.getter(uint64_t a1)
{
  v1 = a1 >> 4;
  if (a1 >> 4 > 6)
  {
    if (v1 > 9)
    {
      switch(v1)
      {
        case 10:
          return 24;
        case 11:
          return 22;
        case 12:
          return 23;
      }
    }

    else
    {
      switch(v1)
      {
        case 7:
          return 18;
        case 8:
          return 19;
        case 9:
          return 20;
      }
    }
  }

  else if (v1 > 3)
  {
    switch(v1)
    {
      case 4:
        return 16;
      case 5:
        return 15;
      case 6:
        return 17;
    }
  }

  else
  {
    switch(v1)
    {
      case 1:
        return 21;
      case 2:
        return 13;
      case 3:
        return 14;
    }
  }

  return 0;
}

uint64_t IMMessageFilterSubActionResponse.filterMode.getter(uint64_t a1)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          return 24;
        case 11:
          return 22;
        case 12:
          return 23;
      }

      return 0;
    }

    if (a1 == 7)
    {
      return 18;
    }

    else if (a1 == 8)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }

  else
  {
    if (a1 <= 3)
    {
      switch(a1)
      {
        case 1:
          return 21;
        case 2:
          return 13;
        case 3:
          return 14;
      }

      return 0;
    }

    if (a1 == 4)
    {
      return 16;
    }

    else if (a1 == 5)
    {
      return 15;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t RemoteIntentServiceInfo.init(dictionaryRepresentation:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = sub_1A88C82E8();
  v35 = v4;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v5 = sub_1A8602F10(v33), (v6 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v5, &v34);
    sub_1A8717360(v33);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v31;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v32;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_1A8717360(v33);
    v8 = 0;
    v9 = 0;
  }

  v34 = sub_1A88C82E8();
  v35 = v10;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v11 = sub_1A8602F10(v33), (v12 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v11, &v34);
    sub_1A8717360(v33);
    sub_1A870CCE0(&qword_1EB303100);
    if (swift_dynamicCast())
    {
      v13 = v31;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_1A8717360(v33);
    v13 = 0;
  }

  v34 = sub_1A88C82E8();
  v35 = v14;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v15 = sub_1A8602F10(v33), (v16 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v15, &v34);
    sub_1A8717360(v33);
    sub_1A870CCE0(&qword_1EB303100);
    if (swift_dynamicCast())
    {
      v17 = v31;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    sub_1A8717360(v33);
    v17 = 0;
  }

  v34 = sub_1A88C82E8();
  v35 = v18;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v19 = sub_1A8602F10(v33), (v20 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v19, &v34);
    sub_1A8717360(v33);
    sub_1A870CCE0(&qword_1EB303320);
    if (swift_dynamicCast())
    {
      v21 = v31;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    sub_1A8717360(v33);
    v21 = 0;
  }

  v34 = sub_1A88C82E8();
  v35 = v22;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v23 = sub_1A8602F10(v33), (v24 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v23, &v34);
    sub_1A8717360(v33);
    sub_1A870CCE0(&qword_1EB303320);
    if (swift_dynamicCast())
    {
      v25 = v31;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_1A8717360(v33);
    v25 = 0;
  }

  v34 = sub_1A88C82E8();
  v35 = v26;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v27 = sub_1A8602F10(v33), (v28 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v27, &v34);
    sub_1A8717360(v33);

    sub_1A870CCE0(&qword_1EB3051D0);
    result = swift_dynamicCast();
    v30 = v31;
    if (!result)
    {
      v30 = 0;
    }
  }

  else
  {

    result = sub_1A8717360(v33);
    v30 = 0;
  }

  *a2 = v8;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v17;
  a2[4] = v21;
  a2[5] = v25;
  a2[6] = v30;
  return result;
}

uint64_t RemoteIntentServiceInfo.dictionaryRepresentation.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = MEMORY[0x1E69E7CC8];
  v41 = MEMORY[0x1E69E7CC8];
  *&v39 = sub_1A88C82E8();
  *(&v39 + 1) = v9;
  v10 = MEMORY[0x1E69E6158];
  sub_1A88C8D88();
  if (v1)
  {
    v40 = v10;
    *&v39 = v2;
    *(&v39 + 1) = v1;
    sub_1A85E99B0(&v39, v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v32, &v33, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(&v33);
    v41 = v8;
  }

  else
  {
    sub_1A88BEFF8(&v33, &v39);
    sub_1A860169C(&v39);
    sub_1A8717360(&v33);
  }

  *&v39 = sub_1A88C82E8();
  *(&v39 + 1) = v12;
  sub_1A88C8D88();
  if (v3)
  {
    v40 = sub_1A870CCE0(&qword_1EB303100);
    *&v39 = v3;
    sub_1A85E99B0(&v39, v32);

    v13 = v41;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v32, &v33, v14);
    sub_1A8717360(&v33);
    v41 = v13;
  }

  else
  {
    sub_1A88BEFF8(&v33, &v39);
    sub_1A860169C(&v39);
    sub_1A8717360(&v33);
  }

  *&v39 = sub_1A88C82E8();
  *(&v39 + 1) = v15;
  sub_1A88C8D88();
  if (v4)
  {
    v40 = sub_1A870CCE0(&qword_1EB303100);
    *&v39 = v4;
    sub_1A85E99B0(&v39, v32);

    v16 = v41;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v32, &v33, v17);
    sub_1A8717360(&v33);
    v41 = v16;
  }

  else
  {
    sub_1A88BEFF8(&v33, &v39);
    sub_1A860169C(&v39);
    sub_1A8717360(&v33);
  }

  *&v39 = sub_1A88C82E8();
  *(&v39 + 1) = v18;
  sub_1A88C8D88();
  if (v5)
  {
    v40 = sub_1A870CCE0(&qword_1EB303320);
    *&v39 = v5;
    sub_1A85E99B0(&v39, v32);

    v19 = v41;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v32, &v33, v20);
    sub_1A8717360(&v33);
    v41 = v19;
  }

  else
  {
    sub_1A88BEFF8(&v33, &v39);
    sub_1A860169C(&v39);
    sub_1A8717360(&v33);
  }

  *&v39 = sub_1A88C82E8();
  *(&v39 + 1) = v21;
  sub_1A88C8D88();
  if (v6)
  {
    v40 = sub_1A870CCE0(&qword_1EB303320);
    *&v39 = v6;
    sub_1A85E99B0(&v39, v32);

    v22 = v41;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v32, &v33, v23);
    sub_1A8717360(&v33);
    v41 = v22;
  }

  else
  {
    sub_1A88BEFF8(&v33, &v39);
    sub_1A860169C(&v39);
    sub_1A8717360(&v33);
  }

  *&v39 = sub_1A88C82E8();
  *(&v39 + 1) = v24;
  sub_1A88C8D88();
  if (v7)
  {
    v40 = sub_1A870CCE0(&qword_1EB3051D0);
    *&v39 = v7;
    sub_1A85E99B0(&v39, v32);

    v25 = v41;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v32, &v33, v26);
    sub_1A8717360(&v33);
    v27 = v25;
  }

  else
  {
    sub_1A88BEFF8(&v33, &v39);
    sub_1A860169C(&v39);
    sub_1A8717360(&v33);
    v27 = v41;
  }

  *&v33 = sub_1A88C82E8();
  *(&v33 + 1) = v28;
  sub_1A88C8D88();
  *&v33 = v2;
  *(&v33 + 1) = v1;
  v34 = v3;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v29 = sub_1A88BEB80();
  v35 = sub_1A870CCE0(&qword_1EB303320);
  *&v33 = v29;
  sub_1A85E99B0(&v33, v32);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_1A87AC424(v32, &v39, v30);
  sub_1A8717360(&v39);
  return v27;
}

uint64_t sub_1A88BDB2C()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB309270);
  sub_1A85EF0E4(v0, qword_1EB309270);
  return sub_1A88C7E48();
}

void *sub_1A88BDBB0()
{
  result = sub_1A88BDBD0();
  off_1EB309288 = result;
  return result;
}

uint64_t sub_1A88BDBD0()
{
  v0 = sub_1A88C82A8();
  v1 = IMPathsForPlugInsWithExtension();

  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = sub_1A88C85F8();

  v3 = sub_1A8763800(v2);

  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v43 = *(v3 + 16);
  if (!v43)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_21:

    return v5;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  v6 = (v3 + 40);
  v42 = v3;
  while (v4 < *(v3 + 16))
  {
    v45 = v6;
    v46 = v4;
    v8 = *v6;
    v49 = *(v6 - 1);
    v9 = sub_1A88C72E8();
    v44 = &v41;
    v10 = *(v9 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v12 = sub_1A88C71E8();
    v48 = &v41;
    MEMORY[0x1EEE9AC00](v12);
    (*(v14 + 104))(&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6968F50]);
    v15 = sub_1A870CCE0(&unk_1EB309060);
    MEMORY[0x1EEE9AC00](v15 - 8);
    (*(v10 + 56))(&v41 - v16, 1, 1, v9);
    swift_bridgeObjectRetain_n();
    v47 = v8;
    v17 = sub_1A88C72C8();
    MEMORY[0x1EEE9AC00](v17);
    v18 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v18;
    sub_1A88C7248();
    v19 = sub_1A88C7228();
    v21 = v20;
    v22 = *(v10 + 8);
    v23 = v9;
    v22(v18, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v5;
    v26 = sub_1A85F5F40(v19, v21);
    v27 = v5[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_24;
    }

    v30 = v25;
    if (v5[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v33 = v47;
        if (v25)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1A87B1374();
        v33 = v47;
        if (v30)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_1A887909C(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_1A85F5F40(v19, v21);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_26;
      }

      v26 = v31;
      v33 = v47;
      if (v30)
      {
LABEL_5:

        v5 = v50;
        v7 = (v50[7] + 16 * v26);
        *v7 = v49;
        v7[1] = v33;

        v22(v48, v23);
        goto LABEL_6;
      }
    }

    v5 = v50;
    v50[(v26 >> 6) + 8] |= 1 << v26;
    v34 = (v5[6] + 16 * v26);
    *v34 = v19;
    v34[1] = v21;
    v35 = (v5[7] + 16 * v26);
    v36 = v48;
    *v35 = v49;
    v35[1] = v33;
    v22(v36, v23);
    v37 = v5[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_25;
    }

    v5[2] = v39;
LABEL_6:
    v4 = v46 + 1;
    v6 = v45 + 2;
    v3 = v42;
    if (v43 == v46 + 1)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

uint64_t sub_1A88BE07C()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E69;
  v3 = 0x4465636976726573;
  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x49746E756F636361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x49746E756F636361;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A88BE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A88BF77C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A88BE18C(uint64_t a1)
{
  v2 = sub_1A88BF544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88BE1C8(uint64_t a1)
{
  v2 = sub_1A88BF544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentServiceInfo.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB309290);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v7 = v1[2];
  v18 = v1[3];
  v19 = v7;
  v8 = v1[4];
  v16 = v1[5];
  v17 = v8;
  v15 = v1[6];
  sub_1A870C278(a1, a1[3]);
  sub_1A88BF544();
  sub_1A88C95C8();
  LOBYTE(v22) = 0;
  v9 = v20;
  sub_1A88C91C8();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v10 = v17;
  v11 = v18;
  v22 = v19;
  v21 = 1;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C9228();
  v22 = v11;
  v21 = 2;
  sub_1A88C9228();
  v21 = 3;
  if (v10)
  {
    v22 = v10;

    sub_1A870CCE0(&qword_1EB304660);
    sub_1A85FB520(&qword_1EB3046A0, &qword_1EB304660);
    sub_1A88C9228();
    v13 = v16;
  }

  else
  {
    v13 = v16;
  }

  v21 = 4;
  if (v13)
  {
    v22 = v13;

    sub_1A870CCE0(&qword_1EB304660);
    sub_1A85FB520(&qword_1EB3046A0, &qword_1EB304660);
    sub_1A88C9228();
  }

  v21 = 5;
  if (!v15)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v22 = v15;

  sub_1A870CCE0(&qword_1EB3092A0);
  sub_1A85FB520(&qword_1EB3092A8, &qword_1EB3092A0);
  sub_1A88C9228();
  (*(v4 + 8))(v6, v3);
}

uint64_t RemoteIntentServiceInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3092B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A88BF544();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  LOBYTE(v25) = 0;
  v22 = sub_1A88C9058();
  v23 = v10;
  sub_1A870CCE0(&qword_1EB303100);
  v24 = 1;
  sub_1A8716048(&qword_1EB303108);
  sub_1A88C90B8();
  v20 = 0;
  v21 = v25;
  v24 = 2;
  sub_1A88C90B8();
  v19 = v25;
  sub_1A870CCE0(&qword_1EB304660);
  v24 = 3;
  sub_1A85FB520(&qword_1EB304668, &qword_1EB304660);
  sub_1A88C90B8();
  v11 = v25;
  if (v25 == 1)
  {
    v11 = 0;
  }

  v18 = v11;
  v24 = 4;
  sub_1A88C90B8();
  if (v25 == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v25;
  }

  sub_1A870CCE0(&qword_1EB3092A0);
  v24 = 5;
  sub_1A85FB520(&qword_1EB3092B8, &qword_1EB3092A0);
  sub_1A88C90B8();
  if (v25 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v25;
  }

  (*(v6 + 8))(v8, v5);
  v14 = v23;
  *a2 = v22;
  a2[1] = v14;
  v16 = v18;
  v15 = v19;
  a2[2] = v21;
  a2[3] = v15;
  a2[4] = v16;
  a2[5] = v12;
  a2[6] = v13;

  sub_1A85F1084(a1);
}

uint64_t sub_1A88BEB80()
{
  v1 = v0[1];
  if (!v1)
  {
    if (qword_1EB3023A8 != -1)
    {
      swift_once();
    }

    v22 = sub_1A88C7E58();
    sub_1A85EF0E4(v22, qword_1EB309270);
    v23 = sub_1A88C7E38();
    v24 = sub_1A88C89C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1A85E5000, v23, v24, "Could not derive service properties because internal name was nil on RemoteIntentService", v25, 2u);
      MEMORY[0x1AC571F20](v25, -1, -1);
    }

    return MEMORY[0x1E69E7CC8];
  }

  v2 = *v0;
  if (qword_1EB3023B0 != -1)
  {
    swift_once();
  }

  v3 = off_1EB309288;
  if (*(off_1EB309288 + 2))
  {
    v4 = sub_1A85F5F40(v2, v1);
    if (v5)
    {
      v6 = (v3[7] + 16 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = objc_allocWithZone(MEMORY[0x1E696AAE8]);

      v10 = sub_1A88C82A8();
      v11 = [v9 initWithPath_];

      if (v11)
      {

        v12 = IMServicePropertiesFromIMServiceBundle(v11);
        v13 = sub_1A88C81A8();

        return v13;
      }

      if (qword_1EB3023A8 != -1)
      {
        swift_once();
      }

      v26 = sub_1A88C7E58();
      sub_1A85EF0E4(v26, qword_1EB309270);

      v16 = sub_1A88C7E38();
      v27 = sub_1A88C89C8();

      if (os_log_type_enabled(v16, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v32 = v29;
        *v28 = 136315394;
        v30 = sub_1A85F0394(v8, v7, &v32);

        *(v28 + 4) = v30;
        *(v28 + 12) = 2080;
        v31 = sub_1A85F0394(v2, v1, &v32);

        *(v28 + 14) = v31;
        _os_log_impl(&dword_1A85E5000, v16, v27, "Could not derive service properties because we could not create a bundle for service path: %s derived from service internal name: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v29, -1, -1);
        v21 = v28;
        goto LABEL_12;
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  if (qword_1EB3023A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1A88C7E58();
  sub_1A85EF0E4(v15, qword_1EB309270);

  v16 = sub_1A88C7E38();
  v17 = sub_1A88C89C8();
  if (!os_log_type_enabled(v16, v17))
  {
    goto LABEL_18;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v32 = v19;
  *v18 = 136315138;
  v20 = sub_1A85F0394(v2, v1, &v32);

  *(v18 + 4) = v20;
  _os_log_impl(&dword_1A85E5000, v16, v17, "Could not derive service properties because we could not find a service bundle path for service internal name: %s", v18, 0xCu);
  sub_1A85F1084(v19);
  MEMORY[0x1AC571F20](v19, -1, -1);
  v21 = v18;
LABEL_12:
  MEMORY[0x1AC571F20](v21, -1, -1);
LABEL_19:

  return MEMORY[0x1E69E7CC8];
}

double sub_1A88BEFF8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A8602F10(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A87B1030();
      v9 = v11;
    }

    sub_1A8717360(*(v9 + 48) + 40 * v7);
    sub_1A85E99B0((*(v9 + 56) + 32 * v7), a2);
    sub_1A87B007C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1A88BF09C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A85F5F40(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A87B14EC();
      v10 = v12;
    }

    sub_1A85E99B0((*(v10 + 56) + 32 * v8), a3);
    sub_1A87B0220(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1A88BF140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1A8716D30(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A87B1D6C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_1A88C72E8();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_1A87B076C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_1A88C72E8();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1A88BF304(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1A85F5F40(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1A87B2320();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1A87B32C4(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1A88BF3C8(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = sub_1A85F5F40(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a3(v10, v12);
  *v7 = v12;
  return v13;
}

unint64_t sub_1A88BF478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_1A85F5F40(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A87B24A8();
      v10 = v17;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *v11;
    v15 = *(v11 + 24);
    v16 = *(v11 + 8);
    result = sub_1A87B0BB8(v8, v10);
    v14 = v15;
    v13 = v16;
    *v4 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a3 = v12;
  *(a3 + 8) = v13;
  *(a3 + 24) = v14;
  return result;
}

unint64_t sub_1A88BF544()
{
  result = qword_1EB309298;
  if (!qword_1EB309298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB309298);
  }

  return result;
}

uint64_t sub_1A88BF598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A88BF5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1A88BF678()
{
  result = qword_1EB3092C0;
  if (!qword_1EB3092C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3092C0);
  }

  return result;
}

unint64_t sub_1A88BF6D0()
{
  result = qword_1EB3092C8;
  if (!qword_1EB3092C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3092C8);
  }

  return result;
}

unint64_t sub_1A88BF728()
{
  result = qword_1EB3092D0;
  if (!qword_1EB3092D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3092D0);
  }

  return result;
}

uint64_t sub_1A88BF77C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xEA00000000007344 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8921590 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4465636976726573 && a2 == 0xEF73746C75616665 || (sub_1A88C9398() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A89215B0 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xEB000000006F666ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A88C9398();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1A88BF9E4()
{
  sub_1A86026BC();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A88BFA54()
{
  sub_1A86026BC();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A88BFAC4()
{
  sub_1A86026BC();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A88BFB34()
{
  sub_1A86026BC();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A88BFBA4()
{
  sub_1A86026C8();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A88BFBE0()
{
  sub_1A86026BC();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A88BFC50()
{
  sub_1A86026C8();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A88BFC8C()
{
  sub_1A86026C8();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A88BFCC8()
{
  sub_1A86026C8();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A88BFD04()
{
  sub_1A86026BC();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A88BFD74(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = [*(a1 + 32) handleString];
  v7 = [*(a1 + 40) handleString];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_1A85E5000, a3, OS_LOG_TYPE_ERROR, "Invitation of handle %@ from handle %@ encountered error %@", &v8, 0x20u);
}

void sub_1A88BFE4C()
{
  sub_1A86026BC();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A88BFEBC()
{
  sub_1A86026C8();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A88BFFE0()
{
  sub_1A86026C8();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A88C001C()
{
  sub_1A86026C8();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1A88C0058()
{
  sub_1A86026BC();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1A88C0118(int a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5[0] = 67109634;
  v5[1] = a1;
  v6 = 2080;
  v7 = strerror(a1);
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1A85E5000, a3, OS_LOG_TYPE_ERROR, "sys/stat returned error %d (%s) while getting info for file at path: %@", v5, 0x1Cu);
}

void sub_1A88C01CC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Failed to get fileSystemRepresentation for path: %@", &v2, 0xCu);
}

void sub_1A88C02E0()
{
  dlerror();
  abort_report_np();
  sub_1A88C0304();
}

void sub_1A88C032C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = IMStringFromAssociatedMessageType(a1);
  v7 = [v5 stringWithFormat:@"%ld (%@)", a1, v6];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  *buf = 138412546;
  v11 = v7;
  v12 = 2112;
  v13 = v9;
  _os_log_error_impl(&dword_1A85E5000, a3, OS_LOG_TYPE_ERROR, "invalid associated message type: %@ for %@", buf, 0x16u);
}

void sub_1A88C0428(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_1A86026BC();
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "actionStringFormat is a required override in %@", v4, v5, v6, v7, v8);
}

void sub_1A88C04AC(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_1A86026BC();
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "reactionString is a required override in %@", v4, v5, v6, v7, v8);
}

void sub_1A88C0530(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_1A86026BC();
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "adaptiveImageGlyphForPreviewString is a required override in %@", v4, v5, v6, v7, v8);
}

void sub_1A88C05B4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_1A86026BC();
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "emojiReactionForPreviewString is a required override in %@", v4, v5, v6, v7, v8);
}

void sub_1A88C06C0(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_1A86026BC();
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "MessageSummaryInfo is nil in %@", v4, v5, v6, v7, v8);
}

void sub_1A88C0744(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_1A86026BC();
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "Tapback actionFormat is nil in %@", v4, v5, v6, v7, v8);
}

void sub_1A88C07C8(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  sub_1A86026BC();
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "actionStringFormat is nil in %@", v4, v5, v6, v7, v8);
}

void sub_1A88C0948(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "Could not find message part matching message part range: %@", buf, 0xCu);
}

void sub_1A88C0AD8()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1A86026BC();
  _os_log_fault_impl(&dword_1A85E5000, v0, OS_LOG_TYPE_FAULT, "IMMessagePartDescriptor for index %ld not found in message, but was found when enumerating indexes", v1, 0xCu);
}

void sub_1A88C0CDC(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 associatedMessageType];
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Unexpected associated message type actionString: %lld", &v3, 0xCu);
}

void sub_1A88C0D7C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Error: Ooops, error while archiving smsfilter params: %@", &v2, 0xCu);
}

void sub_1A88C0E60(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Error recording accepted introductions: %@", &v3, 0xCu);
}

void sub_1A88C0EDC(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 handle];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1A85E5000, a4, OS_LOG_TYPE_ERROR, "Did not find a CNContact for accepted handle: %@. cannot record change event for this handle.", a1, 0xCu);
}

void sub_1A88C0FE8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Failed to initialize UVTransaction with error: %@", &v2, 0xCu);
}

void sub_1A88C10A4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "strict-decoding 017 exception/error after _enableStrictSecureDecodingMode: [%@]", &v2, 0xCu);
}

void sub_1A88C111C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Invalid service for chat lookup: %@.", &v2, 0xCu);
}

void sub_1A88C1324(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Received error from combined balloon plugin unpacking: %@", &v3, 0xCu);
}

void sub_1A88C13A0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Received error from combined balloon plugin unpacking: %@", &v2, 0xCu);
}

void sub_1A88C1510(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "No emoji found in emojiString: %@", &v2, 0xCu);
}

void sub_1A88C1738(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "Found non-dictionary historical content in message part array", buf, 2u);
}

void sub_1A88C1778(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "Could not convert dictionary to historical content. Skipping.", buf, 2u);
}

void sub_1A88C187C(unsigned __int8 a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Invalid Syndication action type: %ld", &v2, 0xCu);
}

void sub_1A88C19DC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "Could not get a subscription short name for sim ID: %@ - accountUUID: %@", &v3, 0x16u);
}

void sub_1A88C1A64(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Sender identity: %@", &v2, 0xCu);
}

void sub_1A88C1B44(unsigned __int8 a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Deserialized invalid syndication action type: %ld", &v2, 0xCu);
}

void sub_1A88C1BD4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1A85E5000, a3, OS_LOG_TYPE_ERROR, "No standard handler for command: '%@' in %@. Installing NOOP lockdown handler.", &v7, 0x16u);
}

void sub_1A88C1EE8()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1A86026BC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1A85E5000, v1, OS_LOG_TYPE_ERROR, "Failed to look up RCS configuration for subscription context %@: %@", v2, 0x16u);
}

void sub_1A88C2160(uint64_t a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  v4 = "[IMMessagePartSyndicationAssetDescriptor syndicationForPartIndex:asset:]";
  v5 = 2048;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "%s No syndication present for partIndex %lu on asset %i", &v3, 0x1Cu);
}

void sub_1A88C2304()
{
  sub_1A86026F4();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A88C2380()
{
  sub_1A86026F4();
  sub_1A86025D0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1A88C2410(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "movePreviewToDiskCache -- nil file URL:\ntmpPreviewURL:%@ \ntargetPreviewURL:%@", &v3, 0x16u);
}

void sub_1A88C2498(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Looking up localized format string failed for string: '%@'", &v2, 0xCu);
}

void sub_1A88C2524(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "Error loading bundle at path %@: %@", &v3, 0x16u);
}

void sub_1A88C264C(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 handle];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Handle does not appear to be an email or a phone number: %@. Cannot create a CRRecentEvent.", &v4, 0xCu);
}

void sub_1A88C27C0(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A85E5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "IMReplySuggestionGenerator - Unexpected and invalid SROSmartRepliesSuggestion.", buf, 2u);
}

void sub_1A88C2968(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Ending all holds on updates! Previous hold reasons: %{public}@", &v3, 0xCu);
}

void sub_1A88C29E4()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = 138412546;
  v1 = qword_1EB300F48;
  v2 = 2080;
  v3 = "mutableInfo";
  _os_log_error_impl(&dword_1A85E5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_1A88C2A80(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) handleString];
  sub_1A86026BC();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1A85E5000, a3, OS_LOG_TYPE_ERROR, "Error fetching subscription service for handle: %@ Error: %@", v6, 0x16u);
}

void sub_1A88C3004(void *a1)
{
  v1 = [a1 guid];
  sub_1A86026BC();
  sub_1A8602650(&dword_1A85E5000, v2, v3, "Not counting %@ for unread count due to filter action policy", v4, v5, v6, v7, v8);
}

void sub_1A88C3088(void *a1)
{
  v1 = [a1 guid];
  sub_1A86026BC();
  sub_1A8602650(&dword_1A85E5000, v2, v3, "Not counting %@ for unread count due to junk filtering exclusion", v4, v5, v6, v7, v8);
}

void sub_1A88C310C(void *a1)
{
  v1 = [a1 guid];
  sub_1A86026BC();
  sub_1A8602650(&dword_1A85E5000, v2, v3, "Not counting %@ for unread count due to focus mode policy", v4, v5, v6, v7, v8);
}

void sub_1A88C3190(void *a1)
{
  v1 = [a1 guid];
  sub_1A86026BC();
  sub_1A8602650(&dword_1A85E5000, v2, v3, "Not counting %@ for unread count due to assistive access policy", v4, v5, v6, v7, v8);
}

void sub_1A88C3214(void *a1)
{
  v1 = [a1 guid];
  sub_1A86026BC();
  sub_1A8602650(&dword_1A85E5000, v2, v3, "Not counting %@ for unread count due to mute policy", v4, v5, v6, v7, v8);
}

void sub_1A88C3298(void *a1)
{
  v1 = [a1 guid];
  sub_1A86026BC();
  sub_1A8602650(&dword_1A85E5000, v2, v3, "Not counting %@ for unread count due to archival", v4, v5, v6, v7, v8);
}

void sub_1A88C331C(void *a1)
{
  v1 = [a1 guid];
  sub_1A86026BC();
  sub_1A8602650(&dword_1A85E5000, v2, v3, "Not counting %@ for unread count due to blackhole", v4, v5, v6, v7, v8);
}

void sub_1A88C36B0(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "stickerPathComponent %@ is invalid", &v2, 0xCu);
}

void sub_1A88C3A48(void *a1)
{
  v1 = [a1 description];
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "Other Method is already swizzled: %@", v4, v5, v6, v7, 2u);
}

void sub_1A88C3AD0(void *a1)
{
  v1 = [a1 description];
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "Method is already swizzled: %@", v4, v5, v6, v7, 2u);
}

void sub_1A88C3B58(void *a1)
{
  v1 = [a1 description];
  sub_1A86025DC(&dword_1A85E5000, v2, v3, "Trying to unswizzle an method that is not swizzled: %@", v4, v5, v6, v7, 2u);
}

void sub_1A88C3C30(unsigned __int16 a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "Invalid SyndicationAction version. Got: %d, expected: %d", v3, 0xEu);
}

void sub_1A88C3CBC(unsigned __int8 a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Invalid message highlight type: %ld", &v2, 0xCu);
}

void sub_1A88C3D38(NSRange a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromRange(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "A valid message part range required: %@", &v4, 0xCu);
}

void sub_1A88C4350(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Error! Sender ID (%@) is neither email nor phone number.", &v2, 0xCu);
}

void sub_1A88C43C8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Error! Sender ID (%@) should be blackholed (!email && !phoneNumber).", &v2, 0xCu);
}

void sub_1A88C4768(uint64_t a1, int __errnum, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 138412802;
  v5 = a1;
  v6 = 1024;
  v7 = __errnum;
  v8 = 2080;
  v9 = strerror(__errnum);
  _os_log_error_impl(&dword_1A85E5000, a3, OS_LOG_TYPE_ERROR, "Failed getting purgeable flags for path: %@, (%d) %s", &v4, 0x1Cu);
}

void sub_1A88C48A8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Exception encoding attributed string. Exception: %@", &v2, 0xCu);
}

void sub_1A88C4C50(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1A85E5000, log, OS_LOG_TYPE_ERROR, "Failed to write adaptive image glyph preview: temporaryPreviewURL=%@, error=%@", &v3, 0x16u);
}

void sub_1A88C4CD8(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "BlatDoor failed to create emoji image asset from source URL: %@", &v2, 0xCu);
}

void sub_1A88C4D50(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_ERROR, "Failed to get a temporaryPreviewURL for sourceURL: %@", &v2, 0xCu);
}

void sub_1A88C4DC8(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1A85E5000, a2, OS_LOG_TYPE_DEBUG, "Setting always use singletons to %@", &v3, 0xCu);
}

void sub_1A88C4E58()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1A86026BC();
  sub_1A8602684();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1A88C4EE8()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  sub_1A86026BC();
  sub_1A8602684();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1A88C4F78(Class *a1)
{
  v1 = NSStringFromClass(*a1);
  sub_1A86026BC();
  sub_1A8602684();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1A88C5008(void *a1)
{
  v1 = [a1 description];
  sub_1A86026BC();
  sub_1A8602684();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1A88C5094(objc_class *a1)
{
  v1 = NSStringFromClass(a1);
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  sub_1A8602684();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1A88C5170(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) identifier];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1A85E5000, a3, OS_LOG_TYPE_ERROR, "Failed to post notification %@ due to error %@", &v6, 0x16u);
}

void sub_1A88C5868()
{
  sub_1A86E04D0();
  v1 = [v0 localizedDescription];
  sub_1A8602694();
  sub_1A86026AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1A88C5900()
{
  sub_1A86E04D0();
  strerror(*v0);
  sub_1A86026AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

void sub_1A88C59AC()
{
  sub_1A86E04D0();
  v1 = [v0 localizedDescription];
  sub_1A8602694();
  sub_1A86026AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1A88C5C04(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a2 standardizedURL];
  v6 = [v5 path];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_1A85E5000, a3, OS_LOG_TYPE_ERROR, "Unable to get size of preview while trying to avoid cropping due to: %@ for file: %@", &v7, 0x16u);
}

void sub_1A88C6488(void *a1)
{
  [a1 count];
  sub_1A86026AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1A88C6528(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  sub_1A8602724();
  sub_1A86026AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1A88C65D0(void *a1)
{
  v2 = [a1 objectAtIndexedSubscript:4];
  v3 = [a1 componentsJoinedByString:{@", "}];
  sub_1A8602724();
  sub_1A86026AC();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1A88C6690(void *a1)
{
  v1 = [a1 componentsJoinedByString:{@", "}];
  sub_1A86026BC();
  sub_1A86026AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1A88C6724(void *a1)
{
  [a1 count];
  sub_1A86026AC();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

void sub_1A88C67C4(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  sub_1A8602724();
  _os_log_error_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_ERROR, "Unknown serialized version: %ld, %@", &v3, 0x16u);
}

void sub_1A88C6844(uint64_t a1, void *a2)
{
  v2 = [a2 componentsJoinedByString:{@", "}];
  sub_1A8602724();
  sub_1A86026AC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}