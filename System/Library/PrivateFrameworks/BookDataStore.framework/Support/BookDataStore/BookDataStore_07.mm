uint64_t sub_100100DF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100100E14()
{
  v1 = *(sub_1001C5148() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  sub_1000F862C(v0 + v2, v6, v7, v8);
}

void sub_100100EB0()
{
  v1 = *(sub_1001C5148() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v5;
  v9 = v5[1];

  sub_1000F7FF0(v0 + v2, v8, v9, v6, v7);
}

uint64_t sub_100100F58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009AAEC;

  return sub_1000F9BDC(v2, v3, v4);
}

uint64_t sub_10010100C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1000F96D8(v2, v3);
}

uint64_t sub_1001010B8(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 40);

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100101100()
{
  v1 = *(sub_100084528(&qword_100271018, &unk_1001F36F0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000FB0C8(v2, v3);
}

uint64_t sub_10010119C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100270B80, &unk_1001F3528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001012C4(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_1002711C0, &unk_1001F37A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1001023D4();
  sub_1001C6E78();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1001C6C68();
  if (!v2)
  {
    v13 = *(type metadata accessor for BDSSyncEngineStateMetadata() + 20);
    v15[14] = 1;
    sub_1001C55A8();
    sub_100102558(&qword_1002711C8, &type metadata accessor for CKSyncEngine.State.Serialization);
    sub_1001C6C58();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10010147C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_100084528(&qword_100271108, &unk_1001F3720);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_100084528(&qword_1002711A8, &qword_1001F37A0);
  v25 = *(v8 - 8);
  v26 = v8;
  v9 = *(v25 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for BDSSyncEngineStateMetadata();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v14 + 28);
  v18 = sub_1001C55A8();
  v19 = *(*(v18 - 8) + 56);
  v27 = v17;
  v19(v16 + v17, 1, 1, v18);
  v20 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1001023D4();
  sub_1001C6E58();
  if (v2)
  {
    sub_10008E7BC(a1);
    return sub_10008875C(v16 + v27, &qword_100271108, &unk_1001F3720);
  }

  else
  {
    v21 = v25;
    v29 = 0;
    *v16 = sub_1001C6BE8();
    v16[1] = v22;
    v28 = 1;
    sub_100102558(&qword_1002711B8, &type metadata accessor for CKSyncEngine.State.Serialization);
    sub_1001C6BD8();
    (*(v21 + 8))(v11, v26);
    sub_100102428(v7, v16 + v27);
    sub_100102498(v16, v24);
    sub_10008E7BC(a1);
    return sub_1001024FC(v16);
  }
}

uint64_t sub_1001017AC()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1001017DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_1001018B4(uint64_t a1)
{
  v2 = sub_1001023D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001018F0(uint64_t a1)
{
  v2 = sub_1001023D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010195C()
{
  v0 = sub_1001C5148();
  sub_100088824(v0, qword_100271020);
  sub_100083274(v0, qword_100271020);
  return sub_1001C5138();
}

uint64_t sub_1001019DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001C4B28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = [objc_opt_self() books];
  v12 = [v11 containerURL];

  sub_1001C4AD8();
  sub_1001C4A98();
  (*(v3 + 8))(v7, v2);
  v23 = 1;
  sub_1001C4AF8();
  v13 = sub_1001C5FE8();

  LOBYTE(v7) = [v10 fileExistsAtPath:v13 isDirectory:&v23];

  if ((v7 & 1) == 0)
  {
    sub_1001C4A88(v14);
    v16 = v15;
    v22 = 0;
    v17 = [v10 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:&v22];

    if (!v17)
    {
      v19 = v22;
      sub_1001C4A28();

      swift_willThrow();

      goto LABEL_6;
    }

    v18 = v22;
  }

LABEL_6:
  (*(v3 + 32))(a1, v9, v2);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_100101C94()
{
  v0 = sub_100084528(&unk_10026EF10, &unk_1001F1FA0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v41 - v2;
  v4 = sub_1001C4B28();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - v11;
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  sub_1001019DC(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10008875C(v3, &unk_10026EF10, &unk_1001F1FA0);
    if (qword_10026EBE0 != -1)
    {
      swift_once();
    }

    v15 = sub_1001C5148();
    sub_100083274(v15, qword_100271020);
    v16 = sub_1001C5128();
    v17 = sub_1001C6598();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not get metadata. No BaseURL", v18, 2u);
    }

    return 0;
  }

  (*(v5 + 32))(v14, v3, v4);
  v19 = [objc_opt_self() defaultManager];
  sub_1001C4AA8();
  sub_1001C4AF8();
  v20 = sub_1001C5FE8();

  v21 = [v19 fileExistsAtPath:v20];

  if (!v21)
  {

    v33 = *(v5 + 8);
    v33(v12, v4);
    v33(v14, v4);
    return 0;
  }

  if (qword_10026EBE0 != -1)
  {
    swift_once();
  }

  v22 = sub_1001C5148();
  sub_100083274(v22, qword_100271020);
  (*(v5 + 16))(v9, v12, v4);
  v23 = sub_1001C5128();
  v24 = sub_1001C65B8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v41 = v25;
    v42 = swift_slowAlloc();
    v44 = v42;
    *v25 = 136315138;
    sub_100102558(qword_100272010, &type metadata accessor for URL);
    v26 = sub_1001C6CC8();
    v43 = v19;
    v28 = v27;
    v29 = *(v5 + 8);
    v29(v9, v4);
    v30 = sub_1001874E8(v26, v28, &v44);
    v19 = v43;

    v31 = v41;
    *(v41 + 1) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Removing sync engine metadata at: %s", v31, 0xCu);
    sub_10008E7BC(v42);
  }

  else
  {

    v29 = *(v5 + 8);
    v29(v9, v4);
  }

  sub_1001C4A88(v32);
  v35 = v34;
  v44 = 0;
  v36 = [v19 removeItemAtURL:v34 error:&v44];

  if (v36)
  {
    v37 = v44;

    v29(v12, v4);
    v29(v14, v4);
    return 0;
  }

  v39 = v44;
  v40 = sub_1001C4A28();

  swift_willThrow();
  v29(v12, v4);
  v29(v14, v4);
  return v40;
}

uint64_t type metadata accessor for BDSSyncEngineStateMetadata()
{
  result = qword_100271168;
  if (!qword_100271168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100102300()
{
  sub_10010237C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10010237C()
{
  if (!qword_100271178)
  {
    sub_1001C55A8();
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, &qword_100271178);
    }
  }
}

unint64_t sub_1001023D4()
{
  result = qword_1002711B0;
  if (!qword_1002711B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002711B0);
  }

  return result;
}

uint64_t sub_100102428(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100271108, &unk_1001F3720);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100102498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BDSSyncEngineStateMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001024FC(uint64_t a1)
{
  v2 = type metadata accessor for BDSSyncEngineStateMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100102558(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001025B4()
{
  result = qword_1002711D0;
  if (!qword_1002711D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002711D0);
  }

  return result;
}

unint64_t sub_10010260C()
{
  result = qword_1002711D8;
  if (!qword_1002711D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002711D8);
  }

  return result;
}

unint64_t sub_100102664()
{
  result = qword_1002711E0;
  if (!qword_1002711E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002711E0);
  }

  return result;
}

BOOL sub_1001026B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v13 = *v3;
    sub_1000D9490();
    sub_1001C6248();
    sub_1001C6248();
    if (v11 == v9 && v12 == v10)
    {

      return v4 != 0;
    }

    v7 = sub_1001C6D08();

    ++v3;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

BOOL sub_1001027A8(char **a1, char *a2, uint64_t a3)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = sub_1001AAC10(a2);
  }

  v6 = *(a2 + 2);
  v7 = a2 + 32;
  v8 = 0;
  if (!v6)
  {
    goto LABEL_14;
  }

  while (1)
  {
    result = sub_1001026B8(*&v7[8 * v8], a3);
    if (result)
    {
      break;
    }

    ++v8;
LABEL_6:
    if (v8 >= v6)
    {
      goto LABEL_12;
    }
  }

  v10 = v6 - 1;
  v11 = &v7[8 * v6];
  while (v8 < v10)
  {
    v12 = *(v11 - 1);
    v11 -= 8;
    result = sub_1001026B8(v12, a3);
    --v10;
    if (!result)
    {
      v13 = *&v7[8 * v8];
      *&v7[8 * v8] = *v11;
      *v11 = v13;
      ++v8;
      v6 = v10 + 1;
      goto LABEL_6;
    }
  }

LABEL_12:
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a2 + 2);
    if (v6 >= v8)
    {
LABEL_14:
      *a1 = a2;
      a1[1] = v7;
      a1[2] = v8;
      a1[3] = ((2 * v6) | 1);

      return a2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001028D0(uint64_t *a1, uint64_t a2)
{

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001AAC4C(a2);
    a2 = result;
  }

  v5 = *(a2 + 16);
  v6 = a2 + 32;
  if (!v5)
  {
    goto LABEL_20;
  }

  v7 = 0;
LABEL_5:
  v8 = v6 + 24 * v7;
  v9 = v7;
  while (*(v8 + 16) != 1)
  {
    ++v9;
    v8 += 24;
    if (v9 >= v5)
    {
      if (v5 <= v7 + 1)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v5;
      }

      goto LABEL_17;
    }
  }

  v10 = (a2 + 48 + 24 * v5);
  while (v9 < --v5)
  {
    v11 = *(v10 - 24);
    v10 -= 3;
    if ((v11 & 1) == 0)
    {
      v12 = *v8;
      v13 = *(v8 + 8);
      v14 = *(v10 - 1);
      *(v8 + 16) = *v10;
      *v8 = v14;
      *(v10 - 2) = v12;
      *(v10 - 1) = v13;
      *v10 = 1;
      v7 = v9 + 1;
      if (v9 + 1 < v5)
      {
        goto LABEL_5;
      }

      ++v9;
      break;
    }
  }

LABEL_17:
  if ((v9 & 0x8000000000000000) == 0)
  {
    v5 = *(a2 + 16);
    if (v5 >= v9)
    {
LABEL_21:
      *a1 = a2;
      a1[1] = v6;
      a1[2] = v9;
      a1[3] = (2 * v5) | 1;
    }

    __break(1u);
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_100102A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000B5AA0();
  result = sub_1001C67E8();
  *a4 = result;
  return result;
}

id sub_100102B28(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void *sub_100102B88(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_100084528(&qword_10026F2A8, &qword_1001F0CC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  v28 = _s21PriceDropNotificationVMa();
  v10 = *(*(v28 - 8) + 64);
  v11 = __chkstk_darwin(v28);
  v27 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v26 = &v23 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return &_swiftEmptyArrayStorage;
  }

  v16 = (a3 + 32);
  v24 = v13;
  v17 = (v13 + 48);
  v18 = &_swiftEmptyArrayStorage;
  v25 = a1;
  while (1)
  {
    v29 = *v16;

    a1(&v29);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v28) == 1)
    {
      sub_10008875C(v9, &qword_10026F2A8, &qword_1001F0CC0);
    }

    else
    {
      v19 = v26;
      sub_100110AC0(v9, v26, _s21PriceDropNotificationVMa);
      sub_100110AC0(v19, v27, _s21PriceDropNotificationVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1000AD8C4(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1000AD8C4(v20 > 1, v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_100110AC0(v27, v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v21, _s21PriceDropNotificationVMa);
      a1 = v25;
    }

    ++v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_100102E64(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v6 = sub_100084528(&qword_100271320, &qword_1001F3A68);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - v8;
  v10 = sub_100084528(&qword_10026F7A8, &unk_1001F2B50);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v30 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v28 = &v25 - v15;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return &_swiftEmptyArrayStorage;
  }

  v17 = *(_s11TrackedItemVMa() - 8);
  v25 = v11;
  v18 = (v11 + 48);
  v19 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v20 = &_swiftEmptyArrayStorage;
  v29 = *(v17 + 72);
  v26 = v10;
  v27 = a1;
  while (1)
  {
    a1(v19);
    if (v3)
    {
      break;
    }

    if ((*v18)(v9, 1, v10) == 1)
    {
      sub_10008875C(v9, &qword_100271320, &qword_1001F3A68);
    }

    else
    {
      v21 = v28;
      sub_10009AE58(v9, v28, &qword_10026F7A8, &unk_1001F2B50);
      sub_10009AE58(v21, v30, &qword_10026F7A8, &unk_1001F2B50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000AE1F0(0, v20[2] + 1, 1, v20);
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = sub_1000AE1F0(v22 > 1, v23 + 1, 1, v20);
      }

      v20[2] = v23 + 1;
      sub_10009AE58(v30, v20 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, &qword_10026F7A8, &unk_1001F2B50);
      v10 = v26;
      a1 = v27;
    }

    v19 += v29;
    if (!--v16)
    {
      return v20;
    }
  }

  return v20;
}

uint64_t sub_100103198(uint64_t a1)
{
  v3 = _s5StateVMa();
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  sub_100108B70(a1);
  v10 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v1 + v10, v9, _s5StateVMa);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1001C5148();
  sub_100083274(v11, qword_100281898);
  sub_100110C34(v9, v7, _s5StateVMa);
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = *(*v7 + 16);
    sub_10010E494(v7, _s5StateVMa);
    *(v14 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v12, v13, "[PriceTracker] Updated, tracking %ld item(s)", v14, 0xCu);
  }

  else
  {
    sub_10010E494(v7, _s5StateVMa);
  }

  return sub_10010E494(v9, _s5StateVMa);
}

id sub_1001033B8()
{
  v1 = (v0 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService);
  v2 = *(v0 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService);
  v3 = *(v0 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService + 8);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [objc_opt_self() sharedProvider];
    v6 = [objc_opt_self() defaultBag];
    v7 = *v1;
    v8 = v1[1];
    *v1 = v5;
    v1[1] = v6;
    v4 = v5;
    v6;
    sub_100110154(v7, v8);
  }

  sub_100110194(v2, v3);
  return v4;
}

char *sub_100103714(uint64_t a1)
{
  v2 = v1;
  v163 = a1;
  v3 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v160 = &v123 - v5;
  v143 = sub_1001C4CA8();
  v142 = *(v143 - 8);
  isa = v142[8].isa;
  __chkstk_darwin(v143);
  v141 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_100271348, &qword_1001F3A90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v137 = &v123 - v10;
  v136 = sub_100084528(&qword_100271370, &qword_1001F3AD8);
  v135 = *(v136 - 1);
  v11 = *(v135 + 64);
  __chkstk_darwin(v136);
  v134 = (&v123 - v12);
  v13 = sub_100084528(&qword_100271360, &qword_1001F3AA8);
  v161 = *(v13 - 8);
  v162 = v13;
  v14 = *(v161 + 64);
  __chkstk_darwin(v13);
  v176 = &v123 - v15;
  v16 = sub_100084528(&qword_100271378, &qword_1001F3AE0);
  v174 = *(v16 - 8);
  v175 = v16;
  v17 = *(v174 + 64);
  v18 = __chkstk_darwin(v16);
  v155 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v19;
  __chkstk_darwin(v18);
  v173 = &v123 - v20;
  v130 = sub_100084528(&qword_100271380, &qword_1001F3AE8);
  v129 = *(v130 - 8);
  v21 = *(v129 + 64);
  __chkstk_darwin(v130);
  v128 = (&v123 - v22);
  v159 = sub_100084528(&qword_100271358, &qword_1001F3AA0);
  v158 = *(v159 - 8);
  v23 = *(v158 + 64);
  __chkstk_darwin(v159);
  v172 = &v123 - v24;
  v25 = sub_100084528(&qword_100271388, &qword_1001F3AF0);
  v170 = *(v25 - 8);
  v171 = v25;
  v26 = *(v170 + 64);
  v27 = __chkstk_darwin(v25);
  v150 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v28;
  __chkstk_darwin(v27);
  v169 = &v123 - v29;
  v127 = sub_100084528(&qword_100271390, &qword_1001F3AF8);
  v126 = *(v127 - 8);
  v30 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = (&v123 - v31);
  v157 = sub_100084528(&qword_100271350, &qword_1001F3A98);
  v156 = *(v157 - 8);
  v32 = *(v156 + 64);
  __chkstk_darwin(v157);
  v168 = &v123 - v33;
  v34 = sub_100084528(&qword_100271398, &qword_1001F3B00);
  v166 = *(v34 - 8);
  v167 = v34;
  v35 = *(v166 + 64);
  v36 = __chkstk_darwin(v34);
  v149 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v37;
  __chkstk_darwin(v36);
  v165 = &v123 - v38;
  v39 = sub_100084528(&qword_1002713A0, &qword_1001F3B08);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = (&v123 - v42);
  v154 = sub_100084528(&qword_100271270, &qword_1001F3920);
  v153 = *(v154 - 8);
  v44 = *(v153 + 64);
  __chkstk_darwin(v154);
  v46 = &v123 - v45;
  v164 = sub_100084528(&qword_1002713A8, &qword_1001F3B10);
  v152 = *(v164 - 8);
  v47 = *(v152 + 64);
  v48 = __chkstk_darwin(v164);
  v148 = &v123 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v49;
  __chkstk_darwin(v48);
  v51 = &v123 - v50;
  v52 = sub_100084528(&qword_100271368, &qword_1001F3AD0);
  v131 = *(v52 - 8);
  v132 = *(v131 + 64);
  __chkstk_darwin(v52 - 8);
  v54 = &v123 - v53;
  v55 = _s5StateVMa();
  v56 = *(*(v55 - 8) + 64);
  v57 = __chkstk_darwin(v55 - 8);
  v139 = &v123 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v60 = (&v123 - v59);
  v146 = &v123 - v59;
  swift_defaultActor_initialize();
  v124 = v2;
  *&v2[OBJC_IVAR___BDSPriceTracker_streamTask] = 0;
  v61 = &v2[OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService];
  *v61 = 0;
  *(v61 + 1) = 0;
  v62 = v163;
  sub_10009ADF0(v163, v54, &qword_100271368, &qword_1001F3AD0);
  v147 = v54;
  sub_100104B90(v54, v60);
  _s15PersistentStateO2V1VMa(0);
  v63 = 1;
  *v43 = 1;
  v64 = enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:);
  (*(v40 + 104))(v43, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v39);
  v151 = v51;
  v145 = v46;
  sub_1001C6358();
  (*(v40 + 8))(v43, v39);
  v65 = v153;
  v66 = v154;
  sub_100084528(&qword_100271280, &qword_1001F3928);
  v67 = v125;
  *v125 = 1;
  v68 = v126;
  v69 = v127;
  (*(v126 + 104))(v67, v64, v127);
  v70 = v124;
  sub_1001C6358();
  (*(v68 + 8))(v67, v69);
  sub_100084528(&qword_10026F268, &qword_1001F0C80);
  v71 = v128;
  *v128 = 1;
  v72 = v129;
  v73 = v130;
  (*(v129 + 104))(v71, v64, v130);
  v74 = v62;
  sub_1001C6358();
  v75 = v71;
  v76 = v66;
  v77 = v65;
  (*(v72 + 8))(v75, v73);
  v78 = v134;
  *v134 = 1;
  v79 = v135;
  v80 = v64;
  v81 = v137;
  v82 = v136;
  (*(v135 + 104))(v78, v80, v136);
  sub_1001C6358();
  v83 = v146;
  (*(v79 + 8))(v78, v82);
  sub_100110C34(v83, v70 + OBJC_IVAR___BDSPriceTracker_state, _s5StateVMa);
  v84 = _s11PersistenceVMa();
  if ((*(*(v84 - 8) + 48))(v74, 1, v84) != 1)
  {
    (*(v77 + 16))(v81, v145, v76);
    v63 = 0;
  }

  (*(v77 + 56))(v81, v63, 1, v76);
  sub_10009AE58(v81, v70 + OBJC_IVAR___BDSPriceTracker_persistentStateContinuation, &qword_100271348, &qword_1001F3A90);
  (*(v156 + 16))(v70 + OBJC_IVAR___BDSPriceTracker_schedulerConfigContinuation, v168, v157);
  (*(v158 + 16))(v70 + OBJC_IVAR___BDSPriceTracker_activeNotificationsContinuation, v172, v159);
  (*(v161 + 16))(v70 + OBJC_IVAR___BDSPriceTracker_cardListContinuation, v176, v162);
  v85 = type metadata accessor for PriceTracker(0);
  v177.receiver = v70;
  v177.super_class = v85;
  v86 = objc_msgSendSuper2(&v177, "init");
  v137 = swift_allocObject();
  swift_weakInit();
  v136 = v86;

  v87 = v141;
  sub_1001C4C98();
  v135 = sub_10019EDB4();
  v134 = v88;
  LODWORD(v130) = v89;
  (v142[1].isa)(v87, v143);
  v90 = sub_1001A6D74(*(v83 + 8));
  __chkstk_darwin(v90);
  *(&v123 - 2) = v83;
  v143 = sub_100102B88(sub_1001112FC, (&v123 - 4), v90);

  v142 = sub_10019EE64();
  v91 = sub_1001C6348();
  (*(*(v91 - 8) + 56))(v160, 1, 1, v91);
  sub_10009ADF0(v74, v147, &qword_100271368, &qword_1001F3AD0);
  v92 = v152;
  (*(v152 + 16))(v148, v151, v164);
  v93 = v166;
  (*(v166 + 16))(v149, v165, v167);
  v94 = v170;
  (*(v170 + 16))(v150, v169, v171);
  v95 = v174;
  (*(v174 + 16))(v155, v173, v175);
  v96 = (*(v131 + 80) + 32) & ~*(v131 + 80);
  v97 = (v132 + *(v92 + 80) + v96) & ~*(v92 + 80);
  v141 = ((v97 + v133 + 7) & 0xFFFFFFFFFFFFFFF8);
  v98 = (v97 + v133 + 31) & 0xFFFFFFFFFFFFFFF8;
  v99 = (*(v93 + 80) + v98 + 16) & ~*(v93 + 80);
  v100 = (v138 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = (*(v94 + 80) + v100 + 8) & ~*(v94 + 80);
  v102 = (v140 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = (*(v95 + 80) + v102 + 8) & ~*(v95 + 80);
  v104 = swift_allocObject();
  *(v104 + 16) = 0;
  *(v104 + 24) = 0;
  sub_10009AE58(v147, v104 + v96, &qword_100271368, &qword_1001F3AD0);
  v105 = v92;
  v106 = v136;
  (*(v105 + 32))(v104 + v97, v148, v164);
  v107 = &v141[v104];
  v108 = v134;
  *v107 = v135;
  *(v107 + 1) = v108;
  v107[16] = v130 & 1;
  v109 = (v104 + v98);
  v110 = v137;
  *v109 = &unk_1001F3B20;
  v109[1] = v110;
  (*(v166 + 32))(v104 + v99, v149, v167);
  *(v104 + v100) = v143;
  (*(v170 + 32))(v104 + v101, v150, v171);
  *(v104 + v102) = v142;
  (*(v174 + 32))(v104 + v103, v155, v175);

  v111 = v160;
  v112 = sub_1001082E0(0, 0, v160, &unk_1001F3B30, v104);

  sub_10008875C(v111, &unk_100270A00, &qword_1001F3120);

  v113 = *&v106[OBJC_IVAR___BDSPriceTracker_streamTask];
  *&v106[OBJC_IVAR___BDSPriceTracker_streamTask] = v112;

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v114 = sub_1001C5148();
  sub_100083274(v114, qword_100281898);
  v115 = v146;
  v116 = v139;
  sub_100110C34(v146, v139, _s5StateVMa);
  v117 = sub_1001C5128();
  v118 = sub_1001C65B8();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 134217984;
    v120 = *(*v116 + 16);
    sub_10010E494(v116, _s5StateVMa);
    *(v119 + 4) = v120;
    _os_log_impl(&_mh_execute_header, v117, v118, "[PriceTracker] Started, tracking %ld item(s)", v119, 0xCu);
  }

  else
  {
    sub_10010E494(v116, _s5StateVMa);
  }

  v121 = v163;

  (*(v161 + 8))(v176, v162);
  (*(v174 + 8))(v173, v175);
  (*(v158 + 8))(v172, v159);
  (*(v170 + 8))(v169, v171);
  (*(v156 + 8))(v168, v157);
  (*(v166 + 8))(v165, v167);
  (*(v153 + 8))(v145, v154);
  (*(v152 + 8))(v151, v164);
  sub_10010E494(v115, _s5StateVMa);
  sub_10008875C(v121, &qword_100271368, &qword_1001F3AD0);
  return v106;
}

uint64_t sub_100104B90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a2;
  v3 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v53 = &updated - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &updated - v7;
  updated = _s14UpdateScheduleVMa();
  v8 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated);
  v52 = &updated - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&qword_100271368, &qword_1001F3AD0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &updated - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &updated - v15;
  v17 = sub_100084528(&qword_1002713E0, &qword_1001F3C10);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &updated - v19;
  v21 = _s15PersistentStateOMa(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &updated - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &updated - v27;
  v56 = a1;
  sub_10009ADF0(a1, v16, &qword_100271368, &qword_1001F3AD0);
  v29 = _s11PersistenceVMa();
  v30 = *(*(v29 - 8) + 48);
  if (v30(v16, 1, v29) == 1)
  {
    sub_10008875C(v16, &qword_100271368, &qword_1001F3AD0);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  else
  {
    sub_10015DA94(v20);
    sub_10010E494(v16, _s11PersistenceVMa);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      sub_100110AC0(v20, v28, _s15PersistentStateOMa);
      sub_100110C34(v28, v26, _s15PersistentStateOMa);
      sub_10011DDBC(v26, v54);
      sub_10008875C(v56, &qword_100271368, &qword_1001F3AD0);
      v48 = _s15PersistentStateOMa;
      v49 = v28;
      return sub_10010E494(v49, v48);
    }
  }

  sub_10008875C(v20, &qword_1002713E0, &qword_1001F3C10);
  sub_10009ADF0(v56, v14, &qword_100271368, &qword_1001F3AD0);
  if (v30(v14, 1, v29) == 1)
  {
    sub_10008875C(v14, &qword_100271368, &qword_1001F3AD0);
  }

  else
  {
    sub_10015E17C();
    sub_10010E494(v14, _s11PersistenceVMa);
  }

  if (qword_10026EC80 != -1)
  {
    swift_once();
  }

  v31 = sub_100083274(updated, qword_100281A10);
  v32 = v52;
  sub_100110C34(v31, v52, _s14UpdateScheduleVMa);
  v33 = _s6UpdateVMa();
  v34 = *(*(v33 - 8) + 56);
  v34(v55, 1, 1, v33);
  v35 = v53;
  v34(v53, 1, 1, v33);
  v36 = _s5StateVMa();
  v37 = v36[7];
  v38 = v54;
  v34(v54 + v37, 1, 1, v33);
  v39 = v36[8];
  v34(v38 + v39, 1, 1, v33);
  v40 = (v38 + v36[9]);
  v41 = (v38 + v36[11]);
  v41[4] = 0u;
  v41[5] = 0u;
  v41[2] = 0u;
  v41[3] = 0u;
  *v41 = 0u;
  v41[1] = 0u;
  *v38 = &_swiftEmptyArrayStorage;
  v38[1] = &_swiftEmptyArrayStorage;
  sub_100110C34(v32, v38 + v36[6], _s14UpdateScheduleVMa);
  v42 = v38 + v37;
  v43 = v55;
  sub_100110BC4(v55, v42);
  sub_100110BC4(v35, v38 + v39);
  *v40 = 0;
  v40[1] = 0;
  v44 = (v38 + v36[10]);
  *v44 = 0;
  v44[1] = 0;
  v45 = v41[3];
  v57[2] = v41[2];
  v57[3] = v45;
  v46 = v41[5];
  v57[4] = v41[4];
  v57[5] = v46;
  v47 = v41[1];
  v57[0] = *v41;
  v57[1] = v47;
  sub_10008875C(v57, &qword_1002712D0, &qword_1001F3A20);
  *v41 = 0u;
  v41[1] = 0u;
  v41[2] = 0u;
  v41[3] = 0u;
  v41[4] = 0u;
  v41[5] = 0u;
  *(v38 + v36[12]) = 0;
  sub_1001A30D0(&_swiftEmptyArrayStorage);
  sub_10008875C(v56, &qword_100271368, &qword_1001F3AD0);
  sub_10008875C(v35, &qword_1002712C8, &qword_1001F3A18);
  sub_10008875C(v43, &qword_1002712C8, &qword_1001F3A18);
  v48 = _s14UpdateScheduleVMa;
  v49 = v32;
  return sub_10010E494(v49, v48);
}

