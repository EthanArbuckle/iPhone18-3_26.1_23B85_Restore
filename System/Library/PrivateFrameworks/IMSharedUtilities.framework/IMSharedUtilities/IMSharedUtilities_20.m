void IMUnreadCountReportDelta.remoteIntentRepresentation.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RemoteIntentUnreadCountReport();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 deletedGUIDs];
  v9 = sub_1A88C85F8();

  v10 = *(v9 + 16);

  if (v10)
  {
    v11 = [v2 deletedGUIDs];
    v12 = sub_1A88C85F8();
  }

  else
  {
    v12 = 0;
  }

  v39 = v2;
  v13 = [v2 updatedReports];
  sub_1A8783C24();
  v14 = sub_1A88C85F8();

  if (v14 >> 62)
  {
    v15 = sub_1A88C8D38();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v39;
  v38 = v12;
  if (v15)
  {
    v17 = [v39 updatedReports];
    v18 = sub_1A88C85F8();

    if (v18 >> 62)
    {
      v19 = sub_1A88C8D38();
      if (v19)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_9:
        v40 = MEMORY[0x1E69E7CC0];
        sub_1A871D64C(0, v19 & ~(v19 >> 63), 0);
        if (v19 < 0)
        {
          __break(1u);
          return;
        }

        v37 = a1;
        v20 = 0;
        v21 = v40;
        do
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1AC56F710](v20, v18);
          }

          else
          {
            v22 = *(v18 + 8 * v20 + 32);
          }

          v23 = v22;
          IMUnreadCountReport.remoteIntentRepresentation.getter(v7);

          v40 = v21;
          v25 = *(v21 + 16);
          v24 = *(v21 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_1A871D64C(v24 > 1, v25 + 1, 1);
            v21 = v40;
          }

          ++v20;
          *(v21 + 16) = v25 + 1;
          sub_1A8782820(v7, v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25);
        }

        while (v19 != v20);

        a1 = v37;
        goto LABEL_22;
      }
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v16 = v39;
    goto LABEL_23;
  }

  v21 = 0;
LABEL_23:
  v26 = [v16 isReplacement];
  v27 = [v16 fromStamp];
  if (v27)
  {
    v28 = v27;
    v29 = sub_1A88C82E8();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [v16 toStamp];
  if (v32)
  {
    v33 = v32;
    v34 = sub_1A88C82E8();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  *a1 = v38;
  *(a1 + 8) = v21;
  *(a1 + 16) = v26;
  *(a1 + 24) = v29;
  *(a1 + 32) = v31;
  *(a1 + 40) = v34;
  *(a1 + 48) = v36;
}

uint64_t sub_1A886C984()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A886C9E0()
{
  sub_1A88C8268();
}

uint64_t sub_1A886CA20()
{
  sub_1A88C9528();
  sub_1A88C8268();

  return sub_1A88C9578();
}

uint64_t sub_1A886CA78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A886D9BC();
  *a1 = result;
  return result;
}

uint64_t sub_1A886CADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A886D9BC();
  *a1 = result;
  return result;
}

