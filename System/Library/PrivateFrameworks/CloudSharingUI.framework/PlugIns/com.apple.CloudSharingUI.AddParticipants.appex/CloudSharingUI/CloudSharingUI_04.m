void sub_10006D294(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_10007AE2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE0C();
  v15 = sub_10007AE1C();
  v16 = sub_10007B41C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "User did tap showContactPicker", v17, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v18 = [objc_opt_self() valueWithCGRect:{a2, a3, a4, a5}];
  [a1 showContactPickerFromSourceRect:v18];
}

uint64_t sub_10006D444(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DACC;

  return sub_10006C33C(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10006D530()
{
  [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___CSAddParticipantsViewControllerService];
  sub_1000057A0(&unk_10009F578, &qword_10007FD20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10007CF20;
  v1 = sub_100005C8C(0, &qword_10009F3E0, CKShare_ptr);
  *(v0 + 56) = sub_1000057A0(&qword_10009F588, &qword_10007FD28);
  *(v0 + 32) = v1;
  v2 = objc_allocWithZone(NSSet);
  isa = sub_10007B29C().super.isa;

  [v2 initWithArray:isa];

  result = sub_10007B39C();
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_10006DD24(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = [objc_opt_self() mainBundle];
  if (v4)
  {
    v11._countAndFlagsBits = 0x80000001000834B0;
    v12._object = 0x8000000100083450;
    v12._countAndFlagsBits = 0x1000000000000050;
    v14.value._countAndFlagsBits = 0;
    v14.value._object = 0;
    v6.super.isa = v5;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_10007AA5C(v12, v14, v6, v16, v11);

    sub_1000057A0(&qword_10009F538, &qword_10007FCB0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10007CF20;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_10006E250();
    *(v7 + 32) = a1;
    *(v7 + 40) = a2;

    v8 = sub_10007B16C();
  }

  else
  {
    v11._countAndFlagsBits = 0x8000000100083540;
    v13._countAndFlagsBits = 0x1000000000000051;
    v13._object = 0x80000001000834E0;
    v15.value._countAndFlagsBits = 0;
    v15.value._object = 0;
    v9.super.isa = v5;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v8 = sub_10007AA5C(v13, v15, v9, v17, v11);
  }

  return v8;
}

uint64_t sub_10006DED4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_10007AE2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v14 = a3 & 0xFFFFFFFFFFFFLL;
    }

    v15 = [objc_opt_self() mainBundle];
    if (v14)
    {
      v26._countAndFlagsBits = 0x80000001000833C0;
      v28._countAndFlagsBits = 0x1000000000000019;
      v28._object = 0x80000001000833A0;
      v30.value._countAndFlagsBits = 0;
      v30.value._object = 0;
      v16.super.isa = v15;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_10007AA5C(v28, v30, v16, v32, v26);

      sub_1000057A0(&qword_10009F538, &qword_10007FCB0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_10007DE70;
      *(v17 + 56) = &type metadata for String;
      v18 = sub_10006E250();
      *(v17 + 32) = a1;
      *(v17 + 40) = a2;
      *(v17 + 96) = &type metadata for String;
      *(v17 + 104) = v18;
      *(v17 + 64) = v18;
      *(v17 + 72) = a3;
      *(v17 + 80) = a4;
    }

    else
    {
      v26._countAndFlagsBits = 0x8000000100083420;
      v29._object = 0x8000000100083400;
      v29._countAndFlagsBits = 0x1000000000000014;
      v31.value._countAndFlagsBits = 0;
      v31.value._object = 0;
      v23.super.isa = v15;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      sub_10007AA5C(v29, v31, v23, v33, v26);

      sub_1000057A0(&qword_10009F538, &qword_10007FCB0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_10007CF20;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_10006E250();
      *(v24 + 32) = a1;
      *(v24 + 40) = a2;
    }

    v22 = sub_10007B16C();
  }

  else
  {
    sub_10007AE0C();
    v19 = sub_10007AE1C();
    v20 = sub_10007B41C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "userInfoText is missing name", v21, 2u);
    }

    (*(v9 + 8))(v12, v8);
    return 0;
  }

  return v22;
}

uint64_t sub_10006E23C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003846C(a1, a2);
  }

  return a1;
}

unint64_t sub_10006E250()
{
  result = qword_10009F540;
  if (!qword_10009F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F540);
  }

  return result;
}

uint64_t sub_10006E2DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10006E334(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000DACC;

  return sub_10006BC18(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_10006E420()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006E4B0()
{
  v1 = sub_10007AC4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6);

  return _swift_deallocObject(v0, ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10, v3 | 7);
}

uint64_t sub_10006E5B4(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_10007AC4C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v1 + 24);
  v21 = *(v1 + 16);
  v10 = (v1 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v7);
  v14 = *(v1 + v8);
  v15 = *(v1 + v9);
  v16 = *(v1 + v9 + 8);
  v17 = *(v1 + v9 + 9);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10000DACC;

  return sub_10001152C(a1, v21, v20, v1 + v5, v11, v12, v13, v14);
}

uint64_t sub_10006E770()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 90, 7);
}

uint64_t sub_10006E7C8(uint64_t a1)
{
  v17 = *(v1 + 16);
  v4 = *(v1 + 40);
  v14 = *(v1 + 32);
  v15 = *(v1 + 24);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v7 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = *(v1 + 89);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10000D9D8;

  return sub_10000DDD0(a1, v17, v15, v14, v4, v5, v6, v8);
}

uint64_t sub_10006E8D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000DACC;

  return sub_10006C64C(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_10006EA20()
{
  v1 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();

  v6 = sub_10007AC4C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;

  v10 = *(v0 + v9);

  return _swift_deallocObject(v0, v9 + 8, v2 | 7);
}

uint64_t sub_10006EB6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000057A0(&unk_10009ED10, &qword_10007D310) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000D9D8;

  return sub_10006CD94(a1, v8, v9, v10, v1 + v6, v11, v12);
}

uint64_t getEnumTagSinglePayload for SharingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

BOOL sub_10006EE98(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10006EEC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10006EEF4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10006EFE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10006F28C(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_10006F028()
{
  result = qword_10009F600;
  if (!qword_10009F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F600);
  }

  return result;
}

unint64_t sub_10006F080()
{
  result = qword_10009F608;
  if (!qword_10009F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F608);
  }

  return result;
}

unint64_t sub_10006F0D8()
{
  result = qword_10009F610[0];
  if (!qword_10009F610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10009F610);
  }

  return result;
}

uint64_t sub_10006F12C()
{
  v1 = 1701736302;
  v2 = 0x796C6E4F64616572;
  if (*v0 != 2)
  {
    v2 = 0x646578696DLL;
  }

  if (*v0)
  {
    v1 = 0x7469725764616572;
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

uint64_t sub_10006F1A8()
{
  v1 = 0x4D63696C6275702ELL;
  if (*v0 != 1)
  {
    v1 = 0x657461766972702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t sub_10006F210()
{
  v1 = 0x656E6F6E2ELL;
  v2 = 0x6C6E4F646165722ELL;
  if (*v0 != 2)
  {
    v2 = 0x646578696D2ELL;
  }

  if (*v0)
  {
    v1 = 0x697257646165722ELL;
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

uint64_t sub_10006F28C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t Publishers.CSCombineLatest6.init(_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v16 = type metadata accessor for Publishers.CSCombineLatest6();
  (*(*(a8 - 8) + 32))(a9 + v16[29], a2, a8);
  (*(*(a10 - 8) + 32))(a9 + v16[30], a3, a10);
  (*(*(a11 - 8) + 32))(a9 + v16[31], a4, a11);
  (*(*(a12 - 8) + 32))(a9 + v16[32], a5, a12);
  return (*(*(a13 - 8) + 32))(a9 + v16[33], a6, a13);
}

uint64_t Publishers.CSCombineLatest5.init(_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a6 - 8) + 32))(a9, a1, a6);
  v17 = type metadata accessor for Publishers.CSCombineLatest5();
  (*(*(a7 - 8) + 32))(a9 + v17[25], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v17[26], a3, a8);
  (*(*(a10 - 8) + 32))(a9 + v17[27], a4, a10);
  return (*(*(a11 - 8) + 32))(a9 + v17[28], a5, a11);
}

uint64_t Publishers.CSCombineLatest5.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v85 = a3;
  v86 = a4;
  v87 = a1;
  v95 = *(a2 + 32);
  AssociatedTypeWitness = v95;
  v100 = *(a2 + 72);
  v92 = v100;
  v93 = *(a2 + 16);
  v64[1] = *(&v93 + 1);
  v71 = v93;
  v97 = v93;
  v94 = *(a2 + 56);
  v76 = v94;
  v99 = v94;
  v73 = *(&v94 + 1);
  v96 = sub_10007AE5C();
  v5 = *(a2 + 40);
  v89 = *(a2 + 48);
  v90 = &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>;
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 80);
  v100 = *(a2 + 88);
  v78 = v6;
  v75 = v100;
  v91 = sub_10007AE5C();
  *&v97 = swift_getAssociatedTypeWitness();
  v7 = *(&v93 + 1);
  *(&v97 + 1) = swift_getAssociatedTypeWitness();
  v8 = v95;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = v5;
  *&v99 = swift_getAssociatedTypeWitness();
  *(&v99 + 1) = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v9 = v91;
  v80 = swift_getWitnessTable();
  v82 = sub_10007AEAC();
  v83 = *(v82 - 8);
  v10 = *(v83 + 64);
  v11 = __chkstk_darwin(v82);
  v77 = v64 - v12;
  v72 = *(v89 - 8);
  v13 = *(v72 + 64);
  v14 = __chkstk_darwin(v11);
  v70 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(v5 - 8);
  v16 = *(v68 + 64);
  v17 = __chkstk_darwin(v14);
  v67 = v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v9 - 8);
  v19 = *(v74 + 64);
  v20 = __chkstk_darwin(v17);
  v90 = v64 - v21;
  v22 = *(v8 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v20);
  v66 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v7;
  v27 = *(v7 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v24);
  v31 = v64 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v71;
  v33 = *(*(v71 - 8) + 64);
  v34 = __chkstk_darwin(v29);
  v36 = v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(v96 - 8);
  v37 = *(v88 + 64);
  v38 = __chkstk_darwin(v34);
  v40 = v64 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = v64 - v41;
  v44 = v79;
  (*(v43 + 16))(v36, v79, v32);
  (*(v27 + 16))(v31, v44 + *(a2 + 100), v26);
  (*(v22 + 16))(v66, v44 + *(a2 + 104), v95);
  v65 = v42;
  sub_10007AE6C();
  (*(v88 + 16))(v40, v42, v96);
  v45 = v69;
  (*(v68 + 16))(v67, v44 + *(a2 + 108), v69);
  v46 = v44 + *(a2 + 112);
  v47 = v89;
  (*(v72 + 16))(v70, v46, v89);
  v48 = v75;
  v49 = v45;
  v50 = v78;
  sub_10007AE6C();
  v51 = swift_allocObject();
  v52 = v95;
  *&v53 = v95;
  *(&v53 + 1) = v49;
  *(v51 + 32) = v53;
  *(v51 + 16) = v93;
  v55 = v85;
  v54 = v86;
  *(v51 + 48) = v47;
  *(v51 + 56) = v55;
  v56 = v92;
  *&v53 = v92;
  *(&v53 + 1) = v50;
  *(v51 + 80) = v53;
  *(v51 + 64) = v94;
  *(v51 + 96) = v48;
  *(v51 + 104) = v54;
  v57 = swift_allocObject();
  v58 = v94;
  *(v57 + 16) = v93;
  *(v57 + 32) = v52;
  *(v57 + 40) = v49;
  *(v57 + 48) = v47;
  *(v57 + 56) = v55;
  *(v57 + 64) = v58;
  *(v57 + 80) = v56;
  *(v57 + 88) = v50;
  *(v57 + 96) = v48;
  *(v57 + 104) = v54;
  *(v57 + 112) = sub_100070550;
  *(v57 + 120) = v51;
  v59 = v77;
  v61 = v90;
  v60 = v91;
  sub_10007AF7C();

  v62 = v82;
  sub_10007AE9C();
  (*(v83 + 8))(v59, v62);
  (*(v74 + 8))(v61, v60);
  return (*(v88 + 8))(v65, v96);
}