uint64_t sub_100105230(uint64_t a1)
{
  v1[11] = a1;
  v2 = sub_1001C4CA8();
  v1[12] = v2;
  v3 = *(v2 - 8);
  v1[13] = v3;
  v4 = *(v3 + 64) + 15;
  v1[14] = swift_task_alloc();
  v5 = *(*(_s5StateVMa() - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v6 = sub_100084528(&qword_100271338, &qword_1001F3A80);
  v1[16] = v6;
  v7 = *(v6 - 8);
  v1[17] = v7;
  v8 = *(v7 + 64) + 15;
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_100105384, 0, 0);
}

uint64_t sub_100105384()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_10010548C;

    return sub_100109B3C(0);
  }

  else
  {
    v5 = v0[18];
    v6 = v0[14];
    v7 = v0[15];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10010548C()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return _swift_task_switch(sub_10010559C, v2, 0);
}

uint64_t sub_10010559C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v18 = *(v0 + 144);
  v19 = *(v0 + 128);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v7 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v1 + v7, v3, _s5StateVMa);
  sub_1001C4C98();
  v8 = sub_10019EDB4();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v4, v6);
  sub_10010E494(v3, _s5StateVMa);
  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  *(v0 + 80) = v12 & 1;
  sub_100084528(&qword_100271350, &qword_1001F3A98);
  sub_1001C6368();

  (*(v2 + 8))(v18, v19);
  v13 = *(v0 + 144);
  v14 = *(v0 + 112);
  v15 = *(v0 + 120);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10010573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 2696) = v13;
  *(v8 + 2680) = v12;
  *(v8 + 2664) = v11;
  *(v8 + 2648) = v10;
  *(v8 + 2736) = a8;
  *(v8 + 2640) = a7;
  *(v8 + 2632) = a6;
  *(v8 + 2624) = a5;
  *(v8 + 2616) = a4;
  return _swift_task_switch(sub_100105798, 0, 0);
}

uint64_t sub_100105798()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2736);
  v3 = *(v0 + 2640);
  v4 = *(v0 + 2632);
  v5 = swift_task_alloc();
  *(v0 + 2704) = v5;
  v11 = *(v0 + 2648);
  v12 = *(v0 + 2672);
  v13 = *(v0 + 2688);
  *(v5 + 16) = *(v0 + 2616);
  swift_asyncLet_begin();
  v6 = swift_task_alloc();
  *(v0 + 2712) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2 & 1;
  *(v6 + 40) = v11;
  *(v6 + 56) = v1;
  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  *(v0 + 2720) = v7;
  *(v7 + 16) = v12;
  swift_asyncLet_begin();
  v8 = swift_task_alloc();
  *(v0 + 2728) = v8;
  *(v8 + 16) = v13;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v9, sub_100105938, v0 + 2576);
}

uint64_t sub_1001059A8()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] streamTask ended", v4, 2u);
  }

  return _swift_asyncLet_finish(v0 + 1936);
}

uint64_t sub_100105AE0()
{
  v1 = *(v0 + 2728);

  return _swift_asyncLet_finish(v0 + 1296);
}

uint64_t sub_100105B64()
{
  v1 = *(v0 + 2720);

  return _swift_asyncLet_finish(v0 + 656);
}

uint64_t sub_100105BE8()
{
  v1 = *(v0 + 2712);

  return _swift_asyncLet_finish(v0 + 16);
}

uint64_t sub_100105C6C()
{
  v1 = *(v0 + 2704);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100105CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001112F8;

  return sub_100105D68(a2, a3);
}

uint64_t sub_100105D68(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_100084528(&qword_100271368, &qword_1001F3AD0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = _s11PersistenceVMa();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100105E60, 0, 0);
}

uint64_t sub_100105E60()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_10009ADF0(v0[2], v3, &qword_100271368, &qword_1001F3AD0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10008875C(v0[4], &qword_100271368, &qword_1001F3AD0);
    v4 = v0[7];
    v5 = v0[4];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[7];
    sub_100110AC0(v0[4], v8, _s11PersistenceVMa);
    v9 = swift_task_alloc();
    v0[8] = v9;
    *(v9 + 16) = v8;
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_100106008;
    v11 = v0[3];

    return sub_1001063A0(0xD000000000000018, 0x8000000100201EF0, &unk_1001F3BF0, v9);
  }
}

uint64_t sub_100106008()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100106120, 0, 0);
}

uint64_t sub_100106120()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] persistentStateTask ended", v4, 2u);
  }

  v5 = v0[7];

  sub_10010E494(v5, _s11PersistenceVMa);
  v6 = v0[7];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100106268(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(_s15PersistentStateOMa(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1001062F8, 0, 0);
}

uint64_t sub_1001062F8()
{
  v1 = v0[4];
  sub_100110C34(v0[2], v1, _s15PersistentStateO2V1VMa);
  sub_10015D470();
  sub_10010E494(v1, _s15PersistentStateOMa);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1001063A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = _s15PersistentStateO2V1VMa(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(sub_100084528(&qword_1002713D0, &qword_1001F3C00) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_100084528(&qword_1002713D8, &qword_1001F3C08);
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100106508, 0, 0);
}

uint64_t sub_100106508()
{
  v1 = v0[13];
  v2 = v0[6];
  sub_100084528(&qword_1002713A8, &qword_1001F3B10);
  sub_1001C6388();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1001065D0;
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_1001065D0()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(sub_1001066CC, 0, 0);
}

uint64_t sub_1001066CC()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v2 = v0[9];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    sub_100110AC0(v1, v0[9], _s15PersistentStateO2V1VMa);
    v0[15] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:sub_1001C60A8() + 32];

    v12 = (v5 + *v5);
    v8 = v5[1];
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_1001068C0;
    v10 = v0[9];
    v11 = v0[5];

    return v12(v10);
  }
}

uint64_t sub_1001068C0()
{
  v1 = *(*v0 + 128);
  v3 = *v0;

  return _swift_task_switch(sub_1001069BC, 0, 0);
}

uint64_t sub_1001069BC()
{
  v1 = v0[15];
  v2 = v0[9];
  [v1 endTransaction];

  sub_10010E494(v2, _s15PersistentStateO2V1VMa);
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1001065D0;
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_100106A98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_100106B64;

  return sub_100106C5C(a2, a3, a4 & 1, a5, a6, a7);
}

uint64_t sub_100106B64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100106C5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 88) = a3;
  *(v6 + 16) = a1;
  return _swift_task_switch(sub_100106C88, 0, 0);
}

uint64_t sub_100106C88()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 88);
  *(v0 + 56) = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:"PriceTrackerCreateScheduler"];
  v3 = [objc_opt_self() sharedScheduler];
  v4 = _s9SchedulerCMa(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();

  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_100106DC0;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  return sub_10010E658(v3, v10, v11, v2 & 1, v8, v9);
}

uint64_t sub_100106DC0(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return _swift_task_switch(sub_100106EE0, 0, 0);
}

uint64_t sub_100106EE0()
{
  v1 = v0[9];
  v2 = v0[7];
  [v2 endTransaction];

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100106FBC;
  v4 = v0[9];
  v5 = v0[6];

  return sub_10010EF90(0xD00000000000001BLL, 0x8000000100201EB0, v5, v4);
}

uint64_t sub_100106FBC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1001070D4, 0, 0);
}

uint64_t sub_1001070D4()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] schedulerConfigTask ended", v4, 2u);
  }

  v5 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1001071F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001112F8;

  return sub_10010728C(a2, a3);
}

uint64_t sub_10010728C(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _swift_task_switch(sub_1001072AC, 0, 0);
}

uint64_t sub_1001072AC()
{
  v0[9] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:"PriceTrackerCreateUserNotifier"];
  if (qword_10026EC10 != -1)
  {
    swift_once();
  }

  v1 = qword_100272690;
  v2 = [objc_opt_self() standardUserDefaults];
  v0[10] = v2;
  _s12UserNotifierCMa();
  inited = swift_initStackObject();
  v0[11] = inited;
  inited[2] = v1;
  inited[3] = &off_100249D10;
  inited[4] = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_100107404;
  v7 = v0[7];

  return sub_100088CB4(v7);
}

uint64_t sub_100107404()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_100107500, 0, 0);
}

uint64_t sub_100107500()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  [v2 endTransaction];

  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_1001075E0;
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);

  return sub_10010F594(0xD00000000000001ELL, 0x8000000100201E70, v5, v4);
}

uint64_t sub_1001075E0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_1001076F8, 0, 0);
}

uint64_t sub_1001076F8()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 88);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] activeNotificationsTask ended", v6, 2u);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100107828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1001112F8;

  return sub_1001078C4(a2, a3);
}

uint64_t sub_1001078C4(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_1001C4748();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_1001C47C8();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v9 = sub_1001C47E8();
  v2[21] = v9;
  v10 = *(v9 - 8);
  v2[22] = v10;
  v11 = *(v10 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100107A48, 0, 0);
}