uint64_t sub_1A886CB04(uint64_t a1)
{
  v2 = sub_1A886D5B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A886CB40(uint64_t a1)
{
  v2 = sub_1A886D5B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentUnreadCountReportDelta.encode(to:)(void *a1)
{
  v4 = sub_1A870CCE0(&qword_1EB307EB8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v14 = v1[1];
  v13 = *(v1 + 16);
  v9 = v1[3];
  v12[3] = v1[4];
  v12[4] = v9;
  v10 = v1[6];
  v12[1] = v1[5];
  v12[2] = v10;
  sub_1A870C278(a1, a1[3]);
  sub_1A886D5B0();

  sub_1A88C95C8();
  v16 = v8;
  v15 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C9228();
  if (v2)
  {
  }

  else
  {

    v16 = v14;
    v15 = 1;
    sub_1A870CCE0(&qword_1EB307EC8);
    sub_1A886D604(&qword_1EB307ED0, &qword_1EB307ED8);
    sub_1A88C9228();
    LOBYTE(v16) = 2;
    sub_1A88C9288();
    LOBYTE(v16) = 3;
    sub_1A88C91C8();
    LOBYTE(v16) = 4;
    sub_1A88C91C8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RemoteIntentUnreadCountReportDelta.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB307EE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A886D5B0();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  sub_1A870CCE0(&qword_1EB303100);
  v23 = 0;
  sub_1A8716048(&qword_1EB303108);
  sub_1A88C90B8();
  v9 = v24;
  sub_1A870CCE0(&qword_1EB307EC8);
  v23 = 1;
  sub_1A886D604(&qword_1EB307EE8, &qword_1EB307EF0);
  sub_1A88C90B8();
  v22 = v24;
  LOBYTE(v24) = 2;
  v20 = sub_1A88C9118();
  LOBYTE(v24) = 3;
  v19 = sub_1A88C9058();
  v21 = v11;
  LOBYTE(v24) = 4;
  v12 = sub_1A88C9058();
  v14 = v13;
  v20 &= 1u;
  v15 = v12;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  v16 = v22;
  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v17;
  *(a2 + 40) = v15;
  *(a2 + 48) = v14;

  sub_1A85F1084(a1);
}

id IMUnreadCountReportDelta.init(remoteIntentRepresentation:)(uint64_t *a1)
{
  v3 = type metadata accessor for RemoteIntentUnreadCountReport();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v26 - v8;
  v11 = *a1;
  v10 = a1[1];
  v33 = *(a1 + 16);
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v30 = a1[3];
  v31 = v13;
  if (v11)
  {

    v32 = sub_1A88C85E8();

    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:
    v19 = 0;
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_12:
    v20 = 0;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  v32 = 0;
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v29 = v11;
  v15 = *(v10 + 16);
  if (v15)
  {
    v26[1] = v1;
    v27 = v12;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1A88C8F08();
    sub_1A8783C24();
    v16 = *(v4 + 80);
    v28 = v10;
    v17 = v10 + ((v16 + 32) & ~v16);
    v18 = *(v4 + 72);
    do
    {
      sub_1A8720FCC(v17, v9);
      sub_1A8720FCC(v9, v7);
      IMUnreadCountReport.init(remoteIntentRepresentation:)(v7);
      sub_1A8721030(v9);
      sub_1A88C8ED8();
      sub_1A88C8F18();
      sub_1A88C8F28();
      sub_1A88C8EE8();
      v17 += v18;
      --v15;
    }

    while (v15);
    v12 = v27;
  }

  sub_1A8783C24();
  v19 = sub_1A88C85E8();

  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_8:

  v20 = sub_1A88C82A8();

  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_9:

  v21 = sub_1A88C82A8();

LABEL_14:
  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = v32;
  v24 = [v22 initWithDeletedGUIDs:v32 updatedReports:v19 isReplacement:v33 fromStamp:v20 toStamp:v21];

  return v24;
}

void (*sub_1A886D528(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC56F710](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A886D5A8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A886D5B0()
{
  result = qword_1EB307EC0;
  if (!qword_1EB307EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307EC0);
  }

  return result;
}

uint64_t sub_1A886D604(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB307EC8);
    sub_1A886D68C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A886D68C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoteIntentUnreadCountReport();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A886D6D0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A886D72C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1A886D7B0()
{
  result = qword_1EB307EF8;
  if (!qword_1EB307EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307EF8);
  }

  return result;
}

unint64_t sub_1A886D808()
{
  result = qword_1EB307F00;
  if (!qword_1EB307F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307F00);
  }

  return result;
}

unint64_t sub_1A886D860()
{
  result = qword_1EB307F08;
  if (!qword_1EB307F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307F08);
  }

  return result;
}

uint64_t (*sub_1A886D8B4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC56F710](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A886DA08;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1A886D934(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC56F710](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1A886D9B4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A886D9BC()
{
  v0 = sub_1A88C9028();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1A886DA1C()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB307F10);
  sub_1A85EF0E4(v0, qword_1EB307F10);
  return sub_1A88C7E48();
}

void sub_1A886DAA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a1;
  oslog = *(a4 + 16);
  if (oslog)
  {
    v41 = a2;
    v6 = 0;
    v7 = 0;
    v44 = a4 + 32;
    while (1)
    {
      v47 = *(v44 + 16 * v7);
      v8 = sub_1A87DC50C();
      if (*(v8 + 16))
      {
        break;
      }

      if (qword_1EB302310 != -1)
      {
        swift_once();
      }

      v17 = sub_1A88C7E58();
      sub_1A85EF0E4(v17, qword_1EB307F10);
      v18 = sub_1A88C7E38();
      v19 = sub_1A88C89C8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = v6;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v47 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1A85F0394(0xD000000000000014, 0x80000001A8917C10, &v47);
        _os_log_impl(&dword_1A85E5000, v18, v19, "%s skipping contact info on broadcast because handleIDsToCNContacts is empty. Did CNContact fail to decode?", v21, 0xCu);
        sub_1A85F1084(v22);
        MEMORY[0x1AC571F20](v22, -1, -1);
        v23 = v21;
        v6 = v20;
        MEMORY[0x1AC571F20](v23, -1, -1);
      }

LABEL_4:
      if (++v7 == oslog)
      {
        v34 = v6;
        v4 = a3;
        v5 = a1;
        a2 = v41;
        if (v34)
        {
          v35 = [objc_opt_self() defaultCenter];
          [v35 __mainThreadPostNotificationName_object_];

          a2 = v41;
        }

        goto LABEL_29;
      }
    }

    v9 = [objc_opt_self() sharedInstance];
    if (qword_1EB302310 != -1)
    {
      swift_once();
    }

    v10 = sub_1A88C7E58();
    sub_1A85EF0E4(v10, qword_1EB307F10);

    v11 = sub_1A88C7E38();
    v12 = sub_1A88C89D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = v6;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v47 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_1A85F0394(0xD000000000000014, 0x80000001A8917C10, &v47);
      *(v14 + 12) = 2048;
      *(v14 + 14) = *(v8 + 16);

      _os_log_impl(&dword_1A85E5000, v11, v12, "%s adding %ld contacts to IMContactStore.", v14, 0x16u);
      sub_1A85F1084(v15);
      MEMORY[0x1AC571F20](v15, -1, -1);
      v16 = v14;
      v6 = v13;
      MEMORY[0x1AC571F20](v16, -1, -1);
    }

    else
    {
    }

    v24 = 0;
    v25 = 1 << *(v8 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v8 + 64);
    for (i = (v25 + 63) >> 6; v27; v6 = 1)
    {
      v29 = v24;
LABEL_25:
      v30 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v31 = *(*(v8 + 56) + 8 * (v30 | (v29 << 6)));

      v32 = v31;
      v33 = sub_1A88C82A8();

      [v9 addContact:v32 withID:v33];
    }

    while (1)
    {
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v29 >= i)
      {

        goto LABEL_4;
      }

      v27 = *(v8 + 64 + 8 * v29);
      ++v24;
      if (v27)
      {
        v24 = v29;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_32;
  }

LABEL_29:
  if (v4)
  {
    sub_1A8757C74(a2);
    v36 = sub_1A88C85E8();

    sub_1A8757B60(v4);
    osloga = sub_1A88C85E8();

    [v5 chatsNeedRemerging:v36 groupedChats:osloga];

    goto LABEL_34;
  }

  if (qword_1EB302310 != -1)
  {
    goto LABEL_38;
  }

LABEL_32:
  v37 = sub_1A88C7E58();
  sub_1A85EF0E4(v37, qword_1EB307F10);
  osloga = sub_1A88C7E38();
  v38 = sub_1A88C89C8();
  if (os_log_type_enabled(osloga, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v47 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_1A85F0394(0xD000000000000014, 0x80000001A8917C10, &v47);
    _os_log_impl(&dword_1A85E5000, osloga, v38, "%s Invalid groupedChats chat dictionaries.", v39, 0xCu);
    sub_1A85F1084(v40);
    MEMORY[0x1AC571F20](v40, -1, -1);
    MEMORY[0x1AC571F20](v39, -1, -1);
  }

LABEL_34:
}

uint64_t sub_1A886E0A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v8 = sub_1A870CCE0(&qword_1EB307F68);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  sub_1A870C278(a1, a1[3]);
  sub_1A886EA60();
  sub_1A88C95C8();
  v16 = a2;
  v15 = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (!v4)
  {
    v12 = v14;
    v15 = 1;
    if (a3)
    {
      v16 = a3;

      sub_1A870CCE0(&qword_1EB3071D8);
      sub_1A886EB2C(&qword_1EB3071E0);
      sub_1A88C9228();
    }

    v16 = v12;
    v15 = 2;
    sub_1A870CCE0(&qword_1EB307F58);
    sub_1A886EAB4(&qword_1EB307F70, sub_1A874BC68);
    sub_1A88C92C8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A886E364()
{
  v1 = 0x43646570756F7267;
  if (*v0 != 1)
  {
    v1 = 0x49746361746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449554774616863;
  }
}

uint64_t sub_1A886E3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A886E624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A886E3FC(uint64_t a1)
{
  v2 = sub_1A886EA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A886E438(uint64_t a1)
{
  v2 = sub_1A886EA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A886E474()
{
  v0 = qword_1EB307F28;

  return v0;
}

uint64_t sub_1A886E4AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A886E74C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A886E4FC(uint64_t a1)
{
  *(a1 + 8) = sub_1A877C7D0();
  result = sub_1A877C77C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A886E52C(uint64_t a1)
{
  result = sub_1A886E554();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A886E554()
{
  result = qword_1EB307F38;
  if (!qword_1EB307F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307F38);
  }

  return result;
}

unint64_t sub_1A886E5A8(uint64_t a1)
{
  result = sub_1A886E5D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A886E5D0()
{
  result = qword_1EB307F40;
  if (!qword_1EB307F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307F40);
  }

  return result;
}

uint64_t sub_1A886E624(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449554774616863 && a2 == 0xE900000000000073;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x43646570756F7267 && a2 == 0xEC00000073746168 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xEB000000006F666ELL)
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

uint64_t sub_1A886E74C(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB307F48);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_1A870C278(a1, v7);
  sub_1A886EA60();
  sub_1A88C95A8();
  if (!v1)
  {
    sub_1A870CCE0(&qword_1EB303100);
    HIBYTE(v9) = 0;
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    v7 = v10;
    sub_1A870CCE0(&qword_1EB3071D8);
    HIBYTE(v9) = 1;
    sub_1A886EB2C(&qword_1EB307208);
    sub_1A88C90B8();
    sub_1A870CCE0(&qword_1EB307F58);
    HIBYTE(v9) = 2;
    sub_1A886EAB4(&qword_1EB307F60, sub_1A874BB6C);
    sub_1A88C9158();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A886EA60()
{
  result = qword_1EB307F50;
  if (!qword_1EB307F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307F50);
  }

  return result;
}

uint64_t sub_1A886EAB4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB307F58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A886EB2C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB3071D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A886EB90()
{
  result = qword_1EB307F78;
  if (!qword_1EB307F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307F78);
  }

  return result;
}

unint64_t sub_1A886EBE8()
{
  result = qword_1EB307F80;
  if (!qword_1EB307F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB307F80);
  }

  return result;
}

unint64_t sub_1A886EC40()
{
  result = qword_1EB307F88[0];
  if (!qword_1EB307F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB307F88);
  }

  return result;
}

uint64_t IMLinkedHashMapNodeBase.previous.getter()
{
  sub_1A883D5AC();
}

uint64_t IMLinkedHashMapNodeBase.previous.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t IMLinkedHashMapNodeBase.next.getter()
{
  sub_1A883D5E0();
}

uint64_t IMLinkedHashMapNodeBase.next.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t IMLinkedHashMapNodeBase.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t IMLinkedHashMapNodeBase.key.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t IMLinkedHashMapNodeBase.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  return (*(*(*(v3 + 88) - 8) + 16))(a1, v1 + v4);
}

uint64_t IMLinkedHashMapNodeBase.value.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  swift_beginAccess();
  (*(*(*(v3 + 88) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t IMLinkedHashMapNodeBase.__allocating_init(key:value:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  IMLinkedHashMapNodeBase.init(key:value:)(a1, a2);
  return v4;
}

char *IMLinkedHashMapNodeBase.init(key:value:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  (*(*(v4[10] - 8) + 32))(&v2[v4[16]], a1);
  (*(*(v4[11] - 8) + 32))(&v2[*(*v2 + 136)], a2);
  return v2;
}

uint64_t static IMLinkedHashMapNodeBase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *(v2 + 88);
  v39 = *(v37 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v35 = &v34 - v9;
  v10 = *(v2 + 80);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v34 - v16;
  v18 = *(*v15 + 128);
  swift_beginAccess();
  v19 = *(v11 + 16);
  v19(v17, a1 + v18, v10);
  v20 = *(*a2 + 128);
  swift_beginAccess();
  v19(v14, a2 + v20, v10);
  v38 = v3;
  LOBYTE(v20) = sub_1A88C8298();
  v21 = *(v11 + 8);
  v21(v14, v10);
  v21(v17, v10);
  if (v20)
  {
    v22 = *(*a1 + 136);
    swift_beginAccess();
    v23 = v39;
    v24 = *(v39 + 16);
    v25 = a1 + v22;
    v26 = v35;
    v27 = v37;
    v24(v35, v25, v37);
    v28 = *(*a2 + 136);
    swift_beginAccess();
    v29 = a2 + v28;
    v30 = v36;
    v24(v36, v29, v27);
    v31 = sub_1A88C8298();
    v32 = *(v23 + 8);
    v32(v30, v27);
    v32(v26, v27);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t *IMLinkedHashMapNodeBase.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t IMLinkedHashMapNodeBase.__deallocating_deinit()
{
  IMLinkedHashMapNodeBase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A886F724()
{
  sub_1A883D5AC();
}

uint64_t (*sub_1A886F750(uint64_t *a1))()
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
  *(v2 + 32) = IMLinkedHashMapNodeBase.previous.modify();
  return sub_1A870FAF0;
}

uint64_t sub_1A886F7C0()
{
  sub_1A883D5E0();
}

uint64_t (*sub_1A886F7EC(uint64_t *a1))()
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
  *(v2 + 32) = IMLinkedHashMapNodeBase.next.modify();
  return sub_1A870F684;
}

uint64_t (*sub_1A886F868(uint64_t *a1))()
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
  *(v2 + 32) = IMLinkedHashMapNodeBase.value.modify();
  return sub_1A870FAF0;
}

uint64_t sub_1A886F8E8()
{
  v1 = *(*v0 + 88);
  v2 = *(v1 + 72);
  v3 = *(*v0 + 80);
  swift_unknownObjectRetain();
  v4 = v2(v3, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A886F97C()
{
  v1 = *(*v0 + 88);
  v2 = *(v1 + 80);
  v3 = *(*v0 + 80);
  swift_unknownObjectRetain();
  v4 = v2(v3, v1);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1A886FA10()
{
  v1 = *(*v0 + 88);
  v2 = *(v1 + 24);
  v3 = *(*v0 + 80);
  swift_unknownObjectRetain();
  v4 = v2(v3, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A886FAA4(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 + 32);
  v5 = *(*v1 + 80);
  swift_unknownObjectRetain();
  v4(a1, v5, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A886FB4C()
{
  v1 = *(*v0 + 88);
  v2 = *(v1 + 48);
  v3 = *(*v0 + 80);
  swift_unknownObjectRetain();
  v4 = v2(v3, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A886FBE0(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 + 56);
  v5 = *(*v1 + 80);
  swift_unknownObjectRetain();
  v4(a1, v5, v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A886FC88(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v24 = a2;
  v3 = *(*v2 + 88);
  v4 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v21 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v19 - v7;
  v22 = AssociatedConformanceWitness;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - v10;
  v12 = *(v3 + 88);
  swift_unknownObjectRetain();
  v13 = v12(v24, v4, v3);
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = *(v3 + 112);
    swift_unknownObjectRetain();
    v14(v13, v23, v4, v3);
    swift_unknownObjectRelease();
    v15 = v13;
  }

  else
  {
    v16 = swift_checkMetadataState();
    (*(v9 + 16))(v11, v24, v8);
    v17 = v19;
    (*(v20 + 16))(v19, v23, v21);
    v15 = (*(v22 + 128))(v11, v17, v16);
    swift_unknownObjectRetain();
  }

  swift_unknownObjectRetain();
  sub_1A88710F8(v15);
  return swift_unknownObjectRelease_n();
}

uint64_t sub_1A886FF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*v2 + 88);
  v6 = *(v5 + 88);
  v7 = *(*v2 + 80);
  swift_unknownObjectRetain();
  v8 = v6(a1, v7, v5);
  swift_unknownObjectRelease();
  swift_getAssociatedTypeWitness();
  if (v8)
  {
    v9 = *(swift_getAssociatedConformanceWitness() + 104);
    swift_checkMetadataState();
    v9();
    swift_unknownObjectRelease();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = 0;
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v11 = 1;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 56);

  return v12(a2, v11, 1);
}

uint64_t sub_1A8870190@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v3)
  {
    v6 = swift_checkMetadataState();
    (*(AssociatedConformanceWitness + 96))(v6, AssociatedConformanceWitness);
    (*(AssociatedConformanceWitness + 104))(v6, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v8(a2, v7, 1, TupleTypeMetadata2);
}

uint64_t sub_1A8870350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*v3 + 88);
  v7 = *(v6 + 88);
  v8 = *(*v3 + 80);
  swift_unknownObjectRetain();
  v9 = v7(a1, v8, v6);
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_1A8870F24();
    swift_getAssociatedTypeWitness();
    v10 = *(swift_getAssociatedConformanceWitness() + 104);
    swift_checkMetadataState();
    v10();
    swift_unknownObjectRelease();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = 0;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v12 = 1;
  }

  v13 = *(*(AssociatedTypeWitness - 8) + 56);

  return v13(a2, v12, 1);
}

uint64_t sub_1A8870584@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  if (a1())
  {
    swift_unknownObjectRetain();
    sub_1A8870F24();
    swift_unknownObjectRelease();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    swift_unknownObjectRetain();
    v5 = swift_checkMetadataState();
    (*(AssociatedConformanceWitness + 96))(v5, AssociatedConformanceWitness);
    (*(AssociatedConformanceWitness + 104))(v5, AssociatedConformanceWitness);
    swift_unknownObjectRelease_n();
    v6 = *(*(TupleTypeMetadata2 - 8) + 56);
    v7 = a2;
    v8 = 0;
    v9 = TupleTypeMetadata2;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v10 = swift_getTupleTypeMetadata2();
    v6 = *(*(v10 - 8) + 56);
    v9 = v10;
    v7 = a2;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

BOOL sub_1A8870830(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(v3 + 88);
  v5 = *(*v1 + 80);
  swift_unknownObjectRetain();
  v6 = v4(a1, v5, v3);
  swift_unknownObjectRelease();
  if (v6)
  {
    swift_unknownObjectRelease();
  }

  return v6 != 0;
}

uint64_t sub_1A88708E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*v3 + 88);
  v7 = *(v6 + 88);
  v8 = *(*v3 + 80);
  swift_unknownObjectRetain();
  v9 = v7(a1, v8, v6);
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_1A8870F24();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v12 = swift_checkMetadataState();
    (*(AssociatedConformanceWitness + 96))(v12, AssociatedConformanceWitness);
    (*(AssociatedConformanceWitness + 104))(v12, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v13 = *(*(TupleTypeMetadata2 - 8) + 56);
    v14 = a2;
    v15 = 0;
    v16 = TupleTypeMetadata2;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v17 = swift_getTupleTypeMetadata2();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a2;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1A8870BB0()
{
  if (sub_1A886FA10())
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    swift_unknownObjectRetain();
    v2 = sub_1A88C8298();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
      sub_1A886FAA4(v3);
    }
  }

  if (sub_1A886FB4C())
  {
    v4 = swift_getAssociatedTypeWitness();
    v5 = swift_getAssociatedConformanceWitness();
    swift_unknownObjectRetain();
    v6 = sub_1A88C8298();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = (*(v5 + 48))(v4, v5);
      sub_1A886FBE0(v7);
    }
  }

  swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v9 = *(v8 + 48);
  v10 = swift_checkMetadataState();
  v11 = v9(v10, v8);
  v12 = (*(v8 + 72))(v10, v8);
  if (v11)
  {
    v13 = *(v8 + 80);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13(v12, v10, v8);
    swift_unknownObjectRelease();
  }

  if (v12)
  {
    v14 = *(v8 + 56);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v14(v11, v10, v8);
    swift_unknownObjectRelease();
  }

  (*(v8 + 80))(0, v10, v8);
  (*(v8 + 56))(0, v10, v8);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A8870F24()
{
  v1 = *(*v0 + 88);
  v10 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = &AssociatedTypeWitness - v4;
  sub_1A8870BB0();
  v6 = *(AssociatedConformanceWitness + 96);
  swift_unknownObjectRetain();
  v7 = swift_checkMetadataState();
  v6(v7, AssociatedConformanceWitness);
  (*(v1 + 120))(v5, v10, v1);
  swift_unknownObjectRelease();
  return (*(v3 + 8))(v5, AssociatedTypeWitness);
}

uint64_t sub_1A88710F8(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v8 = &v18 - v7;
  sub_1A8870BB0();
  if (sub_1A886FB4C())
  {
    v19 = v4;
    v9 = AssociatedConformanceWitness[10];
    swift_unknownObjectRetain_n();
    v10 = swift_checkMetadataState();
    v9(a1, v10, AssociatedConformanceWitness);
    v11 = AssociatedConformanceWitness[7];
    v12 = swift_unknownObjectRetain();
    v11(v12, v10, AssociatedConformanceWitness);
    sub_1A886FBE0(a1);
    v13 = AssociatedConformanceWitness[12];
    swift_unknownObjectRetain();
    v13(v10, AssociatedConformanceWitness);
    (*(v3 + 96))(a1, v8, v19, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = swift_unknownObjectRetain_n();
    sub_1A886FAA4(v14);
    sub_1A886FBE0(a1);
    v15 = AssociatedConformanceWitness[12];
    swift_unknownObjectRetain();
    v16 = swift_checkMetadataState();
    v15(v16, AssociatedConformanceWitness);
    (*(v3 + 96))(a1, v8, v4, v3);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1A887138C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A886FA10();
  *a1 = result;
  return result;
}

uint64_t IMLinkedHashMapBase.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v4 = *(AssociatedConformanceWitness + 72);
    swift_unknownObjectRetain();
    v5 = swift_checkMetadataState();
    v6 = v4(v5, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    *v1 = v6;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(AssociatedConformanceWitness + 96))(v5, AssociatedConformanceWitness);
    (*(AssociatedConformanceWitness + 104))(v5, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
    v8 = *(*(TupleTypeMetadata2 - 8) + 56);
    v9 = a1;
    v10 = 0;
    v11 = TupleTypeMetadata2;
  }

  else
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v12 = swift_getTupleTypeMetadata2();
    v8 = *(*(v12 - 8) + 56);
    v11 = v12;
    v9 = a1;
    v10 = 1;
  }

  return v8(v9, v10, 1, v11);
}

uint64_t sub_1A8871648@<X0>(uint64_t *a1@<X8>)
{
  sub_1A887138C(a1);
}

uint64_t sub_1A8871680()
{
  type metadata accessor for IMLinkedHashMapBase();
  v0 = sub_1A88718D0();

  return v0;
}

void sub_1A88716CC()
{
  type metadata accessor for IMLinkedHashMapBase();

  JUMPOUT(0x1AC56ED90);
}

uint64_t IMLinkedHashMap.__allocating_init()()
{
  type metadata accessor for IMLinkedHashMapNodeBase();
  swift_getWitnessTable();
  type metadata accessor for IMLinkedHashMapInMemoryStore();
  v0 = IMLinkedHashMapInMemoryStore.__allocating_init()();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t IMLinkedHashMap.__allocating_init(nodeStore:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t IMLinkedHashMap.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1A88718FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A8871A30()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A8871DB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A8871DF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1A8871E50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A8871F20(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1A8871F3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A8871F84(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A8871FC8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1A8871FF0()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB308190);
  sub_1A85EF0E4(v0, qword_1EB308190);
  return sub_1A88C7E48();
}

uint64_t sub_1A887208C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = v2[10];
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 8))(a1, a2, ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      if ([v8 totalBytes] >= v3[2])
      {
        v13 = [v8 totalBytes];

        return v13;
      }

      v9 = [v8 type];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1A88C82E8();
        v12 = IMUTTypeAllowedForRemoteIntentDownload(v10);

        if (!v12)
        {
          return v11;
        }
      }

      else
      {
      }
    }
  }

  v16 = v3[20];
  v15 = v3[21];
  v17 = *(v15 + 16);
  if (v16)
  {

    sub_1A8872CAC(a1, a2, v15 + 32, v17, (v16 + 16));
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v17)
  {
    for (i = (v15 + 40); ; i += 2)
    {
      v21 = *(i - 1) == a1 && *i == a2;
      if (v21 || (sub_1A88C9398() & 1) != 0)
      {
        break;
      }

      if (!--v17)
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

unint64_t sub_1A8872268(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A88724D8(a1);
  v7 = v6;
  v9 = v8;
  if (qword_1EB302318 != -1)
  {
    swift_once();
  }

  v10 = sub_1A88C7E58();
  sub_1A85EF0E4(v10, qword_1EB308190);
  sub_1A87601F0(a1, v4);
  sub_1A8872EFC(v5, v7, v9);
  v11 = sub_1A88C7E38();
  v12 = sub_1A88C89D8();
  sub_1A8872F14(v5, v7, v9);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315394;
    v15 = &v4[*(v2 + 24)];
    v16 = *v15;
    v17 = v15[1];

    sub_1A8761CE4(v4);
    v18 = sub_1A85F0394(v16, v17, &v25);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v23[0] = v5;
    v23[1] = v7;
    v24 = v9;
    sub_1A8872EFC(v5, v7, v9);
    v19 = sub_1A88C8338();
    v21 = sub_1A85F0394(v19, v20, &v25);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_1A85E5000, v11, v12, "permissionToDownloadMirror[%s] %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC571F20](v14, -1, -1);
    MEMORY[0x1AC571F20](v13, -1, -1);
  }

  else
  {

    sub_1A8761CE4(v4);
  }

  return v5;
}

unint64_t sub_1A88724D8(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntentMirrorFileRepresentation(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A870CCE0(&qword_1EB3045E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1A88C7D78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  sub_1A88C71F8();
  sub_1A88C7CF8();
  sub_1A88C7CC8();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A8872F2C(v7);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    sub_1A88C7CB8();
    v13 = sub_1A88C82A8();

    v14 = IMUTTypeAllowedForRemoteIntentDownload(v13);

    if (!v14)
    {
      v26 = sub_1A88C7CB8();
      (*(v9 + 8))(v12, v8);
      return v26;
    }

    (*(v9 + 8))(v12, v8);
  }

  result = sub_1A88C7B68();
  if (v16)
  {
    if (qword_1EB302318 != -1)
    {
      swift_once();
    }

    v17 = sub_1A88C7E58();
    sub_1A85EF0E4(v17, qword_1EB308190);
    sub_1A87601F0(a1, v4);
    v18 = sub_1A88C7E38();
    v19 = sub_1A88C89C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = &v4[*(v2 + 24)];
      v23 = *v22;
      v24 = v22[1];

      sub_1A8761CE4(v4);
      v25 = sub_1A85F0394(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1A85E5000, v18, v19, "downloadPermissionForMirror[%s] didn't have a file size to check. Bypassing the file size check, but this may be unexpected.", v20, 0xCu);
      sub_1A85F1084(v21);
      MEMORY[0x1AC571F20](v21, -1, -1);
      MEMORY[0x1AC571F20](v20, -1, -1);
    }

    else
    {

      sub_1A8761CE4(v4);
    }

    return 0;
  }

  if (result < *(v27 + 16))
  {
    return 0;
  }

  return result;
}

uint64_t sub_1A88728C8(uint64_t a1)
{
  result = MEMORY[0x1E69E7CD0];
  v31 = MEMORY[0x1E69E7CD0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 40);
    v5 = qword_1EB308190;
    while (1)
    {
      v6 = *(v4 - 1);
      v7 = *v4;

      v27 = sub_1A887208C(v6, v7);
      v9 = v8;
      v11 = v10;
      if (qword_1EB302318 != -1)
      {
        swift_once();
      }

      v12 = sub_1A88C7E58();
      sub_1A85EF0E4(v12, v5);

      sub_1A8872EFC(v27, v9, v11);
      v13 = sub_1A88C7E38();
      v14 = sub_1A88C89D8();

      sub_1A8872F14(v27, v9, v11);
      v26 = v14;
      v15 = os_log_type_enabled(v13, v14);
      v16 = v11;
      if (v15)
      {
        v25 = v3;
        v17 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v30 = v24;
        *v17 = 136315394;
        *(v17 + 4) = sub_1A85F0394(v6, v7, &v30);
        *(v17 + 12) = 2080;
        v28[0] = v27;
        v28[1] = v9;
        v29 = v11;
        sub_1A8872EFC(v27, v9, v11);
        v18 = sub_1A88C8338();
        v20 = v6;
        v21 = v5;
        v22 = sub_1A85F0394(v18, v19, &v30);

        *(v17 + 14) = v22;
        v5 = v21;
        v6 = v20;
        v16 = v11;
        _os_log_impl(&dword_1A85E5000, v13, v26, "permissionToRequestMirror[%s] %s", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC571F20](v24, -1, -1);
        v23 = v17;
        v3 = v25;
        MEMORY[0x1AC571F20](v23, -1, -1);
      }

      if (v16)
      {
        if (v16 == 1)
        {
          sub_1A8872F14(v27, v9, 1);
        }

        else if (!(v27 | v9))
        {
          goto LABEL_5;
        }
      }

      sub_1A85FB018(v28, v6, v7);
LABEL_5:

      v4 += 2;
      if (!--v3)
      {
        return v31;
      }
    }
  }

  return result;
}

uint64_t sub_1A8872B98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1A88C9528();
  MEMORY[0x1AC56FE00](a1);
  result = sub_1A88C9578();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A88C7BF8();
    result = sub_1A88C7C28();
    if ((v8 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_1A88C7C48();
        result = sub_1A88C7C28();
      }

      while ((v9 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

uint64_t sub_1A8872CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1A88C9528();
  sub_1A88C8268();
  result = sub_1A88C9578();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A88C7BF8();
    result = sub_1A88C7C28();
    if ((v10 & 1) == 0)
    {
      v11 = (a3 + 16 * result);
      if (*v11 != a1 || v11[1] != a2)
      {
        while (1)
        {
          v13 = result;
          if (sub_1A88C9398())
          {
            break;
          }

          sub_1A88C7C48();
          result = sub_1A88C7C28();
          if ((v14 & 1) == 0)
          {
            v15 = (a3 + 16 * result);
            if (*v15 != a1 || v15[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_1A8872DF8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        else
        {
          return sub_1A88C9398();
        }
      }
    }

    else if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 == 2 && a4 == 3 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 2 && a4 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (a1 | a2)
    {
      if (a6 == 2 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return a1 == a4 && a2 == a5;
}

uint64_t sub_1A8872EFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1A8872F14(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1A8872F2C(uint64_t a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3045E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A8872F94()
{
  v1 = v0;
  v2 = sub_1A88C7EC8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A88C7EF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1A85E9718(0, &qword_1ED8C95A0);
    v18 = v3;
    v19 = v6;
    v17 = sub_1A88C8A38();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v1;
    aBlock[4] = sub_1A8874848;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A85EB8C0;
    aBlock[3] = &unk_1F1BB6778;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v14 = v1;

    _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A85E8C20(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
    sub_1A870CCE0(&unk_1EB3081F0);
    sub_1A85E8C68(&qword_1ED8C9470, &unk_1EB3081F0);
    sub_1A88C8CE8();
    v15 = v17;
    MEMORY[0x1AC56F330](0, v9, v5, v13);
    _Block_release(v13);
    swift_unknownObjectRelease();

    (*(v18 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v19);
  }

  return result;
}

uint64_t sub_1A88732A4()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR___IMNetworkMonitor_state);

  os_unfair_lock_lock(v1 + 9);
  sub_1A8874828(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
}

void sub_1A8873320(uint64_t a1, NSObject *a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *a1 = a2;
  v4 = *(a1 + 16);
  if ((nw_path_get_status(a2) | 2) == 3)
  {
    if (v4)
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = 0;
  }

  *(a1 + 16) = v5;
  if (qword_1ED8C9020 != -1)
  {
    swift_once();
  }

  v6 = sub_1A88C7E58();
  sub_1A85EF0E4(v6, qword_1ED8C9030);
  v7 = sub_1A88C7E38();
  v8 = sub_1A88C89A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v4;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v5;
    _os_log_impl(&dword_1A85E5000, v7, v8, "Availability changed from %{BOOL}d to %{BOOL}d", v9, 0xEu);
    MEMORY[0x1AC571F20](v9, -1, -1);
  }

  sub_1A8872F94();
LABEL_11:
  v10 = [objc_allocWithZone(MEMORY[0x1E6964F80]) initAgentDataFromInternetPath_];

  *(a1 + 8) = v10;
  if (qword_1ED8C9020 != -1)
  {
    swift_once();
  }

  v11 = sub_1A88C7E58();
  sub_1A85EF0E4(v11, qword_1ED8C9030);
  swift_unknownObjectRetain();
  v12 = v10;
  v13 = sub_1A88C7E38();
  v14 = sub_1A88C89B8();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315138;
    v17 = [a2 description];
    v18 = v12;
    v19 = sub_1A88C82E8();
    v21 = v20;

    v22 = sub_1A85F0394(v19, v21, &v27);

    *(v15 + 4) = v22;
    v12 = v18;
    _os_log_impl(&dword_1A85E5000, v13, v14, "Received new nw_path: %s", v15, 0xCu);
    sub_1A85F1084(v16);
    MEMORY[0x1AC571F20](v16, -1, -1);
    MEMORY[0x1AC571F20](v15, -1, -1);
  }

  swift_unknownObjectRetain();
  v23 = v12;
  v24 = sub_1A88C7E38();
  v25 = sub_1A88C89A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = [v23 dataPlanTier];

    swift_unknownObjectRelease();
    _os_log_impl(&dword_1A85E5000, v24, v25, "Connection agent data plan tier for newly set path: %u", v26, 8u);
    MEMORY[0x1AC571F20](v26, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1A88736E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1ED8C9020 != -1)
  {
    swift_once();
  }

  v2 = sub_1A88C7E58();
  sub_1A85EF0E4(v2, qword_1ED8C9030);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = sub_1A88C7E38();
  v5 = sub_1A88C89A8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = [v3 dataPlanTier];

    swift_unknownObjectRelease();
    _os_log_impl(&dword_1A85E5000, v4, v5, "dataPlanTier: %u", v6, 8u);
    MEMORY[0x1AC571F20](v6, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1A8873820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A88C7EC8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A88C7EF8();
  result = MEMORY[0x1EEE9AC00]();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v17 = v9;
    v18 = result;
    sub_1A85E9718(0, &qword_1ED8C95A0);
    swift_unknownObjectRetain();
    v16 = sub_1A88C8A38();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a1;
    aBlock[4] = sub_1A8874820;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A85EB8C0;
    aBlock[3] = &unk_1F1BB6728;
    v13 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    _s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A85E8C20(&qword_1ED8C9480, MEMORY[0x1E69E7F60]);
    sub_1A870CCE0(&unk_1EB3081F0);
    sub_1A85E8C68(&qword_1ED8C9470, &unk_1EB3081F0);
    sub_1A88C8CE8();
    v14 = v16;
    MEMORY[0x1AC56F330](0, v11, v7, v13);
    _Block_release(v13);
    swift_unknownObjectRelease();

    (*(v5 + 8))(v7, v4);
    return (*(v17 + 8))(v11, v18);
  }

  return result;
}

void sub_1A8873B20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A88732A4();
  }
}

uint64_t sub_1A8873B7C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A8873C80()
{
  v1 = *(v0 + OBJC_IVAR___IMNetworkMonitor_state);
  swift_getKeyPath();

  os_unfair_lock_lock(v1 + 9);
  sub_1A88747C8(&v1[4], &v4);
  os_unfair_lock_unlock(v1 + 9);

  v2 = v4;

  return v2;
}

uint64_t sub_1A8873D2C(uint64_t a1, void *a2)
{
  swift_unknownObjectRetain();
  v3 = a2;
  swift_getAtKeyPath();

  swift_unknownObjectRelease();
  return v5;
}

void sub_1A8873E1C(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  if (MEMORY[0x1AC571360](*a1))
  {
    v3 = 1;
  }

  else
  {
    v4 = [objc_opt_self() messagesAppDomain];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1A88C82A8();
      v3 = [v5 BOOLForKey_];
    }

    else
    {
      v3 = 0;
    }
  }

  *a2 = v3;
}

uint64_t sub_1A8873FB8()
{
  if (![v0 isUltraConstrained])
  {
    return 2;
  }

  v1 = *&v0[OBJC_IVAR___IMNetworkMonitor_state];
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock(v1 + 9);
  sub_1A8874718(&v1[4], &v28);
  os_unfair_lock_unlock(v1 + 9);

  v3 = v28;

  v4 = [v3 dataPlanTier];

  v5 = 1;
  if (v4 != 2)
  {
    v5 = 2;
  }

  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (v4 == 2)
  {
    if (qword_1ED8C9020 != -1)
    {
      swift_once();
    }

    v7 = sub_1A88C7E58();
    sub_1A85EF0E4(v7, qword_1ED8C9030);
    v8 = sub_1A88C7E38();
    v9 = sub_1A88C89B8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315138;
      type metadata accessor for AttachmentPolicy(0);
      v12 = sub_1A88C8338();
      v14 = sub_1A85F0394(v12, v13, &v28);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1A85E5000, v8, v9, "Got real attachment policy: %s", v10, 0xCu);
      sub_1A85F1084(v11);
      MEMORY[0x1AC571F20](v11, -1, -1);
      MEMORY[0x1AC571F20](v10, -1, -1);
    }

    return 1;
  }

  else
  {
    v16 = [objc_opt_self() messagesAppDomain];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1A88C82A8();
      v19 = [v17 BOOLForKey_];
    }

    else
    {
      v19 = 0;
    }

    if (qword_1ED8C9020 != -1)
    {
      swift_once();
    }

    v20 = sub_1A88C7E58();
    sub_1A85EF0E4(v20, qword_1ED8C9030);
    v21 = sub_1A88C7E38();
    v22 = sub_1A88C89B8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315394;
      type metadata accessor for AttachmentPolicy(0);
      v25 = sub_1A88C8338();
      v27 = sub_1A85F0394(v25, v26, &v28);

      *(v23 + 4) = v27;
      *(v23 + 12) = 1024;
      *(v23 + 14) = v19;
      _os_log_impl(&dword_1A85E5000, v21, v22, "Got mock attachment policy: %s, mock ultra constrained: %{BOOL}d", v23, 0x12u);
      sub_1A85F1084(v24);
      MEMORY[0x1AC571F20](v24, -1, -1);
      MEMORY[0x1AC571F20](v23, -1, -1);
    }

    if (v19)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_1A88743AC(uint64_t a1, void *a2)
{
  swift_unknownObjectRetain();
  v3 = a2;
  swift_getAtKeyPath();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A887444C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1A88C8E08();

  v6 = (a2 + OBJC_IVAR___IMNetworkMonitor_host);
  v7 = *(a2 + OBJC_IVAR___IMNetworkMonitor_host + 8);
  if (v7)
  {
    v8 = *v6;

    MEMORY[0x1AC56ECB0](v8, v7);
    MEMORY[0x1AC56ECB0](34, 0xE100000000000000);

    v9 = 34;
    v10 = 0xE100000000000000;
  }

  else
  {
    v9 = 0x296C696E28;
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1AC56ECB0](v9, v10);

  MEMORY[0x1AC56ECB0](0x62616C6961766120, 0xEB000000003D656CLL);
  if (*(a1 + 16))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(a1 + 16))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1AC56ECB0](v11, v12);

  result = MEMORY[0x1AC56ECB0](15919, 0xE200000000000000);
  *a3 = 0xD000000000000017;
  a3[1] = 0x80000001A891FB00;
  return result;
}

void __swiftcall IMNetworkMonitor.init()(IMNetworkMonitor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1A8874718@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  return result;
}

uint64_t sub_1A8874780@<X0>(nw_path_t *a1@<X0>, BOOL *a2@<X8>)
{
  result = nw_path_get_status(*a1);
  *a2 = ((result - 1) & 0xFFFFFFFD) == 0;
  return result;
}

uint64_t sub_1A88747C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A8874858(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A88748A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A8874920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_1A870CCE0(&qword_1EB3083A8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  sub_1A870C278(a1, a1[3]);
  sub_1A8875EA8();
  sub_1A88C95C8();
  v13 = 0;
  sub_1A88C9278();
  if (!v4)
  {
    v12 = 1;
    sub_1A88C92A8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1A8874AB4()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 1684632935;
  }
}

uint64_t sub_1A8874AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_1A8874BC4(uint64_t a1)
{
  v2 = sub_1A8875EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8874C00(uint64_t a1)
{
  v2 = sub_1A8875EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8874C3C()
{
  v0 = qword_1EB3082D0;

  return v0;
}

uint64_t sub_1A8874C74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8875A80(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1A8874CF0(uint64_t a1)
{
  result = sub_1A8874D18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8874D18()
{
  result = qword_1EB3082F0;
  if (!qword_1EB3082F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3082F0);
  }

  return result;
}

uint64_t sub_1A8874D6C(uint64_t a1)
{
  v2 = sub_1A88759D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8874DA8(uint64_t a1)
{
  v2 = sub_1A88759D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8874E28(void *a1, uint64_t a2)
{
  v5 = sub_1A870CCE0(&qword_1EB308390);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1A870C278(a1, a1[3]);
  sub_1A8875E54();
  sub_1A88C95C8();
  v11 = a2;
  v10[15] = 0;
  sub_1A870CCE0(&qword_1EB303100);
  sub_1A8716048(&qword_1EB303120);
  sub_1A88C92C8();
  if (!v2)
  {
    v10[14] = 1;
    sub_1A88C92A8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A8875000()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x7364697567;
  }
}

uint64_t sub_1A8875038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7364697567 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_1A8875110(uint64_t a1)
{
  v2 = sub_1A8875E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887514C(uint64_t a1)
{
  v2 = sub_1A8875E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8875188()
{
  v0 = qword_1EB3082E0;

  return v0;
}

uint64_t sub_1A88751C0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v3[2] = a2;
  v3[3] = v4;
  v3[4] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1A88751E8, 0, 0);
}

uint64_t sub_1A88751E8()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_1A88C85E8();
  [v2 retrieveLocalFileURLForFileTransferWithGUIDs:v3 options:v1];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A8875280@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A8875C58(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1A88752F4(uint64_t a1)
{
  result = sub_1A887531C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887531C()
{
  result = qword_1EB3082F8;
  if (!qword_1EB3082F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3082F8);
  }

  return result;
}

unint64_t sub_1A88753A4()
{
  result = qword_1EB308310;
  if (!qword_1EB308310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308310);
  }

  return result;
}

unint64_t sub_1A88753F8(uint64_t a1)
{
  result = sub_1A8875420();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8875420()
{
  result = qword_1EB308318;
  if (!qword_1EB308318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308318);
  }

  return result;
}

uint64_t sub_1A8875474(uint64_t a1)
{
  v2 = sub_1A8875A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88754B0(uint64_t a1)
{
  v2 = sub_1A8875A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A88754EC(uint64_t a1)
{
  result = sub_1A8875514();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8875514()
{
  result = qword_1EB308320;
  if (!qword_1EB308320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308320);
  }

  return result;
}

unint64_t sub_1A8875568(uint64_t a1)
{
  result = sub_1A8875590();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8875590()
{
  result = qword_1EB308328;
  if (!qword_1EB308328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308328);
  }

  return result;
}

uint64_t sub_1A8875654(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = sub_1A870CCE0(a4);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_1A870C278(a1, a1[3]);
  a6();
  sub_1A88C95C8();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A88757A8()
{
  result = qword_1EB308340;
  if (!qword_1EB308340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308340);
  }

  return result;
}

unint64_t sub_1A88757FC(uint64_t a1)
{
  result = sub_1A8875824();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A8875824()
{
  result = qword_1EB308348;
  if (!qword_1EB308348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308348);
  }

  return result;
}

unint64_t sub_1A8875878(uint64_t a1)
{
  result = sub_1A88758A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A88758A0()
{
  result = qword_1EB308350;
  if (!qword_1EB308350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308350);
  }

  return result;
}

unint64_t sub_1A88758F4(uint64_t a1)
{
  result = sub_1A887591C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887591C()
{
  result = qword_1EB308358;
  if (!qword_1EB308358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308358);
  }

  return result;
}

uint64_t sub_1A887599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A88759D8()
{
  result = qword_1EB308368;
  if (!qword_1EB308368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308368);
  }

  return result;
}

unint64_t sub_1A8875A2C()
{
  result = qword_1EB308378;
  if (!qword_1EB308378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308378);
  }

  return result;
}

uint64_t sub_1A8875A80(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308398);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_1A870C278(a1, a1[3]);
  sub_1A8875EA8();
  sub_1A88C95A8();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_1A88C9108();
    v9[14] = 1;
    sub_1A88C9138();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

uint64_t sub_1A8875C58(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308380);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1A870C278(a1, v7);
  sub_1A8875E54();
  sub_1A88C95A8();
  if (!v1)
  {
    sub_1A870CCE0(&qword_1EB303100);
    v9[7] = 0;
    sub_1A8716048(&qword_1EB303108);
    sub_1A88C9158();
    v7 = v10;
    v9[6] = 1;
    sub_1A88C9138();
    (*(v4 + 8))(v6, v3);
  }

  sub_1A85F1084(a1);
  return v7;
}

unint64_t sub_1A8875E54()
{
  result = qword_1EB308388;
  if (!qword_1EB308388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308388);
  }

  return result;
}

unint64_t sub_1A8875EA8()
{
  result = qword_1EB3083A0;
  if (!qword_1EB3083A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083A0);
  }

  return result;
}

unint64_t sub_1A8875F60()
{
  result = qword_1EB3083B0;
  if (!qword_1EB3083B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083B0);
  }

  return result;
}

unint64_t sub_1A8875FB8()
{
  result = qword_1EB3083B8;
  if (!qword_1EB3083B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083B8);
  }

  return result;
}

unint64_t sub_1A8876010()
{
  result = qword_1EB3083C0;
  if (!qword_1EB3083C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083C0);
  }

  return result;
}

unint64_t sub_1A8876068()
{
  result = qword_1EB3083C8;
  if (!qword_1EB3083C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083C8);
  }

  return result;
}

unint64_t sub_1A88760C0()
{
  result = qword_1EB3083D0;
  if (!qword_1EB3083D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083D0);
  }

  return result;
}

unint64_t sub_1A8876118()
{
  result = qword_1EB3083D8;
  if (!qword_1EB3083D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083D8);
  }

  return result;
}

unint64_t sub_1A8876170()
{
  result = qword_1EB3083E0;
  if (!qword_1EB3083E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083E0);
  }

  return result;
}

unint64_t sub_1A88761C8()
{
  result = qword_1EB3083E8;
  if (!qword_1EB3083E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083E8);
  }

  return result;
}

unint64_t sub_1A8876220()
{
  result = qword_1EB3083F0;
  if (!qword_1EB3083F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083F0);
  }

  return result;
}

unint64_t sub_1A8876278()
{
  result = qword_1EB3083F8;
  if (!qword_1EB3083F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3083F8);
  }

  return result;
}