uint64_t sub_100070064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v66 = a7;
  v67 = a8;
  v68 = a1;
  v69 = a2;
  v76 = a21;
  v74 = a4;
  v75 = a15;
  v77 = a10;
  v78 = a5;
  v72 = a3;
  v73 = a9;
  v70 = a14;
  v71 = a20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v26 = *(TupleTypeMetadata3 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(TupleTypeMetadata3);
  v64 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v79 = &v61 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v61 - v33;
  __chkstk_darwin(v32);
  v36 = &v61 - v35;
  v37 = *(AssociatedTypeWitness - 8);
  v38 = *(v37 + 16);
  v63 = AssociatedTypeWitness;
  v38(&v61 - v35, a6, AssociatedTypeWitness);
  v39 = *(TupleTypeMetadata3 + 48);
  v61 = v23;
  v40 = *(v23 - 8);
  (*(v40 + 16))(&v36[v39], v66, v23);
  v41 = *(TupleTypeMetadata3 + 64);
  v62 = v24;
  v42 = *(v24 - 8);
  (*(v42 + 16))(&v36[v41], v67, v24);
  v43 = *(v26 + 16);
  v65 = v34;
  v43(v34, v36, TupleTypeMetadata3);
  v44 = *(TupleTypeMetadata3 + 48);
  v66 = *(TupleTypeMetadata3 + 64);
  v67 = v44;
  (*(v37 + 32))(v68, v34, AssociatedTypeWitness);
  v45 = v79;
  v43(v79, v36, TupleTypeMetadata3);
  v46 = *(TupleTypeMetadata3 + 48);
  v68 = *(TupleTypeMetadata3 + 64);
  v47 = v61;
  (*(v40 + 32))(v69, &v45[v46], v61);
  v48 = v64;
  (*(v26 + 32))(v64, v36, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v50 = v62;
  (*(v42 + 32))(v72, &v48[*(TupleTypeMetadata3 + 64)], v62);
  v51 = swift_getAssociatedTypeWitness();
  (*(*(v51 - 8) + 16))(v74, v73, v51);
  v52 = swift_getAssociatedTypeWitness();
  (*(*(v52 - 8) + 16))(v78, v77, v52);
  v53 = *(v40 + 8);
  v54 = v47;
  v53(&v48[v49], v47);
  v55 = *(v37 + 8);
  v56 = v63;
  v55(v48, v63);
  v57 = *(v42 + 8);
  v58 = v79;
  v57(&v79[v68], v50);
  v55(v58, v56);
  v59 = v65;
  v57(&v65[v66], v50);
  return (v53)(&v59[v67], v54);
}

uint64_t sub_100070598@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v6 = *(TupleTypeMetadata3 + 48);
  v12 = *(TupleTypeMetadata3 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v7 = swift_getTupleTypeMetadata3();
  v8 = a1 + *(v7 + 48);
  v9 = a1 + *(v7 + 64);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a3, a3 + TupleTypeMetadata[12], a3 + TupleTypeMetadata[16], a3 + TupleTypeMetadata[20], a3 + TupleTypeMetadata[24], a1, a1 + v6, a1 + v12, v8, v9);
}

uint64_t sub_100070760()
{
  v1 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100070798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 120);
  v13 = *(v2 + 104);
  v11 = *(v2 + 72);
  v12 = *(v2 + 88);
  v10 = *(v2 + 56);
  return sub_100070598(a1, *(v2 + 112), a2);
}

uint64_t Publishers.CSCombineLatest6.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a4;
  v90 = a3;
  v92 = a1;
  v100 = *(a2 + 16);
  v77 = v100;
  v103 = v100;
  v67[1] = *(&v100 + 1);
  v93 = *(a2 + 32);
  AssociatedTypeWitness = v93;
  v99 = *(a2 + 64);
  v81 = v99;
  v105 = v99;
  v80 = *(&v99 + 1);
  v106 = *(a2 + 80);
  *&v98 = v106;
  v97 = sub_10007AE5C();
  v5 = *(a2 + 40);
  v102 = *(a2 + 48);
  WitnessTable = swift_getWitnessTable();
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  *v95 = v102;
  v83 = v6;
  v101 = v7;
  v107 = v7;
  v94 = *(&v7 + 1);
  v96 = sub_10007AE7C();
  *&v103 = swift_getAssociatedTypeWitness();
  v8 = *(&v100 + 1);
  *(&v103 + 1) = swift_getAssociatedTypeWitness();
  v9 = v93;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v5;
  v73 = v5;
  *&v105 = swift_getAssociatedTypeWitness();
  v11 = v102;
  *(&v105 + 1) = swift_getAssociatedTypeWitness();
  v106 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v12 = v96;
  v85 = swift_getWitnessTable();
  v87 = sub_10007AEAC();
  v88 = *(v87 - 8);
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v87);
  v82 = v67 - v15;
  v78 = *(*(&v102 + 1) - 8);
  v16 = *(v78 + 64);
  v17 = __chkstk_darwin(v14);
  v76 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *(v11 - 8);
  v19 = *(v75 + 64);
  v20 = __chkstk_darwin(v17);
  v74 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v10 - 8);
  v22 = *(v72 + 64);
  v23 = __chkstk_darwin(v20);
  v71 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = *(v12 - 8);
  v25 = *(v79 + 64);
  v26 = __chkstk_darwin(v23);
  v94 = v67 - v27;
  v28 = *(v9 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v26);
  v68 = v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v8;
  v33 = *(v8 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v30);
  v37 = v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v77;
  v39 = *(*(v77 - 8) + 64);
  v40 = __chkstk_darwin(v35);
  v42 = v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(v97 - 8);
  v43 = v70;
  v44 = *(v70 + 64);
  v45 = __chkstk_darwin(v40);
  v67[0] = v67 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = v67 - v47;
  v50 = v84;
  (*(v49 + 16))(v42, v84, v38);
  (*(v33 + 16))(v37, v50 + *(a2 + 116), v32);
  v51 = v93;
  (*(v28 + 16))(v68, v50 + *(a2 + 120), v93);
  v69 = v48;
  sub_10007AE6C();
  v52 = v97;
  (*(v43 + 16))(v67[0], v48, v97);
  v53 = v73;
  (*(v72 + 16))(v71, v50 + *(a2 + 124), v73);
  (*(v75 + 16))(v74, v50 + *(a2 + 128), *v95);
  (*(v78 + 16))(v76, v50 + *(a2 + 132), *&v95[8]);
  v54 = v83;
  v55 = v53;
  sub_10007AE8C();
  v56 = swift_allocObject();
  *&v57 = v51;
  *(&v57 + 1) = v55;
  *&v95[8] = v57;
  *(v56 + 32) = v57;
  *(v56 + 16) = v100;
  *(v56 + 48) = v102;
  v58 = v90;
  *(v56 + 64) = v90;
  *&v57 = v98;
  *(&v57 + 1) = v54;
  v98 = v57;
  *(v56 + 88) = v57;
  *(v56 + 72) = v99;
  *(v56 + 104) = v101;
  v59 = v91;
  *(v56 + 120) = v91;
  v60 = swift_allocObject();
  v61 = v102;
  *(v60 + 16) = v100;
  *(v60 + 32) = *&v95[8];
  *(v60 + 48) = v61;
  *(v60 + 64) = v58;
  *(v60 + 72) = v99;
  *(v60 + 104) = v101;
  *(v60 + 88) = v98;
  *(v60 + 120) = v59;
  *(v60 + 128) = sub_1000718F8;
  *(v60 + 136) = v56;
  v62 = v82;
  v63 = v96;
  v64 = v94;
  sub_10007AF7C();

  v65 = v87;
  sub_10007AE9C();
  (*(v88 + 8))(v62, v65);
  (*(v79 + 8))(v64, v63);
  return (*(v70 + 8))(v69, v52);
}

uint64_t sub_10007139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v72 = a8;
  v73 = a1;
  v74 = a2;
  v86 = a12;
  v87 = a6;
  v81 = a4;
  v82 = a11;
  v84 = a25;
  v85 = a5;
  v83 = a18;
  v79 = a17;
  v80 = a24;
  v77 = a3;
  v78 = a10;
  v71 = a9;
  v75 = a16;
  v76 = a23;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v30 = *(TupleTypeMetadata3 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(TupleTypeMetadata3);
  v68 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v67 = &v65 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v65 - v37;
  __chkstk_darwin(v36);
  v40 = &v65 - v39;
  v41 = AssociatedTypeWitness;
  v42 = *(AssociatedTypeWitness - 8);
  v43 = *(v42 + 16);
  v69 = v41;
  v43(&v65 - v39, a7, v41);
  v44 = *(TupleTypeMetadata3 + 48);
  v65 = v27;
  v45 = *(v27 - 8);
  (*(v45 + 16))(&v40[v44], v72, v27);
  v46 = *(TupleTypeMetadata3 + 64);
  v66 = v28;
  v47 = *(v28 - 8);
  (*(v47 + 16))(&v40[v46], v71, v28);
  v48 = *(v30 + 16);
  v70 = v38;
  v48(v38, v40, TupleTypeMetadata3);
  v49 = *(TupleTypeMetadata3 + 48);
  v71 = *(TupleTypeMetadata3 + 64);
  v72 = v49;
  (*(v42 + 32))(v73, v38, v41);
  v50 = v67;
  v48(v67, v40, TupleTypeMetadata3);
  v51 = *(TupleTypeMetadata3 + 48);
  v73 = *(TupleTypeMetadata3 + 64);
  v52 = v65;
  (*(v45 + 32))(v74, &v50[v51], v65);
  v53 = v68;
  (*(v30 + 32))(v68, v40, TupleTypeMetadata3);
  v74 = *(TupleTypeMetadata3 + 48);
  v54 = v66;
  (*(v47 + 32))(v77, &v53[*(TupleTypeMetadata3 + 64)], v66);
  v55 = swift_getAssociatedTypeWitness();
  (*(*(v55 - 8) + 16))(v81, v78, v55);
  v56 = swift_getAssociatedTypeWitness();
  (*(*(v56 - 8) + 16))(v85, v82, v56);
  v57 = swift_getAssociatedTypeWitness();
  (*(*(v57 - 8) + 16))(v87, v86, v57);
  v58 = *(v45 + 8);
  v59 = v52;
  v58(&v53[v74], v52);
  v60 = *(v42 + 8);
  v61 = v69;
  v60(v53, v69);
  v62 = *(v47 + 8);
  v62(&v50[v73], v54);
  v60(v50, v61);
  v63 = v70;
  v62(&v70[v71], v54);
  return (v58)(&v63[v72], v59);
}

uint64_t sub_100071948@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v12 = a1 + *(TupleTypeMetadata3 + 64);
  v13 = *(TupleTypeMetadata3 + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v7 = a1 + TupleTypeMetadata[12];
  v8 = a1 + TupleTypeMetadata[16];
  v9 = a1 + TupleTypeMetadata[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a1, a1 + v13, v12, v7, v8, v9);
}

uint64_t sub_100071B5C()
{
  v1 = *(v0 + 136);

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100071B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 136);
  v14 = *(v2 + 120);
  v12 = *(v2 + 88);
  v13 = *(v2 + 104);
  v10 = *(v2 + 56);
  v11 = *(v2 + 72);
  return sub_100071948(a1, *(v2 + 128), a2);
}