uint64_t sub_100107A48()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v29 = v0[20];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[17];
  v31 = v0[15];
  v32 = v0[16];
  v33 = v0[14];
  v0[24] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:"PriceTrackerCreateCardManager"];
  v7 = [objc_opt_self() books];
  v30 = [v7 userDefaults];
  v0[25] = v30;

  v8 = sub_1001C6018();
  v27 = v9;
  v28 = v8;
  v0[26] = v9;
  v10 = sub_1001C4828();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_1001C4818();
  v0[27] = v13;
  (*(v2 + 104))(v1, enum case for JSONEncoder.DateEncodingStrategy.millisecondsSince1970(_:), v3);
  sub_1001C47F8();
  sub_100084528(&qword_1002712D8, &qword_1001F3A28);
  v14 = *(v4 + 72);
  v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1001F0660;
  sub_1001C4798();
  sub_1001C47B8();
  v0[11] = v16;
  sub_10010E44C(&qword_1002712E0, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100084528(&qword_1002712E8, &qword_1001F3A30);
  sub_1000885F4(&qword_1002712F0, &qword_1002712E8, &qword_1001F3A30);
  sub_1001C68C8();
  v17 = sub_1001C47D8();
  sub_10010C034(v29, v5);
  v18 = *(v4 + 8);
  v18(v5, v6);
  v18(v29, v6);
  v17(v0 + 7, 0);
  v19 = sub_1001C4788();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = sub_1001C4778();
  v0[28] = v22;
  (*(v31 + 104))(v32, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v33);
  sub_1001C4758();
  v0[2] = v30;
  v0[3] = v13;
  v0[4] = v22;
  v0[5] = v28;
  v0[6] = v27;
  v23 = v30;

  v24 = swift_task_alloc();
  v0[29] = v24;
  *v24 = v0;
  v24[1] = sub_100107DE8;
  v25 = v0[12];

  return sub_10012D168(v25);
}

uint64_t sub_100107DE8()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return _swift_task_switch(sub_100107EE4, 0, 0);
}

uint64_t sub_100107EE4()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];

  [v5 endTransaction];

  v6 = v4;

  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = sub_100107FFC;
  v8 = v0[13];

  return sub_10010FB28(0xD000000000000014, 0x8000000100201E30, v8, (v0 + 2));
}

uint64_t sub_100107FFC()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 200);
  v7 = *v0;

  return _swift_task_switch(sub_10010816C, 0, 0);
}

uint64_t sub_10010816C()
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C6598();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] cardListTask ended", v4, 2u);
  }

  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 128);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001082E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10009ADF0(a3, v27 - v11, &unk_100270A00, &qword_1001F3120);
  v13 = sub_1001C6348();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10008875C(v12, &unk_100270A00, &qword_1001F3120);
  }

  else
  {
    sub_1001C6338();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1001C6308();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1001C60A8() + 32;
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

uint64_t sub_1001085A0()
{
  v1 = v0;
  v2 = sub_100084528(&qword_100271360, &qword_1001F3AA8);
  v3 = *(v2 - 8);
  v43 = v2;
  v44 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - v5;
  v42 = sub_100084528(&qword_100271358, &qword_1001F3AA0);
  v7 = *(v42 - 8);
  v8 = v7[8];
  __chkstk_darwin(v42);
  v10 = &v37 - v9;
  v11 = sub_100084528(&qword_100271350, &qword_1001F3A98);
  v12 = *(v11 - 8);
  v13 = v12[8];
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  v16 = sub_100084528(&qword_100271348, &qword_1001F3A90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v37 - v18;
  v41 = OBJC_IVAR___BDSPriceTracker_persistentStateContinuation;
  sub_10009ADF0(v1 + OBJC_IVAR___BDSPriceTracker_persistentStateContinuation, &v37 - v18, &qword_100271348, &qword_1001F3A90);
  v20 = sub_100084528(&qword_100271270, &qword_1001F3920);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10008875C(v19, &qword_100271348, &qword_1001F3A90);
  }

  else
  {
    sub_1001C6378();
    (*(v21 + 8))(v19, v20);
  }

  v22 = v12[2];
  v40 = OBJC_IVAR___BDSPriceTracker_schedulerConfigContinuation;
  v22(v15, v1 + OBJC_IVAR___BDSPriceTracker_schedulerConfigContinuation, v11);
  sub_1001C6378();
  v39 = v12[1];
  v39(v15, v11);
  v23 = v7[2];
  v38 = OBJC_IVAR___BDSPriceTracker_activeNotificationsContinuation;
  v24 = v42;
  v23(v10, v1 + OBJC_IVAR___BDSPriceTracker_activeNotificationsContinuation, v42);
  sub_1001C6378();
  v37 = v7[1];
  v37(v10, v24);
  v25 = OBJC_IVAR___BDSPriceTracker_cardListContinuation;
  v26 = v43;
  v27 = v44;
  (*(v44 + 16))(v6, v1 + OBJC_IVAR___BDSPriceTracker_cardListContinuation, v43);
  sub_1001C6378();
  v28 = *(v27 + 8);
  v44 = v27 + 8;
  v28(v6, v26);
  v29 = OBJC_IVAR___BDSPriceTracker_streamTask;
  if (*(v1 + OBJC_IVAR___BDSPriceTracker_streamTask))
  {
    v30 = *(v1 + OBJC_IVAR___BDSPriceTracker_streamTask);

    sub_1001C63A8();
  }

  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v31 = sub_1001C5148();
  sub_100083274(v31, qword_100281898);
  v32 = sub_1001C5128();
  v33 = sub_1001C65B8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "[PriceTracker] Stopped", v34, 2u);
  }

  sub_10008875C(v1 + v41, &qword_100271348, &qword_1001F3A90);
  v39((v1 + v40), v11);
  v37((v1 + v38), v42);
  v28((v1 + v25), v43);
  v35 = *(v1 + v29);

  sub_10010E494(v1 + OBJC_IVAR___BDSPriceTracker_state, _s5StateVMa);
  sub_100110154(*(v1 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService), *(v1 + OBJC_IVAR___BDSPriceTracker____lazy_storage___pricingService + 8));
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100108B1C()
{
  sub_1001085A0();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100108B70(uint64_t a1)
{
  v147 = a1;
  v2 = sub_100084528(&qword_100271328, &qword_1001F3A70);
  v137 = *(v2 - 8);
  v138 = v2;
  v3 = *(v137 + 64);
  __chkstk_darwin(v2);
  v136 = &v115 - v4;
  v5 = sub_100084528(&qword_100271330, &qword_1001F3A78);
  v134 = *(v5 - 8);
  v135 = v5;
  v6 = *(v134 + 64);
  __chkstk_darwin(v5);
  v133 = &v115 - v7;
  v8 = sub_100084528(&qword_100271338, &qword_1001F3A80);
  v140 = *(v8 - 8);
  v141 = v8;
  v9 = *(v140 + 64);
  __chkstk_darwin(v8);
  v139 = &v115 - v10;
  v11 = sub_1001C4CA8();
  v144 = *(v11 - 8);
  v145 = v11;
  v12 = *(v144 + 64);
  __chkstk_darwin(v11);
  v143 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100084528(&qword_100271340, &qword_1001F3A88);
  v131 = *(v14 - 8);
  v132 = v14;
  v15 = *(v131 + 64);
  __chkstk_darwin(v14);
  v130 = &v115 - v16;
  v17 = _s5StateVMa();
  v18 = *(*(v17 - 1) + 64);
  __chkstk_darwin(v17);
  v20 = (&v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = _s15PersistentStateO2V1VMa(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = __chkstk_darwin(v21);
  v25 = (&v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v142 = (&v115 - v26);
  v27 = sub_100084528(&qword_100271348, &qword_1001F3A90);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v115 - v29;
  v31 = sub_100084528(&qword_100271270, &qword_1001F3920);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v146 = &v115 - v33;
  v35 = v34;
  v37 = v36;
  sub_10009ADF0(v1 + OBJC_IVAR___BDSPriceTracker_persistentStateContinuation, v30, &qword_100271348, &qword_1001F3A90);
  if ((*(v37 + 48))(v30, 1, v35) == 1)
  {
    sub_10008875C(v30, &qword_100271348, &qword_1001F3A90);
    v38 = v143;
    v39 = v1;
  }

  else
  {
    v127 = v37;
    (*(v37 + 32))(v146, v30, v35);
    v40 = OBJC_IVAR___BDSPriceTracker_state;
    swift_beginAccess();
    v126 = _s5StateVMa;
    v129 = v1;
    sub_100110C34(v1 + v40, v20, _s5StateVMa);
    v41 = v20[1];
    v120 = *v20;
    v42 = v21[6];
    v43 = v17[6];
    v125 = _s14UpdateScheduleVMa;
    v44 = v142;
    sub_100110C34(v20 + v43, v142 + v42, _s14UpdateScheduleVMa);
    updated = _s14UpdateScheduleVMa();
    v45 = *(updated - 8);
    v122 = *(v45 + 56);
    v124 = v45 + 56;
    v122(v44 + v42, 0, 1, updated);
    sub_10009ADF0(v20 + v17[7], v44 + v21[7], &qword_1002712C8, &qword_1001F3A18);
    v46 = v17[9];
    v47 = v17[10];
    v48 = (v20 + v17[11]);
    v49 = v48[4];
    v50 = v48[5];
    v51 = v48[2];
    v152 = v48[3];
    v153 = v49;
    v154 = v50;
    v52 = v48[1];
    v149 = *v48;
    v53 = (v20 + v46);
    v54 = *v53;
    v55 = v53[1];
    v56 = v20 + v47;
    v128 = v35;
    v58 = *(v20 + v47);
    v57 = *(v56 + 1);
    v116 = v54;
    v117 = v57;
    v150 = v52;
    v151 = v51;
    v59 = *(v20 + v17[12]);
    v118 = v58;
    v119 = v59;

    v60 = v120;

    sub_10009ADF0(&v149, &v155, &qword_1002712D0, &qword_1001F3A20);
    v121 = _s5StateVMa;
    sub_10010E494(v20, _s5StateVMa);
    *v44 = v60;
    v44[1] = v41;
    v61 = (v44 + v21[8]);
    *v61 = v116;
    v61[1] = v55;
    v62 = v44 + v21[9];
    v63 = v117;
    *v62 = v118;
    *(v62 + 1) = v63;
    v62[16] = 0;
    v64 = (v44 + v21[10]);
    v65 = v152;
    v66 = v153;
    v67 = v150;
    v64[2] = v151;
    v64[3] = v65;
    v68 = v154;
    v64[4] = v66;
    v64[5] = v68;
    *v64 = v149;
    v64[1] = v67;
    v69 = v44 + v21[11];
    *v69 = v119;
    v69[8] = 0;
    sub_100110C34(v147, v20, v126);
    v70 = *v20;
    v71 = v20[1];
    v72 = v21[6];
    sub_100110C34(v20 + v17[6], v25 + v72, v125);
    v122(v25 + v72, 0, 1, updated);
    sub_10009ADF0(v20 + v17[7], v25 + v21[7], &qword_1002712C8, &qword_1001F3A18);
    v73 = (v20 + v17[9]);
    v74 = *v73;
    v75 = v73[1];
    v76 = v20 + v17[10];
    v78 = *v76;
    v77 = *(v76 + 1);
    v126 = v78;
    v124 = v74;
    v125 = v77;
    v79 = (v20 + v17[11]);
    v80 = v79[5];
    v159 = v79[4];
    v160 = v80;
    v81 = v79[3];
    v157 = v79[2];
    v158 = v81;
    v82 = v79[1];
    v155 = *v79;
    v156 = v82;
    v83 = *(v20 + v17[12]);

    sub_10009ADF0(&v155, &v148, &qword_1002712D0, &qword_1001F3A20);
    sub_10010E494(v20, v121);
    *v25 = v70;
    v25[1] = v71;
    v84 = v128;
    v85 = (v25 + v21[8]);
    *v85 = v124;
    v85[1] = v75;
    v86 = v25 + v21[9];
    v87 = v125;
    *v86 = v126;
    *(v86 + 1) = v87;
    v86[16] = 0;
    v88 = (v25 + v21[10]);
    v89 = v158;
    v88[2] = v157;
    v88[3] = v89;
    v90 = v160;
    v88[4] = v159;
    v88[5] = v90;
    v91 = v156;
    *v88 = v155;
    v88[1] = v91;
    v92 = v25 + v21[11];
    *v92 = v83;
    v92[8] = 0;
    LOBYTE(v70) = sub_100120104(v25, v44);
    sub_10010E494(v25, _s15PersistentStateO2V1VMa);
    if ((v70 & 1) == 0)
    {
      sub_100110C34(v44, v25, _s15PersistentStateO2V1VMa);
      v93 = v130;
      sub_1001C6368();
      v44 = v142;
      (*(v131 + 8))(v93, v132);
    }

    sub_10010E494(v44, _s15PersistentStateO2V1VMa);
    (*(v127 + 8))(v146, v84);
    v39 = v129;
    v38 = v143;
  }

  sub_1001C4C98();
  v94 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v39 + v94, v20, _s5StateVMa);
  v95 = COERCE_DOUBLE(sub_10019EDB4());
  v97 = v96;
  v99 = v98;
  sub_10010E494(v20, _s5StateVMa);
  v100 = v147;
  v101 = COERCE_DOUBLE(sub_10019EDB4());
  if ((v103 & 1) == 0)
  {
    if ((v99 & 1) == 0 && v101 == v95 && v102 == v97)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v99 & 1) == 0)
  {
LABEL_10:
    *&v149 = v95;
    *(&v149 + 1) = v97;
    LOBYTE(v150) = v99 & 1;
    sub_100084528(&qword_100271350, &qword_1001F3A98);
    v104 = v139;
    sub_1001C6368();
    (*(v140 + 8))(v104, v141);
  }

LABEL_11:
  sub_100110C34(v39 + v94, v20, _s5StateVMa);
  v105 = sub_1001A6D74(v20[1]);
  __chkstk_darwin(v105);
  *(&v115 - 2) = v20;
  v106 = sub_100102B88(sub_1001112FC, (&v115 - 4), v105);

  sub_10010E494(v20, _s5StateVMa);
  v107 = sub_1001A6D74(*(v100 + 8));
  __chkstk_darwin(v107);
  *(&v115 - 2) = v100;
  v108 = sub_100102B88(sub_1001112FC, (&v115 - 4), v107);

  LOBYTE(v107) = sub_100194EFC(v108, v106);

  if (v107)
  {
  }

  else
  {
    *&v149 = v106;
    sub_100084528(&qword_100271358, &qword_1001F3AA0);
    v109 = v133;
    sub_1001C6368();
    (*(v134 + 8))(v109, v135);
  }

  sub_100110C34(v39 + v94, v20, _s5StateVMa);
  v110 = sub_10019EE64();
  sub_10010E494(v20, _s5StateVMa);
  v111 = sub_10019EE64();
  v112 = sub_100194320(v111, v110);

  if (v112)
  {
  }

  else
  {
    *&v149 = v110;
    sub_100084528(&qword_100271360, &qword_1001F3AA8);
    v113 = v136;
    sub_1001C6368();
    (*(v137 + 8))(v113, v138);
  }

  return (*(v144 + 8))(v38, v145);
}

uint64_t sub_100109954(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100109A00;

  return sub_100109B3C(2);
}

uint64_t sub_100109A00()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100109B3C(char a1)
{
  *(v2 + 88) = v1;
  *(v2 + 257) = a1;
  v3 = sub_1001C4CA8();
  *(v2 + 96) = v3;
  v4 = *(v3 - 8);
  *(v2 + 104) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v6 = *(*(_s5StateVMa() - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v7 = *(*(sub_100084528(&qword_1002712C8, &qword_1001F3A18) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  updated = _s6UpdateVMa();
  *(v2 + 144) = updated;
  v9 = *(updated - 8);
  *(v2 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return _swift_task_switch(sub_100109CE4, v1, 0);
}

uint64_t sub_100109CE4()
{
  v56 = v0;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  *(v0 + 184) = sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 257);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v55 = v6;
    *v5 = 136315138;
    *(v0 + 256) = v4;
    v7 = sub_1001C6078();
    v9 = sub_1001874E8(v7, v8, &v55);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[PriceTracker] updateTrackedPrices(schedulePolicy: %s)", v5, 0xCu);
    sub_10008E7BC(v6);
  }

  v53 = *(v0 + 152);
  v54 = *(v0 + 144);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v14 = *(v0 + 104);
  v52 = *(v0 + 96);
  v15 = *(v0 + 88);
  v16 = OBJC_IVAR___BDSPriceTracker_state;
  *(v0 + 192) = OBJC_IVAR___BDSPriceTracker_state;
  v17 = *(v0 + 257);
  swift_beginAccess();
  sub_100110C34(v15 + v16, v10, _s5StateVMa);
  sub_1001C4C98();
  sub_10019F4E8(v17, v13, v11);
  (*(v14 + 8))(v13, v52);
  sub_100110C34(v15 + v16, v12, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v10, v15 + v16, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v12);
  sub_10010E494(v12, _s5StateVMa);
  sub_10010E494(v10, _s5StateVMa);
  if ((*(v53 + 48))(v11, 1, v54) == 1)
  {
    sub_10008875C(*(v0 + 136), &qword_1002712C8, &qword_1001F3A18);
    v19 = *(v0 + 168);
    v18 = *(v0 + 176);
    v20 = *(v0 + 160);
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v24 = *(v0 + 112);
    v23 = *(v0 + 120);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = *(v0 + 168);
    v28 = *(v0 + 176);
    v29 = *(v0 + 160);
    sub_100110AC0(*(v0 + 136), v28, _s6UpdateVMa);
    sub_100110C34(v28, v27, _s6UpdateVMa);
    sub_100110C34(v28, v29, _s6UpdateVMa);
    v30 = sub_1001C5128();
    v31 = sub_1001C65B8();
    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 160);
    v34 = *(v0 + 168);
    if (v32)
    {
      v35 = *(v0 + 144);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 134218242;
      v38 = *(*(v34 + *(v35 + 20)) + 16);
      sub_10010E494(v34, _s6UpdateVMa);
      *(v36 + 4) = v38;
      *(v36 + 12) = 2080;
      v39 = *(v33 + *(v35 + 20));
      sub_100110100();
      v40 = sub_1001C63F8();
      v42 = v41;
      sub_10010E494(v33, _s6UpdateVMa);
      v43 = sub_1001874E8(v40, v42, &v55);

      *(v36 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v30, v31, "[PriceTracker] Price-update started with %ld items: %s", v36, 0x16u);
      sub_10008E7BC(v37);
    }

    else
    {
      sub_10010E494(*(v0 + 168), _s6UpdateVMa);

      sub_10010E494(v33, _s6UpdateVMa);
    }

    v44 = *(v0 + 176);
    v45 = *(v0 + 144);
    v46 = *(v0 + 88);
    v47 = sub_1001033B8();
    v49 = v48;
    *(v0 + 200) = v47;
    *(v0 + 208) = v48;
    v50 = *(v44 + *(v45 + 20));
    v51 = swift_task_alloc();
    *(v0 + 216) = v51;
    *v51 = v0;
    v51[1] = sub_10010A288;

    return sub_10019ABB8(v50, v47, v49);
  }
}

uint64_t sub_10010A288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 216);
  v10 = *(*v4 + 208);
  v11 = *(*v4 + 200);
  v12 = *v4;
  v8[28] = v3;

  swift_unknownObjectRelease();

  v13 = v8[11];
  if (v3)
  {
    v14 = sub_10010A670;
  }

  else
  {
    v8[29] = a3;
    v8[30] = a2;
    v8[31] = a1;
    v14 = sub_10010A414;
  }

  return _swift_task_switch(v14, v13, 0);
}

uint64_t sub_10010A414()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[31];
  v4 = v0[24];
  v5 = v0[22];
  v6 = v0[16];
  v23 = v0[15];
  v24 = v0[23];
  v7 = v0[11];
  v8 = sub_1001C63B8();
  sub_100110C34(v7 + v4, v6, _s5StateVMa);
  v9 = v8 & 1;
  sub_1001A04F0(v5, v9, v3, v1, v2);
  sub_1001100BC(v3, v1);
  sub_100110C34(v7 + v4, v23, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v6, v7 + v4, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v23);
  sub_10010E494(v23, _s5StateVMa);
  sub_10010E494(v6, _s5StateVMa);
  v10 = sub_1001C5128();
  v11 = sub_1001C65B8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "[PriceTracker] Price-update finished (cancelled? %{BOOL}d)", v12, 8u);
  }

  v13 = v0[22];

  sub_10010E494(v13, _s6UpdateVMa);
  v15 = v0[21];
  v14 = v0[22];
  v16 = v0[20];
  v18 = v0[16];
  v17 = v0[17];
  v20 = v0[14];
  v19 = v0[15];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10010A670()
{
  v1 = v0[28];
  v2 = v0[23];
  swift_errorRetain();
  v3 = sub_1001C5128();
  v4 = sub_1001C6598();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[28];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[PriceTracker] Failed to fetch pricing information: %@", v7, 0xCu);
    sub_10008875C(v8, &unk_1002718E0, &qword_1001F31F0);
  }

  else
  {
    v10 = v0[28];
  }

  v11 = v0[23];
  v12 = v0[24];
  v13 = v0[22];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[11];
  v17 = sub_1001C63B8();
  sub_100110C34(v16 + v12, v14, _s5StateVMa);
  v18 = v17 & 1;
  sub_1001A04F0(v13, v18, 0, 0, 0);
  sub_1001100BC(0, 0);
  sub_100110C34(v16 + v12, v15, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v14, v16 + v12, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v15);
  sub_10010E494(v15, _s5StateVMa);
  sub_10010E494(v14, _s5StateVMa);
  v19 = sub_1001C5128();
  v20 = sub_1001C65B8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 67109120;
    *(v21 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v19, v20, "[PriceTracker] Price-update finished (cancelled? %{BOOL}d)", v21, 8u);
  }

  v22 = v0[22];

  sub_10010E494(v22, _s6UpdateVMa);
  v24 = v0[21];
  v23 = v0[22];
  v25 = v0[20];
  v27 = v0[16];
  v26 = v0[17];
  v29 = v0[14];
  v28 = v0[15];

  v30 = v0[1];

  return v30();
}