unint64_t sub_1A8876314(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (*(a1 + 16))
  {
    sub_1A870CCE0(a2);
    v5 = sub_1A88C9008();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return v5;
    }

    v8 = *(a1 + 64 + 8 * v13);
    ++v11;
    if (v8)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v8)) | (v13 << 6);
        sub_1A8717304(*(a1 + 48) + 40 * v14, v28);
        sub_1A85F1028(*(a1 + 56) + 32 * v14, v29 + 8);
        v26[0] = v29[0];
        v26[1] = v29[1];
        v27 = v30;
        v25[0] = v28[0];
        v25[1] = v28[1];
        sub_1A8717304(v25, v24);
        if (!swift_dynamicCast())
        {
          sub_1A85EF638(v25, &qword_1EB3084D0);

          goto LABEL_23;
        }

        sub_1A85F1028(v26 + 8, v24);
        sub_1A85EF638(v25, &qword_1EB3084D0);
        sub_1A870CCE0(a4);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v8 &= v8 - 1;
        result = sub_1A85F5F40(v22, v23);
        v15 = result;
        if (v16)
        {
          v12 = (v5[6] + 16 * result);
          *v12 = v22;
          v12[1] = v23;

          *(v5[7] + 8 * v15) = v22;

          v11 = v13;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v5[2] >= v5[3])
          {
            goto LABEL_26;
          }

          *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v5[6] + 16 * result);
          *v17 = v22;
          v17[1] = v23;
          *(v5[7] + 8 * result) = v22;
          v18 = v5[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v5[2] = v20;
          v11 = v13;
          if (!v8)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v11;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1A8876608(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A870CCE0(&unk_1EB3052F0);
    v2 = sub_1A88C9008();
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
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1A8717304(*(a1 + 48) + 40 * v12, v27);
        sub_1A85F1028(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1A8717304(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1A85F1028(v25 + 8, v20);
        sub_1A85EF638(v24, &qword_1EB3084D0);
        v21 = v18;
        sub_1A85E99B0(v20, v22);
        v13 = v21;
        sub_1A85E99B0(v22, v23);
        sub_1A85E99B0(v23, &v21);
        result = sub_1A85F5F40(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_1A85F1084(v10);
          result = sub_1A85E99B0(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1A85E99B0(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1A85EF638(v24, &qword_1EB3084D0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1A8876900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A891FBF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A88C9398();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A8876994(uint64_t a1)
{
  v2 = sub_1A8876BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A88769D0(uint64_t a1)
{
  v2 = sub_1A8876BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentRecoverableMessageMetadata.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308400);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_1A870C278(a1, a1[3]);
  sub_1A8876BB0();

  sub_1A88C95C8();
  v9[1] = v7;
  sub_1A870CCE0(&qword_1EB308410);
  sub_1A8876E08(&qword_1EB308418, sub_1A8876C04);
  sub_1A88C92C8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A8876BB0()
{
  result = qword_1EB308408;
  if (!qword_1EB308408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308408);
  }

  return result;
}

unint64_t sub_1A8876C04()
{
  result = qword_1EB308420;
  if (!qword_1EB308420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308420);
  }

  return result;
}

uint64_t RemoteIntentRecoverableMessageMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB308428);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8876BB0();
  sub_1A88C95A8();
  if (!v2)
  {
    sub_1A870CCE0(&qword_1EB308410);
    sub_1A8876E08(&qword_1EB308430, sub_1A8876E80);
    sub_1A88C9158();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_1A85F1084(a1);
}

uint64_t sub_1A8876E08(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A870CD28(&qword_1EB308410);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A8876E80()
{
  result = qword_1EB308438;
  if (!qword_1EB308438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308438);
  }

  return result;
}

uint64_t sub_1A8876F04()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1684632935;
  }
}

uint64_t sub_1A8876F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684632935 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A88C9398() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A891FC10 == a2)
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

uint64_t sub_1A8877020(uint64_t a1)
{
  v2 = sub_1A8877238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887705C(uint64_t a1)
{
  v2 = sub_1A8877238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentChatRecoverableMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB308440);
  v11 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A8877238();
  sub_1A88C95C8();
  LOBYTE(v12) = 0;
  sub_1A88C9278();
  if (!v2)
  {
    v8 = v3[2];
    v12 = v3[1];
    v13 = v8;
    v14[0] = v3[3];
    *(v14 + 9) = *(v3 + 57);
    v15 = 1;
    sub_1A887728C();
    sub_1A88C92C8();
  }

  return (*(v11 + 8))(v7, v5);
}

unint64_t sub_1A8877238()
{
  result = qword_1EB308448;
  if (!qword_1EB308448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308448);
  }

  return result;
}

unint64_t sub_1A887728C()
{
  result = qword_1EB308450;
  if (!qword_1EB308450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308450);
  }

  return result;
}

uint64_t RemoteIntentChatRecoverableMetadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v4 = sub_1A870CCE0(&qword_1EB308458);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  sub_1A870C278(a1, a1[3]);
  sub_1A8877238();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v8 = v5;
  v9 = v33;
  LOBYTE(v22[0]) = 0;
  v10 = sub_1A88C9108();
  v12 = v11;
  v19 = v10;
  v26 = 1;
  sub_1A8877550();
  sub_1A88C9158();
  (*(v8 + 8))(v7, v4);
  v13 = v27;
  v14 = v28;
  v30 = v27;
  v31 = v28;
  v32[0] = v29[0];
  *(v32 + 9) = *(v29 + 9);
  v15 = v19;
  *&v20[0] = v19;
  *(&v20[0] + 1) = v12;
  v20[2] = v28;
  v21[0] = v29[0];
  *(v21 + 9) = *(v29 + 9);
  v20[1] = v27;
  v16 = v21[0];
  *v9 = v20[0];
  v9[1] = v13;
  *(v9 + 57) = *(v21 + 9);
  v9[2] = v14;
  v9[3] = v16;
  sub_1A88775A4(v20, v22);
  sub_1A85F1084(a1);
  v22[0] = v15;
  v22[1] = v12;
  v23 = v30;
  v24 = v31;
  *v25 = v32[0];
  *&v25[9] = *(v32 + 9);
  return sub_1A88775DC(v22);
}