uint64_t Publishers.CSCombineLatest7.init(_:_:_:_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v17 = type metadata accessor for Publishers.CSCombineLatest7();
  (*(*(a10 - 8) + 32))(a9 + v17[33], a2, a10);
  (*(*(a11 - 8) + 32))(a9 + v17[34], a3, a11);
  (*(*(a12 - 8) + 32))(a9 + v17[35], a4, a12);
  (*(*(a13 - 8) + 32))(a9 + v17[36], a5, a13);
  (*(*(a14 - 8) + 32))(a9 + v17[37], a6, a14);
  return (*(*(a15 - 8) + 32))(a9 + v17[38], a7, a15);
}

uint64_t Publishers.CSCombineLatest7.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v106 = a3;
  v108 = a1;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v125 = *(a2 + 88);
  v126 = v7;
  v124 = v11;
  v127 = v6;
  AssociatedTypeWitness = v6;
  v129 = v5;
  v130 = v7;
  v120 = v5;
  v131 = v8;
  v132 = v9;
  v117 = v9;
  v118 = v8;
  v133 = v10;
  v134 = v125;
  v116 = v10;
  v135 = v11;
  v12 = sub_10007AE7C();
  v13 = *(a2 + 56);
  v119 = *(a2 + 48);
  v121 = v13;
  v122 = *(a2 + 64);
  v123 = v12;
  v112 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  WitnessTable = swift_getWitnessTable();
  v14 = *(a2 + 112);
  v15 = *(a2 + 120);
  v98 = *(a2 + 104);
  v135 = v15;
  v115 = v14;
  v114 = v15;
  v113 = sub_10007AE7C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = swift_getAssociatedTypeWitness();
  v16 = v126;
  v130 = swift_getAssociatedTypeWitness();
  v17 = v118;
  v131 = swift_getAssociatedTypeWitness();
  v18 = v119;
  v132 = swift_getAssociatedTypeWitness();
  v133 = swift_getAssociatedTypeWitness();
  v134 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = v113;
  v101 = swift_getWitnessTable();
  v103 = sub_10007AEAC();
  v104 = *(v103 - 8);
  v20 = *(v104 + 64);
  v21 = __chkstk_darwin(v103);
  v99 = &v89 - v22;
  v96 = *(v122 - 8);
  v23 = *(v96 + 64);
  v24 = __chkstk_darwin(v21);
  v95 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v13 - 8);
  v26 = *(v94 + 64);
  v27 = __chkstk_darwin(v24);
  v93 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *(v18 - 8);
  v29 = *(v92 + 64);
  v30 = __chkstk_darwin(v27);
  v91 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *(v19 - 8);
  v32 = *(v97 + 64);
  v33 = __chkstk_darwin(v30);
  v112 = &v89 - v34;
  v89 = *(v17 - 8);
  v35 = *(v89 + 64);
  v36 = __chkstk_darwin(v33);
  v90 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v16 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v36);
  v42 = &v89 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v120;
  v44 = *(v120 - 8);
  v45 = *(v44 + 64);
  v46 = __chkstk_darwin(v40);
  v48 = &v89 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(*(v127 - 8) + 64);
  v50 = __chkstk_darwin(v46);
  v52 = &v89 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(v123 - 8);
  v53 = *(v111 + 64);
  v54 = __chkstk_darwin(v50);
  v109 = &v89 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v110 = &v89 - v56;
  v58 = v100;
  (*(v57 + 16))(v52, v100);
  (*(v44 + 16))(v48, v58 + *(a2 + 132), v43);
  (*(v38 + 16))(v42, v58 + *(a2 + 136), v126);
  (*(v89 + 16))(v90, v58 + *(a2 + 140), v118);
  v59 = v110;
  sub_10007AE8C();
  (*(v111 + 16))(v109, v59, v123);
  v60 = v119;
  (*(v92 + 16))(v91, v58 + *(a2 + 144), v119);
  v61 = v121;
  (*(v94 + 16))(v93, v58 + *(a2 + 148), v121);
  v62 = v58 + *(a2 + 152);
  v63 = v122;
  (*(v96 + 16))(v95, v62, v122);
  v64 = v114;
  v65 = v115;
  v66 = v98;
  v67 = v60;
  v68 = v61;
  v69 = v63;
  sub_10007AE8C();
  v70 = swift_allocObject();
  v71 = v120;
  v70[2] = v127;
  v70[3] = v71;
  v72 = v125;
  v73 = v118;
  v70[4] = v126;
  v70[5] = v73;
  v70[6] = v67;
  v70[7] = v68;
  v74 = v106;
  v70[8] = v69;
  v70[9] = v74;
  v76 = v116;
  v75 = v117;
  v70[10] = v117;
  v70[11] = v76;
  v77 = v124;
  v70[12] = v72;
  v70[13] = v77;
  v70[14] = v66;
  v70[15] = v65;
  v70[16] = v64;
  v78 = v107;
  v70[17] = v107;
  v79 = swift_allocObject();
  v80 = v120;
  v79[2] = v127;
  v79[3] = v80;
  v79[4] = v126;
  v79[5] = v73;
  v82 = v121;
  v81 = v122;
  v79[6] = v119;
  v79[7] = v82;
  v79[8] = v81;
  v79[9] = v74;
  v79[10] = v75;
  v79[11] = v76;
  v79[12] = v72;
  v79[13] = v77;
  v83 = v115;
  v79[14] = v66;
  v79[15] = v83;
  v79[16] = v114;
  v79[17] = v78;
  v79[18] = sub_100073338;
  v79[19] = v70;
  v84 = v99;
  v85 = v113;
  v86 = v112;
  sub_10007AF7C();

  v87 = v103;
  sub_10007AE9C();
  (*(v104 + 8))(v84, v87);
  (*(v97 + 8))(v86, v85);
  return (*(v111 + 8))(v110, v123);
}

uint64_t sub_100072AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, uint64_t), void (*a7)(char *, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v118 = a8;
  v111 = a7;
  v109 = a6;
  v105 = a5;
  v101 = a4;
  v98 = a3;
  v97 = a2;
  v96 = a1;
  v107 = a21;
  v108 = a29;
  v110 = a14;
  v106 = a13;
  v104 = a28;
  v100 = a27;
  v103 = a20;
  v99 = a19;
  v102 = a12;
  v95 = a11;
  v94 = a10;
  v92 = a9;
  v91 = a26;
  v88 = a25;
  v90 = a18;
  v87 = a17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v120 = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  v122 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v89 = *(TupleTypeMetadata - 1);
  v30 = *(v89 + 64);
  v31 = __chkstk_darwin(TupleTypeMetadata);
  v93 = &v86 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v113 = &v86 - v34;
  v35 = __chkstk_darwin(v33);
  v112 = &v86 - v36;
  v37 = __chkstk_darwin(v35);
  v114 = &v86 - v38;
  __chkstk_darwin(v37);
  v40 = &v86 - v39;
  v41 = swift_getAssociatedTypeWitness();
  v42 = *(v41 - 8);
  v115 = v41;
  v116 = v42;
  (*(v42 + 16))(v40, v118, v41);
  v43 = TupleTypeMetadata[12];
  v44 = swift_getAssociatedTypeWitness();
  v45 = *(v44 - 8);
  v117 = v44;
  v118 = v45;
  (*(v45 + 16))(&v40[v43], v92, v44);
  v46 = TupleTypeMetadata[16];
  v47 = swift_getAssociatedTypeWitness();
  v48 = *(v47 - 8);
  v49 = &v40[v46];
  v50 = v47;
  (*(v48 + 16))(v49, v94);
  v51 = TupleTypeMetadata[20];
  v52 = swift_getAssociatedTypeWitness();
  v53 = *(v52 - 8);
  v88 = v53;
  v54 = *(v53 + 16);
  v87 = v52;
  v54(&v40[v51], v95, v52);
  v55 = v89;
  v56 = *(v89 + 16);
  v57 = v114;
  v56(v114, v40, TupleTypeMetadata);
  v95 = TupleTypeMetadata[12];
  v94 = TupleTypeMetadata[16];
  v92 = TupleTypeMetadata[20];
  (*(v116 + 32))(v96, v57, v115);
  v58 = v112;
  v56(v112, v40, TupleTypeMetadata);
  v59 = TupleTypeMetadata[12];
  v96 = TupleTypeMetadata[16];
  v91 = TupleTypeMetadata[20];
  (*(v118 + 32))(v97, &v58[v59], v117);
  v60 = v113;
  v56(v113, v40, TupleTypeMetadata);
  v97 = TupleTypeMetadata[12];
  v61 = TupleTypeMetadata[16];
  v90 = TupleTypeMetadata[20];
  v62 = *(v48 + 32);
  v86 = v50;
  v62(v98, &v60[v61], v50);
  v63 = v93;
  (*(v55 + 32))(v93, v40, TupleTypeMetadata);
  v64 = TupleTypeMetadata[12];
  v65 = TupleTypeMetadata[16];
  (*(v53 + 32))(v101, &v63[TupleTypeMetadata[20]], v52);
  v66 = swift_getAssociatedTypeWitness();
  (*(*(v66 - 8) + 16))(v105, v102, v66);
  v67 = swift_getAssociatedTypeWitness();
  (*(*(v67 - 8) + 16))(v109, v106, v67);
  v68 = swift_getAssociatedTypeWitness();
  (*(*(v68 - 8) + 16))(v111, v110, v68);
  v69 = *(v48 + 8);
  v110 = v48 + 8;
  v111 = v69;
  v69(&v63[v65], v50);
  v70 = v117;
  v72 = v118 + 8;
  v71 = *(v118 + 8);
  v71(&v63[v64], v117);
  v73 = v71;
  v109 = v71;
  v118 = v72;
  v74 = v115;
  v75 = *(v116 + 8);
  v75(v63, v115);
  v76 = *(v88 + 8);
  v77 = v113;
  v78 = v87;
  v76(&v113[v90], v87);
  v73(&v77[v97], v70);
  v79 = v77;
  v80 = v74;
  v75(v79, v74);
  v81 = v112;
  v76(&v112[v91], v78);
  v82 = v86;
  v83 = v111;
  v111(&v81[v96], v86);
  v75(v81, v80);
  v84 = v114;
  v76(&v114[v92], v78);
  v83(&v84[v94], v82);
  return v109(&v84[v95], v117);
}

uint64_t sub_100073390@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v14 = a1 + TupleTypeMetadata[12];
  v13 = a1 + TupleTypeMetadata[16];
  v12 = a1 + TupleTypeMetadata[20];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v6 = swift_getTupleTypeMetadata();
  v7 = a1 + v6[12];
  v8 = a1 + v6[16];
  v9 = a1 + v6[20];
  v10 = swift_getTupleTypeMetadata();
  return a2(a3, a3 + v10[12], a3 + v10[16], a3 + v10[20], a3 + v10[24], a3 + v10[28], a3 + v10[32], a1, v14, v13, v12, v7, v8, v9);
}

uint64_t sub_1000735FC()
{
  v1 = *(v0 + 152);

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_100073634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 152);
  v15 = *(v2 + 136);
  v13 = *(v2 + 104);
  v14 = *(v2 + 120);
  v11 = *(v2 + 72);
  v12 = *(v2 + 88);
  v10 = *(v2 + 56);
  return sub_100073390(a1, *(v2 + 144), a2);
}