void sub_10010A9DC()
{
  sub_10010AC1C(319, &qword_100271268, &qword_100271270, &qword_1001F3920, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_10010AC1C(319, &qword_100271278, &qword_100271280, &qword_1001F3928, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10010AC1C(319, &qword_100271288, &qword_10026F268, &qword_1001F0C80, &type metadata accessor for AsyncStream.Continuation);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_100110E68(319, &qword_100271290, &_s8CardListVN, &type metadata accessor for AsyncStream.Continuation);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          v8 = _s5StateVMa();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_10010AC1C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000885AC(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10010AC80(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v3 = _s5StateVMa();
  v2[34] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v5 = *(*(_s14UpdateScheduleVMa() - 8) + 64) + 15;
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10010AD4C, v1, 0);
}

uint64_t sub_10010AD4C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = sub_10011B294();
  v4 = [v2 updateScheduleSteps];
  sub_100088714(0, &qword_100271310, off_10023DD30);
  v5 = sub_1001C6298();

  sub_10011B534(v5, v1);
  v6 = *(v0 + 256);
  v8 = sub_10011B44C();
  v10 = v9;
  v11 = [*(v0 + 256) notification];
  if (v11)
  {
    v12 = v11;
    sub_10011B8E8(v11, (v0 + 16));
    v32 = *(v0 + 32);
    v33 = *(v0 + 16);
    v30 = *(v0 + 64);
    v31 = *(v0 + 48);
    v28 = *(v0 + 96);
    v29 = *(v0 + 80);
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
  }

  v13 = *(v0 + 288);
  v14 = *(v0 + 296);
  v16 = *(v0 + 272);
  v15 = *(v0 + 280);
  v17 = *(v0 + 264);
  v18 = [*(v0 + 256) cardLimit];
  v27 = [v18 integerValue];

  v19 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v17 + v19, v13, _s5StateVMa);
  sub_1001A378C(v3);

  sub_10010E5F0(v14, v13 + v16[6], _s14UpdateScheduleVMa);
  v20 = (v13 + v16[10]);
  *v20 = v8;
  *(v20 + 1) = v10;
  v21 = (v13 + v16[11]);
  v22 = v21[2];
  v23 = v21[3];
  v24 = v21[5];
  *(v0 + 176) = v21[4];
  *(v0 + 192) = v24;
  *(v0 + 144) = v22;
  *(v0 + 160) = v23;
  v25 = v21[1];
  *(v0 + 112) = *v21;
  *(v0 + 128) = v25;
  sub_10008875C(v0 + 112, &qword_1002712D0, &qword_1001F3A20);
  *v21 = v33;
  v21[1] = v32;
  v21[2] = v31;
  v21[3] = v30;
  v21[4] = v29;
  v21[5] = v28;
  *(v13 + v16[12]) = v27;
  sub_100110C34(v17 + v19, v15, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v13, v17 + v19, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v15);
  sub_10010E494(v15, _s5StateVMa);
  sub_10010E494(v14, _s14UpdateScheduleVMa);
  sub_10010E494(v13, _s5StateVMa);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10010B258(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10010B31C;

  return sub_10010AC80(v5);
}

uint64_t sub_10010B31C()
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
    v10 = sub_1001C4A18();

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

uint64_t sub_10010B4BC()
{
  v1[36] = v0;
  v2 = sub_1001C47C8();
  v1[37] = v2;
  v3 = *(v2 - 8);
  v1[38] = v3;
  v4 = *(v3 + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = sub_1001C47E8();
  v1[41] = v5;
  v6 = *(v5 - 8);
  v1[42] = v6;
  v7 = *(v6 + 64) + 15;
  v1[43] = swift_task_alloc();
  v8 = sub_1001C4CA8();
  v1[44] = v8;
  v9 = *(v8 - 8);
  v1[45] = v9;
  v10 = *(v9 + 64) + 15;
  v1[46] = swift_task_alloc();
  v11 = *(*(sub_100084528(&qword_1002712C8, &qword_1001F3A18) - 8) + 64) + 15;
  v1[47] = swift_task_alloc();
  v12 = _s5StateVMa();
  v1[48] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v14 = _s15PersistentStateO2V1VMa(0);
  v1[52] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v1[53] = swift_task_alloc();
  v16 = *(*(_s15PersistentStateOMa(0) - 8) + 64) + 15;
  v1[54] = swift_task_alloc();
  v17 = type metadata accessor for PriceTracker.Envelope(0);
  v1[55] = v17;
  v18 = *(*(v17 - 8) + 64) + 15;
  v1[56] = swift_task_alloc();

  return _swift_task_switch(sub_10010B74C, v0, 0);
}

void sub_10010B74C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v72 = *(v0 + 432);
  v73 = *(v0 + 400);
  v4 = *(v0 + 384);
  v70 = *(v0 + 376);
  v76 = *(v0 + 392);
  v79 = *(v0 + 368);
  v5 = *(v0 + 288) + OBJC_IVAR___BDSPriceTracker_state;
  v82 = *(v0 + 360);
  v84 = *(v0 + 352);
  swift_beginAccess();
  sub_100110C34(v5, v2, _s5StateVMa);
  v7 = *v2;
  v6 = v2[1];
  v8 = v3[6];
  sub_100110C34(v2 + v4[6], &v1[v8], _s14UpdateScheduleVMa);
  updated = _s14UpdateScheduleVMa();
  (*(*(updated - 8) + 56))(&v1[v8], 0, 1, updated);
  sub_10009ADF0(v2 + v4[7], &v1[v3[7]], &qword_1002712C8, &qword_1001F3A18);
  v10 = (v2 + v4[9]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (v2 + v4[10]);
  v67 = v13[1];
  v68 = *v13;
  v14 = (v2 + v4[11]);
  v15 = v14[1];
  *(v0 + 16) = *v14;
  *(v0 + 32) = v15;
  v16 = v14[5];
  v17 = v14[2];
  v18 = v14[3];
  *(v0 + 80) = v14[4];
  *(v0 + 96) = v16;
  *(v0 + 48) = v17;
  *(v0 + 64) = v18;
  v66 = *(v2 + v4[12]);

  sub_10009ADF0(v0 + 16, v0 + 112, &qword_1002712D0, &qword_1001F3A20);
  sub_10010E494(v2, _s5StateVMa);
  *v1 = v7;
  *(v1 + 1) = v6;
  v19 = &v1[v3[8]];
  *v19 = v12;
  *(v19 + 1) = v11;
  v20 = &v1[v3[9]];
  *v20 = v68;
  *(v20 + 1) = v67;
  v20[16] = 0;
  v21 = &v1[v3[10]];
  v23 = *(v0 + 80);
  v22 = *(v0 + 96);
  v24 = *(v0 + 64);
  *(v21 + 2) = *(v0 + 48);
  *(v21 + 3) = v24;
  *(v21 + 4) = v23;
  *(v21 + 5) = v22;
  v25 = *(v0 + 32);
  *v21 = *(v0 + 16);
  *(v21 + 1) = v25;
  v26 = &v1[v3[11]];
  *v26 = v66;
  v26[8] = 0;
  sub_100110AC0(v1, v72, _s15PersistentStateO2V1VMa);
  sub_10009ADF0(v5 + v4[8], v70, &qword_1002712C8, &qword_1001F3A18);
  sub_100110C34(v5, v73, _s5StateVMa);
  v27 = sub_1001A6D74(*(v73 + 8));
  v28 = swift_task_alloc();
  *(v28 + 16) = v73;
  v29 = sub_100102B88(sub_10010E430, v28, v27);

  sub_10010E494(v73, _s5StateVMa);
  sub_100110C34(v5, v76, _s5StateVMa);
  v30 = sub_10019EE64();
  sub_10010E494(v76, _s5StateVMa);
  sub_100110C34(v5, v2, _s5StateVMa);
  sub_1001C4C98();
  v31 = sub_10019EDB4();
  v33 = v32;
  LOBYTE(v6) = v34;
  (*(v82 + 8))(v79, v84);
  sub_10010E494(v2, _s5StateVMa);
  v35 = 0;
  v36 = 0;
  if ((v6 & 1) == 0)
  {
    v37 = round(v33);
    if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v37 > -9.22337204e18)
    {
      if (v37 < 9.22337204e18)
      {
        *(v0 + 272) = v37;
        v86 = sub_1001C6CC8();
        v87 = v38;
        v89._countAndFlagsBits = 47;
        v89._object = 0xE100000000000000;
        sub_1001C6138(v89);
        v39 = round(*&v31);
        if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v39 > -9.22337204e18)
          {
            if (v39 < 9.22337204e18)
            {
              *(v0 + 280) = v39;
              v90._countAndFlagsBits = sub_1001C6CC8();
              sub_1001C6138(v90);

              v35 = v86;
              v36 = v87;
              goto LABEL_9;
            }

LABEL_17:
            __break(1u);
            return;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v69 = v35;
  v40 = v30;
  v41 = *(v0 + 440);
  v42 = *(v0 + 448);
  v43 = *(v0 + 376);
  v45 = *(v0 + 336);
  v44 = *(v0 + 344);
  v71 = *(v0 + 328);
  v80 = *(v0 + 320);
  v46 = *(v0 + 304);
  v74 = *(v0 + 312);
  v77 = *(v0 + 296);
  sub_100110AC0(*(v0 + 432), v42, _s15PersistentStateOMa);
  sub_10009AE58(v43, v42 + v41[5], &qword_1002712C8, &qword_1001F3A18);
  *(v42 + v41[6]) = v29;
  *(v42 + v41[7]) = v40;
  v47 = (v42 + v41[8]);
  *v47 = v69;
  v47[1] = v36;
  v48 = sub_1001C4828();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  sub_1001C4818();
  (*(v45 + 104))(v44, enum case for JSONEncoder.DateEncodingStrategy.iso8601(_:), v71);
  sub_1001C47F8();
  sub_100084528(&qword_1002712D8, &qword_1001F3A28);
  v51 = *(v46 + 72);
  v52 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1001F0680;
  sub_1001C4798();
  sub_1001C47B8();
  sub_1001C47A8();
  *(v0 + 264) = v53;
  sub_10010E44C(&qword_1002712E0, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100084528(&qword_1002712E8, &qword_1001F3A30);
  sub_1000885F4(&qword_1002712F0, &qword_1002712E8, &qword_1001F3A30);
  sub_1001C68C8();
  v54 = sub_1001C47D8();
  sub_10010C034(v80, v74);
  v55 = *(v46 + 8);
  v55(v74, v77);
  v55(v80, v77);
  v54(v0 + 208, 0);
  sub_10010E44C(&qword_1002712F8, type metadata accessor for PriceTracker.Envelope);
  v56 = sub_1001C4808();
  v57 = *(v0 + 424);
  v58 = *(v0 + 432);
  v60 = *(v0 + 400);
  v59 = *(v0 + 408);
  v61 = *(v0 + 392);
  v62 = *(v0 + 376);
  v78 = *(v0 + 368);
  v81 = *(v0 + 344);
  v83 = *(v0 + 320);
  v85 = *(v0 + 312);
  v63 = v56;
  v75 = v64;
  sub_10010E494(*(v0 + 448), type metadata accessor for PriceTracker.Envelope);

  v65 = *(v0 + 8);

  v65(v63, v75);
}

uint64_t sub_10010C034(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v28 = sub_100084528(&qword_100271300, &qword_1001F3A38);
  v4 = *(*(v28 - 8) + 64);
  v5 = __chkstk_darwin(v28);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = sub_1001C47C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v10 + 16);
  v27 = v2;
  v17(v14, v2, v9);
  v25 = sub_10010E44C(&qword_1002712E0, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_1001C68A8();
  v18 = v28;
  sub_10010E44C(&qword_100271308, &type metadata accessor for JSONEncoder.OutputFormatting);
  v26 = a2;
  v19 = sub_1001C5FD8();
  v20 = *(v18 + 48);
  *v8 = (v19 & 1) == 0;
  if (v19)
  {
    (*(v10 + 32))(&v8[v20], v16, v9);
  }

  else
  {
    (*(v10 + 8))(v16, v9);
    v21 = v26;
    v17(&v8[v20], v26, v9);
    v17(v14, v21, v9);
    sub_1001C68B8();
  }

  v22 = v29;
  sub_10009AE58(v8, v29, &qword_100271300, &qword_1001F3A38);
  v23 = *v22;
  (*(v10 + 32))(v30, &v22[*(v18 + 48)], v9);
  return v23;
}

uint64_t sub_10010C4B0(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_10010C558;

  return sub_10010B4BC();
}

uint64_t sub_10010C558(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = sub_1001C4A18();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    isa = sub_1001C4B98().super.isa;
    sub_1000887D0(a1, a2);
    v13 = isa;
    v12 = 0;
    v11 = isa;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_10010C6F0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(_s5StateVMa() - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10010C78C, v1, 0);
}

uint64_t sub_10010C78C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = [v3 adamID];
  v6 = sub_1001C6018();
  v8 = v7;

  LODWORD(v3) = [v3 isAudiobook];
  v9 = OBJC_IVAR___BDSPriceTracker_state;
  swift_beginAccess();
  sub_100110C34(v4 + v9, v2, _s5StateVMa);
  sub_1001A0F34(v6, v8, v3);

  sub_100110C34(v4 + v9, v1, _s5StateVMa);
  swift_beginAccess();
  sub_10010E5F0(v2, v4 + v9, _s5StateVMa);
  swift_endAccess();
  sub_100103198(v1);
  sub_10010E494(v1, _s5StateVMa);
  sub_10010E494(v2, _s5StateVMa);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10010CAC0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_10010CB84;

  return sub_10010C6F0(v5);
}

uint64_t sub_10010CB84()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10010CCE0(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = *(*(_s5StateVMa() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = *(*(sub_1001C4CC8() - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v5 = sub_100084528(&qword_1002712B0, &qword_1001F39C0);
  v2[20] = v5;
  v6 = *(v5 - 8);
  v2[21] = v6;
  v7 = *(v6 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_10010CE10, v1, 0);
}

void sub_10010CE10()
{
  v1 = *(v0 + 120);
  v2 = sub_100119324(&_swiftEmptyArrayStorage);
  v3 = *(v0 + 120);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1001C6AE8();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v1 = v4 | 0x8000000000000000;
    v8 = *(v0 + 120);
  }

  else
  {
    v5 = v3 + 64;
    v9 = -1 << *(v3 + 32);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v3 + 64);
  }

  v12 = (v6 + 64) >> 6;
  v68 = (*(v0 + 168) + 8);

  v13 = 0;
  v70 = v5;
  v71 = v1;
  v67 = v0;
  v69 = v12;
  while (1)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      v25 = sub_1001C6B18();
      if (!v25)
      {
        goto LABEL_45;
      }

      v27 = v26;
      *(v0 + 96) = v25;
      sub_100088714(0, &qword_100271298, off_10023DD28);
      swift_dynamicCast();
      v23 = *(v0 + 88);
      *(v0 + 112) = v27;
      sub_100088714(0, &qword_1002712A0, NSNumber_ptr);
      swift_dynamicCast();
      v24 = *(v0 + 104);
      v18 = v13;
      v19 = v7;
      if (!v23)
      {
LABEL_45:
        v60 = *(v0 + 176);
        v61 = *(v0 + 144);
        v62 = *(v0 + 152);
        v64 = *(v0 + 128);
        v63 = *(v0 + 136);
        sub_100005064();
        v65 = OBJC_IVAR___BDSPriceTracker_state;
        swift_beginAccess();
        sub_100110C34(v64 + v65, v61, _s5StateVMa);
        sub_1001A0DE8(v2);

        sub_100110C34(v64 + v65, v63, _s5StateVMa);
        swift_beginAccess();
        sub_10010E5F0(v61, v64 + v65, _s5StateVMa);
        swift_endAccess();
        sub_100103198(v63);
        sub_10010E494(v63, _s5StateVMa);
        sub_10010E494(v61, _s5StateVMa);

        v66 = *(v0 + 8);

        v66();
        return;
      }
    }

    else
    {
      v16 = v13;
      v17 = v7;
      v18 = v13;
      if (!v7)
      {
        while (1)
        {
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v18 >= v12)
          {
            goto LABEL_45;
          }

          v17 = *(v5 + 8 * v18);
          ++v16;
          if (v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return;
      }

LABEL_15:
      v19 = (v17 - 1) & v17;
      v20 = (v18 << 9) | (8 * __clz(__rbit64(v17)));
      v21 = *(*(v1 + 48) + v20);
      v22 = *(*(v1 + 56) + v20);
      v23 = v21;
      v24 = v22;
      if (!v23)
      {
        goto LABEL_45;
      }
    }

    v72 = v19;
    v28 = v23;
    v29 = [v28 adamID];
    v75 = sub_1001C6018();
    v76 = v30;

    v74 = [v28 isAudiobook];
    v31 = v24;
    [v31 doubleValue];
    v33 = v32;
    v73 = v31;
    if (v32 == 0.0)
    {

      v34 = 0;
      v35 = 0;
    }

    else
    {
      v36 = *(v0 + 176);
      v37 = *(v0 + 152);
      v38 = *(v0 + 160);
      *(v0 + 80) = v32;
      sub_1001C4CB8();
      sub_10010E25C();
      sub_1001C4A38();
      sub_1000885F4(&qword_1002712C0, &qword_1002712B0, &qword_1001F39C0);
      sub_1001C5ED8();
      (*v68)(v36, v38);
      v39 = *(v0 + 72);
      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = *(v0 + 64) & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        v41 = 0;
        v42 = 4 * v40;
        while (sub_1001C61E8() != 36 || v43 != 0xE100000000000000)
        {
          v44 = sub_1001C6D08();

          if (v44)
          {
            goto LABEL_32;
          }

          v41 = sub_1001C6108() >> 14;
          if (v41 == v42)
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        if (v42 < v41)
        {
          goto LABEL_54;
        }
      }

LABEL_33:
      sub_1001C6208();

      v34 = sub_1001C60B8();
      v35 = v45;

      v0 = v67;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = sub_100187C98(v75, v76, v74);
    v49 = v2[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_52;
    }

    v52 = v47;
    if (v2[3] < v51)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v47)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_10018B31C();
      if (v52)
      {
LABEL_8:

        v14 = (v2[7] + 24 * v48);
        v15 = *(v14 + 2);
        *v14 = v33;
        *(v14 + 1) = v34;
        *(v14 + 2) = v35;

        goto LABEL_9;
      }
    }

LABEL_41:
    v2[(v48 >> 6) + 8] |= 1 << v48;
    v55 = v2[6] + 24 * v48;
    *v55 = v75;
    *(v55 + 8) = v76;
    *(v55 + 16) = v74;
    v56 = (v2[7] + 24 * v48);
    *v56 = v33;
    *(v56 + 1) = v34;
    *(v56 + 2) = v35;

    v57 = v2[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_53;
    }

    v2[2] = v59;
LABEL_9:
    v13 = v18;
    v1 = v71;
    v7 = v72;
    v12 = v69;
    v5 = v70;
  }

  sub_1001894E8(v51, isUniquelyReferenced_nonNull_native);
  v53 = sub_100187C98(v75, v76, v74);
  if ((v52 & 1) == (v54 & 1))
  {
    v48 = v53;
    if (v52)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

  sub_1001C6D68();
}

uint64_t sub_10010D6CC(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100088714(0, &qword_100271298, off_10023DD28);
  sub_100088714(0, &qword_1002712A0, NSNumber_ptr);
  sub_10010E0FC();
  v4 = sub_1001C5F08();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_10010D7E0;

  return sub_10010CCE0(v4);
}

uint64_t sub_10010D7E0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10010DAB8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1001112F4;

  return sub_100109B3C(1);
}

uint64_t sub_10010DB64()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_10010DAB8(v2, v3);
}

uint64_t sub_10010DC10(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100271498, &qword_1001F3C50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_100110EB8();
  sub_1001C6E78();
  LOBYTE(v18) = 0;
  _s15PersistentStateOMa(0);
  sub_10010E44C(&qword_1002714A8, _s15PersistentStateOMa);
  sub_1001C6CA8();
  if (!v2)
  {
    v11 = type metadata accessor for PriceTracker.Envelope(0);
    v12 = v11[5];
    LOBYTE(v18) = 1;
    _s6UpdateVMa();
    sub_10010E44C(&qword_1002714B0, _s6UpdateVMa);
    sub_1001C6C58();
    v18 = *(v3 + v11[6]);
    HIBYTE(v17) = 2;
    sub_100084528(&qword_10026F268, &qword_1001F0C80);
    sub_100110F0C();
    sub_1001C6CA8();
    v18 = *(v3 + v11[7]);
    HIBYTE(v17) = 3;
    sub_100110FC0();
    sub_1001C6CA8();
    v13 = (v3 + v11[8]);
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v18) = 4;
    sub_1001C6C38();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_10010DEE0()
{
  v1 = *v0;
  v2 = 1635017060;
  v3 = 0xD000000000000013;
  v4 = 0x7473694C64726163;
  if (v1 != 3)
  {
    v4 = 0x656C756465686373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x55746E6572727563;
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

uint64_t sub_10010DF90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011112C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10010DFB8(uint64_t a1)
{
  v2 = sub_100110EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10010DFF4(uint64_t a1)
{
  v2 = sub_100110EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10010E048()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_10010D6CC(v2, v3, v4);
}

unint64_t sub_10010E0FC()
{
  result = qword_1002712A8;
  if (!qword_1002712A8)
  {
    sub_100088714(255, &qword_100271298, off_10023DD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002712A8);
  }

  return result;
}

uint64_t sub_10010E164(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001112F8;

  return v7(a1);
}

unint64_t sub_10010E25C()
{
  result = qword_1002712B8;
  if (!qword_1002712B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002712B8);
  }

  return result;
}

uint64_t sub_10010E2B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_10010CAC0(v2, v3, v4);
}

uint64_t sub_10010E364()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_10010C4B0(v2, v3);
}

uint64_t sub_10010E44C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010E494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010E4F4()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10010E53C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10009B25C;

  return sub_10010B258(v2, v3, v4);
}

uint64_t sub_10010E5F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010E658(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 232) = a6;
  *(v7 + 240) = v6;
  *(v7 + 65) = a4;
  *(v7 + 216) = a3;
  *(v7 + 224) = a5;
  *(v7 + 200) = a1;
  *(v7 + 208) = a2;
  v8 = _s9SchedulerC5StateOMa(0);
  *(v7 + 248) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v7 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_10010E6F8, 0, 0);
}

uint64_t sub_10010E6F8()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[25];
  swift_defaultActor_initialize();
  swift_storeEnumTagMultiPayload();
  v1[17] = sub_100088714(0, &qword_1002713C8, BGSystemTaskScheduler_ptr);
  v1[18] = &off_100249020;
  v1[14] = v5;
  v1[19] = v4;
  v1[20] = v3;
  v6 = v5;

  return _swift_task_switch(sub_10010E7D0, v1, 0);
}

uint64_t sub_10010E7D0()
{
  v42 = v0;
  v1 = 0xD00000000000002CLL;
  v2 = v0[30];
  v3 = v0[25];
  v4 = 0x8000000100200320;
  v5 = swift_allocObject();
  swift_weakInit();

  v6 = sub_1001C5FE8();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100110A0C;
  *(v7 + 24) = v5;
  v0[20] = sub_100110A14;
  v0[21] = v7;
  v0[16] = _NSConcreteStackBlock;
  v0[17] = 1107296256;
  v0[18] = sub_1000C775C;
  v0[19] = &unk_1002484F8;
  v8 = _Block_copy(v0 + 16);
  v9 = v0[21];

  LODWORD(v3) = [v3 registerForTaskWithIdentifier:v6 usingQueue:0 launchHandler:v8];
  _Block_release(v8);

  if (v3)
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v10 = sub_1001C5148();
    sub_100083274(v10, qword_100281898);
    v11 = sub_1001C5128();
    v12 = sub_1001C65B8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, &v41);
      v15 = "[Scheduler] Registered system task handler for %{public}s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, v12, v15, v13, 0xCu);
      sub_10008E7BC(v14);
    }
  }

  else
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v16 = sub_1001C5148();
    sub_100083274(v16, qword_100281898);
    v11 = sub_1001C5128();
    v12 = sub_1001C6598();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, &v41);
      v15 = "[Scheduler] Failed to register system task handler for %{public}s -- Scheduling will probably not work";
      goto LABEL_10;
    }
  }

  v17 = v0[25];
  v18 = sub_1001C5FE8();
  v19 = [v17 taskRequestForIdentifier:v18];

  v20 = v19;
  v21 = v0[25];
  if (v20)
  {
    sub_10011D2BC(v20, (v0 + 9));

    v22 = v0[10];
    if (!v22)
    {
      goto LABEL_19;
    }

    v23 = v0[31];
    v24 = v0[32];
    v25 = v0[30];
    *v24 = v0[9];
    *(v24 + 8) = v22;
    v26 = *(v0 + 11);
    v27 = *(v0 + 13);
    *(v24 + 48) = *(v0 + 120);
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    swift_storeEnumTagMultiPayload();
    v28 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
    swift_beginAccess();
    sub_100110A5C(v24, v25 + v28);
    swift_endAccess();
    sub_100110C34(v25 + v28, v24, _s9SchedulerC5StateOMa);
    v29 = sub_1000D9A88();
    v31 = v30;
    sub_10010E494(v24, _s9SchedulerC5StateOMa);
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v32 = sub_1001C5148();
    sub_100083274(v32, qword_100281898);

    v21 = sub_1001C5128();
    v33 = sub_1001C65B8();

    if (os_log_type_enabled(v21, v33))
    {
      v34 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v34 = 136446466;
      *(v34 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, &v41);
      *(v34 + 12) = 2082;
      v35 = sub_1001874E8(v29, v31, &v41);

      *(v34 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v21, v33, "[Scheduler] Found existing task request for %{public}s, assuming %{public}s", v34, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

LABEL_19:
  if (*(v0 + 65))
  {
    v1 = 0;
    v4 = 0;
    v36 = 0uLL;
    v37 = 0uLL;
  }

  else
  {
    v36 = xmmword_1001F38D0;
    v37 = *(v0 + 13);
  }

  v0[33] = v4;
  v0[2] = v1;
  v0[3] = v4;
  *(v0 + 2) = v36;
  *(v0 + 3) = vextq_s8(v37, v37, 8uLL);
  *(v0 + 64) = 0;
  v38 = swift_task_alloc();
  v0[34] = v38;
  *v38 = v0;
  v38[1] = sub_10010EE10;
  v39 = v0[30];

  return sub_1000DA5D4((v0 + 2));
}

uint64_t sub_10010EE10()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 264);
  v4 = *(*v0 + 256);
  v8 = *v0;

  sub_10010E44C(&qword_100270878, _s9SchedulerCMa);

  v5 = *(v8 + 8);
  v6 = *(v1 + 240);

  return v5(v6);
}