unint64_t sub_1A8877550()
{
  result = qword_1EB308460;
  if (!qword_1EB308460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308460);
  }

  return result;
}

unint64_t sub_1A887763C()
{
  v1 = 0xD000000000000010;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A88776B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A887BE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A88776D8(uint64_t a1)
{
  v2 = sub_1A8877964();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8877714(uint64_t a1)
{
  v2 = sub_1A8877964();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteIntentRecoverableMetadata.encode(to:)(void *a1)
{
  v3 = sub_1A870CCE0(&qword_1EB308468);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v16 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = v7;
  v12 = *(v1 + 40);
  v11 = *(v1 + 48);
  v10[1] = *(v1 + 56);
  sub_1A870C278(a1, a1[3]);
  sub_1A8877964();
  sub_1A88C95C8();
  v20 = 0;
  v8 = v15;
  sub_1A88C9248();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v19 = 1;
  sub_1A88C9248();
  v18 = 2;
  sub_1A88C9248();
  v17 = 3;
  sub_1A88C9248();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A8877964()
{
  result = qword_1EB308470;
  if (!qword_1EB308470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308470);
  }

  return result;
}

uint64_t RemoteIntentRecoverableMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB308478);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A8877964();
  sub_1A88C95A8();
  if (!v2)
  {
    v33 = 0;
    v9 = sub_1A88C90D8();
    v29 = v10 & 1;
    v32 = 1;
    v11 = sub_1A88C90D8();
    v28 = v12 & 1;
    v31 = 2;
    v25 = sub_1A88C90D8();
    v27 = v13 & 1;
    v30 = 3;
    v14 = sub_1A88C90D8();
    v17 = v16;
    v18 = *(v6 + 8);
    v24 = v14;
    v18(v8, v5);
    v26 = v17 & 1;
    v19 = v29;
    v20 = v28;
    v21 = v27;
    *a2 = v9;
    *(a2 + 8) = v19;
    *(a2 + 16) = v11;
    *(a2 + 24) = v20;
    v22 = v24;
    *(a2 + 32) = v25;
    *(a2 + 40) = v21;
    *(a2 + 48) = v22;
    *(a2 + 56) = v17 & 1;
  }

  return sub_1A85F1084(a1);
}

IMSharedUtilities::RemoteIntentRecoverableMessageMetadata __swiftcall RemoteIntentRecoverableMessageMetadata.init(dictionaryRepresentation:)(Swift::OpaquePointer dictionaryRepresentation)
{
  v2 = v1;
  v3 = sub_1A8876314(dictionaryRepresentation._rawValue, &qword_1EB3084F0, &unk_1A88F6CC8, &qword_1EB303320);

  if (v3)
  {
    v22 = v2;
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 64);
    v9 = (v6 + 63) >> 6;
    rawValue = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        v2 = v22;
        goto LABEL_17;
      }

      v8 = *(v3 + 64 + 8 * v11);
      ++v5;
      if (v8)
      {
        v5 = v11;
        do
        {
LABEL_9:
          v12 = (*(v3 + 48) + 16 * (__clz(__rbit64(v8)) | (v5 << 6)));
          v13 = *v12;
          v14 = v12[1];

          RemoteIntentRecoverableMetadata.init(dictionaryRepresentation:)(v15, v23);
          result.chatMetadataList._rawValue = swift_isUniquelyReferenced_nonNull_native();
          if ((result.chatMetadataList._rawValue & 1) == 0)
          {
            result.chatMetadataList._rawValue = sub_1A87351E0(0, *(rawValue + 2) + 1, 1, rawValue);
            rawValue = result.chatMetadataList._rawValue;
          }

          v17 = *(rawValue + 2);
          v16 = *(rawValue + 3);
          if (v17 >= v16 >> 1)
          {
            result.chatMetadataList._rawValue = sub_1A87351E0((v16 > 1), v17 + 1, 1, rawValue);
            rawValue = result.chatMetadataList._rawValue;
          }

          v8 &= v8 - 1;
          *(rawValue + 2) = v17 + 1;
          v18 = &rawValue[80 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v14;
          v19 = v23[0];
          v20 = v23[1];
          v21 = v24[0];
          *(v18 + 89) = *(v24 + 9);
          *(v18 + 4) = v20;
          *(v18 + 5) = v21;
          *(v18 + 3) = v19;
        }

        while (v8);
      }
    }

    __break(1u);
  }

  else
  {
    rawValue = MEMORY[0x1E69E7CC0];
LABEL_17:
    *v2 = rawValue;
  }

  return result;
}