uint64_t sub_100073708(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000737E8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v42 = *(a3[2] - 8);
  v4 = *(v42 + 84);
  v5 = *(a3[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v42 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a3[5];
  v9 = *(a3[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(a3[6] - 8);
  v16 = *(v15 + 84);
  v17 = *(v5 + 80);
  v18 = *(*(a3[3] - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(*(a3[4] - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  if (v16 <= v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = *(v15 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(a3[2] - 8) + 64) + v17;
  v25 = *(*(v8 - 8) + 64) + v22;
  v26 = a2 - v23;
  if (a2 > v23)
  {
    v27 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
    v28 = 8 * v27;
    if (v27 <= 3)
    {
      v30 = ((v26 + ~(-1 << v28)) >> v28) + 1;
      if (HIWORD(v30))
      {
        v29 = *(a1 + v27);
        if (!v29)
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 > 0xFF)
      {
        v29 = *(a1 + v27);
        if (!*(a1 + v27))
        {
          goto LABEL_36;
        }

        goto LABEL_23;
      }

      if (v30 < 2)
      {
LABEL_36:
        if (v23)
        {
          goto LABEL_37;
        }

        return 0;
      }
    }

    v29 = *(a1 + v27);
    if (!*(a1 + v27))
    {
      goto LABEL_36;
    }

LABEL_23:
    v31 = (v29 - 1) << v28;
    if (v27 > 3)
    {
      v31 = 0;
    }

    if (v27)
    {
      if (v27 <= 3)
      {
        v32 = ((v25 + ((v20 + v21 + ((v18 + v19 + (v24 & ~v17)) & ~v19)) & ~v21)) & ~v22) + *(*(a3[6] - 8) + 64);
      }

      else
      {
        v32 = 4;
      }

      if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v33 = *a1;
        }
      }

      else if (v32 == 1)
      {
        v33 = *a1;
      }

      else
      {
        v33 = *a1;
      }
    }

    else
    {
      v33 = 0;
    }

    return v23 + (v33 | v31) + 1;
  }

LABEL_37:
  if (v4 == v23)
  {
    v34 = *(v42 + 48);

    return v34();
  }

  v36 = (a1 + v24) & ~v17;
  if (v6 == v23)
  {
    v37 = *(v5 + 48);
    v38 = *(v5 + 84);
    v39 = a3[3];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v18 + v19) & ~v19;
  if (v10 == v23)
  {
    v37 = *(v9 + 48);
    v38 = *(v9 + 84);
    v39 = a3[4];

    return v37(v36, v38, v39);
  }

  v36 = (v36 + v20 + v21) & ~v21;
  if (v13 == v23)
  {
    v37 = *(v12 + 48);
    v38 = *(v12 + 84);
    v39 = a3[5];

    return v37(v36, v38, v39);
  }

  v40 = *(v15 + 48);
  v41 = (v25 + v36) & ~v22;

  return v40(v41, v16);
}

char *sub_100073C88(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v42 = a4[3];
  v43 = *(a4[2] - 8);
  v5 = *(v43 + 84);
  v6 = *(v42 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v43 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a4[5];
  v41 = a4[4];
  v10 = *(v41 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(a4[6] - 8);
  v17 = *(*(a4[2] - 8) + 64);
  v18 = *(v6 + 80);
  v19 = *(*(v42 - 8) + 64);
  v20 = *(v10 + 80);
  v21 = *(*(v41 - 8) + 64);
  v22 = *(v13 + 80);
  v23 = *(*(v9 - 8) + 64);
  v24 = *(v16 + 80);
  if (*(v16 + 84) <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = *(v16 + 84);
  }

  v26 = v23 + v24;
  v27 = ((v23 + v24 + ((v21 + v22 + ((v19 + v20 + ((v17 + v18) & ~v18)) & ~v20)) & ~v22)) & ~v24) + *(*(a4[6] - 8) + 64);
  v28 = a3 >= v25;
  v29 = a3 - v25;
  if (v29 != 0 && v28)
  {
    if (v27 <= 3)
    {
      v34 = ((v29 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v34))
      {
        v30 = 4;
      }

      else
      {
        if (v34 < 0x100)
        {
          v35 = 1;
        }

        else
        {
          v35 = 2;
        }

        if (v34 >= 2)
        {
          v30 = v35;
        }

        else
        {
          v30 = 0;
        }
      }
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 < a2)
  {
    v31 = ~v25 + a2;
    if (v27 < 4)
    {
      v33 = (v31 >> (8 * v27)) + 1;
      if (v27)
      {
        v36 = v31 & ~(-1 << (8 * v27));
        v37 = result;
        bzero(result, v27);
        result = v37;
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v37 = v36;
            if (v30 > 1)
            {
LABEL_60:
              if (v30 == 2)
              {
                *&result[v27] = v33;
              }

              else
              {
                *&result[v27] = v33;
              }

              return result;
            }
          }

          else
          {
            *v37 = v31;
            if (v30 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v37 = v36;
        v37[2] = BYTE2(v36);
      }

      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v32 = result;
      bzero(result, v27);
      result = v32;
      *v32 = v31;
      v33 = 1;
      if (v30 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v30)
    {
      result[v27] = v33;
    }

    return result;
  }

  if (v30 > 1)
  {
    if (v30 != 2)
    {
      *&result[v27] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_40;
    }

    *&result[v27] = 0;
LABEL_39:
    if (!a2)
    {
      return result;
    }

    goto LABEL_40;
  }

  if (!v30)
  {
    goto LABEL_39;
  }

  result[v27] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_40:
  if (v5 == v25)
  {
    v38 = *(v43 + 56);

    return v38();
  }

  else
  {
    v39 = &result[v17 + v18] & ~v18;
    if (v7 == v25)
    {
      v40 = *(v6 + 56);
    }

    else
    {
      v39 = (v39 + v19 + v20) & ~v20;
      if (v11 == v25)
      {
        v40 = *(v10 + 56);
      }

      else
      {
        v39 = (v39 + v21 + v22) & ~v22;
        if (v14 == v25)
        {
          v40 = *(v13 + 56);
        }

        else
        {
          v40 = *(v16 + 56);
          v39 = (v26 + v39) & ~v24;
        }
      }
    }

    return v40(v39);
  }
}

uint64_t sub_1000741A8(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000742A4(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v61 = a3[3];
  v62 = v4;
  v5 = *(v4 + 84);
  v6 = *(v61 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = a3[5];
  v59 = v9;
  v60 = a3[4];
  v10 = *(v60 - 8);
  v11 = *(v10 + 84);
  if (v11 > v8)
  {
    v8 = *(v10 + 84);
  }

  v12 = *(v9 - 8);
  v13 = *(v12 + 84);
  v15 = a3[6];
  v14 = a3[7];
  v57 = v14;
  v58 = v15;
  v16 = *(v15 - 8);
  if (v13 <= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = *(v15 - 8);
  v19 = *(v16 + 84);
  if (v19 <= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = *(v16 + 84);
  }

  v21 = *(v14 - 8);
  v22 = *(v21 + 84);
  v23 = *(v4 + 64);
  v24 = *(v6 + 80);
  v25 = *(*(v61 - 8) + 64);
  v26 = *(v10 + 80);
  v27 = *(*(v60 - 8) + 64);
  v28 = *(v12 + 80);
  v29 = *(*(v9 - 8) + 64);
  v30 = *(v16 + 80);
  v31 = *(v16 + 64);
  v32 = *(v21 + 80);
  v33 = *(v21 + 64);
  if (v22 <= v20)
  {
    v34 = v20;
  }

  else
  {
    v34 = *(v21 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v35 = *(*(v60 - 8) + 64);
  v36 = v23 + v24;
  v37 = v29 + v30;
  v38 = v31 + v32;
  v39 = a2 - v34;
  if (a2 > v34)
  {
    v40 = (v38 + ((v37 + ((v27 + v28 + ((v25 + v26 + (v36 & ~v24)) & ~v26)) & ~v28)) & ~v30)) & ~v32;
    v41 = v40 + v33;
    v42 = 8 * (v40 + v33);
    if (v41 <= 3)
    {
      v44 = ((v39 + ~(-1 << v42)) >> v42) + 1;
      if (HIWORD(v44))
      {
        v43 = *(a1 + v41);
        if (!v43)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 > 0xFF)
      {
        v43 = *(a1 + v41);
        if (!*(a1 + v41))
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      if (v44 < 2)
      {
LABEL_38:
        if (v34)
        {
          goto LABEL_39;
        }

        return 0;
      }
    }

    v43 = *(a1 + v41);
    if (!*(a1 + v41))
    {
      goto LABEL_38;
    }

LABEL_25:
    v45 = (v43 - 1) << v42;
    if (v41 > 3)
    {
      v45 = 0;
    }

    if (v41)
    {
      if (v41 <= 3)
      {
        v46 = v41;
      }

      else
      {
        v46 = 4;
      }

      if (v46 > 2)
      {
        if (v46 == 3)
        {
          v47 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v47 = *a1;
        }
      }

      else if (v46 == 1)
      {
        v47 = *a1;
      }

      else
      {
        v47 = *a1;
      }
    }

    else
    {
      v47 = 0;
    }

    return v34 + (v47 | v45) + 1;
  }

LABEL_39:
  if (v5 == v34)
  {
    v48 = *(v62 + 48);

    return v48(a1);
  }

  v50 = (a1 + v36) & ~v24;
  if (v7 == v34)
  {
    v51 = *(v6 + 48);
    v52 = (a1 + v36) & ~v24;
    v53 = *(v6 + 84);
    v54 = v61;

    return v51(v52, v53, v54);
  }

  if (v11 == v34)
  {
    v51 = *(v10 + 48);
    v52 = (v50 + v25 + v26) & ~v26;
    v53 = *(v10 + 84);
    v54 = v60;

    return v51(v52, v53, v54);
  }

  v52 = (((v50 + v25 + v26) & ~v26) + v27 + v28) & ~v28;
  if (v13 == v34)
  {
    v51 = *(v12 + 48);
    v53 = *(v12 + 84);
    v54 = v59;

    return v51(v52, v53, v54);
  }

  v52 = (v37 + v52) & ~v30;
  if (v19 == v34)
  {
    v51 = *(v18 + 48);
    v53 = v19;
    v54 = v58;

    return v51(v52, v53, v54);
  }

  v55 = *(v21 + 48);
  v56 = (v38 + v52) & ~v32;

  return v55(v56, v22, v57);
}

unsigned int *sub_100074808(unsigned int *result, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v55 = v6;
  v7 = *(v6 + 84);
  v8 = *(a4[3] - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= v7)
  {
    v11 = *(v6 + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = a4[5];
  v53 = a4[4];
  v13 = *(v53 - 8);
  v54 = *(v13 + 84);
  if (v54 > v11)
  {
    v11 = *(v13 + 84);
  }

  v51 = a4[5];
  v14 = *(v12 - 8);
  v52 = *(v14 + 84);
  if (v52 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v14 + 84);
  }

  v50 = a4[6];
  v16 = *(v50 - 8);
  v17 = *(v16 + 84);
  if (v17 <= v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = *(v16 + 84);
  }

  v19 = *(a4[7] - 8);
  v20 = *(v6 + 64);
  v21 = *(v8 + 80);
  v22 = *(v8 + 64);
  v23 = *(v13 + 80);
  v24 = *(*(v53 - 8) + 64);
  v25 = *(v14 + 80);
  v26 = *(*(v12 - 8) + 64);
  v27 = *(v16 + 80);
  v28 = *(*(v50 - 8) + 64);
  v29 = *(v19 + 80);
  v30 = v26 + v27;
  v31 = v28 + v29;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v19 + 64);
  if (*(v19 + 84) <= v18)
  {
    v33 = v18;
  }

  else
  {
    v33 = *(v19 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  if (v33 < a2)
  {
    v35 = ~v33 + a2;
    if (v32 >= 4)
    {
      v36 = result;
      bzero(result, v32);
      result = v36;
      *v36 = v35;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_22;
      }

      goto LABEL_59;
    }

    v37 = (v35 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v35 & ~(-1 << (8 * v32));
      v41 = result;
      bzero(result, v32);
      result = v41;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *v41 = v40;
          if (v34 > 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          *v41 = v35;
          if (v34 > 1)
          {
LABEL_22:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_59:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *v41 = v40;
      *(v41 + 2) = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_59;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *(result + v32) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_43;
    }

    *(result + v32) = 0;
  }

  else if (v34)
  {
    *(result + v32) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return result;
  }

LABEL_43:
  if (v7 == v33)
  {
    v42 = v55;
LABEL_45:
    v43 = *(v42 + 56);
LABEL_48:

    return v43();
  }

  v44 = (result + v20 + v21) & ~v21;
  if (v10 == v33)
  {
    v43 = *(v9 + 56);
    goto LABEL_48;
  }

  v45 = (v44 + v22 + v23) & ~v23;
  if (v54 == v33)
  {
    v42 = v13;
    goto LABEL_45;
  }

  v46 = (v45 + v24 + v25) & ~v25;
  if (v52 == v33)
  {
    v47 = *(v14 + 56);

    return v47(v46);
  }

  v46 = (v30 + v46) & ~v27;
  if (v17 == v33)
  {
    v47 = *(v16 + 56);

    return v47(v46);
  }

  v48 = *(v19 + 56);
  v49 = (v31 + v46) & ~v29;

  return v48(v49);
}

uint64_t sub_100074D88(void *a1)
{
  v2 = a1[2];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = a1[3];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v7 = a1[4];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v9 = a1[5];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v11 = a1[6];
          result = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v13 = a1[7];
            result = swift_checkMetadataState();
            if (v14 <= 0x3F)
            {
              v15 = a1[8];
              result = swift_checkMetadataState();
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100074EA0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v55 = a3[2];
  v54 = a3[3];
  v5 = *(*(v55 - 8) + 84);
  v6 = *(v54 - 8);
  v7 = *(v6 + 84);
  v8 = a3[5];
  v52 = a3[4];
  v9 = *(v52 - 8);
  if (v7 <= v5)
  {
    v10 = *(*(v55 - 8) + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  v11 = *(v52 - 8);
  v53 = *(v9 + 84);
  if (v53 > v10)
  {
    v10 = *(v9 + 84);
  }

  v50 = a3[5];
  v51 = *(*(v8 - 8) + 84);
  if (v51 > v10)
  {
    v10 = *(*(v8 - 8) + 84);
  }

  v12 = *(a3[6] - 8);
  if (*(v12 + 84) <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v49 = a3[7];
  v14 = *(v49 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v48 = a3[8];
  v17 = *(v48 - 8);
  v18 = *(v6 + 80);
  v56 = *(*(v54 - 8) + 64);
  v19 = *(v9 + 80);
  v20 = *(v8 - 8);
  v21 = *(v9 + 64);
  v22 = *(v20 + 80);
  v23 = *(v12 + 80);
  v24 = *(v14 + 80);
  v25 = *(v17 + 80);
  if (*(v17 + 84) <= v16)
  {
    v26 = v16;
  }

  else
  {
    v26 = *(v17 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(*(v55 - 8) + 64) + v18;
  v28 = *(v20 + 64) + v23;
  v29 = *(v12 + 64) + v24;
  v30 = *(*(v49 - 8) + 64) + v25;
  v31 = a2 >= v26;
  v32 = a2 - v26;
  if (v32 == 0 || !v31)
  {
    goto LABEL_42;
  }

  v33 = ((v30 + ((v29 + ((v28 + ((v21 + v22 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v22)) & ~v23)) & ~v24)) & ~v25) + *(*(v48 - 8) + 64);
  v34 = 8 * v33;
  if (v33 > 3)
  {
    goto LABEL_21;
  }

  v36 = ((v32 + ~(-1 << v34)) >> v34) + 1;
  if (HIWORD(v36))
  {
    v35 = *(a1 + v33);
    if (!v35)
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v36 > 0xFF)
  {
    v35 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_41;
    }

    goto LABEL_28;
  }

  if (v36 >= 2)
  {
LABEL_21:
    v35 = *(a1 + v33);
    if (!*(a1 + v33))
    {
      goto LABEL_41;
    }

LABEL_28:
    v37 = (v35 - 1) << v34;
    if (v33 > 3)
    {
      v37 = 0;
    }

    if (v33)
    {
      if (v33 <= 3)
      {
        v38 = ((v30 + ((v29 + ((v28 + ((v21 + v22 + ((v56 + v19 + (v27 & ~v18)) & ~v19)) & ~v22)) & ~v23)) & ~v24)) & ~v25) + *(*(v48 - 8) + 64);
      }

      else
      {
        v38 = 4;
      }

      if (v38 > 2)
      {
        if (v38 == 3)
        {
          v39 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v39 = *a1;
        }
      }

      else if (v38 == 1)
      {
        v39 = *a1;
      }

      else
      {
        v39 = *a1;
      }
    }

    else
    {
      v39 = 0;
    }

    return v26 + (v39 | v37) + 1;
  }

LABEL_41:
  if (!v26)
  {
    return 0;
  }

LABEL_42:
  if (v5 == v26)
  {
    v41 = *(v55 - 8);
    v40 = v55;
LABEL_44:
    v42 = *(v41 + 48);
    goto LABEL_48;
  }

  if (v7 == v26)
  {
    v40 = v54;
    v42 = *(*(v54 - 8) + 48);
    a1 = ((a1 + v27) & ~v18);
    v5 = v7;
LABEL_48:

    return v42(a1, v5, v40);
  }

  a1 = ((((a1 + v27) & ~v18) + v56 + v19) & ~v19);
  v5 = v53;
  if (v53 == v26)
  {
    v41 = *(v52 - 8);
    v40 = v52;
    goto LABEL_44;
  }

  v44 = (a1 + v21 + v22) & ~v22;
  if (v51 == v26)
  {
    v45 = *(v20 + 48);

    return v45(v44);
  }

  else
  {
    v46 = (v28 + v44) & ~v23;
    if (*(v12 + 84) != v26)
    {
      a1 = ((v29 + v46) & ~v24);
      if (v15 == v26)
      {
        v42 = *(v14 + 48);
        v5 = *(v14 + 84);
        v40 = v49;
      }

      else
      {
        v42 = *(v17 + 48);
        a1 = ((a1 + v30) & ~v25);
        v5 = *(v17 + 84);
        v40 = v48;
      }

      return v42(a1, v5, v40);
    }

    v47 = *(v12 + 48);

    return v47(v46);
  }
}

uint64_t sub_100075484(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v52 = *(a4[2] - 8);
  v4 = *(v52 + 84);
  v5 = *(a4[3] - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = *(v52 + 84);
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = a4[5];
  v9 = *(a4[4] - 8);
  v50 = *(v9 + 84);
  if (v50 > v7)
  {
    v7 = *(v9 + 84);
  }

  v47 = a4[5];
  v10 = *(v8 - 8);
  v48 = *(v10 + 84);
  if (v48 > v7)
  {
    v7 = *(v10 + 84);
  }

  v11 = a4[7];
  v12 = *(a4[6] - 8);
  v45 = *(v12 + 84);
  if (v45 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v12 + 84);
  }

  v14 = *(v11 - 8);
  v15 = *(v14 + 84);
  if (v15 <= v13)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(v14 + 84);
  }

  v17 = *(a4[8] - 8);
  v18 = *(*(a4[2] - 8) + 64);
  v51 = *(a4[3] - 8);
  v19 = *(v5 + 80);
  v20 = *(v51 + 64);
  v49 = *(a4[4] - 8);
  v21 = *(v9 + 80);
  v22 = *(v49 + 64);
  v46 = *(v8 - 8);
  v23 = *(v10 + 80);
  v24 = *(v46 + 64);
  v25 = *(v12 + 80);
  v26 = *(*(a4[6] - 8) + 64);
  v27 = *(v14 + 80);
  v28 = *(*(v11 - 8) + 64);
  v29 = *(v17 + 80);
  v30 = v18 + v19;
  v31 = v26 + v27;
  v32 = ((v28 + v29 + ((v26 + v27 + ((v24 + v25 + ((v22 + v23 + ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21)) & ~v23)) & ~v25)) & ~v27)) & ~v29) + *(v17 + 64);
  if (*(v17 + 84) <= v16)
  {
    v33 = v16;
  }

  else
  {
    v33 = *(v17 + 84);
  }

  if (a3 <= v33)
  {
    v34 = 0;
  }

  else if (v32 <= 3)
  {
    v38 = ((a3 - v33 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
    if (HIWORD(v38))
    {
      v34 = 4;
    }

    else
    {
      if (v38 < 0x100)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      if (v38 >= 2)
      {
        v34 = v39;
      }

      else
      {
        v34 = 0;
      }
    }
  }

  else
  {
    v34 = 1;
  }

  result = a1;
  if (v33 < a2)
  {
    v36 = ~v33 + a2;
    if (v32 >= 4)
    {
      bzero(a1, v32);
      result = a1;
      *a1 = v36;
      v37 = 1;
      if (v34 > 1)
      {
        goto LABEL_24;
      }

      goto LABEL_57;
    }

    v37 = (v36 >> (8 * v32)) + 1;
    if (v32)
    {
      v40 = v36 & ~(-1 << (8 * v32));
      bzero(a1, v32);
      result = a1;
      if (v32 != 3)
      {
        if (v32 == 2)
        {
          *a1 = v40;
          if (v34 > 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          *a1 = v36;
          if (v34 > 1)
          {
LABEL_24:
            if (v34 == 2)
            {
              *(result + v32) = v37;
            }

            else
            {
              *(result + v32) = v37;
            }

            return result;
          }
        }

LABEL_57:
        if (v34)
        {
          *(result + v32) = v37;
        }

        return result;
      }

      *a1 = v40;
      a1[2] = BYTE2(v40);
    }

    if (v34 > 1)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

  if (v34 > 1)
  {
    if (v34 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_45;
    }

    *&a1[v32] = 0;
  }

  else if (v34)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_45;
  }

  if (!a2)
  {
    return result;
  }

LABEL_45:
  if (v4 == v33)
  {
    v41 = *(v52 + 56);
    goto LABEL_65;
  }

  if (v6 == v33)
  {
    v41 = *(v51 + 56);
    result = &a1[v30] & ~v19;
    goto LABEL_65;
  }

  result = ((&a1[v30] & ~v19) + v20 + v21) & ~v21;
  if (v50 == v33)
  {
    v42 = v49;
LABEL_64:
    v41 = *(v42 + 56);
LABEL_65:

    return v41(result);
  }

  result = (result + v22 + v23) & ~v23;
  if (v48 == v33)
  {
    v42 = v46;
    goto LABEL_64;
  }

  v43 = (v24 + v25 + result) & ~v25;
  if (v45 != v33)
  {
    result = (v31 + v43) & ~v27;
    if (v15 == v33)
    {
      v41 = *(v14 + 56);
    }

    else
    {
      v41 = *(v17 + 56);
      result = (v28 + v29 + result) & ~v29;
    }

    return v41(result);
  }

  v44 = *(v12 + 56);

  return v44(v43);
}

uint64_t sub_100075AC0()
{
  v1[2] = v0;
  v2 = sub_10007AE2C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_10007B32C();
  v1[6] = sub_10007B31C();
  v6 = sub_10007B2EC();
  v1[7] = v6;
  v1[8] = v5;

  return _swift_task_switch(sub_100075BB4, v6, v5);
}

uint64_t sub_100075BB4()
{
  *(v0 + 72) = 10;
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_10007AE0C();

  v3 = sub_10007AE1C();
  v4 = sub_10007B41C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    *(v6 + 4) = *(v0 + 89) != 2;

    *(v6 + 8) = 2048;
    *(v6 + 10) = 10;
    _os_log_impl(&_mh_execute_header, v3, v4, "waitForCurrentUserInvitingFromShare completed: %{BOOL}d, retriesLeft: %ld", v6, 0x12u);
  }

  else
  {
    v7 = *(v0 + 16);
  }

  v8 = *(v0 + 16);
  (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 88) == 2)
  {
    v9 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_100075E20;

    return static Task<>.sleep(nanoseconds:)(10000000);
  }

  else
  {
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100075E20()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {

    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_10007AA18;
  }

  else
  {
    v5 = *(v2 + 56);
    v6 = *(v2 + 64);
    v7 = sub_100075F44;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100075F44(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = v2 - 1;
  if (v2 == 1)
  {
    v20 = *(v1 + 40);
    v19 = *(v1 + 48);

    sub_100005AB8();
    swift_allocError();
    *v21 = 0xD000000000000026;
    *(v21 + 8) = 0x8000000100083800;
    *(v21 + 16) = xmmword_100080220;
    *(v21 + 32) = 0x8000000100083830;
    *(v21 + 40) = 11;
    swift_willThrow();

    v17 = *(v1 + 8);
  }

  else
  {
    if (v2 < 2)
    {
      __break(1u);
      return static Task<>.sleep(nanoseconds:)(a1);
    }

    *(v1 + 72) = v3;
    v4 = *(v1 + 40);
    v5 = *(v1 + 16);
    sub_10007AE0C();

    v6 = sub_10007AE1C();
    v7 = sub_10007B41C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 16);
    if (v8)
    {
      v10 = swift_slowAlloc();
      *v10 = 67109376;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      *(v10 + 4) = *(v1 + 89) != 2;

      *(v10 + 8) = 2048;
      *(v10 + 10) = v3;
      _os_log_impl(&_mh_execute_header, v6, v7, "waitForCurrentUserInvitingFromShare completed: %{BOOL}d, retriesLeft: %ld", v10, 0x12u);
    }

    else
    {
      v11 = *(v1 + 16);
    }

    v12 = *(v1 + 16);
    (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    if (*(v1 + 88) == 2)
    {
      v13 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
      v14 = swift_task_alloc();
      *(v1 + 80) = v14;
      *v14 = v1;
      v14[1] = sub_100075E20;
      a1 = 10000000;

      return static Task<>.sleep(nanoseconds:)(a1);
    }

    v16 = *(v1 + 40);
    v15 = *(v1 + 48);

    v17 = *(v1 + 8);
  }

  return v17();
}

uint64_t sub_100076258(char a1, uint64_t a2, char a3)
{
  *(v4 + 119) = a3;
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 118) = a1;
  v5 = sub_10007AE2C();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  sub_10007B32C();
  *(v4 + 64) = sub_10007B31C();
  v9 = sub_10007B2EC();
  *(v4 + 72) = v9;
  *(v4 + 80) = v8;

  return _swift_task_switch(sub_100076354, v9, v8);
}

uint64_t sub_100076354()
{
  v52 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 118);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 112) != v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 118);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v5 = *(v0 + 113);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 114) = v4;

    sub_10007AF4C();
    v6 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel;
    v7 = *(v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v8 = *(v0 + 16);
    *(v0 + 88) = v8;
    if (v8)
    {
      v9 = *(v3 + v6);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10007AF3C();

      if ((*(v0 + 115) & 1) == 0)
      {
        v17 = *(v0 + 64);

        goto LABEL_8;
      }

      v10 = *(v0 + 118);
      v11 = [v8 publicPermission];
      if (v10 == 2)
      {
        goto LABEL_5;
      }

      v18 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (*(v0 + 116) != 3)
      {
        v30 = *(v0 + 32);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10007AF3C();

        if (*(v0 + 117) > 1u)
        {
          if (*(v0 + 117) != 2)
          {
            return sub_10007B63C();
          }

          v12 = 2;
LABEL_14:
          v19 = *(v0 + 56);
          sub_10007AE0C();
          v20 = sub_10007AE1C();
          v21 = sub_10007B41C();
          if (!os_log_type_enabled(v20, v21))
          {
            v28 = *(v0 + 48);
            v27 = *(v0 + 56);
            v29 = *(v0 + 40);

            (*(v28 + 8))(v27, v29);
            if (v12 != v11)
            {
              goto LABEL_45;
            }

            goto LABEL_49;
          }

          v22 = *(v0 + 118);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v23 = 136316162;
          v50 = v11;
          v51 = v24;
          v49 = v12;
          if (v22)
          {
            if (v22 == 1)
            {
              v25 = 0x4D63696C6275702ELL;
              v26 = 0xEB0000000065646FLL;
            }

            else
            {
              v25 = 0x657461766972702ELL;
              v26 = 0xEC00000065646F4DLL;
            }
          }

          else
          {
            v26 = 0xE500000000000000;
            v25 = 0x656E6F6E2ELL;
          }

          v31 = sub_100037C08(v25, v26, &v51);

          *(v23 + 4) = v31;
          *(v23 + 12) = 2080;
          if (v5)
          {
            if (v5 == 1)
            {
              v32 = 0x4D63696C6275702ELL;
              v33 = 0xEB0000000065646FLL;
            }

            else
            {
              v32 = 0x657461766972702ELL;
              v33 = 0xEC00000065646F4DLL;
            }
          }

          else
          {
            v33 = 0xE500000000000000;
            v32 = 0x656E6F6E2ELL;
          }

          v34 = sub_100037C08(v32, v33, &v51);

          *(v23 + 14) = v34;
          *(v23 + 22) = 2080;
          if (v50 == 1)
          {
            v36 = 0xE500000000000000;
            v35 = 0x656E6F6E2ELL;
          }

          else
          {
            if (v50 != 2)
            {
              if (v50 == 3)
              {
                v35 = 0x697257646165722ELL;
                v36 = 0xEA00000000006574;
                goto LABEL_38;
              }

              return sub_10007B63C();
            }

            v35 = 0x6C6E4F646165722ELL;
            v36 = 0xE900000000000079;
          }

LABEL_38:
          v37 = sub_100037C08(v35, v36, &v51);

          *(v23 + 24) = v37;
          *(v23 + 32) = 2080;
          if (v49 == 1)
          {
            v39 = 0xE500000000000000;
            v38 = 0x656E6F6E2ELL;
          }

          else if (v49 == 2)
          {
            v38 = 0x6C6E4F646165722ELL;
            v39 = 0xE900000000000079;
          }

          else
          {
            v38 = 0x697257646165722ELL;
            v39 = 0xEA00000000006574;
          }

          v40 = *(v0 + 48);
          v48 = *(v0 + 56);
          v41 = *(v0 + 40);
          v42 = *(v0 + 119);
          v43 = sub_100037C08(v38, v39, &v51);

          *(v23 + 34) = v43;
          *(v23 + 42) = 1024;
          *(v23 + 44) = v42;
          _os_log_impl(&_mh_execute_header, v20, v21, "changeAccessSetting for newAccess: %s, oldAccess: %s oldSharePermission: %s,\nnewSharePermission: %s, saveShare: %{BOOL}d", v23, 0x30u);
          swift_arrayDestroy();

          (*(v40 + 8))(v48, v41);
          v12 = v49;
          if (v49 != v50)
          {
LABEL_45:
            v44 = *(v0 + 119);
            [v8 setPublicPermission:v12];
            if (v44 == 1)
            {
              v45 = swift_task_alloc();
              *(v0 + 96) = v45;
              *v45 = v0;
              v45[1] = sub_100076B00;
              v46 = *(v0 + 24);

              return sub_10005B51C(1);
            }
          }

LABEL_49:
          v47 = *(v0 + 64);

          goto LABEL_7;
        }

        if (!*(v0 + 117))
        {
LABEL_5:
          v12 = 1;
          goto LABEL_14;
        }
      }

      v12 = 3;
      goto LABEL_14;
    }
  }

  v13 = *(v0 + 64);
LABEL_7:

LABEL_8:
  v14 = *(v0 + 56);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100076B00()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_100076C3C;
  }

  else
  {
    v7 = sub_1000596FC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100076C3C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_100076CB0(char a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 118) = a4;
  *(v5 + 117) = a3;
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 116) = a1;
  v6 = sub_10007AE2C();
  *(v5 + 40) = v6;
  v7 = *(v6 - 8);
  *(v5 + 48) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 56) = swift_task_alloc();
  sub_10007B32C();
  *(v5 + 64) = sub_10007B31C();
  v10 = sub_10007B2EC();
  *(v5 + 72) = v10;
  *(v5 + 80) = v9;

  return _swift_task_switch(sub_100076DB0, v10, v9);
}

void sub_100076DB0()
{
  v55 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 116);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (*(v0 + 112) != v2)
  {
    v3 = *(v0 + 32);
    v4 = *(v0 + 116);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 113) = v4;

    sub_10007AF4C();
    v5 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel;
    v6 = *(v3 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF3C();

    v7 = *(v0 + 16);
    *(v0 + 88) = v7;
    if (v7)
    {
      v8 = *(v3 + v5);
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10007AF3C();

      if ((*(v0 + 114) & 1) == 0)
      {
        v29 = *(v0 + 64);

        goto LABEL_21;
      }

      v9 = *(v0 + 56);
      v10 = *(v3 + v5);

      v11 = v7;
      v12 = sub_10000CF38(v7);

      sub_10007AE0C();
      v13 = sub_10007AE1C();
      v14 = sub_10007B41C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = 0x656E6F6E2ELL;
        v16 = *(v0 + 116);
        v17 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v17 = 136315906;
        v18 = 0xE500000000000000;
        v19 = 0x6C6E4F646165722ELL;
        v20 = 0xE900000000000079;
        if (v16 != 2)
        {
          v19 = 0x646578696D2ELL;
          v20 = 0xE600000000000000;
        }

        v21 = 0x697257646165722ELL;
        if (v16)
        {
          v18 = 0xEA00000000006574;
        }

        else
        {
          v21 = 0x656E6F6E2ELL;
        }

        if (v16 <= 1)
        {
          v22 = v21;
        }

        else
        {
          v22 = v19;
        }

        if (v16 <= 1)
        {
          v23 = v18;
        }

        else
        {
          v23 = v20;
        }

        v24 = sub_100037C08(v22, v23, &v54);

        *(v17 + 4) = v24;
        *(v17 + 12) = 2080;
        v52 = v12;
        if (v12 > 1u)
        {
          if (v12 == 2)
          {
            v15 = 0x6C6E4F646165722ELL;
            v25 = 0xE900000000000079;
          }

          else
          {
            v25 = 0xE600000000000000;
            v15 = 0x646578696D2ELL;
          }
        }

        else if (v12)
        {
          v15 = 0x697257646165722ELL;
          v25 = 0xEA00000000006574;
        }

        else
        {
          v25 = 0xE500000000000000;
        }

        v33 = *(v0 + 48);
        v50 = *(v0 + 40);
        v51 = *(v0 + 56);
        v34 = *(v0 + 118);
        v35 = *(v0 + 117);
        v36 = sub_100037C08(v15, v25, &v54);

        *(v17 + 14) = v36;
        *(v17 + 22) = 1024;
        *(v17 + 24) = v34;
        *(v17 + 28) = 1024;
        *(v17 + 30) = v35;
        _os_log_impl(&_mh_execute_header, v13, v14, "changeReadWritePermission newPermission: %s, oldSharePermission: %s,\nupdateExistingParticipants: %{BOOL}d, saveShare: %{BOOL}d", v17, 0x22u);
        swift_arrayDestroy();

        (*(v33 + 8))(v51, v50);
        v12 = v52;
      }

      else
      {
        v31 = *(v0 + 48);
        v30 = *(v0 + 56);
        v32 = *(v0 + 40);

        (*(v31 + 8))(v30, v32);
      }

      v37 = *(v0 + 116);
      if (v37 == v12)
      {
        goto LABEL_60;
      }

      if (*(v0 + 116) > 1u)
      {
        if (v37 != 2)
        {
          sub_10007B63C();
          return;
        }

        v38 = 1;
        v39 = 2;
      }

      else
      {
        v38 = 0;
        if (*(v0 + 116))
        {
          v39 = 3;
        }

        else
        {
          v39 = 1;
        }
      }

      v40 = *(v0 + 32);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      if (*(v0 + 115) == 1)
      {
        [v11 setPublicPermission:v39];
      }

      if (*(v0 + 118) != 1 || [v11 publicPermission] != 1)
      {
LABEL_56:
        if (*(v0 + 117) == 1)
        {
          v47 = swift_task_alloc();
          *(v0 + 96) = v47;
          *v47 = v0;
          v47[1] = sub_100077518;
          v48 = *(v0 + 24);

          sub_10005B51C(1);
          return;
        }

LABEL_60:
        v49 = *(v0 + 64);

        goto LABEL_20;
      }

      v41 = [v11 participants];
      sub_100005C8C(0, &qword_10009E600, CKShareParticipant_ptr);
      v42 = sub_10007B2AC();

      v53 = v11;
      if (v42 >> 62)
      {
        v43 = sub_10007B64C();
        if (v43)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43)
        {
LABEL_44:
          if (v43 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v43; ++i)
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v45 = sub_10007B5DC();
            }

            else
            {
              v45 = *(v42 + 8 * i + 32);
            }

            v46 = v45;
            if ([v45 role] != 1)
            {
              [v46 setPermission:v39];
              if (v38)
              {
                [v46 setRole:3];
              }
            }
          }
        }
      }

      v11 = v53;
      goto LABEL_56;
    }
  }

  v26 = *(v0 + 64);
LABEL_20:

LABEL_21:
  v27 = *(v0 + 56);

  v28 = *(v0 + 8);

  v28();
}

uint64_t sub_100077518()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10007AA14;
  }

  else
  {
    v7 = sub_10007AA10;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100077654(int a1)
{
  v3 = sub_10007AE2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride);
  if (v9 == 2 || ((v9 ^ a1) & 1) != 0)
  {
    v10 = a1 & 1;
    *(v1 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride) = a1 & 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v14[15] = a1 & 1;

    sub_10007AF4C();
    sub_10007AE0C();
    v11 = sub_10007AE1C();
    v12 = sub_10007B41C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "changeRequestAccessAllowedForSPI newAccessAllowed: %{BOOL}d--this should be the final value set in the share", v13, 8u);
    }

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_100077834(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007AE2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v48 - v10;
  v12 = *(v2 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (!v51)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v22 = sub_100018C60(v51, a1);

    if (v22)
    {
      return result;
    }

    sub_10007AE0C();

    v23 = sub_10007AE1C();
    v24 = sub_10007B41C();

    if (!os_log_type_enabled(v23, v24))
    {

      (*(v5 + 8))(v9, v4);
      goto LABEL_66;
    }

    v25 = swift_slowAlloc();
    result = swift_slowAlloc();
    v51 = result;
    *v25 = 136315394;
    v26 = *(a1 + 16);
    if (!v26)
    {
      goto LABEL_69;
    }

    v27 = *(a1 + 32);
    v49 = v5;
    if (v27 == 1)
    {
      if (v26 == 1)
      {
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (*(a1 + 33))
      {
        v28 = 7237422;
        v29 = 0xE300000000000000;
        goto LABEL_43;
      }

      v31 = 0;
    }

    else
    {
      if (v26 == 1)
      {
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v31 = *(a1 + 33);
    }

    v39 = v27 ^ v31;
    if (v39)
    {
      v28 = 0x646578696D2ELL;
    }

    else
    {
      v28 = 1717989166;
    }

    if (v39)
    {
      v29 = 0xE600000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

LABEL_43:
    v40 = sub_100037C08(v28, v29, &v51);

    *(v25 + 4) = v40;
    *(v25 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    result = v50;
    v41 = *(v50 + 16);
    if (!v41)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v42 = *(v50 + 32);
    if (v42 == 1)
    {
      if (v41 == 1)
      {
LABEL_79:
        __break(1u);
        return result;
      }

      if (*(v50 + 33))
      {

        v43 = 7237422;
        v44 = 0xE300000000000000;
LABEL_65:
        v47 = sub_100037C08(v43, v44, &v51);

        *(v25 + 14) = v47;
        _os_log_impl(&_mh_execute_header, v23, v24, "For Co-owners changeNewParticipantsCanBeCoOwners, newState: %s, oldState: %s", v25, 0x16u);
        swift_arrayDestroy();

        (*(v49 + 8))(v9, v4);
        goto LABEL_66;
      }

      v45 = 0;
    }

    else
    {
      if (v41 == 1)
      {
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v45 = *(v50 + 33);
    }

    if (v42 != v45)
    {
      v43 = 0x646578696D2ELL;
    }

    else
    {
      v43 = 1717989166;
    }

    if (v42 != v45)
    {
      v44 = 0xE600000000000000;
    }

    else
    {
      v44 = 0xE400000000000000;
    }

    goto LABEL_65;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v13 = sub_100018C60(v51, a1);

  if (v13)
  {
    return result;
  }

  sub_10007AE0C();

  v15 = sub_10007AE1C();
  v16 = sub_10007B41C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    result = swift_slowAlloc();
    v51 = result;
    *v17 = 136315394;
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = *(a1 + 32);
      v49 = v5;
      if (v19 == 1)
      {
        if (v18 == 1)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (*(a1 + 33))
        {
          v20 = 7237422;
          v21 = 0xE300000000000000;
          goto LABEL_29;
        }

        v30 = 0;
      }

      else
      {
        if (v18 == 1)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v30 = *(a1 + 33);
      }

      v32 = v19 ^ v30;
      if (v32)
      {
        v20 = 0x646578696D2ELL;
      }

      else
      {
        v20 = 1717989166;
      }

      if (v32)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

LABEL_29:
      v33 = sub_100037C08(v20, v21, &v51);

      *(v17 + 4) = v33;
      *(v17 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      result = v50;
      v34 = *(v50 + 16);
      if (v34)
      {
        v35 = *(v50 + 32);
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            if (*(v50 + 33))
            {

              v36 = 7237422;
              v37 = 0xE300000000000000;
LABEL_57:
              v46 = sub_100037C08(v36, v37, &v51);

              *(v17 + 14) = v46;
              _os_log_impl(&_mh_execute_header, v15, v16, "changeNewParticipantsCanBeCoOwners 4 newState: %s, oldState: %s", v17, 0x16u);
              swift_arrayDestroy();

              (*(v49 + 8))(v11, v4);
              goto LABEL_66;
            }

            v38 = 0;
LABEL_51:

            if (v35 != v38)
            {
              v36 = 0x646578696D2ELL;
            }

            else
            {
              v36 = 1717989166;
            }

            if (v35 != v38)
            {
              v37 = 0xE600000000000000;
            }

            else
            {
              v37 = 0xE400000000000000;
            }

            goto LABEL_57;
          }

          goto LABEL_78;
        }

        if (v34 != 1)
        {
          v38 = *(v50 + 33);
          goto LABEL_51;
        }

        goto LABEL_74;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  (*(v5 + 8))(v11, v4);
LABEL_66:
  swift_getKeyPath();
  swift_getKeyPath();
  v51 = a1;

  return sub_10007AF4C();
}

uint64_t sub_100078014()
{
  v1 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10007AF3C();

  if (v5 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    result = v5;
    v3 = *(v5 + 16);
    if (!v3)
    {
      __break(1u);
      goto LABEL_17;
    }

    if (*(v5 + 32) != 1)
    {
      if (v3 != 1)
      {
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_13;
    }

    if (v3 != 1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  result = v5;
  v3 = *(v5 + 16);
  if (!v3)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(v5 + 32) != 1)
  {
LABEL_13:
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (v3 != 1)
  {
LABEL_9:
    if (*(result + 33))
    {
      v4 = 1;
LABEL_15:

      return v4;
    }

LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1000781B4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (v25 != v1)
  {
    sub_10007AE0C();

    v8 = sub_10007AE1C();
    v9 = sub_10007B41C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v10 = 136315394;
      v11 = 0x4D63696C6275702ELL;
      v12 = 0xEB0000000065646FLL;
      if (v1 != 1)
      {
        v11 = 0x657461766972702ELL;
        v12 = 0xEC00000065646F4DLL;
      }

      if (v1)
      {
        v13 = v11;
      }

      else
      {
        v13 = 0x656E6F6E2ELL;
      }

      if (v1)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xE500000000000000;
      }

      v15 = sub_100037C08(v13, v14, &v23);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v16 = 0x4D63696C6275702ELL;
      v17 = 0xEB0000000065646FLL;
      if (v22 != 1)
      {
        v16 = 0x657461766972702ELL;
        v17 = 0xEC00000065646F4DLL;
      }

      if (v22)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0x656E6F6E2ELL;
      }

      if (v22)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = sub_100037C08(v18, v19, &v23);

      *(v10 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v8, v9, "updateAccessModeOnly for newAccess: %s, oldAccess: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v1;

    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_100078534(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  if (v29 != v1)
  {
    sub_10007AE0C();

    v8 = sub_10007AE1C();
    v9 = sub_10007B41C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v10 = 136315394;
      v11 = 0xE500000000000000;
      v12 = 0x6C6E4F646165722ELL;
      v13 = 0xE900000000000079;
      if (v1 != 2)
      {
        v12 = 0x646578696D2ELL;
        v13 = 0xE600000000000000;
      }

      v14 = 0x697257646165722ELL;
      if (v1)
      {
        v11 = 0xEA00000000006574;
      }

      else
      {
        v14 = 0x656E6F6E2ELL;
      }

      if (v1 <= 1)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      if (v1 <= 1)
      {
        v16 = v11;
      }

      else
      {
        v16 = v13;
      }

      v17 = sub_100037C08(v15, v16, &v27);

      *(v10 + 4) = v17;
      *(v10 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10007AF3C();

      v18 = 0xE500000000000000;
      v19 = 0x6C6E4F646165722ELL;
      v20 = 0xE900000000000079;
      if (v26 != 2)
      {
        v19 = 0x646578696D2ELL;
        v20 = 0xE600000000000000;
      }

      v21 = 0x697257646165722ELL;
      if (v26)
      {
        v18 = 0xEA00000000006574;
      }

      else
      {
        v21 = 0x656E6F6E2ELL;
      }

      if (v26 <= 1u)
      {
        v22 = v21;
      }

      else
      {
        v22 = v19;
      }

      if (v26 <= 1u)
      {
        v23 = v18;
      }

      else
      {
        v23 = v20;
      }

      v24 = sub_100037C08(v22, v23, &v27);

      *(v10 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v8, v9, "updatePermissionsOnly newAccess: %s, oldAccess: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    (*(v3 + 8))(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v1;

    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_100078954()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  return v1;
}

uint64_t sub_1000789F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_100078A70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

uint64_t sub_100078AEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  v1 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride);
  if (v1 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    LOBYTE(v1) = v4;
  }

  if (v1)
  {
    goto LABEL_6;
  }

  v2 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100057F40();

LABEL_6:
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_10007AF4C();
  }

  __break(1u);
  return result;
}

void sub_100078C7C(void **a1)
{
  v2 = sub_10007AE2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v7)
    {
      v8 = v7;
      if ([v8 publicPermission] == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v9;

      sub_10007AF4C();
      v10 = v8;
      v11 = sub_10000CF38(v7);

      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v11;

      sub_10007AF4C();
      sub_10007AE0C();
      v12 = v10;
      v13 = sub_10007AE1C();
      v14 = sub_10007B41C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109120;
        *(v15 + 4) = [v12 allowsAccessRequests];

        _os_log_impl(&_mh_execute_header, v13, v14, "optionsModel ckShareModel.$ckShare about to set anyoneCanRequestAccessPublisher to ckShare's allowsAccessRequests: %{BOOL}d", v15, 8u);
      }

      else
      {

        v13 = v12;
      }

      (*(v3 + 8))(v6, v2);
      v16 = [v12 allowsAccessRequests];
      swift_getKeyPath();
      swift_getKeyPath();
      HIBYTE(v22) = v16;

      sub_10007AF4C();
      v17 = [v12 currentUserParticipant];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 role];
        sub_100005C8C(0, &unk_10009F380, NSObject_ptr);
        v20 = [v12 owner];
        v21 = sub_10007B51C();

        swift_getKeyPath();
        swift_getKeyPath();
        HIBYTE(v22) = v21 & 1 | (v19 == 2);

        sub_10007AF4C();
      }

      sub_100078AEC();
    }

    else
    {
    }
  }
}

uint64_t sub_10007902C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    v3 = sub_1000791A8(v4, v1);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10007AF4C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10007AF3C();

    sub_100079230(v3, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_10007AF4C();
  }

  return result;
}

uint64_t sub_1000791A8(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC;
  result = (a2 >> 1) & 2;
  do
  {
    while (v2 > 1)
    {
      if (v2 == 2)
      {
        v2 = 1;
        if (v3 != 8)
        {
          return result;
        }
      }

      else
      {
        if (v3 == 12)
        {
          return 3;
        }

LABEL_11:
        if ((a2 & 8) != 0)
        {
          v5 = v2 == 1;
          v2 = 1;
          if (v5)
          {
            return 0;
          }
        }

        else
        {
          v5 = v2 == 2;
          v2 = 2;
          if (v5)
          {
            return 0;
          }
        }
      }
    }

    if (!v2)
    {
      if (!a2)
      {
        return 0;
      }

      goto LABEL_11;
    }

    v2 = 2;
  }

  while ((a2 & 8) == 0);
  return 1;
}

uint64_t sub_100079230(char a1, uint64_t a2)
{
  if ((a2 & 2) != 0)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a2 & 1u) <= (a2 == 0))
  {
    result = a2 == 0;
  }

  else
  {
    result = a2 & 1;
  }

  do
  {
    while (a1)
    {
      if (a1 == 1)
      {
        a1 = 2;
        if ((a2 & 3) != 2)
        {
          return result;
        }
      }

      else
      {
        a1 = 1;
        if (a2 == 0 || (a2 & 2) != 0)
        {
          return 2;
        }
      }
    }

    a1 = v3;
  }

  while (a2);
  return 0;
}

uint64_t sub_1000792A4()
{
  v1 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__readWritePermission;
  v2 = sub_1000057A0(&qword_10009F200, &qword_10007EDD8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__sharingMode;
  v4 = sub_1000057A0(&qword_10009F218, &qword_10007EDE0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__sharingOptionsAllowed;
  v6 = sub_1000057A0(&qword_10009F0D0, &qword_10007ED28);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__allowCoOwnersEditing;
  v8 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v10 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__newParticipantsCanBeCoOwners;
  v11 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v9(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__participantsAreAlwaysCoOwners, v8);
  v13 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__currentUserCanInvitePublisher;
  v14 = sub_1000057A0(&qword_10009F928, &qword_100080270);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v9(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__currentUserCanManageAccessRequestsPublisher, v8);
  v9(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__anyoneCanRequestAccessPublisher, v8);
  v12(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__coOwnerNewParticipantsCanBeCoOwners, v11);
  v15 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel);

  v16 = *(v0 + OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_store);

  return v0;
}

uint64_t sub_10007953C()
{
  sub_1000792A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OptionsModel()
{
  result = qword_10009F820;
  if (!qword_10009F820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000795E8()
{
  sub_10000CE98(319, &qword_10009F830);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_10000CE98(319, &qword_10009F838);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_10000CE98(319, &qword_10009ECF0);
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_10000CE98(319, &qword_10009EC80);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_10000CE98(319, &qword_10009E4F0);
          if (v10 <= 0x3F)
          {
            v11 = *(v9 - 8) + 64;
            sub_100079824();
            if (v13 <= 0x3F)
            {
              v17 = *(v12 - 8) + 64;
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_100079824()
{
  if (!qword_10009F840)
  {
    sub_100004AD8(&unk_10009F848, "H\");
    v0 = sub_10007AF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_10009F840);
    }
  }
}

uint64_t sub_100079888@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10007AF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_100079908(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10007AF4C();
}

char *sub_100079A54(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v97 = *v1;
  v3 = sub_1000057A0(&qword_10009EF70, &unk_100080500);
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = *(v89 + 64);
  __chkstk_darwin(v3);
  v88 = v73 - v5;
  v6 = sub_1000057A0(&qword_10009EF78, &qword_10007EBD0);
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v91 = v73 - v8;
  v9 = sub_1000057A0(&qword_10009F930, &qword_100080510);
  v95 = *(v9 - 8);
  v96 = v9;
  v10 = *(v95 + 64);
  __chkstk_darwin(v9);
  v94 = v73 - v11;
  v12 = sub_1000057A0(&qword_10009F028, &qword_10007EC80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v87 = v73 - v14;
  v82 = sub_1000057A0(&qword_10009F010, &qword_10007D630);
  v81 = *(v82 - 8);
  v15 = *(v81 + 64);
  __chkstk_darwin(v82);
  v80 = v73 - v16;
  v17 = sub_1000057A0(&qword_10009EFE0, &qword_10007EC38);
  v84 = *(v17 - 8);
  v85 = v17;
  v18 = *(v84 + 64);
  __chkstk_darwin(v17);
  v83 = v73 - v19;
  v79 = sub_1000057A0(&qword_10009F928, &qword_100080270);
  v78 = *(v79 - 8);
  v20 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = v73 - v21;
  v98 = sub_1000057A0(&qword_10009F1E0, &qword_10007EDD0);
  v76 = *(v98 - 1);
  v22 = *(v76 + 64);
  __chkstk_darwin(v98);
  v75 = v73 - v23;
  v74 = sub_1000057A0(&qword_10009E650, &qword_10007ED80);
  v24 = *(v74 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v74);
  v27 = v73 - v26;
  v28 = sub_1000057A0(&qword_10009F218, &qword_10007EDE0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = v73 - v31;
  v33 = sub_1000057A0(&qword_10009F200, &qword_10007EDD8);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = v73 - v36;
  v38 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__readWritePermission;
  LOBYTE(v100) = 1;
  sub_10007AF0C();
  (*(v34 + 32))(&v2[v38], v37, v33);
  v39 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__sharingMode;
  LOBYTE(v100) = 0;
  sub_10007AF0C();
  (*(v29 + 32))(&v2[v39], v32, v28);
  v40 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__allowCoOwnersEditing;
  LOBYTE(v100) = 0;
  sub_10007AF0C();
  v41 = *(v24 + 32);
  v42 = v74;
  v41(&v2[v40], v27, v74);
  v43 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__newParticipantsCanBeCoOwners;
  v100 = &off_100095760;
  v44 = v75;
  sub_10007AF0C();
  v76 = *(v76 + 32);
  (v76)(&v2[v43], v44, v98);
  v45 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__participantsAreAlwaysCoOwners;
  LOBYTE(v100) = 0;
  sub_10007AF0C();
  v41(&v2[v45], v27, v42);
  v46 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__currentUserCanInvitePublisher;
  LOBYTE(v100) = 2;
  sub_1000057A0(&unk_10009F848, "H\");
  v47 = v77;
  sub_10007AF0C();
  (*(v78 + 32))(&v2[v46], v47, v79);
  v48 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__currentUserCanManageAccessRequestsPublisher;
  LOBYTE(v100) = 0;
  sub_10007AF0C();
  v41(&v2[v48], v27, v42);
  v49 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__anyoneCanRequestAccessPublisher;
  LOBYTE(v100) = 0;
  sub_10007AF0C();
  v41(&v2[v49], v27, v42);
  v50 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel__coOwnerNewParticipantsCanBeCoOwners;
  v100 = &off_100095788;
  sub_10007AF0C();
  (v76)(&v2[v50], v44, v98);
  v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_allowAccessRequestsSPIOverride] = 2;
  if (_swiftEmptyArrayStorage >> 62 && sub_10007B64C())
  {
    v51 = sub_1000606F8(_swiftEmptyArrayStorage);
  }

  else
  {
    v51 = &_swiftEmptySetSingleton;
  }

  v79 = OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_store;
  *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_store] = v51;
  v52 = v86;
  *&v2[OBJC_IVAR____TtC40com_apple_CloudSharingUI_AddParticipants12OptionsModel_ckShareModel] = v86;
  swift_beginAccess();
  v99 = 15;

  sub_10007AF0C();
  swift_endAccess();
  swift_beginAccess();
  sub_1000057A0(&qword_10009E658, &qword_10007D670);
  v53 = v80;
  sub_10007AF1C();
  swift_endAccess();
  v98 = objc_opt_self();
  v54 = [v98 mainRunLoop];
  v100 = v54;
  v77 = sub_10007B53C();
  v55 = *(v77 - 1);
  v76 = *(v55 + 56);
  v78 = v55 + 56;
  v56 = v87;
  (v76)(v87, 1, 1, v77);
  v75 = sub_100005C8C(0, &qword_10009F1A8, NSRunLoop_ptr);
  v73[1] = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10000D6F4(&qword_10009F1D0, &qword_10009F010, &qword_10007D630);
  v74 = sub_10007A870();
  v58 = v82;
  v57 = v83;
  sub_10007AF9C();
  sub_10007A8D8(v56);

  (*(v81 + 8))(v53, v58);
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = v52;
  sub_10000D6F4(&qword_10009F250, &qword_10009EFE0, &qword_10007EC38);

  v61 = v85;
  sub_10007AFBC();

  (*(v84 + 8))(v57, v61);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  swift_beginAccess();
  sub_1000057A0(&qword_10009F0D0, &qword_10007ED28);
  v62 = v88;
  sub_10007AF1C();
  swift_endAccess();
  sub_10000D6F4(&qword_10009F2D0, &qword_10009EF70, &unk_100080500);
  sub_1000669BC();
  v63 = v90;
  v64 = v91;
  sub_10007AFAC();
  (*(v89 + 8))(v62, v63);
  v65 = [v98 mainRunLoop];
  v100 = v65;
  (v76)(v56, 1, 1, v77);
  sub_10000D6F4(&unk_10009F310, &qword_10009EF78, &qword_10007EBD0);
  v66 = v93;
  v67 = v94;
  sub_10007AF9C();
  sub_10007A8D8(v56);

  (*(v92 + 8))(v64, v66);
  v68 = swift_allocObject();
  swift_weakInit();

  v69 = swift_allocObject();
  v70 = v97;
  *(v69 + 16) = v68;
  *(v69 + 24) = v70;
  sub_10000D6F4(&qword_10009F938, &qword_10009F930, &qword_100080510);
  v71 = v96;
  sub_10007AFBC();

  (*(v95 + 8))(v67, v71);
  swift_beginAccess();
  sub_10007AECC();
  swift_endAccess();

  return v2;
}

unint64_t sub_10007A870()
{
  result = qword_10009F1B8;
  if (!qword_10009F1B8)
  {
    sub_100005C8C(255, &qword_10009F1A8, NSRunLoop_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F1B8);
  }

  return result;
}

uint64_t sub_10007A8D8(uint64_t a1)
{
  v2 = sub_1000057A0(&qword_10009F028, &qword_10007EC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007A940()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A978()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10007A9B8(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_100078C7C(a1);
}

uint64_t sub_10007A9C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007A9F8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10007902C(a1);
}