uint64_t sub_10010EF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_100084528(&qword_1002713C0, &qword_1001F3BD8);
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_10010F060, 0, 0);
}

uint64_t sub_10010F060()
{
  v1 = v0[18];
  v2 = v0[14];
  sub_100084528(&qword_100271398, &qword_1001F3B00);
  sub_1001C6388();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_10010F12C;
  v5 = v0[18];
  v6 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v0 + 9, 0, 0, v6);
}

uint64_t sub_10010F12C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return _swift_task_switch(sub_10010F228, 0, 0);
}

uint64_t sub_10010F228()
{
  if (*(v0 + 89))
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128), *(v0 + 72));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v12 = *(v0 + 72);
    v3 = *(v0 + 96);
    v4 = *(v0 + 104);
    v5 = *(v0 + 88);
    *(v0 + 160) = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:sub_1001C60A8() + 32];

    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0uLL;
      v9 = 0uLL;
    }

    else
    {
      v8 = xmmword_1001F38D0;
      v7 = 0x8000000100200320;
      v6 = 0xD00000000000002CLL;
      v9 = v12;
    }

    *(v0 + 168) = v7;
    *(v0 + 16) = v6;
    *(v0 + 24) = v7;
    *(v0 + 32) = v8;
    *(v0 + 48) = vextq_s8(v9, v9, 8uLL);
    *(v0 + 64) = 0;
    v10 = swift_task_alloc();
    *(v0 + 176) = v10;
    *v10 = v0;
    v10[1] = sub_10010F3BC;
    v11 = *(v0 + 120);

    return sub_1000DA5D4(v0 + 16);
  }
}

uint64_t sub_10010F3BC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_10010F4D4, 0, 0);
}

uint64_t sub_10010F4D4()
{
  v1 = v0[20];
  [v1 endTransaction];

  v2 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v3 = swift_task_alloc();
  v0[19] = v3;
  *v3 = v0;
  v3[1] = sub_10010F12C;
  v4 = v0[18];
  v5 = v0[16];

  return AsyncStream.Iterator.next(isolation:)(v0 + 9, 0, 0, v5);
}

uint64_t sub_10010F594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_100084528(&qword_1002713B8, &qword_1001F3BB8);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10010F664, 0, 0);
}

uint64_t sub_10010F664()
{
  v1 = v0[9];
  v2 = v0[5];
  sub_100084528(&qword_100271388, &qword_1001F3AF0);
  sub_1001C6388();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10010F730;
  v5 = v0[9];
  v6 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v6);
}

uint64_t sub_10010F730()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10010F82C, 0, 0);
}

uint64_t sub_10010F82C()
{
  v1 = v0[2];
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v0[12] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:sub_1001C60A8() + 32];

    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_10010F964;
    v5 = v0[6];

    return sub_100088CB4(v1);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10010F964()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_10010FA60, 0, 0);
}

uint64_t sub_10010FA60()
{
  v1 = v0[12];
  [v1 endTransaction];

  v2 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10010F730;
  v4 = v0[9];
  v5 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v5);
}

uint64_t sub_10010FB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_100084528(&qword_1002713B0, &qword_1001F3BA0);
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();

  return _swift_task_switch(sub_10010FBF8, 0, 0);
}

uint64_t sub_10010FBF8()
{
  v1 = v0[9];
  v2 = v0[5];
  sub_100084528(&qword_100271378, &qword_1001F3AE0);
  sub_1001C6388();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_10010FCC4;
  v5 = v0[9];
  v6 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v6);
}

uint64_t sub_10010FCC4()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(sub_10010FDC0, 0, 0);
}

uint64_t sub_10010FDC0()
{
  v1 = v0[2];
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    v0[12] = [objc_allocWithZone(BDSOSTransaction) initWithTransactionName:sub_1001C60A8() + 32];

    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_10010FEF8;
    v5 = v0[6];

    return sub_10012D168(v1);
  }

  else
  {
    (*(v0[8] + 8))(v0[9], v0[7]);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10010FEF8()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_10010FFF4, 0, 0);
}

uint64_t sub_10010FFF4()
{
  v1 = v0[12];
  [v1 endTransaction];

  v2 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10010FCC4;
  v4 = v0[9];
  v5 = v0[7];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v5);
}

uint64_t sub_1001100BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100110100()
{
  result = qword_100271318;
  if (!qword_100271318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271318);
  }

  return result;
}

void sub_100110154(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

id sub_100110194(id result, void *a2)
{
  if (result)
  {
    swift_unknownObjectRetain();

    return a2;
  }

  return result;
}

uint64_t sub_1001101D4()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100110214()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_100109954(v2, v3);
}

uint64_t sub_1001102C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10009AAEC;

  return sub_100105230(v0);
}