uint64_t RemoteIntentRecoverableMetadata.init(dictionaryRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = sub_1A88C82E8();
  v31 = v4;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v5 = sub_1A8602F10(v29), (v6 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v5, &v30);
    sub_1A8717360(v29);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v28;
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 ^ 1;
  }

  else
  {
    sub_1A8717360(v29);
    v8 = 0;
    v9 = 1;
  }

  v30 = sub_1A88C82E8();
  v31 = v10;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v11 = sub_1A8602F10(v29), (v12 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v11, &v30);
    sub_1A8717360(v29);
    v13 = swift_dynamicCast();
    if (v13)
    {
      v14 = v28;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 ^ 1;
  }

  else
  {
    sub_1A8717360(v29);
    v14 = 0;
    v15 = 1;
  }

  v30 = sub_1A88C82E8();
  v31 = v16;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v17 = sub_1A8602F10(v29), (v18 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v17, &v30);
    sub_1A8717360(v29);
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v28;
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 ^ 1;
  }

  else
  {
    sub_1A8717360(v29);
    v20 = 0;
    v21 = 1;
  }

  v30 = sub_1A88C82E8();
  v31 = v22;
  sub_1A88C8D88();
  if (*(a1 + 16) && (v23 = sub_1A8602F10(v29), (v24 & 1) != 0))
  {
    sub_1A85F1028(*(a1 + 56) + 32 * v23, &v30);
    sub_1A8717360(v29);

    result = swift_dynamicCast();
    v26 = v28;
    if (!result)
    {
      v26 = 0;
    }

    v27 = result ^ 1;
  }

  else
  {

    result = sub_1A8717360(v29);
    v26 = 0;
    v27 = 1;
  }

  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  return result;
}

uint64_t RemoteIntentRecoverableMessageMetadata.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = 0;
  v4 = (v1 + 32);
  v5 = v2 - 1;
  v6 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v33 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    *(v36 + 9) = *(v4 + 57);
    v35 = v8;
    v36[0] = v9;
    v34 = v7;
    v28 = v33;
    sub_1A88775A4(&v33, v30);
    sub_1A88775A4(&v33, v30);
    sub_1A88C8D88();
    v30[0] = v34;
    v30[1] = v35;
    v31[0] = v36[0];
    *(v31 + 9) = *(v36 + 9);
    v10 = RemoteIntentRecoverableMetadata.dictionaryRepresentation.getter();
    v29 = sub_1A870CCE0(&qword_1EB303320);
    *&v28 = v10;
    sub_1A85E99B0(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v6;
    v12 = sub_1A8602F10(v32);
    v14 = v6[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v6[3] < v17)
    {
      sub_1A8878AB8(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1A8602F10(v32);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_20;
      }

LABEL_8:
      if (v18)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    v21 = v12;
    sub_1A87B1030();
    v12 = v21;
    v6 = v26;
    if (v18)
    {
LABEL_9:
      v20 = (v6[7] + 32 * v12);
      sub_1A85F1084(v20);
      sub_1A85E99B0(v27, v20);
      goto LABEL_13;
    }

LABEL_11:
    v6[(v12 >> 6) + 8] |= 1 << v12;
    v22 = v12;
    sub_1A8717304(v32, v6[6] + 40 * v12);
    sub_1A85E99B0(v27, (v6[7] + 32 * v22));
    v23 = v6[2];
    v16 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v16)
    {
      goto LABEL_19;
    }

    v6[2] = v24;
LABEL_13:
    sub_1A88775DC(&v33);
    sub_1A8717360(v32);
    if (v5 == v3)
    {
      return v6;
    }

    ++v3;
    v4 += 5;
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      return MEMORY[0x1E69E7CC8];
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1A88C9488();
  __break(1u);
  return result;
}

uint64_t RemoteIntentRecoverableMetadata.dictionaryRepresentation.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v22 = v0[6];
  v7 = *(v0 + 56);
  v8 = MEMORY[0x1E69E7CC8];
  v27 = MEMORY[0x1E69E7CC8];
  *&v24 = sub_1A88C82E8();
  *(&v24 + 1) = v9;
  sub_1A88C8D88();
  v10 = MEMORY[0x1E69E7360];
  if (v2)
  {
    sub_1A88BEFF8(v26, &v24);
    sub_1A85EF638(&v24, &qword_1EB3057B0);
    sub_1A8717360(v26);
  }

  else
  {
    v25 = MEMORY[0x1E69E7360];
    *&v24 = v1;
    sub_1A85E99B0(&v24, v23);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v23, v26, isUniquelyReferenced_nonNull_native);
    sub_1A8717360(v26);
    v27 = v8;
  }

  *&v24 = sub_1A88C82E8();
  *(&v24 + 1) = v12;
  sub_1A88C8D88();
  if (v4)
  {
    sub_1A88BEFF8(v26, &v24);
    sub_1A85EF638(&v24, &qword_1EB3057B0);
    sub_1A8717360(v26);
  }

  else
  {
    v25 = v10;
    *&v24 = v3;
    sub_1A85E99B0(&v24, v23);
    v13 = v27;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v23, v26, v14);
    sub_1A8717360(v26);
    v27 = v13;
  }

  *&v24 = sub_1A88C82E8();
  *(&v24 + 1) = v15;
  sub_1A88C8D88();
  if (v6)
  {
    sub_1A88BEFF8(v26, &v24);
    sub_1A85EF638(&v24, &qword_1EB3057B0);
    sub_1A8717360(v26);
  }

  else
  {
    v25 = v10;
    *&v24 = v5;
    sub_1A85E99B0(&v24, v23);
    v16 = v27;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v23, v26, v17);
    sub_1A8717360(v26);
    v27 = v16;
  }

  *&v24 = sub_1A88C82E8();
  *(&v24 + 1) = v18;
  sub_1A88C8D88();
  if (v7)
  {
    sub_1A88BEFF8(v26, &v24);
    sub_1A85EF638(&v24, &qword_1EB3057B0);
    sub_1A8717360(v26);
    return v27;
  }

  else
  {
    v25 = v10;
    *&v24 = v22;
    sub_1A85E99B0(&v24, v23);
    v20 = v27;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A87AC424(v23, v26, v21);
    sub_1A8717360(v26);
    return v20;
  }
}

uint64_t sub_1A88786D4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB303EB8);
  v40 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v43 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = sub_1A88C72E8();
      v42 = &v38;
      v22 = *(v21 - 8);
      MEMORY[0x1EEE9AC00](v21);
      v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v25 = *(v5 + 56);
      v26 = (*(v5 + 48) + 16 * v20);
      v27 = v26[1];
      v44 = *v26;
      v41 = *(v28 + 72);
      v29 = v25 + v41 * v20;
      if (v40)
      {
        (*(v22 + 32))(&v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v21);
      }

      else
      {
        (*(v22 + 16))(&v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v21);
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v44;
      v16[1] = v27;
      result = (*(v22 + 32))(*(v7 + 56) + v41 * v15, v24, v21);
      ++*(v7 + 16);
      v12 = v43;
      v5 = v39;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8878AB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&unk_1EB305300);
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1A85E99B0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1A8717304(v23, &v36);
        sub_1A85F1028(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1A88C8D68();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1A85E99B0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A8878DB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB303CC0);
  v36 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *v25;
      v39 = *(v25 + 8);
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v26;
      *(v17 + 8) = v39;
      *(v17 + 16) = v38;
      *(v17 + 24) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A887909C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB303E40);
  v37 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A887935C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&unk_1EB3052F0);
  v33 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1A85E99B0(v24, v34);
      }

      else
      {
        sub_1A85F1028(v24, v34);
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A85E99B0(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8879628(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB3084F8);
  v33 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A88798F8(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t a5, uint64_t (*a6)(void))
{
  v48 = a6;
  v8 = v6;
  v10 = a3(0);
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v42 - v11;
  v12 = *v6;
  sub_1A870CCE0(a4);
  v46 = a2;
  result = sub_1A88C8FF8();
  v14 = result;
  if (*(v12 + 16))
  {
    v43 = v6;
    v44 = v12;
    v15 = 0;
    v16 = (v12 + 64);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v27 = v24 | (v15 << 6);
      v28 = *(v12 + 56);
      v29 = (*(v12 + 48) + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(v45 + 72);
      v33 = v28 + v32 * v27;
      if (v46)
      {
        sub_1A887BFE8(v33, v47, v48);
      }

      else
      {
        sub_1A887BF80(v33, v47, v48);
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      v23 = (*(v14 + 48) + 16 * v22);
      *v23 = v31;
      v23[1] = v30;
      result = sub_1A887BFE8(v47, *(v14 + 56) + v32 * v22, v48);
      ++*(v14 + 16);
      v12 = v44;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v8 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v8 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v8 = v14;
  return result;
}

uint64_t sub_1A8879C60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB303E00);
  v32 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = v22[1];
      v33 = *v22;
      if ((v32 & 1) == 0)
      {
      }

      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v21);
      result = sub_1A88C9578();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v33;
      v16[1] = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A8879F00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB303D78);
  v35 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v25 = v24;
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A887A1A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB303E20);
  v34 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A887A444(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB305868);
  v48 = a2;
  v6 = sub_1A88C8FF8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = *(v5 + 64);
    v45 = (v5 + 64);
    v46 = v5;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & v9;
    v43 = v2;
    v44 = (v10 + 63) >> 6;
    v13 = v6 + 64;
    v47 = v6;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v52 = (v12 - 1) & v12;
LABEL_15:
      v22 = v18 | (v8 << 6);
      v23 = sub_1A88C72E8();
      v51 = &v42;
      v24 = *(v23 - 8);
      v25 = MEMORY[0x1EEE9AC00](v23);
      v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = &v42;
      MEMORY[0x1EEE9AC00](v25);
      v29 = &v42 - v28;
      v30 = *(v5 + 48);
      v49 = *(v31 + 72);
      v32 = v49 * v22;
      v53 = &v42 - v28;
      if (v48)
      {
        v33 = *(v24 + 32);
      }

      else
      {
        v33 = *(v24 + 16);
      }

      v33(v27, v30 + v32, v23);
      v33(v29, *(v5 + 56) + v32, v23);
      v7 = v47;
      sub_1A87B2E7C();
      result = sub_1A88C8228();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v13 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v15 = v53;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v13 + 8 * v36);
          if (v40 != -1)
          {
            v14 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v35) & ~*(v13 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v15 = v53;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v16 = v49 * v14;
      v17 = *(v24 + 32);
      v17(*(v7 + 48) + v49 * v14, v27, v23);
      v17(*(v7 + 56) + v16, v15, v23);
      ++*(v7 + 16);
      v12 = v52;
      v5 = v46;
    }

    v19 = v8;
    result = v45;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v44)
      {
        break;
      }

      v21 = v45[v8];
      ++v19;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v45, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v45 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A887A864(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB303D70);
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      sub_1A88C9528();
      MEMORY[0x1AC56FE00](v20);
      result = sub_1A88C9578();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A887AB08(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1A870CCE0(a3);
  v35 = a2;
  result = sub_1A88C8FF8();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1A887ADD0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A870CCE0(&qword_1EB303D40);
  v37 = a2;
  result = sub_1A88C8FF8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 40 * v21;
      v25 = *(v24 + 8);
      v38 = *v24;
      v39 = *(v24 + 16);
      v26 = *(v24 + 32);
      if ((v37 & 1) == 0)
      {
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v38;
      *(v17 + 8) = v25;
      *(v17 + 16) = v39;
      *(v17 + 32) = v26;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A887B0DC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1A870CCE0(a3);
  v35 = a2;
  result = sub_1A88C8FF8();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1A887B390(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_1A870CCE0(a3);
  v34 = a2;
  result = sub_1A88C8FF8();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v6 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v35 = *(*(v6 + 56) + v22);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

_OWORD *sub_1A887B634(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1A85E99B0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1A887B6B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_1A887B700(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1A85E99B0(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_1A887B76C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

unint64_t sub_1A887B7B4(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
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

uint64_t sub_1A887B7FC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1A88C72E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t sub_1A887B8D8(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2 & 1;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

unint64_t sub_1A887B924(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

__n128 sub_1A887B990(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A887B9B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1A887B9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A887BA60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A887BA80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
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

  *(result + 57) = v3;
  return result;
}

unint64_t sub_1A887BB00()
{
  result = qword_1EB308480;
  if (!qword_1EB308480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308480);
  }

  return result;
}

unint64_t sub_1A887BB58()
{
  result = qword_1EB308488;
  if (!qword_1EB308488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308488);
  }

  return result;
}

unint64_t sub_1A887BBB0()
{
  result = qword_1EB308490;
  if (!qword_1EB308490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308490);
  }

  return result;
}

unint64_t sub_1A887BC08()
{
  result = qword_1EB308498;
  if (!qword_1EB308498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308498);
  }

  return result;
}

unint64_t sub_1A887BC60()
{
  result = qword_1EB3084A0;
  if (!qword_1EB3084A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3084A0);
  }

  return result;
}

unint64_t sub_1A887BCB8()
{
  result = qword_1EB3084A8;
  if (!qword_1EB3084A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3084A8);
  }

  return result;
}

unint64_t sub_1A887BD10()
{
  result = qword_1EB3084B0;
  if (!qword_1EB3084B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3084B0);
  }

  return result;
}

unint64_t sub_1A887BD68()
{
  result = qword_1EB3084B8;
  if (!qword_1EB3084B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3084B8);
  }

  return result;
}

unint64_t sub_1A887BDC0()
{
  result = qword_1EB3084C0;
  if (!qword_1EB3084C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3084C0);
  }

  return result;
}

uint64_t sub_1A887BE14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A891FC30 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A891FC50 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001A891FC70 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A891FC90 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1A88C9398();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A887BF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A887BFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A887C0D4()
{
  if (!qword_1EB308550)
  {
    sub_1A870CD28(&qword_1EB308558);
    v0 = type metadata accessor for _RemoteIntentKVEncodedData();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB308550);
    }
  }
}