uint64_t sub_100110350(uint64_t a1)
{
  v2 = *(sub_100084528(&qword_100271368, &qword_1001F3AD0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v28 = v3;
  v4 = *(v2 + 64);
  v5 = *(sub_100084528(&qword_1002713A8, &qword_1001F3B10) - 8);
  v27 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = v27 + *(v5 + 64);
  v7 = (v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_100084528(&qword_100271398, &qword_1001F3B00) - 8);
  v10 = (*(v9 + 64) + ((v8 + *(v9 + 80) + 16) & ~*(v9 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_100084528(&qword_100271388, &qword_1001F3AF0) - 8);
  v12 = (*(v11 + 64) + ((v10 + *(v11 + 80) + 8) & ~*(v11 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_100084528(&qword_100271378, &qword_1001F3AE0) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v25 = *(v1 + 24);
  v26 = *(v1 + 16);
  v15 = *(v1 + v7 + 8);
  v24 = *(v1 + v7);
  v16 = *(v1 + v7 + 16);
  v17 = v1 + v8;
  v18 = *(v1 + v8);
  v19 = *(v17 + 8);
  v20 = *(v1 + v10);
  v21 = *(v1 + v12);
  v22 = swift_task_alloc();
  *(v29 + 16) = v22;
  *v22 = v29;
  v22[1] = sub_10009B25C;

  return sub_10010573C(a1, v26, v25, v1 + v28, v1 + v27, v24, v15, v16);
}

uint64_t sub_100110678(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_10010E164(a1, v5);
}

uint64_t sub_100110730(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_100105CCC(a1, v5, v4);
}

uint64_t sub_1001107DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009AAEC;

  return sub_100106A98(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001108B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_1001071F0(a1, v5, v4);
}

uint64_t sub_100110960(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_100107828(a1, v5, v4);
}

uint64_t sub_100110A14(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, &off_100249050);
}

uint64_t sub_100110A44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100110A5C(uint64_t a1, uint64_t a2)
{
  v4 = _s9SchedulerC5StateOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100110B28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10009B25C;

  return sub_100106268(a1, v4);
}

uint64_t sub_100110BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_1002712C8, &qword_1001F3A18);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100110CC4()
{
  _s15PersistentStateOMa(319);
  if (v0 <= 0x3F)
  {
    sub_100110E04(319, &qword_100271450, _s6UpdateVMa, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100110E04(319, &unk_100271458, _s21PriceDropNotificationVMa, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100110E68(319, &qword_10026F9F0, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100110E04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100110E68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100110EB8()
{
  result = qword_1002714A0;
  if (!qword_1002714A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714A0);
  }

  return result;
}

unint64_t sub_100110F0C()
{
  result = qword_1002714B8;
  if (!qword_1002714B8)
  {
    sub_1000885AC(&qword_10026F268, &qword_1001F0C80);
    sub_10010E44C(&qword_1002714C0, _s21PriceDropNotificationVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714B8);
  }

  return result;
}

unint64_t sub_100110FC0()
{
  result = qword_1002714C8;
  if (!qword_1002714C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714C8);
  }

  return result;
}

unint64_t sub_100111028()
{
  result = qword_1002714D0;
  if (!qword_1002714D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714D0);
  }

  return result;
}

unint64_t sub_100111080()
{
  result = qword_1002714D8;
  if (!qword_1002714D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714D8);
  }

  return result;
}

unint64_t sub_1001110D8()
{
  result = qword_1002714E0;
  if (!qword_1002714E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714E0);
  }

  return result;
}

uint64_t sub_10011112C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v3 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x55746E6572727563 && a2 == 0xED00006574616470 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100201F10 == a2 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7473694C64726163 && a2 == 0xE800000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEF6769666E6F4372)
  {

    return 4;
  }

  else
  {
    v6 = sub_1001C6D08();

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

uint64_t ReadingGoalsController.__allocating_init(dataSource:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10009D148(a1, v3);
  v6 = sub_100112868(v5, v1, v3, v4);
  sub_10008E7BC(a1);
  return v6;
}

Swift::Void __swiftcall ReadingGoalsController.changeBooksFinishedGoal(to:)(Swift::Int to)
{
  swift_beginAccess();
  sub_1000B3A90(v1 + 16, &aBlock);
  v3 = v15;
  v4 = v16;
  sub_10009BB74(&aBlock, v15);
  (*(v4 + 5))(to, v3, v4);
  sub_10008E7BC(&aBlock);
  v5 = *(v1 + 56);
  v6 = *(v5 + 16);
  sub_1001C6688();
  v18[1] = v13;
  v18[0] = to;
  v11[2] = v18;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_100112D80;
  v8[3] = v11;
  v8[4] = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000BB828;
  *(v9 + 24) = v8;
  v16 = sub_1000B2E48;
  v17 = v9;
  aBlock = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000906F4;
  v15 = &unk_100248600;
  v10 = _Block_copy(&aBlock);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ReadingGoalsController.changeDailyGoal(to:)(Swift::Double to)
{
  swift_beginAccess();
  sub_1000B3A90(v1 + 16, aBlock);
  v3 = v13;
  v4 = v14;
  sub_10009BB74(aBlock, v13);
  (*(v4 + 6))(v3, v4, to);
  sub_10008E7BC(aBlock);
  v5 = *(v1 + 56);
  v6 = *(v5 + 16);
  sub_1001C6688();
  v16[0] = aBlock[0];
  *&v16[1] = to;
  v11[2] = v16;
  v7 = *(v5 + 16);
  v8 = swift_allocObject();
  v8[2] = sub_10011296C;
  v8[3] = v11;
  v8[4] = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1000BC09C;
  *(v9 + 24) = v8;
  v14 = sub_1000B3DA0;
  v15 = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  v13 = &unk_100248678;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ReadingGoalsController.clearData()()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000B3A90((v0 + 2), aBlock);
  v2 = v23;
  v3 = v24;
  sub_10009BB74(aBlock, v23);
  (*(v3 + 7))(v2, v3);
  sub_10008E7BC(aBlock);
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_10009BB74(v1 + 2, v1[5]);
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10);
  v11 = (*(v5 + 8))(v4, v5);
  v13 = v12;
  (*(v7 + 8))(v10, v4);
  v14 = v1[7];
  v20 = v11;
  v21 = v13;
  v15 = *(v14 + 16);
  v16 = swift_allocObject();
  v16[2] = sub_10011298C;
  v16[3] = v19;
  v16[4] = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000BC09C;
  *(v17 + 24) = v16;
  v24 = sub_1000B3DA0;
  v25 = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  v23 = &unk_1002486F0;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v15, v18);
  _Block_release(v18);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }
}

double ReadingGoalsController.state.getter()
{
  v1 = *(*(v0 + 56) + 16);
  sub_1001C6688();
  return v3;
}

bookdatastored::ReadingGoals::Goal_optional __swiftcall ReadingGoals.Goal.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = bookdatastored_ReadingGoals_Goal_dailyReading;
  }

  else
  {
    v1.value = bookdatastored_ReadingGoals_Goal_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *sub_100111B68@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL static ReadingGoals.StateChange.Source.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a2 == 3)
  {
    return 0;
  }

  return a1 == a2;
}

Swift::Int ReadingHistoryBackupManager.BackupError.hashValue.getter(unsigned __int8 a1)
{
  sub_1001C6DF8();
  sub_1001C6E08(a1);
  return sub_1001C6E28();
}

uint64_t static ReadingGoals.StateChange.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5, double a6)
{
  result = 0;
  if (a1 == a3 && a5 == a6)
  {
    if (a2 == 3)
    {
      if (a4 == 3)
      {
        return 1;
      }
    }

    else if (a4 != 3 && a2 == a4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100111CDC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 == 3)
  {
    if (v5 == 3)
    {
      return 1;
    }
  }

  else if (v5 != 3 && v4 == v5)
  {
    return 1;
  }

  return 0;
}

uint64_t ReadingGoalsController.observable.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  a1[3] = sub_100084528(&qword_10026FAF0, &unk_1001F1950);
  a1[4] = &protocol witness table for <> ObservableContainer<A>;
  *a1 = v3;
}

uint64_t ReadingGoalsController.init(dataSource:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_10009D148(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_100112374(v8, v1, v3, v4);
  sub_10008E7BC(a1);
  return v10;
}

uint64_t sub_100111E7C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      swift_once();
    }

    sub_1001C5118();
    swift_beginAccess();
    v2 = v1[5];
    v3 = v1[6];
    v4 = sub_10009BB74(v1 + 2, v2);
    v5 = *(v2 - 8);
    v6 = *(v5 + 64);
    __chkstk_darwin(v4);
    v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8);
    v9 = (*(v3 + 8))(v2, v3);
    v11 = v10;
    v12 = (*(v5 + 8))(v8, v2);
    v13 = v1[7];
    __chkstk_darwin(v12);
    v18[2] = v9;
    v18[3] = v11;
    v14 = *(v13 + 16);
    v15 = swift_allocObject();
    v15[2] = sub_100112D84;
    v15[3] = v18;
    v15[4] = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1000BC09C;
    *(v16 + 24) = v15;
    aBlock[4] = sub_1000B3DA0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100248B20;
    v17 = _Block_copy(aBlock);

    dispatch_sync(v14, v17);
    _Block_release(v17);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1001121B4(uint64_t result, uint64_t a2, double a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = 3;
  return result;
}

uint64_t ReadingGoalsController.deinit()
{
  sub_10008E7BC((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t ReadingGoalsController.__deallocating_deinit()
{
  sub_10008E7BC((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

double sub_100112230()
{
  v1 = *(*(*v0 + 56) + 16);
  sub_1001C6688();
  return v3;
}

uint64_t sub_100112298@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 56);
  a1[3] = sub_100084528(&qword_10026FAF0, &unk_1001F1950);
  a1[4] = &protocol witness table for <> ObservableContainer<A>;
  *a1 = v3;
}

uint64_t sub_1001122F8(uint64_t result, uint64_t a2, double a3)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100112374(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v45[3] = a3;
  v45[4] = a4;
  v8 = sub_1000B3C78(v45);
  (*(*(a3 - 8) + 32))(v8, a1, a3);
  sub_1000B3A90(v45, (a2 + 2));
  v37 = *(a4 + 8);
  v38 = v8;
  v9 = v37(a3, a4);
  v11 = v10;
  sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v36[1] = qword_1002711E8;
  sub_1001C5118();
  sub_100084528(&qword_10026FAF0, &unk_1001F1950);
  swift_allocObject();
  a2[7] = sub_100098A20(v9, 2, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v14 = a2[5];
  v13 = a2[6];
  sub_10009D148((a2 + 2), v14);
  v15 = *(v13 + 24);

  v15(sub_1000BBFA8, v12, v14, v13);
  swift_endAccess();

  v16 = *(a2[7] + 16);
  sub_1001C6688();
  if (aBlock == v37(a3, a4) && *&v40 == v17)
  {
    goto LABEL_6;
  }

  sub_1001C65B8();
  sub_1001C5118();
  v18 = a2[5];
  v19 = a2[6];
  v20 = sub_10009BB74(a2 + 2, v18);
  v21 = *(v18 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24);
  v25 = (*(v19 + 8))(v18, v19);
  v27 = v26;
  v28 = (*(v21 + 8))(v24, v18);
  v29 = a2[7];
  __chkstk_darwin(v28);
  v35[2] = v25;
  v35[3] = v27;
  v30 = *(v29 + 16);
  v31 = swift_allocObject();
  v31[2] = sub_100112D50;
  v31[3] = v35;
  v31[4] = v29;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_1000BC09C;
  *(v32 + 24) = v31;
  v43 = sub_1000B3DA0;
  v44 = v32;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_1000906F4;
  v42 = &unk_100248AA8;
  v33 = _Block_copy(&aBlock);

  dispatch_sync(v30, v33);
  _Block_release(v33);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if ((v29 & 1) == 0)
  {
LABEL_6:
    sub_10008E7BC(v45);
    return a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100112868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  return sub_100112374(v10, v11, a3, a4);
}

uint64_t sub_100112954(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_10011296C(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = *(v2 + 8);
  *a1 = *v2;
  *(a1 + 8) = result;
  *(a1 + 16) = 1;
  return result;
}

double sub_10011298C(uint64_t a1)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t sub_1001129A8()
{
  result = qword_1002714E8;
  if (!qword_1002714E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714E8);
  }

  return result;
}

unint64_t sub_100112A00()
{
  result = qword_1002714F0;
  if (!qword_1002714F0)
  {
    sub_1000885AC(&qword_1002714F8, &qword_1001F3E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002714F0);
  }

  return result;
}

unint64_t sub_100112A68()
{
  result = qword_100271500;
  if (!qword_100271500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingGoals.StateChange.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_20;
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 3;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 3;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 3;
  v9 = v7 - 3;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ReadingGoals.StateChange.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_100112CE8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100112CFC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

double sub_100112D50(uint64_t a1)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = result;
  *(a1 + 16) = 3;
  return result;
}

uint64_t ModelState.LoadedState.description.getter(char a1)
{
  if (a1)
  {
    return 0x7964616572;
  }

  else
  {
    return 0x676E6964616F6CLL;
  }
}

uint64_t ModelState.Source.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = (*(v3 + 48))(v10, 2, v2);
  if (v12)
  {
    if (v12 == 1)
    {
      return 0x6C61636F6CLL;
    }

    else
    {
      return 0x6465726F7473;
    }
  }

  else
  {
    (*(v3 + 32))(v7, v10, v2);
    v16[0] = 0x2865746F6D6572;
    v16[1] = 0xE700000000000000;
    v14 = *(a1 + 32);
    v17._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v17);

    v18._countAndFlagsBits = 41;
    v18._object = 0xE100000000000000;
    sub_1001C6138(v18);
    v15 = v16[0];
    (*(v3 + 8))(v7, v2);
    return v15;
  }
}

uint64_t ModelState.updating(model:source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*(a3 + 16) - 8) + 24))(v3, a1, *(a3 + 16));
  v6 = *(a3 + 48);
  v7 = *(a3 + 24);
  v8 = *(a3 + 32);
  v9 = type metadata accessor for ModelState.Source();
  v10 = *(*(v9 - 8) + 24);

  return v10(v3 + v6, a2, v9);
}

uint64_t ModelState.init(model:loaded:source:revisionInfo:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for ModelState();
  v13 = v12[13];
  v14 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  *(a6 + v12[11]) = a2 & 1;
  v15 = v12[12];
  v16 = type metadata accessor for ModelState.Source();
  (*(*(v16 - 8) + 32))(a6 + v15, a3, v16);

  return sub_10009AC98(a4, a6 + v13);
}

uint64_t ModelState.updating(model:source:revisionInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ModelState.updating(model:source:)(a1, a2, a4);
  v7 = v4 + *(a4 + 52);

  return sub_10009AFA8(a3, v7);
}

uint64_t static ModelState.Source.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(a1);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = v10;
  v39 = &v37 - v11;
  v12 = type metadata accessor for ModelState.Source();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v41 = &v37 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v44 = *(TupleTypeMetadata2 - 8);
  v17 = *(v44 + 64);
  v18 = __chkstk_darwin(TupleTypeMetadata2);
  v20 = &v37 - v19;
  v42 = v13;
  v43 = v18;
  v21 = *(v18 + 48);
  v22 = *(v13 + 16);
  v22(&v37 - v19, a1, v12);
  v22(&v20[v21], a2, v12);
  v23 = *(v6 + 48);
  v24 = a3;
  v25 = v23(v20, 2, a3);
  if (v25)
  {
    if (v25 == 1)
    {
      if (v23(&v20[v21], 2, a3) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v23(&v20[v21], 2, a3) == 2)
    {
LABEL_8:
      v27 = 1;
      v28 = v42;
      goto LABEL_10;
    }

LABEL_9:
    v27 = 0;
    v12 = v43;
    v28 = v44;
    goto LABEL_10;
  }

  v37 = v6;
  v26 = v41;
  v22(v41, v20, v12);
  if (v23(&v20[v21], 2, a3))
  {
    (*(v37 + 8))(v26, a3);
    goto LABEL_9;
  }

  v30 = v37;
  v31 = *(v37 + 32);
  v32 = v39;
  v31(v39, v26, v24);
  v33 = &v20[v21];
  v34 = v40;
  v31(v40, v33, v24);
  v35 = *(v38 + 8);
  if (sub_1001C5C38())
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_1001C5C38() ^ 1;
  }

  v36 = *(v30 + 8);
  v36(v34, v24);
  v36(v32, v24);
  v28 = v42;
LABEL_10:
  (*(v28 + 8))(v20, v12);
  return v27 & 1;
}

uint64_t sub_10011366C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  return static ModelState.Source.== infix(_:_:)(a1, a2, a3[2]);
}

uint64_t (*ModelState.loaded.modify(uint64_t a1, uint64_t a2))()
{
  result = MarkedAsFinishedMechanism.rawValue.getter;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t ModelState.lastSource.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = type metadata accessor for ModelState.Source();
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

uint64_t ModelState.lastSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = type metadata accessor for ModelState.Source();
  v9 = *(*(v8 - 8) + 40);

  return v9(v2 + v4, a1, v8);
}

uint64_t (*ModelState.lastSource.modify(uint64_t a1, uint64_t a2))()
{
  result = MarkedAsFinishedMechanism.rawValue.getter;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_100113858(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*CRDTModelFileSyncInfo.additionalFields.modify(uint64_t a1, uint64_t a2))()
{
  result = MarkedAsFinishedMechanism.rawValue.getter;
  v4 = v2 + *(a2 + 52);
  return result;
}

BOOL static ModelState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRDTModelRevisionInfo();
  v29 = *(v8 - 8);
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v28 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v28 - v13);
  v15 = sub_100084528(&qword_10026FAE0, &unk_1001F1930);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v28 - v17;
  v19 = type metadata accessor for ModelState();
  if (*(a1 + *(v19 + 44)) != *(a2 + *(v19 + 44)))
  {
    return 0;
  }

  v20 = v19;
  if ((static ModelState.Source.== infix(_:_:)(a1 + *(v19 + 48), a2 + *(v19 + 48), a3) & 1) == 0)
  {
    return 0;
  }

  v21 = *(a4 + 8);
  if (sub_1001C5C38() & 1) != 0 || (sub_1001C5C38())
  {
    return 0;
  }

  v22 = *(v20 + 52);
  v23 = *(v15 + 48);
  sub_100113858(a1 + v22, v18);
  sub_100113858(a2 + v22, &v18[v23]);
  v24 = *(v29 + 48);
  if (v24(v18, 1, v8) != 1)
  {
    sub_100113858(v18, v14);
    if (v24(&v18[v23], 1, v8) != 1)
    {
      v27 = v28;
      sub_100113C14(&v18[v23], v28);
      v25 = _s14bookdatastored21CRDTModelRevisionInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v14, v27);
      sub_1000B6930(v27);
      sub_1000B6930(v14);
      sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
      return v25;
    }

    sub_1000B6930(v14);
    goto LABEL_10;
  }

  if (v24(&v18[v23], 1, v8) != 1)
  {
LABEL_10:
    sub_10008875C(v18, &qword_10026FAE0, &unk_1001F1930);
    return 0;
  }

  sub_10008875C(v18, &unk_10026F410, &unk_1001F0E40);
  return 1;
}

uint64_t sub_100113C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRDTModelRevisionInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ModelState.description.getter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_1001C69C8(45);
  v8 = *(a1 + 16);
  v9 = *(a1 + 32);
  v10 = sub_1001C6CC8();
  v12 = v11;

  v24 = v10;
  v25 = v12;
  v26._countAndFlagsBits = 0x646564616F6C202CLL;
  v26._object = 0xE90000000000003DLL;
  sub_1001C6138(v26);
  v13 = *(a1 + 24);
  if (*(v2 + *(a1 + 44)))
  {
    v14._countAndFlagsBits = 0x7964616572;
  }

  else
  {
    v14._countAndFlagsBits = 0x676E6964616F6CLL;
  }

  if (*(v2 + *(a1 + 44)))
  {
    v15 = 0xE500000000000000;
  }

  else
  {
    v15 = 0xE700000000000000;
  }

  v14._object = v15;
  sub_1001C6138(v14);

  v27._countAndFlagsBits = 0x6F537473616C202CLL;
  v27._object = 0xED00003D65637275;
  sub_1001C6138(v27);
  v16 = *(a1 + 48);
  v17 = type metadata accessor for ModelState.Source();
  v28._countAndFlagsBits = ModelState.Source.description.getter(v17);
  sub_1001C6138(v28);

  v29._countAndFlagsBits = 0x697369766572202CLL;
  v29._object = 0xEF3D6F666E496E6FLL;
  sub_1001C6138(v29);
  sub_100113858(v2 + *(a1 + 52), v7);
  v18 = type metadata accessor for CRDTModelRevisionInfo();
  if ((*(*(v18 - 8) + 48))(v7, 1, v18) == 1)
  {
    sub_10008875C(v7, &unk_10026F410, &unk_1001F0E40);
    v19 = 0xE300000000000000;
    v20._countAndFlagsBits = 7104878;
  }

  else
  {
    v21 = CRDTModelRevisionInfo.description.getter();
    v19 = v22;
    sub_1000B6930(v7);
    v20._countAndFlagsBits = v21;
  }

  v20._object = v19;
  sub_1001C6138(v20);

  return v24;
}