uint64_t sub_1A887C1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A887C270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A887C300(uint64_t a1)
{
  v2 = sub_1A887FDE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887C33C(uint64_t a1)
{
  v2 = sub_1A887FDE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A887C378()
{
  v0 = qword_1EB308500;

  return v0;
}

uint64_t sub_1A887C3B0(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v4 = v2[1];
  v3[21] = *v2;
  v3[22] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1A887C3D8, 0, 0);
}

uint64_t sub_1A887C3D8()
{
  v1 = v0[20];
  v2 = sub_1A88C82A8();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A87E7810;
  v3 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&unk_1EB3063E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A87E74F4;
  v0[13] = &unk_1F1BB7108;
  v0[14] = v3;
  [v1 loadChatsWithIdentifier:v2 reply:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A887C510@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB3086F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A887FDE0();
  sub_1A88C95A8();
  if (v2)
  {
    return sub_1A85F1084(a1);
  }

  v9 = sub_1A88C9108();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_1A85F1084(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1A887C68C(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB308708);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A887FDE0();
  sub_1A88C95C8();
  sub_1A88C9278();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A887C7F4(uint64_t a1)
{
  result = sub_1A887C81C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887C81C()
{
  result = qword_1EB308570;
  if (!qword_1EB308570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308570);
  }

  return result;
}

uint64_t sub_1A887C870(uint64_t a1)
{
  v2 = sub_1A887FAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887C8AC(uint64_t a1)
{
  v2 = sub_1A887FAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1A887C8E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A887F894(a1, &qword_1EB308668, &unk_1A88F72A0, sub_1A887FAA8);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A887C988(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A887C9A8, 0, 0);
}

uint64_t sub_1A887C9A8()
{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v0[20];
  v4 = *v3;
  ChatsFilteredRequest = type metadata accessor for LoadChatsFilteredRequest(0);
  v6 = *(ChatsFilteredRequest + 20);
  sub_1A870CCE0(&unk_1EB3052E0);
  v7 = swift_task_alloc();
  sub_1A8721348(v3 + v6, v7);
  v8 = sub_1A88C7478();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    v10 = sub_1A88C73D8();
    (*(v9 + 8))(v7, v8);
  }

  v1[21] = v10;
  v11 = v1[19];
  v12 = v1[20];

  v13 = *(v12 + *(ChatsFilteredRequest + 24));
  v1[2] = v1;
  v1[7] = v2;
  v1[3] = sub_1A887CBDC;
  v14 = swift_continuation_init();
  v1[17] = sub_1A870CCE0(&unk_1EB3063E0);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1A87E74F4;
  v1[13] = &unk_1F1BB7130;
  v1[14] = v14;
  [v11 loadChatsFilteredUsingPredicate:v4 lastMessageOlderThan:v10 limit:v13 reply:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1A887CBDC()
{

  return MEMORY[0x1EEE6DFA0](sub_1A88807E4, 0, 0);
}

void sub_1A887CCBC(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3086F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A887FCC4();
  sub_1A88C95C8();
  v9 = *v3;
  v14 = 0;
  if (v9)
  {
    v11[1] = v9;
    v10 = v9;
    sub_1A870CCE0(&qword_1EB3086C0);
    sub_1A85FB520(&qword_1EB3086D8, &qword_1EB3086C0);
    sub_1A88C9228();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);

      return;
    }
  }

  type metadata accessor for LoadChatsFilteredRequest(0);
  v13 = 1;
  sub_1A88C7478();
  sub_1A8720F18(&qword_1EB303500);
  sub_1A88C9228();
  if (!v2)
  {
    v12 = 2;
    sub_1A88C92A8();
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A887CF14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1A870CCE0(&qword_1EB3086E0);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  ChatsFilteredRequest = type metadata accessor for LoadChatsFilteredRequest(0);
  v8 = MEMORY[0x1EEE9AC00](ChatsFilteredRequest);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 20);
  v12 = sub_1A88C7478();
  v13 = *(*(v12 - 8) + 56);
  v26 = v11;
  v13(&v10[v11], 1, 1, v12);
  sub_1A870C278(a1, a1[3]);
  sub_1A887FCC4();
  sub_1A88C95A8();
  if (v2)
  {
    v18 = v26;
    sub_1A85F1084(a1);

    return sub_1A871DF50(&v10[v18]);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB3086C0);
    v30 = 0;
    sub_1A85FB520(&qword_1EB3086C8, &qword_1EB3086C0);
    sub_1A88C90B8();
    if (v27 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v27;
    }

    *v10 = v14;
    v15 = sub_1A870CCE0(&unk_1EB3052E0);
    v22 = &v22;
    MEMORY[0x1EEE9AC00](v15 - 8);
    v17 = &v22 - v16;
    v29 = 1;
    sub_1A8720F18(&qword_1EB303510);
    sub_1A88C90B8();
    sub_1A87D8CFC(v17, &v10[v26]);
    v28 = 2;
    v19 = v25;
    v20 = sub_1A88C9138();
    (*(v24 + 8))(v6, v19);
    *&v10[*(ChatsFilteredRequest + 24)] = v20;
    sub_1A887FD18(v10, v23, type metadata accessor for LoadChatsFilteredRequest);
    sub_1A85F1084(a1);
    return sub_1A887FD80(v10, type metadata accessor for LoadChatsFilteredRequest);
  }
}

uint64_t sub_1A887D2E8()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461636964657270;
  }
}

uint64_t sub_1A887D348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A887F770(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A887D370(uint64_t a1)
{
  v2 = sub_1A887FCC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887D3AC(uint64_t a1)
{
  v2 = sub_1A887FCC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A887D3E8()
{
  v0 = qword_1EB308510;

  return v0;
}

uint64_t sub_1A887D450(uint64_t a1)
{
  *(a1 + 8) = sub_1A887D4D4(&qword_1EB305088, type metadata accessor for LoadChatsFilteredRequest);
  result = sub_1A887D4D4(&qword_1EB305080, type metadata accessor for LoadChatsFilteredRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A887D4D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A887D51C(uint64_t a1)
{
  result = sub_1A887D4D4(&qword_1EB308578, type metadata accessor for LoadChatsFilteredRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A887D574(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v8 = sub_1A870CCE0(a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  sub_1A870C278(a1, a1[3]);
  a5();
  sub_1A88C95C8();
  v13[3] = a2;
  sub_1A870CCE0(&qword_1EB308648);
  sub_1A85FB520(&qword_1EB308660, &qword_1EB308648);
  sub_1A88C92C8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1A887D708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A891FD50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A88C9398();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A887D79C(uint64_t a1)
{
  v2 = sub_1A887FA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887D7D8(uint64_t a1)
{
  v2 = sub_1A887FA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A887D814@<X0>(uint64_t *a1@<X8>)
{
  sub_1A870CCE0(&qword_1EB303458);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A88E14F0;
  result = sub_1A8602DD4(MEMORY[0x1E69E7CC0]);
  *(v2 + 32) = result;
  *a1 = v2;
  return result;
}

void *sub_1A887D878@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1A887F894(a1, &qword_1EB308638, &unk_1A88F7278, sub_1A887FA54);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1A887D918(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A887D938, 0, 0);
}

uint64_t sub_1A887D938()
{
  v1 = v0[20];
  sub_1A870CCE0(&unk_1EB3052E0);
  v2 = swift_task_alloc();
  sub_1A8721348(v1, v2);
  v3 = sub_1A88C7478();
  v4 = *(v3 - 8);
  v5 = 0;
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v5 = sub_1A88C73D8();
    (*(v4 + 8))(v2, v3);
  }

  v0[21] = v5;
  v6 = v0[19];
  v7 = v0[20];

  UnreadChatsRequest = type metadata accessor for LoadUnreadChatsRequest(0);
  v9 = *(v7 + *(UnreadChatsRequest + 20));
  v10 = *(v7 + *(UnreadChatsRequest + 24));
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A887DB58;
  v11 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&unk_1EB3063E0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A87E74F4;
  v0[13] = &unk_1F1BB7158;
  v0[14] = v11;
  [v6 loadUnreadChatsWithLastMessageOlderThan:v5 predicate:v9 limit:v10 reply:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A887DB58()
{

  return MEMORY[0x1EEE6DFA0](sub_1A887DC38, 0, 0);
}

uint64_t sub_1A887DC38()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1A887DCA4(void *a1)
{
  v3 = v1;
  v5 = sub_1A870CCE0(&qword_1EB3086D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A887FC70();
  sub_1A88C95C8();
  v13 = 0;
  sub_1A88C7478();
  sub_1A8720F18(&qword_1EB303500);
  sub_1A88C9228();
  if (!v2)
  {
    v9 = *(v3 + *(type metadata accessor for LoadUnreadChatsRequest(0) + 20));
    v12 = 1;
    if (v9)
    {
      v10[1] = v9;
      v10[0] = v9;
      sub_1A870CCE0(&qword_1EB3086C0);
      sub_1A85FB520(&qword_1EB3086D8, &qword_1EB3086C0);
      sub_1A88C9228();
    }

    v11 = 2;
    sub_1A88C92A8();
  }

  (*(v6 + 8))(v8, v5);
}

void sub_1A887DF04(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1A870CCE0(&qword_1EB3086B0);
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  UnreadChatsRequest = type metadata accessor for LoadUnreadChatsRequest(0);
  MEMORY[0x1EEE9AC00](UnreadChatsRequest);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A88C7478();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1A870C278(a1, a1[3]);
  sub_1A887FC70();
  sub_1A88C95A8();
  if (v2)
  {
    sub_1A85F1084(a1);
    sub_1A871DF50(v9);
  }

  else
  {
    v20 = UnreadChatsRequest;
    v11 = sub_1A870CCE0(&unk_1EB3052E0);
    MEMORY[0x1EEE9AC00](v11 - 8);
    v13 = &v19 - v12;
    v27 = 0;
    sub_1A8720F18(&qword_1EB303510);
    v14 = v23;
    sub_1A88C90B8();
    sub_1A87D8CFC(v13, v9);
    sub_1A870CCE0(&qword_1EB3086C0);
    v26 = 1;
    sub_1A85FB520(&qword_1EB3086C8, &qword_1EB3086C0);
    sub_1A88C90B8();
    v15 = v22;
    if (v24 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v24;
    }

    v17 = v20;
    *&v9[*(v20 + 20)] = v16;
    v25 = 2;
    v18 = sub_1A88C9138();
    (*(v15 + 8))(v6, v14);
    *&v9[*(v17 + 24)] = v18;
    sub_1A887FD18(v9, v21, type metadata accessor for LoadUnreadChatsRequest);
    sub_1A85F1084(a1);
    sub_1A887FD80(v9, type metadata accessor for LoadUnreadChatsRequest);
  }
}

unint64_t sub_1A887E2C4()
{
  v1 = 0x7461636964657270;
  if (*v0 != 1)
  {
    v1 = 0x74696D696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1A887E324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A888069C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A887E34C(uint64_t a1)
{
  v2 = sub_1A887FC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887E388(uint64_t a1)
{
  v2 = sub_1A887FC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A887E3C4()
{
  v0 = qword_1EB308520;

  return v0;
}

uint64_t sub_1A887E42C(uint64_t a1)
{
  *(a1 + 8) = sub_1A887D4D4(&qword_1EB305078, type metadata accessor for LoadUnreadChatsRequest);
  result = sub_1A887D4D4(&qword_1EB305070, type metadata accessor for LoadUnreadChatsRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A887E4B0(uint64_t a1)
{
  result = sub_1A887D4D4(&qword_1EB308580, type metadata accessor for LoadUnreadChatsRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A887E508(void *a1)
{
  v19 = sub_1A870CCE0(&qword_1EB308690);
  v27 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18 = v15 - v3;
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v8 = v1[5];
  v11 = a1[3];
  v10 = a1[4];
  v16 = v1[6];
  v17 = v10;
  v15[1] = sub_1A870C278(a1, v11);
  sub_1A887FB50(v4);
  sub_1A887FAFC();
  v12 = v18;
  sub_1A88C95C8();
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v9;
  v25 = v8;
  v26 = v16;
  sub_1A8782398();
  v13 = v19;
  sub_1A88C9228();
  sub_1A887FBB8(v20);
  return (*(v27 + 8))(v12, v13);
}

uint64_t sub_1A887E6B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1A870CCE0(&qword_1EB308680);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  sub_1A870C278(a1, a1[3]);
  sub_1A887FAFC();
  sub_1A88C95A8();
  if (!v2)
  {
    sub_1A87821BC();
    sub_1A88C90B8();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v13[1];
    v11 = v13[2];
    *a2 = v13[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return sub_1A85F1084(a1);
}

uint64_t sub_1A887E84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x61746C6564 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A88C9398();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A887E8D0(uint64_t a1)
{
  v2 = sub_1A887FAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887E90C(uint64_t a1)
{
  v2 = sub_1A887FAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1A887E948@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*v1 == 1)
  {
    result = 0;
  }

  else
  {
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v8 = *(v1 + 24);
    v7 = *(v1 + 32);
    v9 = *(v1 + 16);
    v10 = *(v1 + 8);
    sub_1A87EE928();
    v11[0] = v3;
    v11[1] = v10;
    v12 = v9 & 1;
    v13 = v8;
    v14 = v7;
    v15 = v6;
    v16 = v5;

    result = IMUnreadCountReportDelta.init(remoteIntentRepresentation:)(v11);
  }

  *a1 = result;
  return result;
}

uint64_t sub_1A887EA34(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A887EA54, 0, 0);
}

uint64_t sub_1A887EA54()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1A887EB70;
  v2 = swift_continuation_init();
  v0[17] = sub_1A870CCE0(&qword_1EB308698);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1A87C7838;
  v0[13] = &unk_1F1BB7180;
  v0[14] = v2;
  [v1 unreadCountFullReplacementWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A887EB70()
{

  return MEMORY[0x1EEE6DFA0](sub_1A887EC50, 0, 0);
}

uint64_t sub_1A887EC50()
{
  v13 = v0;
  v1 = v0[18];
  if (v1)
  {
    IMUnreadCountReportDelta.remoteIntentRepresentation.getter(&v9);

    v2 = v9;
    v3 = v10;
    v4 = v11;
    v5 = v12;
  }

  else
  {
    v3 = 0;
    v2 = xmmword_1A88F6CF0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v6 = v0[19];
  *v6 = v2;
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 40) = v5;
  v7 = v0[1];

  return v7();
}

uint64_t sub_1A887ED00(uint64_t a1)
{
  v2 = sub_1A887FC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A887ED3C(uint64_t a1)
{
  v2 = sub_1A887FC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A887ED78()
{
  v0 = qword_1EB308530;

  return v0;
}

uint64_t sub_1A887EDB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A8714B6C;

  return sub_1A887EA34(a1, a2);
}

uint64_t sub_1A887EE50(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3086A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A887FC1C();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A887EF90(uint64_t a1)
{
  result = sub_1A887EFB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887EFB8()
{
  result = qword_1EB308588;
  if (!qword_1EB308588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308588);
  }

  return result;
}

unint64_t sub_1A887F054()
{
  result = qword_1EB3085A0;
  if (!qword_1EB3085A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3085A0);
  }

  return result;
}

unint64_t sub_1A887F0A8(uint64_t a1)
{
  result = sub_1A887F0D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F0D0()
{
  result = qword_1EB3085A8;
  if (!qword_1EB3085A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3085A8);
  }

  return result;
}

unint64_t sub_1A887F124(uint64_t a1)
{
  result = sub_1A887F14C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F14C()
{
  result = qword_1EB3085B0;
  if (!qword_1EB3085B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3085B0);
  }

  return result;
}

unint64_t sub_1A887F1A0(uint64_t a1)
{
  result = sub_1A887F1C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F1C8()
{
  result = qword_1EB3085B8;
  if (!qword_1EB3085B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3085B8);
  }

  return result;
}

unint64_t sub_1A887F28C()
{
  result = qword_1EB3085D0;
  if (!qword_1EB3085D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3085D0);
  }

  return result;
}

uint64_t sub_1A887F2E0(uint64_t a1)
{
  result = sub_1A887D4D4(&qword_1EB3085D8, type metadata accessor for LoadUnreadChatsRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F338(uint64_t a1)
{
  result = sub_1A887F360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F360()
{
  result = qword_1EB3085E0;
  if (!qword_1EB3085E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3085E0);
  }

  return result;
}

unint64_t sub_1A887F3B4(uint64_t a1)
{
  result = sub_1A887F3DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F3DC()
{
  result = qword_1EB3085E8;
  if (!qword_1EB3085E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3085E8);
  }

  return result;
}

unint64_t sub_1A887F4A4()
{
  result = qword_1EB308600;
  if (!qword_1EB308600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308600);
  }

  return result;
}

uint64_t sub_1A887F4F8(uint64_t a1)
{
  result = sub_1A887D4D4(&qword_1EB308608, type metadata accessor for LoadChatsFilteredRequest);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F550(uint64_t a1)
{
  result = sub_1A887F578();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F578()
{
  result = qword_1EB308610;
  if (!qword_1EB308610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308610);
  }

  return result;
}

unint64_t sub_1A887F5CC(uint64_t a1)
{
  result = sub_1A887F5F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F5F4()
{
  result = qword_1EB308618;
  if (!qword_1EB308618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308618);
  }

  return result;
}

uint64_t sub_1A887F674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1A887F6F4(uint64_t a1)
{
  result = sub_1A887F71C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A887F71C()
{
  result = qword_1EB308630;
  if (!qword_1EB308630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308630);
  }

  return result;
}

uint64_t sub_1A887F770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A891FD70 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
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

void *sub_1A887F894(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_1A870CCE0(a2);
  v14 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = sub_1A870C278(a1, a1[3]);
  a4();
  v11 = v10;
  sub_1A88C95A8();
  if (v4)
  {
    sub_1A85F1084(a1);
  }

  else
  {
    sub_1A870CCE0(&qword_1EB308648);
    sub_1A85FB520(&qword_1EB308650, &qword_1EB308648);
    sub_1A88C9158();
    (*(v14 + 8))(v9, v7);
    v11 = v15;
    sub_1A85F1084(a1);
  }

  return v11;
}

unint64_t sub_1A887FA54()
{
  result = qword_1EB308640;
  if (!qword_1EB308640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308640);
  }

  return result;
}

unint64_t sub_1A887FAA8()
{
  result = qword_1EB308670;
  if (!qword_1EB308670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308670);
  }

  return result;
}

unint64_t sub_1A887FAFC()
{
  result = qword_1EB308688;
  if (!qword_1EB308688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308688);
  }

  return result;
}

uint64_t sub_1A887FB50(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A887FBB8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1A887FC1C()
{
  result = qword_1EB3086A8;
  if (!qword_1EB3086A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3086A8);
  }

  return result;
}

unint64_t sub_1A887FC70()
{
  result = qword_1EB3086B8;
  if (!qword_1EB3086B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3086B8);
  }

  return result;
}

unint64_t sub_1A887FCC4()
{
  result = qword_1EB3086E8;
  if (!qword_1EB3086E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3086E8);
  }

  return result;
}

uint64_t sub_1A887FD18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A887FD80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A887FDE0()
{
  result = qword_1EB308700;
  if (!qword_1EB308700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308700);
  }

  return result;
}

uint64_t sub_1A887FEC4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A887FEE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 56))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1A887FF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1A887FFC0()
{
  result = qword_1EB308710;
  if (!qword_1EB308710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308710);
  }

  return result;
}

unint64_t sub_1A8880018()
{
  result = qword_1EB308718;
  if (!qword_1EB308718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308718);
  }

  return result;
}

unint64_t sub_1A8880070()
{
  result = qword_1EB308720;
  if (!qword_1EB308720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308720);
  }

  return result;
}

unint64_t sub_1A88800C8()
{
  result = qword_1EB308728;
  if (!qword_1EB308728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308728);
  }

  return result;
}

unint64_t sub_1A8880120()
{
  result = qword_1EB308730;
  if (!qword_1EB308730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308730);
  }

  return result;
}

unint64_t sub_1A8880178()
{
  result = qword_1EB308738;
  if (!qword_1EB308738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308738);
  }

  return result;
}

unint64_t sub_1A88801D0()
{
  result = qword_1EB308740;
  if (!qword_1EB308740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308740);
  }

  return result;
}

unint64_t sub_1A8880228()
{
  result = qword_1EB308748;
  if (!qword_1EB308748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308748);
  }

  return result;
}

unint64_t sub_1A8880280()
{
  result = qword_1EB308750;
  if (!qword_1EB308750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308750);
  }

  return result;
}

unint64_t sub_1A88802D8()
{
  result = qword_1EB308758;
  if (!qword_1EB308758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308758);
  }

  return result;
}

unint64_t sub_1A8880330()
{
  result = qword_1EB308760;
  if (!qword_1EB308760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308760);
  }

  return result;
}

unint64_t sub_1A8880388()
{
  result = qword_1EB308768;
  if (!qword_1EB308768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308768);
  }

  return result;
}

unint64_t sub_1A88803E0()
{
  result = qword_1EB308770;
  if (!qword_1EB308770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308770);
  }

  return result;
}

unint64_t sub_1A8880438()
{
  result = qword_1EB308778;
  if (!qword_1EB308778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308778);
  }

  return result;
}

unint64_t sub_1A8880490()
{
  result = qword_1EB308780;
  if (!qword_1EB308780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308780);
  }

  return result;
}

unint64_t sub_1A88804E8()
{
  result = qword_1EB308788;
  if (!qword_1EB308788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308788);
  }

  return result;
}