void sub_100113F18(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    v5 = a1[4];
    type metadata accessor for ModelState.LoadedState();
    if (v6 <= 0x3F)
    {
      type metadata accessor for ModelState.Source();
      if (v7 <= 0x3F)
      {
        sub_1001149B4();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100113FF8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 - 2;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(sub_1001C4CA8() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 - 1;
  if (v9 > v14)
  {
    v14 = v9;
  }

  v15 = *(v6 + 64);
  v16 = v15;
  if (v7 <= 1)
  {
    if (v15 <= 3)
    {
      v18 = (~(-1 << (8 * v15)) - v7 + 2) >> (8 * v15);
      if (v18 > 0xFFFE)
      {
        v17 = 4;
      }

      else
      {
        v19 = 1;
        if (v18 >= 0xFF)
        {
          v19 = 2;
        }

        if (v18)
        {
          v17 = v19;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }

    v16 = v17 + v15;
  }

  if (v11)
  {
    v20 = -2;
  }

  else
  {
    v20 = -1;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v6 + 80);
  v22 = *(v10 + 80);
  v23 = v22 | 7;
  if (a2 > v14)
  {
    v24 = v20 + *(v10 + 64) - ((-33 - v22) | v22) - ((((-2 - v15 - v21) | v21) - (v16 + v23)) | v23);
    v25 = 8 * v24;
    if (v24 > 3)
    {
      goto LABEL_31;
    }

    v27 = ((a2 - v14 + ~(-1 << v25)) >> v25) + 1;
    if (HIWORD(v27))
    {
      v26 = *(a1 + v24);
      if (v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v27 <= 0xFF)
      {
        if (v27 < 2)
        {
          goto LABEL_51;
        }

LABEL_31:
        v26 = *(a1 + v24);
        if (!*(a1 + v24))
        {
          goto LABEL_51;
        }

LABEL_38:
        v28 = (v26 - 1) << v25;
        if (v24 > 3)
        {
          v28 = 0;
        }

        if (v24)
        {
          if (v24 <= 3)
          {
            v29 = v24;
          }

          else
          {
            v29 = 4;
          }

          if (v29 > 2)
          {
            if (v29 == 3)
            {
              v30 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v30 = *a1;
            }
          }

          else if (v29 == 1)
          {
            v30 = *a1;
          }

          else
          {
            v30 = *a1;
          }
        }

        else
        {
          v30 = 0;
        }

        return v14 + (v30 | v28) + 1;
      }

      v26 = *(a1 + v24);
      if (*(a1 + v24))
      {
        goto LABEL_38;
      }
    }
  }

LABEL_51:
  if (v7 == v14)
  {
    v31 = *(v6 + 48);

    return v31(a1, v7, v5);
  }

  v33 = (a1 + v15 + v21 + 1) & ~v21;
  if (v8 == v14)
  {
    if (v7)
    {
      v34 = (*(v6 + 48))(v33, v7, v5);
      v35 = v34 >= 2;
      result = v34 - 2;
      if (result != 0 && v35)
      {
        return result;
      }
    }

    return 0;
  }

  if (v7 <= 1)
  {
    if (v15 <= 3)
    {
      v37 = (~(-1 << (8 * v15)) - v7 + 2) >> (8 * v15);
      v38 = 1;
      if (v37 >= 0xFF)
      {
        v38 = 2;
      }

      if (!v37)
      {
        v38 = 0;
      }

      if (v37 <= 0xFFFE)
      {
        v36 = v38;
      }

      else
      {
        v36 = 4;
      }
    }

    else
    {
      v36 = 1;
    }

    v15 += v36;
  }

  if (v12 > 0x7FFFFFFE)
  {
    v40 = (*(v10 + 48))((v22 + ((((v23 + v33 + v15) & ~v23) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v22);
    LODWORD(v39) = v40 - 1;
  }

  else
  {
    v39 = *(((v23 + v33 + v15) & ~v23) + 8);
    if (v39 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    v40 = v39 + 1;
  }

  if (v40 < 2)
  {
    LODWORD(v39) = 0;
  }

  if (v39 >= 2)
  {
    return (v39 - 1);
  }

  else
  {
    return 0;
  }
}

void sub_1001143E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v52 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9 - 2;
  }

  if (v9 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = *(sub_1001C4CA8() - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v16 = 2147483646;
  }

  else
  {
    v16 = v15;
  }

  if (v11 <= v16 - 1)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = v11;
  }

  v18 = *(v8 + 80);
  v19 = *(v8 + 64);
  if (v9 <= 1)
  {
    if (v14 <= 3)
    {
      v21 = (~(-1 << (8 * v14)) - v9 + 2) >> (8 * v14);
      v22 = 1;
      if (v21 >= 0xFF)
      {
        v22 = 2;
      }

      if (!v21)
      {
        v22 = 0;
      }

      if (v21 <= 0xFFFE)
      {
        v20 = v22;
      }

      else
      {
        v20 = 4;
      }
    }

    else
    {
      v20 = 1;
    }

    v19 = v20 + v14;
  }

  v23 = *(v12 + 80);
  v24 = (v19 + (v23 | 7) + ((v14 + v18 + 1) & ~v18)) & ~(v23 | 7);
  v25 = *(v12 + 64);
  if (!v13)
  {
    ++v25;
  }

  v26 = ((v23 + 32) & ~v23) + v25;
  v27 = v24 + v26;
  if (a3 <= v17)
  {
    v28 = 0;
  }

  else if (v27 <= 3)
  {
    v31 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v31))
    {
      v28 = 4;
    }

    else
    {
      if (v31 < 0x100)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      if (v31 >= 2)
      {
        v28 = v32;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    v28 = 1;
  }

  if (v17 < a2)
  {
    v29 = ~v17 + a2;
    if (v27 >= 4)
    {
      bzero(a1, v27);
      *a1 = v29;
      v30 = 1;
      if (v28 > 1)
      {
        goto LABEL_36;
      }

      goto LABEL_81;
    }

    v30 = (v29 >> (8 * v27)) + 1;
    if (v27)
    {
      v33 = v29 & ~(-1 << (8 * v27));
      bzero(a1, v27);
      if (v27 != 3)
      {
        if (v27 == 2)
        {
          *a1 = v33;
          if (v28 > 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          *a1 = v29;
          if (v28 > 1)
          {
LABEL_36:
            if (v28 == 2)
            {
              *&a1[v27] = v30;
            }

            else
            {
              *&a1[v27] = v30;
            }

            return;
          }
        }

LABEL_81:
        if (v28)
        {
          a1[v27] = v30;
        }

        return;
      }

      *a1 = v33;
      a1[2] = BYTE2(v33);
    }

    if (v28 > 1)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_57;
    }

    *&a1[v27] = 0;
  }

  else if (v28)
  {
    a1[v27] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_57;
  }

  if (!a2)
  {
    return;
  }

LABEL_57:
  if (v9 == v17)
  {
    v34 = *(v52 + 56);
    v35 = a1;
    v36 = a2;
LABEL_59:

    v34(v35, v36, v9, v7);
    return;
  }

  v37 = &a1[v14 + 1 + v18] & ~v18;
  if (v10 == v17)
  {
    if (a2 + 2 <= v9)
    {
      if (a2 == -2)
      {
        return;
      }

      v34 = *(v52 + 56);
      v35 = v37;
      v36 = (a2 + 2);
      goto LABEL_59;
    }

    if (v14 <= 3)
    {
      v38 = ~(-1 << (8 * v14));
    }

    else
    {
      v38 = -1;
    }

    if (!v14)
    {
      return;
    }

    v39 = v38 & (a2 - v9 + 1);
    if (v14 <= 3)
    {
      v40 = v14;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
LABEL_115:
    bzero(v41, v14);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        *v37 = v39;
        *(v37 + 2) = BYTE2(v39);
      }

      else
      {
        *v37 = v39;
      }
    }

    else if (v40 == 1)
    {
      *v37 = v39;
    }

    else
    {
      *v37 = v39;
    }

    return;
  }

  if (v9 <= 1)
  {
    if (v14 <= 3)
    {
      v43 = (~(-1 << (8 * v14)) - v9 + 2) >> (8 * v14);
      v44 = 1;
      if (v43 >= 0xFF)
      {
        v44 = 2;
      }

      if (!v43)
      {
        v44 = 0;
      }

      if (v43 <= 0xFFFE)
      {
        v42 = v44;
      }

      else
      {
        v42 = 4;
      }
    }

    else
    {
      v42 = 1;
    }

    v14 += v42;
  }

  v37 = ((v23 | 7) + v37 + v14) & ~(v23 | 7);
  if (v16 - 1 < a2)
  {
    if (v26 <= 3)
    {
      v45 = ~(-1 << (8 * v26));
    }

    else
    {
      v45 = -1;
    }

    if (!v26)
    {
      return;
    }

    v39 = v45 & (a2 - v16);
LABEL_111:
    if (v26 <= 3)
    {
      v40 = v26;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
    v14 = v26;
    goto LABEL_115;
  }

  v46 = a2 >= v16;
  v47 = a2 - v16;
  if (v46)
  {
    if (v26 <= 3)
    {
      v48 = ~(-1 << (8 * v26));
    }

    else
    {
      v48 = -1;
    }

    if (!v26)
    {
      return;
    }

    v39 = v48 & v47;
    goto LABEL_111;
  }

  if (v15 <= 0x7FFFFFFE)
  {
    if (a2 > 0x7FFFFFFD)
    {
      *v37 = 0;
      *(v37 + 8) = 0;
      *v37 = a2 - 2147483646;
    }

    else
    {
      *(v37 + 8) = (a2 + 1);
    }

    return;
  }

  v37 = (v23 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v23;
  v49 = a2 - v15;
  if (a2 >= v15)
  {
    if (v25 <= 3)
    {
      v51 = ~(-1 << (8 * v25));
    }

    else
    {
      v51 = -1;
    }

    if (!v25)
    {
      return;
    }

    v39 = v51 & v49;
    if (v25 <= 3)
    {
      v40 = v25;
    }

    else
    {
      v40 = 4;
    }

    v41 = v37;
    v14 = v25;
    goto LABEL_115;
  }

  v50 = *(v12 + 56);

  v50(v37, (a2 + 2));
}

void sub_1001149B4()
{
  if (!qword_100271630[0])
  {
    type metadata accessor for CRDTModelRevisionInfo();
    v0 = sub_1001C67F8();
    if (!v1)
    {
      atomic_store(v0, qword_100271630);
    }
  }
}

uint64_t sub_100114A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_100114A68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 > v6)
  {
    v12 = 8 * v7;
    if (v7 <= 3)
    {
      v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v14))
      {
        v13 = *(a1 + v7);
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 > 0xFF)
      {
        v13 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      if (v14 < 2)
      {
LABEL_35:
        if (!v6)
        {
          return 0;
        }

        goto LABEL_36;
      }
    }

    v13 = *(a1 + v7);
    if (!*(a1 + v7))
    {
      goto LABEL_35;
    }

LABEL_22:
    v15 = (v13 - 1) << v12;
    if (v7 > 3)
    {
      v15 = 0;
    }

    if (v7)
    {
      if (v7 <= 3)
      {
        v16 = v7;
      }

      else
      {
        v16 = 4;
      }

      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v17 = *a1;
        }
      }

      else if (v16 == 1)
      {
        v17 = *a1;
      }

      else
      {
        v17 = *a1;
      }
    }

    else
    {
      v17 = 0;
    }

    return v6 + (v17 | v15) + 1;
  }

LABEL_36:
  if (!v5)
  {
    return 0;
  }

  v18 = (*(v4 + 48))(a1, v5);
  v19 = v18 >= 2;
  result = v18 - 2;
  if (result == 0 || !v19)
  {
    return 0;
  }

  return result;
}

void sub_100114C38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 2;
  v10 = v8;
  if (v7 <= 1)
  {
    v9 = 0;
    if (v8 <= 3)
    {
      v12 = (~(-1 << (8 * v8)) - v7 + 2) >> (8 * v8);
      if (v12 > 0xFFFE)
      {
        v11 = 4;
      }

      else
      {
        v13 = 1;
        if (v12 >= 0xFF)
        {
          v13 = 2;
        }

        if (v12)
        {
          v11 = v13;
        }

        else
        {
          v11 = 0;
        }
      }
    }

    else
    {
      v11 = 1;
    }

    v10 = v11 + v8;
  }

  v14 = a3 >= v9;
  v15 = a3 - v9;
  if (v15 != 0 && v14)
  {
    v16 = 1;
    if (v10 <= 3)
    {
      v17 = ((v15 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      v18 = HIWORD(v17);
      if (v17 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v17 >= 2)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v18)
      {
        v16 = 4;
      }

      else
      {
        v16 = v20;
      }
    }

    if (v9 >= a2)
    {
LABEL_29:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *&a1[v10] = 0;
      }

      else if (v16)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (a2 + 2 <= v7)
        {
          v27 = *(v6 + 56);

          v27();
        }

        else
        {
          if (v8 <= 3)
          {
            v24 = ~(-1 << (8 * v8));
          }

          else
          {
            v24 = -1;
          }

          if (v8)
          {
            v25 = v24 & (a2 - v7 + 1);
            if (v8 <= 3)
            {
              v26 = v8;
            }

            else
            {
              v26 = 4;
            }

            bzero(a1, v8);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *a1 = v25;
                a1[2] = BYTE2(v25);
              }

              else
              {
                *a1 = v25;
              }
            }

            else if (v26 == 1)
            {
              *a1 = v25;
            }

            else
            {
              *a1 = v25;
            }
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v16 = 0;
    if (v9 >= a2)
    {
      goto LABEL_29;
    }
  }

  v21 = ~v9 + a2;
  if (v10 >= 4)
  {
    bzero(a1, v10);
    *a1 = v21;
    v22 = 1;
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v10)) + 1;
  if (!v10)
  {
LABEL_58:
    if (v16 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v10));
  bzero(a1, v10);
  if (v10 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v10 == 2)
  {
    *a1 = v23;
    if (v16 > 1)
    {
LABEL_62:
      if (v16 == 2)
      {
        *&a1[v10] = v22;
      }

      else
      {
        *&a1[v10] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v16 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v16)
  {
    a1[v10] = v22;
  }
}

uint64_t sub_100114F48(void *a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100271760, &qword_1001F4288);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10009BB74(a1, a1[3]);
  sub_1001154BC();
  sub_1001C6E78();
  v11[1] = a2;
  sub_100084528(&qword_100271748, &qword_1001F4280);
  sub_100115510(&qword_100271768, &qword_100271770);
  sub_1001C6CA8();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int sub_1001150DC()
{
  sub_1001C6DF8();
  sub_1001C6E08(0);
  return sub_1001C6E28();
}

Swift::Int sub_100115148()
{
  sub_1001C6DF8();
  sub_1001C6E08(0);
  return sub_1001C6E28();
}

uint64_t sub_1001151A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D65744964726163 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1001C6D08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100115234(uint64_t a1)
{
  v2 = sub_1001154BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100115270(uint64_t a1)
{
  v2 = sub_1001154BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001152B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100115300(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_100115300(uint64_t *a1)
{
  v3 = sub_100084528(&qword_100271738, &qword_1001F4278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10009BB74(a1, a1[3]);
  sub_1001154BC();
  sub_1001C6E58();
  if (v1)
  {
    sub_10008E7BC(a1);
  }

  else
  {
    sub_100084528(&qword_100271748, &qword_1001F4280);
    sub_100115510(&qword_100271750, &qword_100271758);
    sub_1001C6C28();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10008E7BC(a1);
  }

  return v9;
}

unint64_t sub_1001154BC()
{
  result = qword_100271740;
  if (!qword_100271740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271740);
  }

  return result;
}

uint64_t sub_100115510(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_100271748, &qword_1001F4280);
    sub_100115598(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100115598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s8CardItemVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s8CardListV10CodingKeysOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s8CardListV10CodingKeysOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1001156C0()
{
  result = qword_100271778;
  if (!qword_100271778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271778);
  }

  return result;
}

unint64_t sub_100115718()
{
  result = qword_100271780;
  if (!qword_100271780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271780);
  }

  return result;
}

unint64_t sub_100115770()
{
  result = qword_100271788;
  if (!qword_100271788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100271788);
  }

  return result;
}

id CloudSyncDiagnosticService.__allocating_init(cloudKitController:entityServiceProviders:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  sub_1001C5138();
  *&v5[OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController] = a1;
  *&v5[OBJC_IVAR___BDSCloudSyncDiagnosticService_entityServiceProviders] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, "init");
}

id CloudSyncDiagnosticService.init(cloudKitController:entityServiceProviders:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1001C5138();
  *&v2[OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController] = a1;
  *&v2[OBJC_IVAR___BDSCloudSyncDiagnosticService_entityServiceProviders] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

uint64_t sub_100115A30()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController) privateCloudDatabaseController];
  [v1 detach];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100115C38(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100115CB0, 0, 0);
}

uint64_t sub_100115CB0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [*&v2[OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController] privateCloudDatabaseController];
  [v3 detach];

  v1[2](v1, 0);
  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100115D88()
{
  v1 = *(v0 + 16);
  v2 = sub_100115DF0(0);
  v3 = *(v0 + 8);

  return v3(v2);
}

id sub_100115DF0(char a1)
{
  v2 = v1;
  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Reading diagnosticInfo", v5, 2u);
  }

  v6 = *(v2 + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController);
  v7 = [v6 enableCloudSync];
  v8 = [v6 currentStatus];
  v9 = [v6 container];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    sub_1001C6018();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 gettingAccountInfo];
  v15 = [v6 privateCloudDatabaseController];
  v16 = [v15 diagnosticDatabaseInfo];
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v17 = static BDSSyncEngine.shared;
  v18 = OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_saltManager;
  swift_beginAccess();
  v19 = *(v17 + v18);
  if (v19)
  {
    v20 = [v19 establishedSalt];
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(BDSCloudSyncDiagnosticSyncEngineInfo) initWithEstablishedSalt:v20];
  sub_100116374(*(v2 + OBJC_IVAR___BDSCloudSyncDiagnosticService_entityServiceProviders), a1 & 1);
  if (v13)
  {
    v22 = sub_1001C5FE8();
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_allocWithZone(BDSCloudSyncDiagnosticInfo);
  sub_100088714(0, &qword_1002718F0, off_10023DD20);
  isa = sub_1001C6288().super.isa;

  v25 = [v23 initWithEnabledSync:v7 accountStatus:v8 container:v22 gettingAccountInfo:v14 privateDatabaseInfo:v16 privateDatabaseSyncEngineInfo:v21 entityInfos:isa];

  return v25;
}

uint64_t sub_100116264(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1001162DC, 0, 0);
}

uint64_t sub_1001162DC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_100115DF0(0);

  (v1)[2](v1, v3, 0);
  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

void *sub_100116374(unint64_t isUniquelyReferenced_nonNull_bridgeObject, char a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v2 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v2)
  {
    v3 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v4 = _swiftEmptyArrayStorage;
    v29 = v2;
    while (v33)
    {
      isUniquelyReferenced_nonNull_bridgeObject = sub_1001C69F8();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_41;
      }

LABEL_9:
      v7 = [v5 diagnosticEntityInfos:{a2 & 1, v28}];
      sub_100088714(0, &qword_1002718F0, off_10023DD20);
      v8 = sub_1001C6298();
      swift_unknownObjectRelease();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1001C6B38();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v4 >> 62;
      if (v4 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1001C6B38();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v37 = v10;
      v6 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (v6)
      {
        goto LABEL_43;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v35 = v4;
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          sub_1001C6B38();
          goto LABEL_22;
        }

        v13 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1001C6A08();
      v35 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        v18 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1001C6B38();
        v13 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v37)
          {
            goto LABEL_45;
          }

          v19 = v13 + 8 * v15 + 32;
          v30 = v13;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_47;
            }

            sub_10011A3A0();
            for (i = 0; i != v17; ++i)
            {
              sub_100084528(&qword_1002718F8, &qword_1001F4570);
              v21 = sub_10017C3BC(v36, i, v8);
              v23 = *v22;
              (v21)(v36, 0);
              *(v19 + 8 * i) = v23;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v2 = v29;
          v4 = v35;
          if (v37 >= 1)
          {
            v24 = *(v30 + 16);
            v6 = __OFADD__(v24, v37);
            v25 = v24 + v37;
            if (v6)
            {
              goto LABEL_46;
            }

            *(v30 + 16) = v25;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v4 = v35;
      if (v37 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v3 == v2)
      {
        return v4;
      }
    }

    if (v3 >= *(v32 + 16))
    {
      goto LABEL_42;
    }

    v5 = *(v31 + 8 * v3);
    isUniquelyReferenced_nonNull_bridgeObject = swift_unknownObjectRetain();
    v6 = __OFADD__(v3++, 1);
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v2 = sub_1001C6B38();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t CloudSyncDiagnosticService.findLocalIdDupes()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100106B64;

  return sub_10011678C();
}

uint64_t sub_1001167AC()
{
  v1 = [objc_msgSend(*(v0[2] + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController) "configuration")];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_1001C6298();
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v0[3] = v2;
  v3 = v2[2];
  v0[4] = v3;
  if (v3)
  {
    v0[5] = 0;
    v4 = v2[4];
    v5 = v2[5];
    v0[6] = v5;

    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_10011695C;
    v7 = v0[2];
    v8 = v4;
    v9 = v5;
  }

  else
  {

    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_100116BBC;
    v11 = v0[2];
    v9 = 0xEE00656E6F5A6E6FLL;
    v8 = 0x697463656C6C6F43;
  }

  return sub_1001176C0(v8, v9);
}

uint64_t sub_10011695C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_100116A74, 0, 0);
}

uint64_t sub_100116A74()
{
  v1 = v0[5] + 1;
  if (v1 == v0[4])
  {
    v2 = v0[3];

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_100116BBC;
    v4 = v0[2];
    v5 = 0xEE00656E6F5A6E6FLL;
    v6 = 0x697463656C6C6F43;
  }

  else
  {
    v0[5] = v1;
    v7 = v0[3] + 16 * v1;
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);
    v0[6] = v8;

    v10 = swift_task_alloc();
    v0[7] = v10;
    *v10 = v0;
    v10[1] = sub_10011695C;
    v11 = v0[2];
    v6 = v9;
    v5 = v8;
  }

  return sub_1001176C0(v6, v5);
}

uint64_t sub_100116BBC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100116E24(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100116ECC;

  return sub_10011678C();
}

uint64_t sub_100116ECC()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2, 0);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t CloudSyncDiagnosticService.stateForLog()()
{
  v0 = sub_100115DF0(1);
  sub_100084528(&qword_1002717A0, &qword_1001F43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  strcpy((inited + 32), "diagnosticInfo");
  *(inited + 47) = -18;
  v2 = [v0 stateForLog];
  v3 = sub_1001C5F08();

  *(inited + 72) = sub_100084528(&qword_1002717A8, &qword_1001F43E8);
  *(inited + 48) = v3;
  v4 = sub_100119458(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_1002717B0, &qword_1001F43F0);

  return v4;
}

uint64_t CloudSyncDiagnosticService.fetchRemoteChanges()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000F9958;

  return sub_100119898();
}

uint64_t sub_1001174EC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100117594;

  return sub_100119898();
}

uint64_t sub_100117594(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1001176C0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return _swift_task_switch(sub_1001176E4, 0, 0);
}

uint64_t sub_1001176E4()
{
  v19 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  *(v0 + 80) = OBJC_IVAR___BDSCloudSyncDiagnosticService_logger;

  v3 = sub_1001C5128();
  v4 = sub_1001C65B8();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1001874E8(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "_findLocalIdDupes(%{public}s)", v7, 0xCu);
    sub_10008E7BC(v8);
  }

  v9 = [*(*(v0 + 72) + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController) privateCloudDatabaseController];
  *(v0 + 88) = v9;
  v10 = type metadata accessor for CloudSyncDiagnosticCloudFetcher();
  v11 = objc_allocWithZone(v10);
  v12 = v9;
  sub_1001C5138();
  *&v11[OBJC_IVAR____TtC14bookdatastored31CloudSyncDiagnosticCloudFetcher_cloudKitDatabaseController] = v12;
  *(v0 + 40) = v11;
  *(v0 + 48) = v10;
  *(v0 + 96) = objc_msgSendSuper2((v0 + 40), "init");
  v13 = swift_allocObject();
  *(v0 + 104) = v13;
  *(v13 + 16) = &_swiftEmptyDictionarySingleton;

  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = sub_100117978;
  v16 = *(v0 + 56);
  v15 = *(v0 + 64);

  return CloudSyncDiagnosticCloudFetcher.fetchZone(zoneName:recordBlock:)(v16, v15, sub_10011A398, v13);
}

uint64_t sub_100117978()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100117A90, 0, 0);
}

void sub_100117A90()
{
  v90 = v0;
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  v7 = (63 - v4) >> 6;
  v73 = v2;

  v8 = 0;
  v84 = v0;
  v71 = v7;
  v72 = v3;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v75 = v9;
    v76 = (v6 - 1) & v6;
    v10 = __clz(__rbit64(v6)) | (v9 << 6);
    v11 = (*(v73 + 48) + 16 * v10);
    v12 = v11[1];
    v82 = *v11;
    v13 = *(*(v73 + 56) + 8 * v10);
    v78 = v13 + 64;
    v14 = -1 << *(v13 + 32);
    if (-v14 < 64)
    {
      v15 = ~(-1 << -v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v13 + 64);
    v77 = (63 - v14) >> 6;
    v88 = v12;

    v17 = 0;
    v18 = 0;
LABEL_16:
    v20 = v77;
    v19 = v78;
    while (v16)
    {
LABEL_22:
      v22 = __clz(__rbit64(v16)) | (v17 << 6);
      v23 = (*(v13 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v13 + 56) + 8 * v22);
      v27 = v26 >> 62;
      if (v26 >> 62)
      {
        v28 = sub_1001C6B38();
        v20 = v77;
        v19 = v78;
      }

      else
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 &= v16 - 1;
      if (v28 >= 2)
      {
        v29 = __OFADD__(v18, 1);
        v30 = v18 + 1;
        if (v29)
        {
          goto LABEL_55;
        }

        v74 = v24;
        v69 = v13;
        v70 = v30;
        v31 = *(v0 + 72);
        v32 = *(v0 + 80);
        v33 = *(v0 + 64);

        v34 = sub_1001C5128();
        v35 = sub_1001C65B8();

        v81 = v26;
        v83 = v25;
        if (os_log_type_enabled(v34, v35))
        {
          v86 = v35;
          v37 = *(v0 + 56);
          v36 = *(v0 + 64);
          v38 = swift_slowAlloc();
          v89[0] = swift_slowAlloc();
          *v38 = 136446978;
          *(v38 + 4) = sub_1001874E8(v37, v36, v89);
          *(v38 + 12) = 2082;
          *(v38 + 14) = sub_1001874E8(v82, v88, v89);
          *(v38 + 22) = 2080;
          *(v38 + 24) = sub_1001874E8(v74, v25, v89);
          *(v38 + 32) = 2048;
          v26 = v81;
          if (v27)
          {
            v39 = sub_1001C6B38();
          }

          else
          {
            v39 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v38 + 34) = v39;
          _os_log_impl(&_mh_execute_header, v34, v86, "_findLocalIdDupes(%{public}s, %{public}s) - Found localId dupes - %s (%ld):", v38, 0x2Au);
          swift_arrayDestroy();

          v0 = v84;
        }

        else
        {
        }

        v40 = v26;
        if (v27)
        {
          v41 = sub_1001C6B38();
          v40 = v26;
          if (!v41)
          {
LABEL_47:

            v13 = v69;
            v18 = v70;
            goto LABEL_16;
          }
        }

        else
        {
          v41 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v41)
          {
            goto LABEL_47;
          }
        }

        if (v41 < 1)
        {
          goto LABEL_56;
        }

        v42 = 0;
        v79 = v40 & 0xC000000000000001;
        v80 = v41;
        do
        {
          v85 = v42;
          if (v79)
          {
            v48 = sub_1001C69F8();
          }

          else
          {
            v48 = *(v40 + 8 * v42 + 32);
          }

          v49 = v48;
          v51 = *(v0 + 72);
          v50 = *(v0 + 80);
          v52 = *(v0 + 64);

          v53 = v49;
          v54 = sub_1001C5128();
          v55 = sub_1001C65B8();

          v87 = v53;

          if (os_log_type_enabled(v54, v55))
          {
            v44 = *(v0 + 56);
            v43 = *(v0 + 64);
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v89[0] = swift_slowAlloc();
            *v45 = 136446978;
            *(v45 + 4) = sub_1001874E8(v44, v43, v89);
            *(v45 + 12) = 2082;
            *(v45 + 14) = sub_1001874E8(v82, v88, v89);
            *(v45 + 22) = 2080;
            *(v45 + 24) = sub_1001874E8(v74, v83, v89);
            *(v45 + 32) = 2112;
            *(v45 + 34) = v87;
            *v46 = v87;
            v47 = v87;
            _os_log_impl(&_mh_execute_header, v54, v55, "_findLocalIdDupes(%{public}s, %{public}s)     - %s: %@", v45, 0x2Au);
            sub_10008875C(v46, &unk_1002718E0, &qword_1001F31F0);

            swift_arrayDestroy();
          }

          else
          {
          }

          v0 = v84;
          v42 = v85 + 1;
          v40 = v81;
        }

        while (v80 != v85 + 1);
        goto LABEL_47;
      }
    }

    while (1)
    {
      v21 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v21 >= v20)
      {
        break;
      }

      v16 = *(v19 + 8 * v21);
      ++v17;
      if (v16)
      {
        v17 = v21;
        goto LABEL_22;
      }
    }

    v56 = v18;
    v58 = *(v0 + 72);
    v57 = *(v0 + 80);
    v59 = *(v0 + 64);

    v60 = sub_1001C5128();
    v61 = sub_1001C65B8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(v84 + 64);
      v63 = *(v84 + 56);
      v64 = swift_slowAlloc();
      v89[0] = swift_slowAlloc();
      *v64 = 136446722;
      *(v64 + 4) = sub_1001874E8(v63, v62, v89);
      *(v64 + 12) = 2082;
      v65 = sub_1001874E8(v82, v88, v89);

      *(v64 + 14) = v65;
      v0 = v84;
      *(v64 + 22) = 2048;
      *(v64 + 24) = v56;
      _os_log_impl(&_mh_execute_header, v60, v61, "_findLocalIdDupes(%{public}s, %{public}s) - Total localId dupes: %ld", v64, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v8 = v75;
    v6 = v76;
    v7 = v71;
    v3 = v72;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v66 = *(v0 + 104);
      v67 = *(v0 + 88);

      v68 = *(v0 + 8);

      v68();
      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_12;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_100118230(void *a1, uint64_t a2)
{
  v4 = sub_1001C6758();
  v6 = v5;
  swift_beginAccess();
  v7 = *(a2 + 16);
  if (*(v7 + 16) && (v8 = sub_100187B3C(v4, v6), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = &_swiftEmptyDictionarySingleton;
  }

  v11 = [objc_opt_self() localIdentifierFromRecord:a1];
  v12 = sub_1001C6018();
  v14 = v13;

  if (v10[2] && (v15 = sub_100187B3C(v12, v14), (v16 & 1) != 0))
  {
    v27 = *(v10[7] + 8 * v15);
    v17 = a1;

    sub_1001C6278();
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1001C62B8();
    }

    sub_1001C62E8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10017B2D4(v27, v12, v14, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    sub_100084528(&qword_100270AB0, &qword_1001F52C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1001F31C0;
    *(v19 + 32) = a1;
    v20 = a1;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_10017B2D4(v19, v12, v14, v21);
  }

  swift_beginAccess();

  v22 = *(a2 + 16);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(a2 + 16);
  *(a2 + 16) = 0x8000000000000000;
  sub_10017B2A8(v10, v4, v6, v23);

  *(a2 + 16) = v26;
  swift_endAccess();
}

uint64_t sub_1001185A0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10009B25C;

  return v7();
}

uint64_t sub_100118688(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10009AAEC;

  return v8();
}

uint64_t sub_100118770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_10009ADF0(a3, v25 - v11, &unk_100270A00, &qword_1001F3120);
  v13 = sub_1001C6348();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10008875C(v12, &unk_100270A00, &qword_1001F3120);
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

  sub_1001C6338();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_1001C6308();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_1001C60A8() + 32;
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

    sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);

    return v23;
  }

LABEL_8:
  sub_10008875C(a3, &unk_100270A00, &qword_1001F3120);
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

unint64_t sub_100118A6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&unk_100271890, &unk_1001F4520);
    v3 = sub_1001C6B78();
    v4 = a1 + 32;

    while (1)
    {
      sub_10009ADF0(v4, v13, &qword_10026F280, &qword_1001F5620);
      result = sub_100187A1C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10011A388(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100118BA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_100271850, &qword_1001F4438);
    v3 = sub_1001C6B78();
    v4 = a1 + 32;

    while (1)
    {
      sub_10009ADF0(v4, v13, &qword_10026FC98, &unk_1001F1AB0);
      result = sub_100187A1C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      *(v3[7] + 8 * result) = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100118CD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_100271888, &qword_1001F4518);
    v3 = sub_1001C6B78();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100187B3C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100118DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_1002718A0, &unk_1001F4530);
    v3 = sub_1001C6B78();
    v4 = a1 + 32;

    while (1)
    {
      sub_10009ADF0(v4, &v16, &qword_1002718A8, &qword_1001F6B10);
      v5 = v16;
      v6 = v17;
      result = sub_100187B3C(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100118F1C(uint64_t a1)
{
  v2 = sub_100084528(&qword_100271878, &qword_1001F4508);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100084528(&qword_100271880, &qword_1001F4510);
    v8 = sub_1001C6B78();
    v24 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10009ADF0(v9, v6, &qword_100271878, &qword_1001F4508);
      v11 = *v6;
      v12 = *(v6 + 1);
      v13 = v6[16];
      result = sub_100187C98(*v6, v12, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v8[6] + 24 * result;
      *v17 = v11;
      *(v17 + 8) = v12;
      *(v17 + 16) = v13;
      v18 = v8[7];
      v19 = _s14PricingServiceV12FetchedPriceVMa(0);
      result = sub_10011A320(&v6[v24], v18 + *(*(v19 - 8) + 72) * v16, _s14PricingServiceV12FetchedPriceVMa);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119120(uint64_t a1)
{
  v2 = sub_100084528(&qword_100271868, &qword_1001F44F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100084528(&qword_100271870, &qword_1001F4500);
    v8 = sub_1001C6B78();
    v24 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10009ADF0(v9, v6, &qword_100271868, &qword_1001F44F8);
      v11 = *v6;
      v12 = *(v6 + 1);
      v13 = v6[16];
      result = sub_100187C98(*v6, v12, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v8[6] + 24 * result;
      *v17 = v11;
      *(v17 + 8) = v12;
      *(v17 + 16) = v13;
      v18 = v8[7];
      v19 = _s11TrackedItemVMa();
      result = sub_10011A320(&v6[v24], v18 + *(*(v19 - 8) + 72) * v16, _s11TrackedItemVMa);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_100271860, &qword_1001F44F0);
    v3 = sub_1001C6B78();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 24);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_100187C98(v5, v6, v7);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 24 * result;
      *v13 = v5;
      *(v13 + 8) = v6;
      *(v13 + 16) = v7;
      v14 = (v3[7] + 24 * result);
      *v14 = v8;
      v14[1] = v10;
      v14[2] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_100273260, &qword_1001F4560);
    v3 = sub_1001C6B78();
    v4 = a1 + 32;

    while (1)
    {
      sub_10009ADF0(v4, &v13, &qword_1002717B0, &qword_1001F43F0);
      v5 = v13;
      v6 = v14;
      result = sub_100187B3C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10011A388(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119588(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&unk_1002718B8, &unk_1001F4548);
    v3 = sub_1001C6B78();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100187D2C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100119680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100084528(&qword_1002718B0, &qword_1001F4540);
    v3 = sub_1001C6B78();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100187B3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t _s14bookdatastored26CloudSyncDiagnosticServiceC05clearC8MetadataSo7NSErrorCSgyF_0()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v0 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_queue);
  sub_100084528(&unk_1002718D0, &qword_1001F4558);
  sub_1001C6688();
  if (!v3)
  {
    return 0;
  }

  sub_100084528(&unk_100270F10, &unk_1001F1F70);
  sub_100088714(0, &qword_1002718C8, NSError_ptr);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100119898()
{
  v1 = sub_1001C52E8();
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();
  v4 = sub_1001C5318();
  v0[7] = v4;
  v5 = *(v4 - 8);
  v0[8] = v5;
  v6 = *(v5 + 64) + 15;
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_1001199B0, 0, 0);
}

uint64_t sub_1001199B0()
{
  if (qword_10026EC78 != -1)
  {
    swift_once();
  }

  v1 = *(static BDSSyncEngine.shared + OBJC_IVAR____TtC14bookdatastored13BDSSyncEngine_syncEngine);
  v0[10] = v1;
  v2 = v0[9];
  v3 = v0[6];
  if (v1)
  {
    (*(v0[5] + 104))(v0[6], enum case for CKSyncEngine.FetchChangesOptions.Scope.all(_:), v0[4]);

    sub_1001C52F8();
    v4 = async function pointer to CKSyncEngine.fetchChanges(_:)[1];
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v5[1] = sub_100119B2C;
    v6 = v0[9];

    return CKSyncEngine.fetchChanges(_:)(v6);
  }

  else
  {
    v7 = v0[9];

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_100119B2C()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  v2[12] = v0;

  v5 = v2[10];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  if (v0)
  {
    (*(v7 + 8))(v2[9], v2[7]);

    return _swift_task_switch(sub_100119D30, 0, 0);
  }

  else
  {
    v9 = v2[10];

    (*(v7 + 8))(v6, v8);
    v10 = v2[9];
    v11 = v2[6];

    v12 = *(v4 + 8);

    return v12(0);
  }
}

uint64_t sub_100119D30()
{
  v0[2] = v0[12];
  sub_100084528(&unk_100270F10, &unk_1001F1F70);
  sub_100088714(0, &qword_1002718C8, NSError_ptr);
  v1 = swift_dynamicCast();
  v2 = v0[3];
  if (v1)
  {
    v3 = v0[3];
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[9];
  v5 = v0[6];

  v6 = v0[1];

  return v6(v3);
}

uint64_t type metadata accessor for CloudSyncDiagnosticService()
{
  result = qword_1002717E0;
  if (!qword_1002717E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100119E54()
{
  result = sub_1001C5148();
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

uint64_t sub_100119F00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10009B25C;

  return sub_1001174EC(v2);
}

uint64_t sub_100119FAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10009B25C;

  return sub_10010E164(a1, v5);
}