unint64_t sub_1A8880540()
{
  result = qword_1EB308790;
  if (!qword_1EB308790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308790);
  }

  return result;
}

unint64_t sub_1A8880598()
{
  result = qword_1EB308798;
  if (!qword_1EB308798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB308798);
  }

  return result;
}

unint64_t sub_1A88805F0()
{
  result = qword_1EB3087A0;
  if (!qword_1EB3087A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3087A0);
  }

  return result;
}

unint64_t sub_1A8880648()
{
  result = qword_1EB3087A8;
  if (!qword_1EB3087A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3087A8);
  }

  return result;
}

uint64_t sub_1A888069C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001A891FD70 == a2 || (sub_1A88C9398() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065 || (sub_1A88C9398() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1A88C9398();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A88807F8(uint64_t a1)
{
  v2 = sub_1A8880998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8880834(uint64_t a1)
{
  v2 = sub_1A8880998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A8880870(void *a1)
{
  v2 = sub_1A870CCE0(&qword_1EB3087B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1A870C278(a1, a1[3]);
  sub_1A8880998();
  sub_1A88C95C8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A8880998()
{
  result = qword_1EB3087B8;
  if (!qword_1EB3087B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3087B8);
  }

  return result;
}

unint64_t sub_1A8880A00()
{
  result = qword_1EB3087C0;
  if (!qword_1EB3087C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3087C0);
  }

  return result;
}

unint64_t sub_1A8880A58()
{
  result = qword_1EB3087C8;
  if (!qword_1EB3087C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3087C8);
  }

  return result;
}

IMOffGridStatusHelper __swiftcall IMOffGridStatusHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMOffGridStatusHelper()
{
  result = qword_1EB3087D0;
  if (!qword_1EB3087D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3087D0);
  }

  return result;
}

uint64_t sub_1A8880C74(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1A88C8D38();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1A85F2008(v3, 0);
  sub_1A8885C48(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_1A8880D08(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1A87365FC(*(a1 + 16), 0);
  v4 = sub_1A8739EC4(&v6, v3 + 4, v2, a1);
  sub_1A85EF290();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1A8880D98(uint64_t a1)
{
  v26 = MEMORY[0x1E69E7CC8];
  v28 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v8 << 6)));
    v13 = *v11;
    v12 = v11[1];
    swift_getKeyPath();

    swift_getAtKeyPath();

    if (v27)
    {
      v14 = v26;
      v15 = *(v26 + 16);
      if (*(v26 + 24) <= v15)
      {
        sub_1A887ADBC(v15 + 1, 1);
        v14 = v28;
      }

      v26 = v14;
      sub_1A88C9528();
      sub_1A88C8268();
      result = sub_1A88C9578();
      v16 = v26 + 64;
      v17 = -1 << *(v26 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v26 + 64 + 8 * (v18 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v17) >> 6;
        while (++v19 != v22 || (v21 & 1) == 0)
        {
          v23 = v19 == v22;
          if (v19 == v22)
          {
            v19 = 0;
          }

          v21 |= v23;
          v24 = *(v16 + 8 * v19);
          if (v24 != -1)
          {
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v26 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v25 = (*(v26 + 48) + 16 * v20);
      *v25 = v13;
      v25[1] = v12;
      *(*(v26 + 56) + 8 * v20) = v27;
      ++*(v26 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v26;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1A8881014()
{
  v0 = sub_1A88C7E58();
  sub_1A85EFC04(v0, qword_1EB300800);
  sub_1A85EF0E4(v0, qword_1EB300800);
  return sub_1A88C7E48();
}

uint64_t sub_1A8881098(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v51 = v2[2];
  v5 = v51 & 0xFFFFFFFFFFFFFF8;
  v49 = v51;
  if (!(v51 >> 62))
  {
    v6 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return 1;
  }

LABEL_36:
  v6 = sub_1A88C8D38();
  if (!v6)
  {
    return 1;
  }

LABEL_3:
  v7 = 0;
  v46 = v3;
  v47 = v6;
  v48 = v5;
  while (1)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1AC56F710](v7, v49);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_35;
      }

      v8 = *(v49 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    sub_1A85E9718(0, &qword_1EB300790);
    v11 = sub_1A88C8188();
    v12 = sub_1A88C88C8();
    v13 = [v9 evaluateWithLatestResults:v11 requestedServices:v12];

    if (v13 != 1)
    {
      break;
    }

    if (qword_1EB3007F8 != -1)
    {
      swift_once();
    }

    v14 = sub_1A88C7E58();
    sub_1A85EF0E4(v14, qword_1EB300800);
    v15 = *v3;
    v16 = v3[1];
    sub_1A888591C(&v51, &v50);

    v17 = sub_1A88C7E38();
    v18 = sub_1A88C89D8();

    sub_1A85EF638(&v51, &qword_1EB308820);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = a2;
      v21 = v9;
      v22 = swift_slowAlloc();
      v50 = v22;
      *v19 = 136446210;
      *(v19 + 4) = sub_1A85F0394(v15, v16, &v50);
      _os_log_impl(&dword_1A85E5000, v17, v18, "Reachability request ID %{public}s may begin", v19, 0xCu);
      sub_1A85F1084(v22);
      MEMORY[0x1AC571F20](v22, -1, -1);
      MEMORY[0x1AC571F20](v19, -1, -1);

      a2 = v20;
      v3 = v46;
    }

    else
    {
    }

    v5 = v48;
    ++v7;
    if (v10 == v47)
    {
      return 1;
    }
  }

  if (v13)
  {
    if (v13 == 2)
    {
      if (qword_1EB3007F8 != -1)
      {
        swift_once();
      }

      v23 = sub_1A88C7E58();
      sub_1A85EF0E4(v23, qword_1EB300800);
      v24 = *v3;
      v25 = v3[1];

      sub_1A888591C(&v51, &v50);

      v26 = sub_1A88C7E38();
      v27 = sub_1A88C89D8();

      sub_1A85EF638(&v51, &qword_1EB308820);

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v50 = v29;
        *v28 = 136446210;
        *(v28 + 4) = sub_1A85F0394(v24, v25, &v50);
        _os_log_impl(&dword_1A85E5000, v26, v27, "Reachability request ID %{public}s should be skipped", v28, 0xCu);
        sub_1A85F1084(v29);
        MEMORY[0x1AC571F20](v29, -1, -1);
        MEMORY[0x1AC571F20](v28, -1, -1);
      }
    }

    else
    {
      v38 = v9;
      if (qword_1EB3007F8 != -1)
      {
        swift_once();
      }

      v39 = sub_1A88C7E58();
      sub_1A85EF0E4(v39, qword_1EB300800);
      v40 = *v3;
      v41 = v3[1];
      sub_1A888591C(&v51, &v50);

      v42 = sub_1A88C7E38();
      v43 = sub_1A88C89C8();

      sub_1A85EF638(&v51, &qword_1EB308820);

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v50 = v45;
        *v44 = 134218242;
        *(v44 + 4) = v13;
        *(v44 + 12) = 2082;
        *(v44 + 14) = sub_1A85F0394(v40, v41, &v50);
        _os_log_impl(&dword_1A85E5000, v42, v43, "Unknown precondition result %lu for request ID %{public}s", v44, 0x16u);
        sub_1A85F1084(v45);
        MEMORY[0x1AC571F20](v45, -1, -1);
        MEMORY[0x1AC571F20](v44, -1, -1);
      }
    }

    return 2;
  }

  else
  {
    if (qword_1EB3007F8 != -1)
    {
      swift_once();
    }

    v30 = sub_1A88C7E58();
    sub_1A85EF0E4(v30, qword_1EB300800);
    v31 = *v3;
    v32 = v3[1];
    sub_1A888591C(&v51, &v50);

    v33 = sub_1A88C7E38();
    v34 = sub_1A88C89B8();

    sub_1A85EF638(&v51, &qword_1EB308820);

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v50 = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1A85F0394(v31, v32, &v50);
      _os_log_impl(&dword_1A85E5000, v33, v34, "Reachability request ID %{public}s should continue to wait", v35, 0xCu);
      sub_1A85F1084(v36);
      MEMORY[0x1AC571F20](v36, -1, -1);
      MEMORY[0x1AC571F20](v35, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_1A8881778(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A88C7EA8();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v35 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v28 - v8;
  v9 = sub_1A88C7F28();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A88C7EC8();
  v11 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A88C7EF8();
  v14 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v2;
  aBlock[4] = sub_1A88871F4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A85EB8C0;
  aBlock[3] = &unk_1F1BB7778;
  v18 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  j___s17IMSharedUtilities15ProtectiveQueueC5label3qos10attributes20autoreleaseFrequency6target12initialStateACyxGSS_8Dispatch0M3QoSVSo17OS_dispatch_queueCAKE10AttributesVAoKE011AutoreleaseI0OAOSgxtcfcfA0__0();
  sub_1A88A76AC();
  sub_1A88C8AE8();
  _Block_release(v18);
  swift_unknownObjectRelease();
  (*(v11 + 8))(v13, v30);
  (*(v14 + 8))(v16, v29);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1A88C8B08();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v21 = v31;
  v20 = v32;
  v22 = v33;
  (*(v32 + 16))(v31, v2 + OBJC_IVAR____TtCE17IMSharedUtilitiesCSo23IMServiceForSendingTaskP33_3EED2FA8A158671F213145B6668888AC8Deadline_time, v33);
  v23 = v34;
  sub_1A88A8378(v34);
  v24 = v35;
  sub_1A88A7768(v35);
  swift_unknownObjectRetain();
  MEMORY[0x1AC56F410](v21, v23, v24, ObjectType);
  swift_unknownObjectRelease();
  v25 = v37;
  v26 = *(v36 + 8);
  v26(v24, v37);
  v26(v23, v25);
  return (*(v20 + 8))(v21, v22);
}