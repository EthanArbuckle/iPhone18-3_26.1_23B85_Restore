int main(int argc, const char **argv, const char **envp)
{
  v3 = *(*(sub_1000105A8() - 8) + 64);
  __chkstk_darwin();
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (!v5)
  {
    qword_100018548 = 0;
    unk_100018550 = 0;
    __break(1u);
  }

  v6 = sub_1000105F8();
  v8 = v7;

  qword_100018548 = v6;
  unk_100018550 = v8;
  if (!v8)
  {
    __break(1u);
  }

  sub_100010598();
  v9 = sub_1000105D8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  qword_100018558 = sub_1000105C8();
  dispatch_main();
}

uint64_t sub_100001078(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001098(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_1000010D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100001120()
{
  v0 = *(*(type metadata accessor for E5MLCompilerInput() - 8) + 64);
  __chkstk_darwin();
  sub_10000125C();
  sub_1000105E8();
  result = sub_100010618();
  __break(1u);
  return result;
}

unint64_t sub_10000125C()
{
  result = qword_1000181D0;
  if (!qword_1000181D0)
  {
    type metadata accessor for E5MLCompilerInput();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000181D0);
  }

  return result;
}

uint64_t sub_100001304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000013D4(&qword_100018270, &unk_100010EF0);
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
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000013D4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000013D4(&qword_100018270, &unk_100010EF0);
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
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for E5MLCompilerInput()
{
  result = qword_1000182D0;
  if (!qword_1000182D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001548()
{
  sub_100001684(319, &qword_1000182E0, &type metadata for Data, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10000162C();
    if (v1 <= 0x3F)
    {
      sub_100001684(319, &unk_1000182F0, &type metadata for String, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000162C()
{
  if (!qword_1000182E8)
  {
    sub_100010588();
    v0 = sub_100010608();
    if (!v1)
    {
      atomic_store(v0, &qword_1000182E8);
    }
  }
}

void sub_100001684(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

Swift::Int sub_1000016E8()
{
  v1 = *v0;
  sub_1000106A8();
  sub_1000106B8(v1);
  return sub_1000106C8();
}

Swift::Int sub_10000175C()
{
  v1 = *v0;
  sub_1000106A8();
  sub_1000106B8(v1);
  return sub_1000106C8();
}

unint64_t sub_1000017A0()
{
  v1 = 0x7942656C75646F6DLL;
  v2 = 0x6C50746567726174;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x694474757074756FLL;
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

uint64_t sub_100001844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100002788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100001884(uint64_t a1)
{
  v2 = sub_1000020CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000018C0(uint64_t a1)
{
  v2 = sub_1000020CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000018FC(void *a1)
{
  v3 = v1;
  v5 = sub_1000013D4(&qword_100018360, &qword_100010F90);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100002088(a1, a1[3]);
  sub_1000020CC();
  sub_1000106E8();
  v11 = v3[1];
  v20 = *v3;
  v21 = v11;
  v19 = 0;
  sub_1000023A0(v20, v11);
  sub_100002408();
  sub_100010658();
  sub_10000221C(v20, v21);
  if (!v2)
  {
    v12 = type metadata accessor for E5MLCompilerInput();
    v13 = v12[5];
    LOBYTE(v20) = 1;
    sub_100010588();
    sub_10000245C(&qword_100018370, &type metadata accessor for URL);
    sub_100010658();
    v14 = (v3 + v12[6]);
    v15 = *v14;
    v16 = v14[1];
    LOBYTE(v20) = 2;
    sub_100010668();
    v20 = *(v3 + v12[7]);
    v19 = 3;
    sub_1000013D4(&qword_100018350, &qword_100010F88);
    sub_1000024A4(&qword_100018378);
    sub_100010678();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100001B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = (*(*(sub_1000013D4(&qword_100018270, &unk_100010EF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v36 = &v30 - v4;
  v38 = sub_1000013D4(&qword_100018330, &qword_100010F80);
  v35 = *(v38 - 8);
  v5 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v30 - v6;
  v8 = (type metadata accessor for E5MLCompilerInput() - 8);
  v9 = *(*v8 + 64);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = xmmword_100010EE0;
  v12 = v8[7];
  v13 = sub_100010588();
  v14 = *(*(v13 - 8) + 56);
  v34 = v12;
  v14(&v11[v12], 1, 1, v13);
  v15 = &v11[v8[8]];
  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v16 = v8[9];
  *&v11[v16] = &_swiftEmptyArrayStorage;
  v17 = a1[4];
  sub_100002088(a1, a1[3]);
  sub_1000020CC();
  v37 = v7;
  v18 = v39;
  sub_1000106D8();
  if (v18)
  {
    v29 = a1;
  }

  else
  {
    v31 = v16;
    v32 = v15;
    v39 = a1;
    v20 = v35;
    v19 = v36;
    v42 = 0;
    sub_1000021C8();
    v21 = v37;
    sub_100010628();
    v23 = v40;
    v22 = v41;
    sub_10000221C(*v11, *(v11 + 1));
    *v11 = v23;
    *(v11 + 1) = v22;
    v24 = v38;
    LOBYTE(v40) = 1;
    sub_10000245C(&qword_100018348, &type metadata accessor for URL);
    sub_100010628();
    sub_100002284(v19, &v11[v34]);
    LOBYTE(v40) = 2;
    v25 = sub_100010638();
    v27 = v32;
    *v32 = v25;
    v27[1] = v28;
    sub_1000013D4(&qword_100018350, &qword_100010F88);
    v42 = 3;
    sub_1000024A4(&qword_100018358);
    sub_100010648();
    (*(v20 + 8))(v21, v24);
    *&v11[v31] = v40;
    sub_10000233C(v11, v33);
    v29 = v39;
  }

  sub_100002120(v29);
  return sub_10000216C(v11);
}

uint64_t sub_100001F90(uint64_t a1, uint64_t a2)
{
  result = sub_10000221C(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_100002004(uint64_t a1)
{
  *(a1 + 8) = sub_10000245C(&qword_1000181D0, type metadata accessor for E5MLCompilerInput);
  result = sub_10000245C(&qword_100018328, type metadata accessor for E5MLCompilerInput);
  *(a1 + 16) = result;
  return result;
}

void *sub_100002088(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1000020CC()
{
  result = qword_100018338;
  if (!qword_100018338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018338);
  }

  return result;
}

uint64_t sub_100002120(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000216C(uint64_t a1)
{
  v2 = type metadata accessor for E5MLCompilerInput();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000021C8()
{
  result = qword_100018340;
  if (!qword_100018340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018340);
  }

  return result;
}

uint64_t sub_10000221C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100002230(a1, a2);
  }

  return a1;
}

uint64_t sub_100002230(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100002284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000013D4(&qword_100018270, &unk_100010EF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000022F4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000233C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for E5MLCompilerInput();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000023A0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000023B4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000023B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100002408()
{
  result = qword_100018368;
  if (!qword_100018368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018368);
  }

  return result;
}

uint64_t sub_10000245C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000024A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000022F4(&qword_100018350, &qword_100010F88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for E5MLCompilerInput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for E5MLCompilerInput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100002684()
{
  result = qword_100018380;
  if (!qword_100018380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018380);
  }

  return result;
}

unint64_t sub_1000026DC()
{
  result = qword_100018388;
  if (!qword_100018388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018388);
  }

  return result;
}

unint64_t sub_100002734()
{
  result = qword_100018390[0];
  if (!qword_100018390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100018390);
  }

  return result;
}

uint64_t sub_100002788(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7942656C75646F6DLL && a2 == 0xEE0065646F636574;
  if (v4 || (sub_100010698() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694474757074756FLL && a2 == 0xEF79726F74636572 || (sub_100010698() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C50746567726174 && a2 == 0xEE006D726F667461 || (sub_100010698() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100011B60 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_100010698();

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

uint64_t sub_100002910(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000029B0()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v15 - v5;
  v8 = v0 + *(v7 + 96);
  v10 = *v8;
  v9 = *(v8 + 8);
  v11 = *(v7 + 88);
  (*(v3 + 16))(&v15 - v5, v1 + v11, v2);

  v10(v6);

  v12 = *(v3 + 8);
  v12(v6, v2);
  v12((v1 + v11), v2);
  v13 = *(v8 + 8);

  return v1;
}

uint64_t sub_100002B10()
{
  sub_1000029B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100002B80()
{
  mlirModuleDestroy(*(v0 + 16));
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

void **sub_100002C14@<X0>(void **result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    *result = 0;
    if ((*(*v3 + 48))(v3, &llvm::ErrorList::ID))
    {
      v4 = v3[1];
      v5 = v3[2];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = 0;
        do
        {
          v10 = v6;
          v7 = *v4;
          *v4 = 0;
          if ((*(*v7 + 48))(v7, &llvm::ErrorInfoBase::ID))
          {
            (*(*v7 + 8))(v7);
            v7 = 0;
          }

          v9 = v7;
          sub_100002E80(&v10, &v9, &v11);
          v6 = v11;
          v11 = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          if (v10)
          {
            (*(*v10 + 8))(v10);
          }

          ++v4;
        }

        while (v4 != v5);
      }

      *a2 = v6;
      return (*(*v3 + 8))(v3);
    }

    else
    {
      result = (*(*v3 + 48))(v3, &llvm::ErrorInfoBase::ID);
      if (result)
      {
        *a2 = 0;
        v8 = *(*v3 + 8);

        return v8(v3);
      }

      else
      {
        *a2 = v3;
      }
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_100002E80(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if (!v6)
  {
LABEL_16:
    *a3 = v7;
    *a2 = 0;
    return;
  }

  if (!v7)
  {
    *a3 = v6;
    *a1 = 0;
    return;
  }

  if (!(*(*v6 + 48))(v6, &llvm::ErrorList::ID))
  {
    if (!*a2 || !(*(**a2 + 48))(*a2, &llvm::ErrorList::ID))
    {
      operator new();
    }

    v13 = (*a2 + 8);
    v14 = *v13;
    v17 = *a1;
    *a1 = 0;
    sub_1000032B4(v13, v14, &v17);
    v15 = v17;
    v17 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v7 = *a2;
    goto LABEL_16;
  }

  v8 = *a1;
  if (!*a2)
  {
    v10 = 0;
LABEL_19:
    v17 = v10;
    *a2 = 0;
    sub_100003194(v8 + 8, &v17);
    v16 = v17;
    v17 = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    goto LABEL_21;
  }

  v9 = (*(**a2 + 48))(*a2, &llvm::ErrorList::ID);
  v10 = *a2;
  if (!v9)
  {
    goto LABEL_19;
  }

  *a2 = 0;
  v11 = v10[1];
  v12 = v10[2];
  if (v11 == v12)
  {
    goto LABEL_9;
  }

  do
  {
    sub_100003194(v8 + 8, v11++);
  }

  while (v11 != v12);
  if (v10)
  {
LABEL_9:
    (*(*v10 + 8))(v10);
  }

LABEL_21:
  *a3 = *a1;
  *a1 = 0;
}

void sub_100003194(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    v5 = *a2;
    *a2 = 0;
    *v4 = v5;
    v6 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v4 - *a1;
  v9 = v8 >> 3;
  v10 = (v8 >> 3) + 1;
  if (v10 >> 61)
  {
    sub_1000034E8();
  }

  v11 = v3 - v7;
  if (v11 >> 2 > v10)
  {
    v10 = v11 >> 2;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    v12 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 61))
    {
      operator new();
    }

    sub_1000034E8();
  }

  v13 = *a2;
  *a2 = 0;
  *(8 * v9) = v13;
  v6 = 8 * v9 + 8;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t *sub_1000032B4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (a2 == v6)
    {
      v15 = *a3;
      *a3 = 0;
      *v6 = v15;
      a1[1] = v6 + 1;
      return v4;
    }

    v8 = a2 + 1;
    v9 = v6 - 1;
    if (v6 < 8)
    {
      a1[1] = v6;
      if (v6 == v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v10 = *v9;
      *v9 = 0;
      *v6 = v10;
      a1[1] = v6 + 1;
      if (v6 == v8)
      {
LABEL_24:
        v27 = *a3;
        *a3 = 0;
        v28 = *v4;
        *v4 = v27;
        if (v28)
        {
          (*(*v28 + 8))(v28);
        }

        return v4;
      }
    }

    v23 = a2 - v6 + 8;
    v24 = v6 - 2;
    do
    {
      v25 = *v24;
      *v24 = 0;
      v26 = *v9;
      *v9 = v25;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      --v9;
      --v24;
      v23 += 8;
    }

    while (v23);
    goto LABEL_24;
  }

  v11 = *a1;
  v12 = ((v6 - *a1) >> 3) + 1;
  if (v12 >> 61)
  {
    sub_1000034E8();
  }

  v13 = v7 - v11;
  if (v13 >> 2 > v12)
  {
    v12 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  v33 = a1;
  if (v14)
  {
    if (!(v14 >> 61))
    {
      operator new();
    }

    sub_1000034E8();
  }

  v30 = 0;
  v31 = 8 * ((a2 - v11) >> 3);
  v32 = v31;
  sub_1000034F8(&v30, a3);
  v16 = v31;
  memcpy(v32, v4, a1[1] - v4);
  v17 = *a1;
  v18 = v31;
  *&v32 = v32 + a1[1] - v4;
  a1[1] = v4;
  v19 = v4 - v17;
  v20 = (v18 - (v4 - v17));
  memcpy(v20, v17, v19);
  v21 = *a1;
  *a1 = v20;
  v22 = a1[2];
  *(a1 + 1) = v32;
  *&v32 = v21;
  *(&v32 + 1) = v22;
  v30 = v21;
  v31 = v21;
  if (v21)
  {
    operator delete(v21);
  }

  return v16;
}

void *sub_1000034F8(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = v5 - *result;
    if (v5 <= *result)
    {
      v10 = (v4 - *result) >> 2;
      if (v4 == *result)
      {
        v10 = 1;
      }

      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1000034E8();
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = &v5[-(((v6 >> 3) + 1) / 2)];
    if (v5 != v4)
    {
      do
      {
        v9 = *v5;
        *v5 = 0;
        result = *v8;
        *v8 = v9;
        if (result)
        {
          result = (*(*result + 8))(result);
        }

        ++v5;
        ++v8;
      }

      while (v5 != v4);
      v5 = v3[1];
    }

    v3[1] = &v5[v7];
    v3[2] = v8;
  }

  v11 = v3[2];
  v12 = *a2;
  *a2 = 0;
  *v11 = v12;
  v3[2] = v11 + 1;
  return result;
}

void *sub_10000372C(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1000034E8();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t llvm::ErrorList::convertToErrorCode(llvm::ErrorList *this)
{
  if ((atomic_load_explicit(&qword_100018970, memory_order_acquire) & 1) == 0)
  {
    sub_100010384();
  }

  return 1;
}

uint64_t llvm::errorCodeToError@<X0>(llvm *this@<X0>, std::error_code a2@<0:X1, 8:X2>, void *a3@<X8>)
{
  if (this)
  {
    operator new();
  }

  result = 0;
  *a3 = 0;
  return result;
}

uint64_t llvm::errorToErrorCode(void **a1)
{
  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(*v2 + 48))(v2, &llvm::ErrorList::ID))
    {
      v3 = v2[1];
      v4 = v2[2];
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v11.__r_.__value_.__r.__words[0] = v5;
          v6 = *v3;
          *v3 = 0;
          if ((*(*v6 + 48))(v6, &llvm::ErrorInfoBase::ID))
          {
            *&v14.__val_ = (*(*v6 + 32))(v6);
            v14.__cat_ = v7;
            (*(*v6 + 8))(v6);
            v6 = 0;
          }

          v15 = v6;
          sub_100002E80(&v11, &v15, v12);
          v5 = v12[0];
          v12[0] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (v11.__r_.__value_.__r.__words[0])
          {
            (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
          }

          ++v3;
        }

        while (v3 != v4);
      }
    }

    else
    {
      (*(*v2 + 48))(v2, &llvm::ErrorInfoBase::ID);
      *&v14.__val_ = (*(*v2 + 32))(v2);
      v14.__cat_ = v8;
    }

    (*(*v2 + 8))(v2);
  }

  if ((atomic_load_explicit(&qword_100018970, memory_order_acquire) & 1) == 0)
  {
    sub_1000103DC();
  }

  if (v14.__cat_ == &off_1000184C0 && v14.__val_ == 3)
  {
    std::error_code::message(&v11, &v14);
    v13 = 260;
    v12[0] = &v11;
    llvm::report_fatal_error(v12, 1);
  }

  return *&v14.__val_;
}

void sub_100003B84(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &off_100014B40;
  v10 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v3, 0, 0, 0);
  (*(*a1 + 16))(a1, &v3);
  llvm::raw_ostream::~raw_ostream(&v3);
}

uint64_t sub_100003C38(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100003CC8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  operator delete();
}

void *sub_100003D78(void *result, llvm::raw_ostream *this)
{
  v3 = result;
  v4 = *(this + 4);
  if ((*(this + 3) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(this + 4) += 17;
    v5 = result[1];
    for (i = result[2]; v5 != i; ++v5)
    {
LABEL_7:
      while (1)
      {
        result = (*(**v5 + 16))(*v5, this);
        v7 = *(this + 4);
        if (*(this + 3) == v7)
        {
          break;
        }

        *v7 = 10;
        ++*(this + 4);
        if (++v5 == i)
        {
          return result;
        }
      }

      result = llvm::raw_ostream::write(this, "\n", 1uLL);
    }
  }

  else
  {
    result = llvm::raw_ostream::write(this, "Multiple errors:\n", 0x11uLL);
    v5 = v3[1];
    i = v3[2];
    if (v5 != i)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_100003ED0(uint64_t a1, void *a2)
{
  std::error_code::message(&v5, (a1 + 8));
  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v5;
  }

  else
  {
    v3 = v5.__r_.__value_.__r.__words[0];
  }

  if ((v5.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v5.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v5.__r_.__value_.__l.__size_;
  }

  llvm::raw_ostream::write(a2, v3, size);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_100003F84(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_100003FC8(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 3)
  {
    operator new();
  }

  if (a1 == 2)
  {
    a2[23] = 22;
    strcpy(a2, "A file error occurred.");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "Multiple errors");
  }
}

uint64_t sub_1000040B8(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(std::error_category::~error_category, a2, a3);
}

void llvm::report_fatal_error(llvm::Twine *a1, uint64_t a2)
{
  std::mutex::lock(&stru_1000184C8);
  v5 = qword_100018978;
  v4 = unk_100018980;
  std::mutex::unlock(&stru_1000184C8);
  if (v5)
  {
    llvm::Twine::str(a1, &__p);
    if (v20 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v10 = v5(v4, p_p, a2);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

LABEL_14:
    llvm::sys::RunInterruptHandlers(v10);
    if (a2)
    {
      abort();
    }

    exit(1);
  }

  v18 = &__p;
  __p = v21;
  v20 = xmmword_1000111D0;
  v12 = 2;
  v16 = 0;
  v17 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = off_100014BB8;
  llvm::raw_ostream::SetBufferAndMode(&v11, 0, 0, 0);
  v6 = v15;
  if ((v14 - v15) > 0xB)
  {
    *(v15 + 8) = 540693071;
    *v6 = *"LLVM ERROR: ";
    v15 += 12;
    v7 = &v11;
    llvm::Twine::print(a1, &v11);
    v8 = v15;
    if (v14 != v15)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = llvm::raw_ostream::write(&v11, "LLVM ERROR: ", 0xCuLL);
    llvm::Twine::print(a1, v7);
    v8 = v7[4];
    if (v7[3] != v8)
    {
LABEL_4:
      *v8 = 10;
      v7[4] = (v7[4] + 1);
      goto LABEL_12;
    }
  }

  llvm::raw_ostream::write(v7, "\n", 1uLL);
LABEL_12:
  write(2, *v18, v18[1]);
  llvm::raw_ostream::~raw_ostream(&v11);
  v10 = __p;
  if (__p != v21)
  {
    free(__p);
  }

  goto LABEL_14;
}

void llvm::report_bad_alloc_error(llvm *this, const char *a2)
{
  std::mutex::lock(&stru_100018508);
  v5 = qword_100018988;
  v4 = unk_100018990;
  std::mutex::unlock(&stru_100018508);
  if (!v5)
  {
    write(2, "LLVM ERROR: out of memory\n", 0x1AuLL);
    v6 = strlen(this);
    write(2, this, v6);
    write(2, "\n", 1uLL);
    abort();
  }

  v5(v4, this, a2);
  __break(1u);
}

uint64_t sub_100004358()
{
  __cxa_atexit(&std::mutex::~mutex, &unk_1000184C8, &_mh_execute_header);

  return __cxa_atexit(&std::mutex::~mutex, &unk_100018508, &_mh_execute_header);
}

char *llvm::formatv_object_base::parseFormatString@<X0>(char *__s@<X0>, size_t __n@<X1>, void *a3@<X8>)
{
  v3 = a3;
  *a3 = a3 + 2;
  a3[1] = 0x200000000;
  if (__n)
  {
    v67 = 0;
    do
    {
      v9 = __s;
      v10 = __n;
      LOBYTE(v69) = 0;
      v73 = 0;
      if (*__s != 123)
      {
        v30 = memchr(__s, 123, __n);
        v3 = a3;
        v16 = 0;
        v21 = 0;
        v15 = 0;
        v22 = 0;
        v23 = 0;
        v26 = 0;
        v31 = v30 - v9;
        if (!v30)
        {
          v31 = -1;
        }

        if (v10 >= v31)
        {
          v24 = v31;
        }

        else
        {
          v24 = v10;
        }

        __s = &v9[v24];
        __n = v10 - v24;
        goto LABEL_37;
      }

      v11 = 1;
      do
      {
        if (__n == v11)
        {
          v13 = -1;
          if (__n != -1)
          {
            v13 = __n;
          }

          if (v13 >= 2)
          {
            goto LABEL_32;
          }

LABEL_13:
          v14 = memchr(__s, 125, __n);
          v15 = 0;
          v16 = 0;
          v17 = 1;
          v18 = 2;
          if (!v14)
          {
            v21 = 0;
            v22 = 0;
            v23 = 0;
            v24 = 64;
            v25 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
            v26 = 0;
            v27 = 1;
            __n = 0;
            __s = 0;
            v3 = a3;
            goto LABEL_38;
          }

          v19 = v14;
          v20 = v14 - v9;
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v24 = 64;
          v25 = "Unterminated brace sequence. Escape with {{ for a literal brace.";
          v26 = 0;
          v27 = 1;
          __n = 0;
          __s = 0;
          v3 = a3;
          if (v20 == -1)
          {
            goto LABEL_38;
          }

          if (v10 != 1)
          {
            v28 = memchr((v9 + 1), 123, v10 - 1);
            v29 = v28 - v9;
            if (!v28)
            {
              v29 = -1;
            }

            if (v29 < v20)
            {
              v16 = 0;
              v21 = 0;
              v15 = 0;
              v22 = 0;
              v23 = 0;
              v26 = 0;
              if (v10 >= v29)
              {
                v24 = v29;
              }

              else
              {
                v24 = v10;
              }

              __s = &v9[v24];
              __n = v10 - v24;
              v17 = 1;
              v18 = 2;
              v25 = v9;
              v27 = 1;
              v3 = a3;
              goto LABEL_38;
            }
          }

          if (v9 == v19)
          {
            v34 = 1;
          }

          else
          {
            v34 = v20;
          }

          if (v34 >= v10)
          {
            v34 = v10;
          }

          v35 = v34 - 1;
          if (v10 >= v20 + 1)
          {
            v36 = v20 + 1;
          }

          else
          {
            v36 = v10;
          }

          v76 = v9 + 1;
          v77 = v34 - 1;
          v18 = 2;
          first_not_of = llvm::StringRef::find_first_not_of(&v76, "{}", 2, 0);
          if (first_not_of >= v35)
          {
            v38 = v35;
          }

          else
          {
            v38 = first_not_of;
          }

          if (v77 < v38)
          {
            v38 = v77;
          }

          v39 = v77 - v38;
          v78 = &v76[v38];
          v79 = v77 - v38;
          last_not_of = llvm::StringRef::find_last_not_of(&v78, "{}", 2, 0xFFFFFFFFFFFFFFFFLL);
          v41 = v39 - (last_not_of + 1);
          if (v39 < last_not_of + 1)
          {
            v41 = 0;
          }

          v42 = v79 - v41;
          if (v79 >= v42)
          {
            v43 = v42;
          }

          else
          {
            v43 = v79;
          }

          v74 = v78;
          v75 = v43;
          v44 = llvm::StringRef::find_first_not_of(&v74, " \t\n\v\f\r", 6, 0);
          if (v44 >= v43)
          {
            v45 = v43;
          }

          else
          {
            v45 = v44;
          }

          if (v75 < v45)
          {
            v45 = v75;
          }

          v74 += v45;
          v75 -= v45;
          v78 = 0;
          v46 = llvm::consumeUnsignedInteger(&v74, 0, &v78);
          if (v78 >> 32)
          {
            v47 = -1;
          }

          else
          {
            v47 = v78;
          }

          if (v46)
          {
            v23 = -1;
          }

          else
          {
            v23 = v47;
          }

          v16 = v75;
          if (!v75)
          {
            v22 = 0;
            v15 = 32;
            goto LABEL_92;
          }

          v48 = v74;
          if (*v74 != 44)
          {
            v22 = 0;
            v15 = 32;
            v18 = 2;
            goto LABEL_92;
          }

          v15 = 32;
          v18 = 2;
          ++v74;
          --v75;
          if (v16 == 1)
          {
            v16 = 0;
            v22 = 0;
            goto LABEL_92;
          }

          if (v16 == 2)
          {
            goto LABEL_89;
          }

          v49 = v48 + 2;
          v50 = v48[2];
          switch(v50)
          {
            case '+':
              v18 = 2;
              break;
            case '-':
              v18 = 0;
              break;
            case '=':
              v18 = 1;
              break;
            default:
              v64 = v48[1];
              switch(v64)
              {
                case '+':
                  v18 = 2;
                  break;
                case '-':
                  v18 = 0;
                  break;
                case '=':
                  v18 = 1;
                  break;
                default:
                  v18 = 2;
                  v78 = 0;
                  if (llvm::consumeUnsignedInteger(&v74, 0, &v78))
                  {
LABEL_124:
                    v17 = 0;
                    v3 = a3;
LABEL_115:
                    v27 = 0;
                    __s = &v9[v36];
                    __n = v10 - v36;
                    v26 = 1;
                    goto LABEL_38;
                  }

LABEL_90:
                  v22 = v78;
                  if (v78 >> 32)
                  {
                    goto LABEL_124;
                  }

                  v16 = v75;
LABEL_92:
                  v52 = llvm::StringRef::find_first_not_of(&v74, " \t\n\v\f\r", 6, 0);
                  if (v52 >= v16)
                  {
                    v53 = v16;
                  }

                  else
                  {
                    v53 = v52;
                  }

                  v54 = v75;
                  if (v75 >= v53)
                  {
                    v55 = v53;
                  }

                  else
                  {
                    v55 = v75;
                  }

                  v56 = v75 - v55;
                  v57 = &v74[v55];
                  v74 += v55;
                  v75 -= v55;
                  if (v54 > v53 && *v57 == 58)
                  {
                    v21 = v57 + 1;
                    v16 = v56 - 1;
                    v74 = 0;
                    v75 = 0;
                    v56 = 0;
                  }

                  else
                  {
                    v16 = 0;
                    v21 = 0;
                  }

                  v58 = llvm::StringRef::find_first_not_of(&v74, " \t\n\v\f\r", 6, 0);
                  if (v58 >= v56)
                  {
                    v59 = v56;
                  }

                  else
                  {
                    v59 = v58;
                  }

                  if (v75 < v59)
                  {
                    v59 = v75;
                  }

                  v60 = v75 - v59;
                  v78 = &v74[v59];
                  v79 = v75 - v59;
                  v61 = llvm::StringRef::find_last_not_of(&v78, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
                  v62 = v60 - (v61 + 1);
                  if (v60 < v61 + 1)
                  {
                    v62 = 0;
                  }

                  v24 = v79;
                  v63 = v79 - v62;
                  if (v79 < v63)
                  {
                    v63 = v79;
                  }

                  if (v63)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = 1;
                    v25 = v76;
                    v24 = v77;
                  }

                  v3 = a3;
                  goto LABEL_115;
              }

              v51 = -2;
LABEL_88:
              v74 = v49;
              v75 = v51 + v16;
LABEL_89:
              v78 = 0;
              if (llvm::consumeUnsignedInteger(&v74, 0, &v78))
              {
                goto LABEL_124;
              }

              goto LABEL_90;
          }

          v15 = v48[1];
          v49 = v48 + 3;
          v51 = -3;
          goto LABEL_88;
        }

        v12 = __s[v11++];
      }

      while (v12 == 123);
      v13 = v11 - 1;
      if (__n < v13)
      {
        v13 = __n;
      }

      if (v13 < 2)
      {
        goto LABEL_13;
      }

LABEL_32:
      v16 = 0;
      v21 = 0;
      v15 = 0;
      v22 = 0;
      v23 = 0;
      v26 = 0;
      v24 = v13 >> 1;
      if (__n < v13 >> 1)
      {
        v24 = __n;
      }

      v32 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (__n < v32)
      {
        v32 = __n;
      }

      __s += v32;
      __n -= v32;
LABEL_37:
      v17 = 1;
      v18 = 2;
      v25 = v9;
      v27 = 1;
LABEL_38:
      LODWORD(v69) = v27;
      *(&v69 + 1) = v25;
      *&v70 = v24;
      *(&v70 + 1) = __PAIR64__(v22, v23);
      LODWORD(v71) = v18;
      BYTE4(v71) = v15;
      *(&v71 + 5) = v78;
      BYTE7(v71) = BYTE2(v78);
      *(&v71 + 1) = v21;
      v72 = v16;
      v73 = v17;
      if (v17)
      {
        if (v23 == -1)
        {
          v33 = v26;
        }

        else
        {
          v33 = 0;
        }

        if (v33 == 1)
        {
          DWORD2(v70) = v67++;
        }

        v4 = *(v3 + 8);
        if (v4 >= *(v3 + 12))
        {
          v65 = __n;
          v66 = __s;
          sub_100004A18(v3, &v69);
          v3 = a3;
          __n = v65;
          __s = v66;
        }

        else
        {
          v5 = *v3 + 56 * v4;
          v6 = v69;
          v7 = v70;
          v8 = v71;
          *(v5 + 48) = v72;
          *(v5 + 16) = v7;
          *(v5 + 32) = v8;
          *v5 = v6;
          ++*(v3 + 8);
        }
      }
    }

    while (__n);
  }

  return __s;
}

uint64_t sub_100004A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v2;
  v14[2] = *(a2 + 32);
  v15 = *(a2 + 48);
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = v14;
  if (v3 >= *(a1 + 12))
  {
    if (v4 <= v14 && v4 + 56 * v3 > v14)
    {
      v12 = v14 - v4;
      v13 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 56);
      a1 = v13;
      v4 = *v13;
      v5 = &v12[*v13];
    }

    else
    {
      v11 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, (a1 + 16), v3 + 1, 56);
      a1 = v11;
      v4 = *v11;
      v5 = v14;
    }
  }

  v6 = v4 + 56 * *(a1 + 8);
  v7 = *v5;
  v8 = *(v5 + 1);
  v9 = *(v5 + 2);
  *(v6 + 48) = *(v5 + 6);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 56 * v6 - 56;
}

void *llvm::allocate_buffer(llvm *this, std::align_val_t a2)
{
  result = operator new(this, a2, &std::nothrow);
  if (!result)
  {
    llvm::report_bad_alloc_error("Buffer allocation failed", 1);
  }

  return result;
}

char *sub_100004B4C(uint64_t a1, uint64_t a2)
{
  v13 = v15;
  v14 = xmmword_100011160;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(a2 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v6 = *a2;
    if (*a2)
    {
      v7 = strlen(*a2);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v13);
    v6 = v13;
    v7 = v14;
    goto LABEL_15;
  }

  v4 = *a2;
  v5 = *(*a2 + 23);
  if (v5 >= 0)
  {
    v6 = *a2;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = v4[23];
  }

  else
  {
    v7 = *(v4 + 1);
  }

LABEL_15:
  v8 = malloc_type_malloc(a1 + v7 + 9, 0x100004000313F17uLL);
  if (!v8)
  {
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  v9 = v8;
  v10 = &v8[a1];
  *v10 = v7;
  v11 = v10 + 1;
  if (v7)
  {
    memcpy(v11, v6, v7);
  }

  *(v11 + v7) = 0;
  if (v13 != v15)
  {
    free(v13);
  }

  return v9;
}

void *sub_100004CFC(uint64_t a1, uint64_t a2, size_t a3, off_t a4, int a5, int a6, char a7, __int16 a8)
{
  if (a5)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  llvm::sys::fs::openNativeFileForRead(a2, v15, 0, &v22);
  if ((v23 & 1) == 0)
  {
    v20 = v22;
    sub_100005068(a1, v22, a2, 0xFFFFFFFFFFFFFFFFLL, a3, a4, a6, a7, a8);
    result = llvm::sys::fs::closeFile(&v20, v19);
    if ((v23 & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

  v21 = v22;
  v22 = 0;
  v16 = llvm::errorToErrorCode(&v21);
  *(a1 + 16) |= 1u;
  *a1 = v16;
  *(a1 + 8) = v17;
  result = v21;
  if (v21)
  {
    result = (*(*v21 + 8))(v21);
  }

  if (v23)
  {
LABEL_10:
    result = v22;
    v22 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void llvm::WritableMemoryBuffer::getNewUninitMemBuffer(size_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, void *a4@<X8>)
{
  v7 = a3;
  v20 = v22;
  v21 = xmmword_100011160;
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  v8 = *(a2 + 32);
  if (v8 > 4)
  {
    if (v8 - 5 < 2)
    {
      v11 = *a2;
      v12 = *(a2 + 8);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v11 = *a2;
    if (*a2)
    {
      v12 = strlen(*a2);
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_15;
  }

  if (v8 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(a2, &v20);
    v11 = v20;
    v12 = v21;
    goto LABEL_15;
  }

  v9 = *a2;
  v10 = *(*a2 + 23);
  if (v10 >= 0)
  {
    v11 = *a2;
  }

  else
  {
    v11 = *v9;
  }

  if (v10 >= 0)
  {
    v12 = *(*a2 + 23);
  }

  else
  {
    v12 = *(v9 + 1);
  }

LABEL_15:
  v13 = v12 + 33;
  if ((a3 & 0x100) != 0)
  {
    v14 = 1 << v7;
  }

  else
  {
    v14 = 16;
  }

  v15 = a1 + v14 + v13 + 1;
  if (v15 <= a1)
  {
    v17 = 0;
  }

  else
  {
    v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
    v17 = v16;
    if (v16)
    {
      v16[3] = v12;
      v18 = (v16 + 4);
      if (v12)
      {
        memcpy(v16 + 4, v11, v12);
      }

      v18[v12] = 0;
      v19 = (v17 + v13 + v14 - 1) & -v14;
      *(v19 + a1) = 0;
      *v17 = &off_1000149D8;
      v17[1] = v19;
      v17[2] = v19 + a1;
    }
  }

  *a4 = v17;
  if (v20 != v22)
  {
    free(v20);
  }
}

void sub_100005068(uint64_t a1, int a2, uint64_t a3, size_t a4, size_t a5, off_t a6, int a7, char a8, __int16 a9)
{
  v10 = a5;
  if (atomic_load_explicit(&qword_1000189A8, memory_order_acquire))
  {
    if (a5 != -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v41 = a7;
    v39 = a8;
    v40 = a4;
    sub_100010420();
    a4 = v40;
    a8 = v39;
    a7 = v41;
    if (v10 != -1)
    {
      goto LABEL_4;
    }
  }

  v10 = a4;
  if (a4 == -1)
  {
    v24 = a8;
    v25 = a7;
    v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v47 = 0xFFFFLL;
    v48 = 0;
    v49 = 0;
    v26 = llvm::sys::fs::status(a2, &v45);
    if (v26)
    {
      *(a1 + 16) |= 1u;
      *a1 = v26;
      *(a1 + 8) = v27;
      return;
    }

    if (*&v46[24] != 2 && *&v46[24] != 5)
    {
      sub_1000054F8();
      v36 = *(a1 + 16);
      if (v44)
      {
        v37 = v36 | 1;
        v38 = v43[0];
        *(a1 + 8) = v43[1];
      }

      else
      {
        v37 = v36 & 0xFE;
        v38 = v43[0];
      }

      *(a1 + 16) = v37;
      *a1 = v38;
      return;
    }

    v10 = *&v46[16];
    a4 = *&v46[16];
    a7 = v25;
    a8 = v24;
  }

LABEL_4:
  v14 = dword_10001899C;
  if (a7 && (a8 & 1) != 0)
  {
    goto LABEL_29;
  }

  v16 = (v10 & 0xFFFFFFFFFFFFC000) != 0 && v10 >= dword_10001899C;
  if (!v16 || a7 == 0)
  {
    if (v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (a4 == -1)
    {
      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      v47 = 0xFFFFLL;
      v48 = 0;
      v49 = 0;
      if (llvm::sys::fs::status(a2, &v45))
      {
        goto LABEL_29;
      }

      a4 = *&v46[16];
      if (v10 + a6 != *&v46[16])
      {
        goto LABEL_29;
      }
    }

    else if (v10 + a6 != a4)
    {
      goto LABEL_29;
    }

    if ((a4 & (v14 - 1)) != 0)
    {
LABEL_22:
      LODWORD(v45) = 0;
      *(&v45 + 1) = std::system_category();
      v18 = sub_100004B4C(48, a3);
      *v18 = off_100014A10;
      v19 = llvm::sys::fs::mapped_file_region::alignment(v18);
      v20 = (v19 - 1) & a6;
      v21 = llvm::sys::fs::mapped_file_region::alignment(v19);
      llvm::sys::fs::mapped_file_region::mapped_file_region((v18 + 24), a2, 0, v20 + v10, -v21 & a6, &v45);
      if (!v45)
      {
        v22 = llvm::sys::fs::mapped_file_region::const_data((v18 + 24));
        v23 = v22 + ((llvm::sys::fs::mapped_file_region::alignment(v22) - 1) & a6);
        *(v18 + 1) = v23;
        *(v18 + 2) = &v23[v10];
        if (!v45)
        {
          *(a1 + 16) &= ~1u;
          *a1 = v18;
          return;
        }
      }

      (*(*v18 + 8))(v18);
    }
  }

LABEL_29:
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(v10, a3, a9, v43);
  if (!v43[0])
  {
    v35 = std::generic_category();
    *(a1 + 16) |= 1u;
    *a1 = 12;
    *(a1 + 8) = v35;
    return;
  }

  v28 = *(v43[0] + 8);
  v29 = *(v43[0] + 16) - v28;
  do
  {
    if (!v29)
    {
      goto LABEL_46;
    }

    llvm::sys::fs::readNativeFileSlice(a2, v28, v29, a6, &v45);
    if (BYTE8(v45))
    {
      v30 = v45;
      *&v45 = 0;
      v42 = v30;
      v31 = llvm::errorToErrorCode(&v42);
      *(a1 + 16) |= 1u;
      *a1 = v31;
      *(a1 + 8) = v32;
      if (v42)
      {
        (*(*v42 + 8))(v42);
        v33 = 1;
        if ((BYTE8(v45) & 1) == 0)
        {
          continue;
        }
      }

      else
      {
        v33 = 1;
        if ((BYTE8(v45) & 1) == 0)
        {
          continue;
        }
      }
    }

    else if (v45)
    {
      v33 = 0;
      v29 -= v45;
      v28 += v45;
      a6 += v45;
      if ((BYTE8(v45) & 1) == 0)
      {
        continue;
      }
    }

    else
    {
      bzero(v28, v29);
      v33 = 3;
      if ((BYTE8(v45) & 1) == 0)
      {
        continue;
      }
    }

    v34 = v45;
    *&v45 = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }
  }

  while (!v33);
  if (v33 == 3)
  {
LABEL_46:
    *(a1 + 16) &= ~1u;
    *a1 = v43[0];
    return;
  }

  if (v43[0])
  {
    (*(*v43[0] + 8))(v43[0]);
  }
}

void sub_1000054F8()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v14 = v16;
  v15 = xmmword_1000111E0;
  llvm::sys::fs::readNativeFileToEOF(v4, &v14, 0x4000uLL, &v13);
  if (v13)
  {
    v12 = v13;
    v13 = 0;
    v5 = llvm::errorToErrorCode(&v12);
    *(v3 + 16) |= 1u;
    *v3 = v5;
    *(v3 + 8) = v6;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    if (v13)
    {
      (*(*v13 + 8))(v13);
      v7 = v14;
      if (v14 == v16)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = v14;
    if (v14 == v16)
    {
      return;
    }

    goto LABEL_12;
  }

  v8 = v14;
  v9 = v15;
  llvm::WritableMemoryBuffer::getNewUninitMemBuffer(v15, v2, 0, &v13);
  v10 = v13;
  if (v13)
  {
    if (v9)
    {
      memmove(*(v13 + 8), v8, v9);
    }

    *(v3 + 16) &= ~1u;
    *v3 = v10;
    goto LABEL_11;
  }

  v11 = std::generic_category();
  *(v3 + 16) |= 1u;
  *v3 = 12;
  *(v3 + 8) = v11;
  v7 = v14;
  if (v14 == v16)
  {
    return;
  }

LABEL_12:
  free(v7);
}

uint64_t sub_1000056B8()
{
  llvm::sys::Process::getPageSize(&v5);
  if ((v6 & 1) == 0)
  {
    return v5;
  }

  v0 = v5;
  v5 = 0;
  v3 = v0;
  sub_100002C14(&v3, &v4);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (v6)
  {
    v1 = v5;
    v5 = 0;
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }

  return 4096;
}

void *sub_1000057B8(void *a1)
{
  *a1 = off_100014A10;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));
  return a1;
}

void sub_1000057FC(void *a1)
{
  *a1 = off_100014A10;
  llvm::sys::fs::mapped_file_region::unmapImpl((a1 + 3));

  free(a1);
}

void *llvm::write_integer(llvm::raw_ostream *a1, unsigned int a2, size_t a3, int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_100005C20(a1, a2, a3, a4, v4);
}

void *llvm::write_integer(llvm::raw_ostream *a1, unint64_t a2, size_t a3, int a4)
{
  return sub_10000588C(a1, a2, a3, a4, 0);
}

{
  if ((a2 & 0x8000000000000000) != 0)
  {
    a2 = -a2;
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return sub_10000588C(a1, a2, a3, a4, v4);
}

void *sub_10000588C(llvm::raw_ostream *this, unint64_t a2, size_t a3, int a4, int a5)
{
  if (!HIDWORD(a2))
  {

    return sub_100005C20(this, a2, a3, a4, a5);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v24[v10-- + 127] = (a2 % 0xA) | 0x30;
    v9 += &_mh_execute_header;
    v11 = a2 > 9;
    a2 /= 0xAuLL;
  }

  while (v11);
  v12 = v9 >> 32;
  if (!a5)
  {
LABEL_10:
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v13 = *(this + 4);
  if (v13 < *(this + 3))
  {
    *(this + 4) = v13 + 1;
    *v13 = 45;
    goto LABEL_10;
  }

  llvm::raw_ostream::write(this, 45);
  if (a4 != 1)
  {
LABEL_11:
    if (v12 < a3)
    {
      v14 = v12;
      do
      {
        while (1)
        {
          v15 = *(this + 4);
          if (v15 >= *(this + 3))
          {
            break;
          }

          *(this + 4) = v15 + 1;
          *v15 = 48;
          if (++v14 >= a3)
          {
            goto LABEL_16;
          }
        }

        llvm::raw_ostream::write(this, 48);
        ++v14;
      }

      while (v14 < a3);
    }
  }

LABEL_16:
  v16 = &v25 - v12;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v12, v12);
  }

  v17 = (v12 - 1) % 3;
  v18 = v17 + 1;
  v19 = v12 - (v17 + 1);
  if (v12 >= v17 + 1)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v12;
  }

  result = llvm::raw_ostream::write(this, v16, v20);
  if (v19)
  {
    v21 = &v16[v18];
    v22 = -3 * ((-v10 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

void *llvm::write_hex(void *a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v11[6] = v6;
  v11[7] = v6;
  v11[4] = v6;
  v11[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v11[2] = v6;
  v11[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v11[0] = v6;
  v11[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v11[0]) = 120;
  }

  if (a2)
  {
    v8 = &v11[-1] + v7 + 15;
    do
    {
      *v8-- = a0123456789abcd_0[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  return llvm::raw_ostream::write(a1, v11, v7);
}

void *sub_100005C20(llvm::raw_ostream *this, unsigned int a2, size_t a3, int a4, int a5)
{
  v8 = 0;
  v9 = 0;
  do
  {
    v24[v9-- + 127] = (a2 % 0xA) | 0x30;
    v8 += &_mh_execute_header;
    v10 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v10);
  v11 = v8 >> 32;
  if (a5)
  {
    v12 = *(this + 4);
    if (v12 >= *(this + 3))
    {
      llvm::raw_ostream::write(this, 45);
      if (a4 == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    *(this + 4) = v12 + 1;
    *v12 = 45;
  }

  if (a4 == 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (v11 < a3)
  {
    v13 = v11;
    do
    {
      while (1)
      {
        v14 = *(this + 4);
        if (v14 >= *(this + 3))
        {
          break;
        }

        *(this + 4) = v14 + 1;
        *v14 = 48;
        if (++v13 >= a3)
        {
          goto LABEL_12;
        }
      }

      llvm::raw_ostream::write(this, 48);
      ++v13;
    }

    while (v13 < a3);
  }

LABEL_12:
  v15 = &v25 - v11;
  if (a4 != 1)
  {
    return llvm::raw_ostream::write(this, &v25 - v11, v11);
  }

  v16 = (v11 - 1) % 3;
  v17 = v16 + 1;
  v18 = v11 - (v16 + 1);
  if (v11 >= v16 + 1)
  {
    v19 = v16 + 1;
  }

  else
  {
    v19 = v11;
  }

  result = llvm::raw_ostream::write(this, v15, v19);
  if (v18)
  {
    v21 = &v15[v17];
    v22 = -3 * ((-v9 - 1) / 3uLL);
    do
    {
      v23 = *(this + 4);
      if (v23 < *(this + 3))
      {
        *(this + 4) = v23 + 1;
        *v23 = 44;
      }

      else
      {
        llvm::raw_ostream::write(this, 44);
      }

      result = llvm::raw_ostream::write(this, v21, 3uLL);
      v21 += 3;
      v22 += 3;
    }

    while (v22);
  }

  return result;
}

uint64_t *sub_100005E30@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  if (*(result + 32) && (v4 = *(a2 + 32), *(a2 + 32)))
  {
    if (v3 == 1)
    {
      v5 = *(a2 + 1);
      *a3 = *a2;
      *(a3 + 16) = v5;
      *(a3 + 32) = a2[4];
    }

    else if (v4 == 1)
    {
      v6 = *(result + 1);
      *a3 = *result;
      *(a3 + 16) = v6;
      *(a3 + 32) = result[4];
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      if (*(result + 33) != 1)
      {
        LOBYTE(v3) = 2;
        v7 = result;
      }

      v9 = a2[1];
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v4) = 2;
        v10 = a2;
      }

      *a3 = v7;
      *(a3 + 8) = v8;
      *(a3 + 16) = v10;
      *(a3 + 24) = v9;
      *(a3 + 32) = v3;
      *(a3 + 33) = v4;
    }
  }

  else
  {
    *(a3 + 32) = 256;
  }

  return result;
}

void llvm::SmallVectorBase<unsigned int>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    sub_100006234(a3);
  }

  else
  {
    v5 = *(a1 + 12);
    if (v5 != -1)
    {
      v8 = 2 * v5;
      v9 = v5 < 0;
      v10 = 0xFFFFFFFFLL;
      if (!v9)
      {
        v10 = v8 + 1;
      }

      if (((2 * *(a1 + 12)) | 1uLL) >= a3)
      {
        v11 = v10;
      }

      else
      {
        v11 = a3;
      }

      v12 = *a1;
      v13 = v11 * a4;
      if (*a1 == a2)
      {
        v16 = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
        if (v16 || !v13 && (v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
        {
          v15 = v16;
          if (v16 == a2)
          {
            v17 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
            if (!v17)
            {
              if (v13)
              {
                goto LABEL_30;
              }

              v17 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
              if (!v17)
              {
                goto LABEL_30;
              }
            }

            v18 = v17;
            free(v15);
            v15 = v18;
          }

          memcpy(v15, *a1, *(a1 + 8) * a4);
          goto LABEL_29;
        }
      }

      else
      {
        v14 = malloc_type_realloc(v12, v11 * a4, 0xF4063A16uLL);
        if (v14 || !v13 && (v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
        {
          if (v14 != a2)
          {
            v15 = v14;
LABEL_29:
            *a1 = v15;
            *(a1 + 12) = v11;
            return;
          }

          v19 = v14;
          v20 = *(a1 + 8);
          v21 = malloc_type_malloc(v13, 0x3C0F72FBuLL);
          if (v21 || !v13 && (v21 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
          {
            v15 = v21;
            if (v20)
            {
              memcpy(v21, v19, v20 * a4);
            }

            free(v19);
            goto LABEL_29;
          }
        }
      }

LABEL_30:
      llvm::report_bad_alloc_error("Allocation failed", 1);
    }
  }

  v22 = sub_1000062EC(0xFFFFFFFFuLL);
  llvm::SmallVectorBase<unsigned long long>::grow_pod(v22);
}

{
  llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a2, a3, a4);
}

void llvm::SmallVectorBase<unsigned long long>::grow_pod(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 != -1)
  {
    if (((2 * v4) | 1uLL) > a3)
    {
      v8 = 2 * v4 + 1;
    }

    else
    {
      v8 = a3;
    }

    v9 = *a1;
    v10 = v8 * a4;
    if (v9 == a2)
    {
      v13 = malloc_type_malloc(v8 * a4, 0x3C0F72FBuLL);
      if (v13 || !v10 && (v13 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
      {
        v12 = v13;
        if (v13 == a2)
        {
          v14 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
          if (!v14)
          {
            if (v10)
            {
              goto LABEL_27;
            }

            v14 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
            if (!v14)
            {
              goto LABEL_27;
            }
          }

          v15 = v14;
          free(v12);
          v12 = v15;
        }

        memcpy(v12, *a1, *(a1 + 8) * a4);
        goto LABEL_26;
      }
    }

    else
    {
      v11 = malloc_type_realloc(v9, v8 * a4, 0xF4063A16uLL);
      if (v11 || !v10 && (v11 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
      {
        if (v11 != a2)
        {
          v12 = v11;
LABEL_26:
          *a1 = v12;
          *(a1 + 16) = v8;
          return;
        }

        v16 = v11;
        v17 = *(a1 + 8);
        v18 = malloc_type_malloc(v10, 0x3C0F72FBuLL);
        if (v18 || !v10 && (v18 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) != 0)
        {
          v12 = v18;
          if (v17)
          {
            memcpy(v18, v16, v17 * a4);
          }

          free(v16);
          goto LABEL_26;
        }
      }
    }

LABEL_27:
    llvm::report_bad_alloc_error("Allocation failed", 1);
  }

  sub_1000062EC(0xFFFFFFFFFFFFFFFFLL);
  sub_100006234(v19);
}

{
  llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a2, a3, a4);
}

uint64_t sub_100006234(unint64_t a1)
{
  std::to_string(&v7, a1);
  sub_1000063D0("SmallVector unable to grow. Requested capacity (", &v7, &v8);
  sub_100006340(&v8, ") is larger than maximum value for size type (", &v9);
  std::to_string(&v6, 0xFFFFFFFFuLL);
  sub_10000637C(&v9, &v6, &v4);
  sub_100006340(&v4, ")", &v10);
  std::string::~string(&v4);
  std::string::~string(&v6);
  std::string::~string(&v9);
  std::string::~string(&v8);
  std::string::~string(&v7);
  v5 = 260;
  v4.__r_.__value_.__r.__words[0] = &v10;
  v2 = llvm::report_fatal_error(&v4, 1, v1);
  return sub_1000062EC(v2);
}

double sub_1000062EC(unint64_t a1)
{
  std::to_string(&v6, a1);
  sub_1000063D0("SmallVector capacity unable to grow. Already at maximum size ", &v6, &v8);
  std::string::~string(&v6);
  v7 = 260;
  v6.__r_.__value_.__r.__words[0] = &v8;
  v2 = llvm::report_fatal_error(&v6, 1, v1);
  *&result = sub_100006340(v2, v3, v4).n128_u64[0];
  return result;
}

__n128 sub_100006340@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::append(a1, a2);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_10000637C@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::string::append(a1, a2, v5);
  result = *v6;
  *a3 = *v6->n128_u8;
  v6->n128_u64[0] = 0;
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_1000063D0@<Q0>(std::string::value_type *__s@<X0>, std::string *this@<X1>, std::string *a3@<X8>)
{
  v4 = std::string::insert(this, 0, __s);
  result = *v4;
  *a3 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

unint64_t llvm::SplitString(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v23 = a1;
  v24 = a2;
  first_not_of = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
  result = llvm::StringRef::find_first_of(&v23, a4, a5, first_not_of);
  if (v24 >= first_not_of)
  {
    v10 = first_not_of;
  }

  else
  {
    v10 = v24;
  }

  if (v10 <= result)
  {
    v11 = result;
  }

  else
  {
    v11 = first_not_of;
  }

  if (v11 >= v24)
  {
    v11 = v24;
  }

  v12 = v11 - v10;
  if (v11 != v10)
  {
    v13 = v23 + v10;
    if (v24 >= result)
    {
      v14 = result;
    }

    else
    {
      v14 = v24;
    }

    v15 = v23 + v14;
    v16 = v24 - v14;
    do
    {
      v17 = *(a3 + 8);
      if (v17 >= *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, (a3 + 16), v17 + 1, 16);
        v17 = *(a3 + 8);
      }

      v18 = (*a3 + 16 * v17);
      *v18 = v13;
      v18[1] = v12;
      ++*(a3 + 8);
      v23 = v15;
      v24 = v16;
      v19 = llvm::StringRef::find_first_not_of(&v23, a4, a5, 0);
      result = llvm::StringRef::find_first_of(&v23, a4, a5, v19);
      if (v24 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v24;
      }

      if (v20 <= result)
      {
        v21 = result;
      }

      else
      {
        v21 = v19;
      }

      if (v21 >= v24)
      {
        v21 = v24;
      }

      v13 = v23 + v20;
      if (v24 >= result)
      {
        v22 = result;
      }

      else
      {
        v22 = v24;
      }

      v15 = v23 + v22;
      v16 = v24 - v22;
      v12 = v21 - v20;
    }

    while (v21 != v20);
  }

  return result;
}

void *llvm::StringSaver::save(void ***a1, const void *a2, size_t __n)
{
  v4 = *a1;
  v5 = __n + 1;
  v4[10] = v4[10] + v5;
  v6 = *v4;
  v7 = *v4 + v5;
  if (*v4)
  {
    v8 = v7 > v4[1];
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v10 = a2;
    v11 = sub_100006600(v4, v5, v5, 0);
    a2 = v10;
    v6 = v11;
    if (!__n)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v4 = v7;
  if (__n)
  {
LABEL_6:
    memcpy(v6, a2, __n);
  }

LABEL_7:
  *(v6 + __n) = 0;
  return v6;
}

uint64_t sub_100006600(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = 1 << a4;
  v6 = a3 + (1 << a4);
  v7 = v6 - 1;
  if ((v6 - 1) <= 0x1000)
  {
    v13 = *(a1 + 24) >> 7;
    if (v13 >= 0x1E)
    {
      LOBYTE(v13) = 30;
    }

    v14 = 4096 << v13;
    buffer = llvm::allocate_buffer((4096 << v13), 8uLL);
    v16 = *(a1 + 24);
    if (v16 >= *(a1 + 28))
    {
      v19 = buffer;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 16, (a1 + 32), v16 + 1, 8);
      buffer = v19;
      LODWORD(v16) = *(a1 + 24);
    }

    *(*(a1 + 16) + 8 * v16) = buffer;
    ++*(a1 + 24);
    v17 = &buffer[v14];
    result = &buffer[v5 - 1] & -v5;
    *a1 = result + a3;
    *(a1 + 8) = v17;
  }

  else
  {
    v8 = llvm::allocate_buffer((v6 - 1), 8uLL);
    v9 = *(a1 + 72);
    if (v9 >= *(a1 + 76))
    {
      v18 = v8;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1 + 64, (a1 + 80), v9 + 1, 16);
      v8 = v18;
      LODWORD(v9) = *(a1 + 72);
    }

    v10 = (*(a1 + 64) + 16 * v9);
    *v10 = v8;
    v10[1] = v7;
    ++*(a1 + 72);
    return (v8 + v5 - 1) & -v5;
  }

  return result;
}

BOOL llvm::StringRef::starts_with_insensitive(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  if (a1[1] < a3)
  {
    return 0;
  }

  if (!a3)
  {
    return 1;
  }

  v4 = *a1;
  v5 = a3 - 1;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = v7 + 32;
    if ((v7 - 65) >= 0x1A)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    v11 = *a2++;
    v10 = v11;
    v12 = v11 + 32;
    if ((v11 - 65) >= 0x1A)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    v15 = v5-- != 0;
    result = v9 == v13;
  }

  while (v9 == v13 && v15);
  return result;
}

uint64_t llvm::StringRef::find(uint64_t *a1, unsigned __int8 *a2, size_t a3, unint64_t a4)
{
  v4 = a1[1];
  v5 = v4 >= a4;
  v6 = v4 - a4;
  if (!v5)
  {
    return -1;
  }

  if (!a3)
  {
    return a4;
  }

  if (v6 < a3)
  {
    return -1;
  }

  v8 = *a1;
  v9 = (*a1 + a4);
  v10 = a3 - 1;
  if (a3 == 1)
  {
    v11 = memchr(v9, *a2, v6);
    if (v11)
    {
      return v11 - v8;
    }

    else
    {
      return -1;
    }
  }

  v12 = &v9[v6 - a3];
  v13 = a3 - 2;
  if (a3 == 2)
  {
    result = -1;
    while (*(v8 + a4) != *a2)
    {
      ++a4;
      if (v8 + a4 - 1 >= v12)
      {
        return result;
      }
    }

    return a4;
  }

  if (a3 > 0xFF || v6 <= 0xF)
  {
    while (1)
    {
      v26 = a4;
      v27 = a2;
      v28 = a3;
      if (!memcmp((v8 + a4), a2, a3))
      {
        break;
      }

      a4 = v26 + 1;
      result = -1;
      a2 = v27;
      a3 = v28;
      if (v8 + v26 >= v12)
      {
        return result;
      }
    }

    return v26;
  }

  else
  {
    v14 = v12 + 1;
    v30 = vdupq_n_s8(a3);
    v31 = v30;
    v29[12] = v30;
    v29[13] = v30;
    v29[10] = v30;
    v29[11] = v30;
    v29[8] = v30;
    v29[9] = v30;
    v29[6] = v30;
    v29[7] = v30;
    v29[4] = v30;
    v29[5] = v30;
    v29[2] = v30;
    v29[3] = v30;
    v15 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v16 = a2 + 1;
    v17 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v29[0] = v30;
    v29[1] = v30;
    do
    {
      *(v29 + *(v16 - 1)) = v13 + 1;
      v18 = *v16;
      v16 += 2;
      *(v29 + v18) = v13;
      v13 -= 2;
      v17 -= 2;
    }

    while (v17);
    if (v10 != v15)
    {
      v19 = v15 + 1;
      do
      {
        *(v29 + a2[v15]) = v10 - v15;
        v15 = v19++;
      }

      while (v10 != v15);
    }

    v20 = a2[v10];
    while (1)
    {
      v21 = v9[v10];
      if (v21 == v20)
      {
        v22 = v9;
        v23 = a2;
        v24 = memcmp(v9, a2, v10);
        a2 = v23;
        v25 = v24;
        v9 = v22;
        if (!v25)
        {
          break;
        }
      }

      v9 += *(v29 + v21);
      if (v9 >= v14)
      {
        return -1;
      }
    }

    return &v22[-v8];
  }
}

uint64_t llvm::StringRef::find_first_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_first_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t llvm::StringRef::find_last_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

uint64_t llvm::StringRef::find_last_not_of(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

void llvm::StringRef::split(__int128 *a1, uint64_t a2, unsigned __int8 *a3, size_t a4, int a5, char a6)
{
  v29 = *a1;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v29 + 1);
    if (a6)
    {
      do
      {
        v12 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v12 == -1)
        {
          break;
        }

        if (v12 >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v12;
        }

        v14 = v29;
        v15 = *(a2 + 8);
        if (v15 >= *(a2 + 12))
        {
          v18 = v12;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v15 + 1, 16);
          v12 = v18;
          v15 = *(a2 + 8);
        }

        v16 = (*a2 + 16 * v15);
        *v16 = v14;
        v16[1] = v13;
        ++*(a2 + 8);
        v17 = v12 + a4;
        if (v11 < v12 + a4)
        {
          v17 = v11;
        }

        v11 -= v17;
        *&v29 = v14 + v17;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v21 = llvm::StringRef::find(&v29, a3, a4, 0);
        if (v21)
        {
          if (v21 == -1)
          {
            break;
          }

          if (v21 >= v11)
          {
            v22 = v11;
          }

          else
          {
            v22 = v21;
          }

          v19 = v29;
          v23 = *(a2 + 8);
          if (v23 >= *(a2 + 12))
          {
            v25 = v21;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v23 + 1, 16);
            v21 = v25;
            v23 = *(a2 + 8);
          }

          v24 = (*a2 + 16 * v23);
          *v24 = v19;
          v24[1] = v22;
          ++*(a2 + 8);
        }

        else
        {
          v19 = v29;
        }

        v20 = v21 + a4;
        if (v11 < v21 + a4)
        {
          v20 = v11;
        }

        v11 -= v20;
        *&v29 = v19 + v20;
        *(&v29 + 1) = v11;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v11 = *(&v29 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v26 = v29;
    v27 = *(a2 + 8);
    if (v27 >= *(a2 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2, (a2 + 16), v27 + 1, 16);
      LODWORD(v27) = *(a2 + 8);
    }

    v28 = (*a2 + 16 * v27);
    *v28 = v26;
    v28[1] = v11;
    ++*(a2 + 8);
  }
}

uint64_t llvm::consumeUnsignedInteger(unsigned __int8 **a1, unsigned int a2, unint64_t *a3)
{
  v3 = a1[1];
  if (a2)
  {
    if (!v3)
    {
      return 1;
    }

    goto LABEL_3;
  }

  if (v3 < 2)
  {
    a2 = 10;
    if (!v3)
    {
      return 1;
    }

    goto LABEL_3;
  }

  v11 = *a1;
  v12 = **a1;
  if ((v12 - 65) >= 0x1A)
  {
    v13 = **a1;
  }

  else
  {
    v13 = v12 + 32;
  }

  if (v13 != 48)
  {
LABEL_31:
    if (*v11 == 28464)
    {
      a2 = 8;
      v3 -= 2;
      *a1 = v11 + 2;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }
    }

    else if (v12 == 48 && (v16 = v11[1], v15 = v11 + 1, (v16 - 48) <= 9))
    {
      a2 = 8;
      --v3;
      *a1 = v15;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }
    }

    else
    {
      a2 = 10;
    }

    goto LABEL_3;
  }

  v14 = v11[1];
  if ((v14 - 65) < 0x1A)
  {
    v14 += 32;
  }

  if (v14 != 98)
  {
    if (v14 == 120)
    {
      a2 = 16;
      v3 -= 2;
      *a1 = v11 + 2;
      a1[1] = v3;
      if (!v3)
      {
        return 1;
      }

      goto LABEL_3;
    }

    goto LABEL_31;
  }

  a2 = 2;
  v3 -= 2;
  *a1 = v11 + 2;
  a1[1] = v3;
  if (!v3)
  {
    return 1;
  }

LABEL_3:
  v4 = 0;
  v5 = *a1;
  *a3 = 0;
  v6 = v3;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = v7 - 55;
        if (v8 >= a2)
        {
          break;
        }
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = v7 - 87;
        if (v8 >= a2)
        {
          break;
        }
      }
    }

    else
    {
      v8 = v7 - 48;
      if (v8 >= a2)
      {
        break;
      }
    }

    v9 = v4 * a2 + v8;
    *a3 = v9;
    if (v9 / a2 < v4)
    {
      return 1;
    }

    ++v5;
    v4 = v9;
    --v6;
  }

  while (v6);
  if (v3 != v6)
  {
    *a1 = v5;
    a1[1] = v6;
    return 0;
  }

  return 1;
}

void *sub_100006FA4(unsigned int *a1, llvm::raw_ostream *a2, unsigned __int8 *a3, uint64_t a4)
{
  v14 = a3;
  v15 = a4;
  v6 = sub_1000070E4(&v14);
  if ((v6 & 0x100000000) == 0)
  {
    if (v15)
    {
      v7 = 0;
      v8 = *v14;
      if (v8 <= 0x63)
      {
        if (v8 != 68)
        {
          if (v8 != 78)
          {
            goto LABEL_20;
          }

          goto LABEL_17;
        }

LABEL_18:
        v7 = 0;
        ++v14;
        goto LABEL_19;
      }

      if (v8 == 100)
      {
        goto LABEL_18;
      }

      if (v8 == 110)
      {
LABEL_17:
        ++v14;
        v7 = 1;
LABEL_19:
        --v15;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    v16 = 0;
    if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
    {
      v13 = 0;
    }

    else
    {
      v13 = v16;
    }

    return llvm::write_integer(a2, *a1, v13, v7);
  }

  v9 = v6;
  v16 = 0;
  if (llvm::consumeUnsignedInteger(&v14, 0xAu, &v16))
  {
    v10 = 0;
  }

  else
  {
    v10 = v16;
  }

  if (llvm::isPrefixedHexStyle(v9))
  {
    v11 = v10 + 2;
  }

  else
  {
    v11 = v10;
  }

  return llvm::write_hex(a2, *a1, v9, v11, 1);
}

const mach_header_64 *sub_1000070E4(uint64_t a1)
{
  if (!llvm::StringRef::starts_with_insensitive(a1, "x", 1uLL))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = v2 - 2;
  if (v2 < 2)
  {
    if (!v2)
    {
      goto LABEL_5;
    }

    v4 = *a1;
    if (**a1 != 120)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v4 = *a1;
  if (**a1 == 11640)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 1);
  }

  else if (*v4 == 11608)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return &_mh_execute_header;
  }

  else if (*v4 == 11128)
  {
    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 3);
  }

  else
  {
    if (*v4 == 120)
    {
LABEL_11:
      *a1 = v4 + 1;
      *(a1 + 8) = v2 - 1;
      return (&_mh_execute_header.magic + 3);
    }

    if (*v4 != 11096)
    {
LABEL_5:
      sub_100007264(a1, "X", 1uLL);
      return (&_mh_execute_header.magic + 2);
    }

    *a1 = v4 + 2;
    *(a1 + 8) = v3;
    return (&_mh_execute_header.magic + 2);
  }
}

uint64_t sub_100007264(const void **a1, const void *a2, size_t a3)
{
  v3 = a1[1];
  v4 = &v3[-a3];
  if (v3 < a3)
  {
    return 0;
  }

  v6 = *a1;
  if (a3)
  {
    v7 = a1;
    v8 = a3;
    v9 = memcmp(*a1, a2, a3);
    a3 = v8;
    v10 = v9;
    a1 = v7;
    if (v10)
    {
      return 0;
    }
  }

  *a1 = &v6[a3];
  a1[1] = v4;
  return 1;
}

void llvm::Twine::str(llvm::Twine *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 32);
  if (v3 == 7)
  {
    if (*(this + 33) == 1)
    {
      v6 = *this;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      LODWORD(v14) = 0;
      v17 = 0;
      v18 = 1;
      v15 = 0;
      v16 = 0;
      *(&v14 + 1) = 0;
      v13 = &off_100014B40;
      v19 = a2;
      llvm::raw_ostream::SetBufferAndMode(&v13, 0, 0, 0);
      llvm::raw_ostream::operator<<(&v13, v6);
      if (v16 != *(&v14 + 1))
      {
        llvm::raw_ostream::flush_nonempty(&v13);
      }

      llvm::raw_ostream::~raw_ostream(&v13);
      return;
    }
  }

  else if (v3 == 4 && *(this + 33) == 1)
  {
    v4 = *this;
    if (*(*this + 23) < 0)
    {
      v11 = *v4;
      v12 = *(v4 + 8);

      sub_10000372C(a2, v11, v12);
    }

    else
    {
      v5 = *v4;
      *(a2 + 16) = *(v4 + 16);
      *a2 = v5;
    }

    return;
  }

  v13 = &v15;
  v14 = xmmword_100011160;
  v7 = sub_100007534(this, &v13);
  if (!v7)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v10 = v13;
    if (v13 == &v15)
    {
      return;
    }

    goto LABEL_20;
  }

  v9 = v8;
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000034E8();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v8;
  if (v8)
  {
    memmove(a2, v7, v8);
  }

  *(a2 + v9) = 0;
  v10 = v13;
  if (v13 != &v15)
  {
LABEL_20:
    free(v10);
  }
}

uint64_t sub_100007534(void **a1, uint64_t *a2)
{
  if (*(a1 + 33) != 1)
  {
    goto LABEL_15;
  }

  v3 = *(a1 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      result = *a1;
      v7 = a1[1];
      return result;
    }

    goto LABEL_15;
  }

  if (v3 == 1)
  {
    return 0;
  }

  if (v3 == 3)
  {
    v12 = *a1;
    if (*a1)
    {
      strlen(v12);
      return v12;
    }

    return 0;
  }

  if (v3 != 4)
  {
LABEL_15:
    v14 = 2;
    v18 = 0;
    v19 = 1;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v13 = off_100014BB8;
    v20 = a2;
    v9 = llvm::raw_ostream::SetBufferAndMode(&v13, 0, 0, 0);
    v10 = llvm::Twine::printOneChild(v9, &v13, *a1, a1[1], *(a1 + 32));
    llvm::Twine::printOneChild(v10, &v13, a1[2], a1[3], *(a1 + 33));
    llvm::raw_ostream::~raw_ostream(&v13);
    result = *a2;
    v11 = a2[1];
    return result;
  }

  v4 = *(*a1 + 23);
  if (v4 >= 0)
  {
    result = *a1;
  }

  else
  {
    result = **a1;
  }

  if (v4 >= 0)
  {
    v6 = *(*a1 + 23);
  }

  else
  {
    v6 = (*a1)[1];
  }

  return result;
}

void llvm::Twine::toVector(uint64_t a1, uint64_t a2)
{
  v6 = 2;
  v10 = 0;
  v11 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = off_100014BB8;
  v12 = a2;
  v3 = llvm::raw_ostream::SetBufferAndMode(&v5, 0, 0, 0);
  v4 = llvm::Twine::printOneChild(v3, &v5, *a1, *(a1 + 8), *(a1 + 32));
  llvm::Twine::printOneChild(v4, &v5, *(a1 + 16), *(a1 + 24), *(a1 + 33));
  llvm::raw_ostream::~raw_ostream(&v5);
}

llvm::raw_ostream *llvm::Twine::print(llvm::Twine *this, llvm::raw_ostream *a2)
{
  v4 = llvm::Twine::printOneChild(this, a2, *this, *(this + 1), *(this + 32));
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = *(this + 33);

  return llvm::Twine::printOneChild(v4, a2, v5, v6, v7);
}

void *llvm::Twine::toNullTerminatedStringRef(uint64_t a1, void *a2)
{
  if (*(a1 + 33) != 1 || (v4 = *(a1 + 32), v4 < 2))
  {
LABEL_9:
    v14 = 2;
    v18 = 0;
    v19 = 1;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v13 = off_100014BB8;
    v20 = a2;
    v7 = llvm::raw_ostream::SetBufferAndMode(&v13, 0, 0, 0);
    v8 = llvm::Twine::printOneChild(v7, &v13, *a1, *(a1 + 8), *(a1 + 32));
    llvm::Twine::printOneChild(v8, &v13, *(a1 + 16), *(a1 + 24), *(a1 + 33));
    llvm::raw_ostream::~raw_ostream(&v13);
    v9 = a2[1];
    if ((v9 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9 + 1, 1);
      v9 = a2[1];
    }

    *(*a2 + v9) = 0;
    result = *a2;
    v10 = a2[1];
    return result;
  }

  if (v4 == 6)
  {
    result = *a1;
    v12 = *(a1 + 8);
    return result;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v5 = *a1;
      if (!*a1)
      {
        return 0;
      }

      strlen(*a1);
      return v5;
    }

    goto LABEL_9;
  }

  result = *a1;
  if ((*(*a1 + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v11 = *(*a1 + 8);
  }

  return result;
}

llvm::raw_ostream *llvm::Twine::printOneChild(llvm::raw_ostream *result, llvm::raw_ostream *a2, uint64_t a3, size_t a4, unsigned __int8 a5)
{
  v7 = a5;
  if (a5 == 2)
  {
    do
    {
      result = llvm::Twine::printOneChild(result, a2, *a3, *(a3 + 8), *(a3 + 32));
      v8 = *(a3 + 33);
      v9 = a3 + 16;
      a3 = *(a3 + 16);
      a4 = *(v9 + 8);
      v7 = v8;
    }

    while (v8 == 2);
  }

  if (v7 > 9)
  {
    if (v7 > 12)
    {
      switch(v7)
      {
        case 13:
          v19 = *a3;

          return llvm::raw_ostream::operator<<(a2, v19);
        case 14:
          v20 = *a3;

          return llvm::raw_ostream::operator<<(a2, v20);
        case 15:
          v16 = *a3;

          return llvm::raw_ostream::write_hex(a2, v16);
      }

      return result;
    }

    if (v7 == 10)
    {
      v14 = a3;
      v15 = a2;
    }

    else
    {
      if (v7 == 11)
      {
        v17 = *a3;
        v18 = a2;

        return llvm::raw_ostream::operator<<(v18, v17);
      }

      v14 = *a3;
      v15 = a2;
    }

    return llvm::raw_ostream::operator<<(v15, v14);
  }

  if (v7 > 6)
  {
    if (v7 == 7)
    {

      return llvm::raw_ostream::operator<<(a2, a3);
    }

    if (v7 == 8)
    {
      v22 = *(a2 + 4);
      if (v22 >= *(a2 + 3))
      {

        return llvm::raw_ostream::write(a2, a3);
      }

      else
      {
        *(a2 + 4) = v22 + 1;
        *v22 = a3;
      }

      return result;
    }

    v17 = a3;
    v18 = a2;

    return llvm::raw_ostream::operator<<(v18, v17);
  }

  if ((v7 - 5) < 2)
  {
    result = *(a2 + 4);
    if (a4 > *(a2 + 3) - result)
    {
      v13 = a2;
      v11 = a3;
      v12 = a4;

      return llvm::raw_ostream::write(v13, v11, v12);
    }

    if (a4)
    {
      v23 = a3;
      v24 = a4;
      result = memcpy(result, v23, a4);
      *(a2 + 4) += v24;
    }
  }

  else if (v7 == 3)
  {
    if (a3)
    {
      v21 = strlen(a3);
      result = *(a2 + 4);
      if (v21 > *(a2 + 3) - result)
      {
        v13 = a2;
        v11 = a3;
        v12 = v21;

        return llvm::raw_ostream::write(v13, v11, v12);
      }

      if (v21)
      {
        result = memcpy(result, a3, v21);
        *(a2 + 4) += v21;
      }
    }
  }

  else if (v7 == 4)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = a2;

    return llvm::raw_ostream::write(v13, v11, v12);
  }

  return result;
}

void llvm::raw_ostream::~raw_ostream(llvm::raw_ostream *this)
{
  *this = off_100014A48;
  if (*(this + 11) == 1)
  {
    if (*(this + 2))
    {
      operator delete[]();
    }
  }
}

uint64_t llvm::raw_ostream::SetBuffered(llvm::raw_ostream *this)
{
  result = (*(*this + 88))(this);
  v4 = (this + 16);
  v3 = *(this + 2);
  v5 = *(this + 4);
  if (result)
  {
    if (v5 != v3)
    {
      *(this + 4) = v3;
      (*(*this + 72))(this);
    }

    operator new[]();
  }

  if (v5 != v3)
  {
    *(this + 4) = v3;
    result = (*(*this + 72))(this);
  }

  if (*(this + 11) == 1)
  {
    result = *v4;
    if (*v4)
    {
      operator delete[]();
    }
  }

  *(this + 11) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *v4 = 0;
  return result;
}

uint64_t llvm::raw_ostream::SetBufferAndMode(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 44) == 1 && *(result + 16))
  {
    operator delete[]();
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 44) = a4;
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, unint64_t a2)
{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

uint64_t llvm::raw_ostream::flush_nonempty(llvm::raw_ostream *this)
{
  v1 = *(this + 4);
  *(this + 4) = *(this + 2);
  return (*(*this + 72))();
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, char a2)
{
  v2 = *(this + 4);
  if (v2 < *(this + 3))
  {
LABEL_2:
    *(this + 4) = v2 + 1;
    *v2 = a2;
    return this;
  }

  v3 = a2;
  v4 = *(this + 2);
  if (v4)
  {
LABEL_4:
    *(this + 4) = v4;
    v5 = this;
    (*(*this + 72))();
    this = v5;
    v2 = *(v5 + 4);
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = this;
    if (!*(this + 11))
    {
      break;
    }

    llvm::raw_ostream::SetBuffered(this);
    v2 = *(v6 + 4);
    if (v2 < *(v6 + 3))
    {
      this = v6;
      goto LABEL_5;
    }

    this = v6;
    v4 = *(v6 + 2);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = v3;
  (*(*this + 72))(this, &v7, 1);
  return v6;
}

void *llvm::raw_ostream::write(void *this, const char *a2, size_t a3)
{
  v3 = this[4];
  v4 = this[3] - v3;
  if (v4 < a3)
  {
    while (1)
    {
      v6 = this[2];
      if (!v6)
      {
        break;
      }

LABEL_16:
      v11 = a3;
      if (v3 == v6)
      {
        v4 *= a3 / v4;
        v7 = a3 - v4;
        v8 = this;
        v9 = a2;
        (*(*this + 72))();
        v3 = v8[4];
        this = v8;
        v10 = v8[3] - v3;
        a3 = v7;
        if (v7 <= v10)
        {
          llvm::raw_ostream::copy_to_buffer(v8, &v9[v4], v7);
          return v8;
        }
      }

      else
      {
        v12 = this;
        v9 = a2;
        llvm::raw_ostream::copy_to_buffer(this, a2, v4);
        v13 = v12[2];
        v14 = v12[4] - v13;
        v12[4] = v13;
        (*(*v12 + 72))(v12);
        this = v12;
        a3 = v11 - v4;
        v3 = v12[4];
        v10 = v12[3] - v3;
      }

      a2 = &v9[v4];
      v4 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v17 = a2;
      v18 = a3;
      v5 = this;
      if (!*(this + 11))
      {
        (*(*this + 72))(this, a2, a3);
        return v5;
      }

      llvm::raw_ostream::SetBuffered(this);
      v3 = v5[4];
      v4 = v5[3] - v3;
      if (v4 >= v18)
      {
        break;
      }

      this = v5;
      v6 = v5[2];
      a2 = v17;
      a3 = v18;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    this = v5;
    a2 = v17;
    a3 = v18;
    if (v18 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_2:
    if (a3 > 1)
    {
LABEL_3:
      switch(a3)
      {
        case 2uLL:
LABEL_8:
          v3[1] = a2[1];
          v3 = this[4];
LABEL_23:
          *v3 = *a2;
          goto LABEL_24;
        case 3uLL:
LABEL_7:
          v3[2] = a2[2];
          v3 = this[4];
          goto LABEL_8;
        case 4uLL:
          v3[3] = a2[3];
          v3 = this[4];
          goto LABEL_7;
      }

LABEL_25:
      v15 = this;
      v16 = a3;
      memcpy(v3, a2, a3);
      a3 = v16;
      this = v15;
      goto LABEL_24;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_24:
  this[4] += a3;
  return this;
}

uint64_t llvm::raw_ostream::copy_to_buffer(uint64_t this, const char *a2, int64_t a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_11:
      *(this + 32) += a3;
      return this;
    }

    if (a3 == 1)
    {
LABEL_10:
      **(this + 32) = *a2;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(this + 32) + 1) = a2[1];
        goto LABEL_10;
      case 3:
LABEL_6:
        *(*(this + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(this + 32) + 3) = a2[3];
        goto LABEL_6;
    }
  }

  v3 = this;
  memcpy(*(this + 32), a2, a3);
  this = v3;
  *(v3 + 32) += a3;
  return this;
}

void *llvm::raw_ostream::operator<<(void *a1, uint64_t a2)
{
  sub_100008494(a2, a1);
  return a1;
}

{
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 22))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(a2 + 22))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (*(a2 + 21))
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    llvm::write_hex(a1, *a2, v5, *(a2 + 16), 1);
  }

  else
  {
    v18 = &v19;
    v19 = v21;
    v20 = xmmword_100011170;
    v12 = 2;
    v16 = 0;
    v17 = 0;
    v11 = off_100014BB8;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    llvm::write_integer(&v11, *(a2 + 8), 0, 0);
    v7 = *(a2 + 16);
    if (v20 < v7)
    {
      v8 = v7 - v20;
      if ((v7 - v20) >= 0x50)
      {
        do
        {
          if (v8 >= 0x4F)
          {
            v9 = 79;
          }

          else
          {
            v9 = v8;
          }

          llvm::raw_ostream::write(a1, "                                                                                ", v9);
          v8 -= v9;
        }

        while (v8);
      }

      else
      {
        llvm::raw_ostream::write(a1, "                                                                                ", (v7 - v20));
      }
    }

    llvm::raw_ostream::write(a1, v19, v20);
    v11 = off_100014A48;
    if (v17 == 1 && v13)
    {
      operator delete[]();
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  return a1;
}

void sub_100008494(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  llvm::formatv_object_base::parseFormatString(*a1, *(a1 + 8), &v19);
  v6 = v19;
  if (v20)
  {
    v7 = 56 * v20;
    v8 = (v19 + 24);
    do
    {
      if (*(v8 - 6) == 1 || (v9 = *v8, *(a1 + 24) <= v9))
      {
        v13 = *(v8 - 2);
        v14 = *(v8 - 1);
        v15 = a2[4];
        if (v14 > a2[3] - v15)
        {
          llvm::raw_ostream::write(a2, v13, v14);
        }

        else if (v14)
        {
          v16 = *(v8 - 1);
          memcpy(v15, v13, v14);
          a2[4] += v16;
        }
      }

      else
      {
        v10 = *(v8 + 12);
        v17[0] = *(*(a1 + 16) + 8 * v9);
        v17[1] = vrev64_s32(*(v8 + 1));
        v18 = v10;
        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        sub_100009528(v17, a2);
      }

      v8 += 14;
      v7 -= 56;
    }

    while (v7);
    v6 = v19;
  }

  if (v6 != &v21)
  {
    free(v6);
  }
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(a2 + 16) - *(a2 + 8);
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(a2 + 20);
  if (v5 == 3)
  {
    v6 = v4 - (v4 >> 1);
    v4 = v4 >> 1;
    if (v4 < 0x50)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16) - *(a2 + 8);
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v4) = 0;
      goto LABEL_10;
    }

    v6 = 0;
    if (v4 < 0x50)
    {
LABEL_10:
      llvm::raw_ostream::write(this, "                                                                                ", v4);
      goto LABEL_11;
    }
  }

  do
  {
    if (v4 >= 0x4F)
    {
      v13 = 79;
    }

    else
    {
      v13 = v4;
    }

    llvm::raw_ostream::write(this, "                                                                                ", v13);
    LODWORD(v4) = v4 - v13;
  }

  while (v4);
LABEL_11:
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(this + 4);
  if (v8 <= *(this + 3) - v9)
  {
    if (v8)
    {
      v10 = *(a2 + 8);
      memcpy(v9, v7, v8);
      *(this + 4) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v7, v8);
  }

  if (v6 >= 0x50)
  {
    do
    {
      if (v6 >= 0x4F)
      {
        v11 = 79;
      }

      else
      {
        v11 = v6;
      }

      llvm::raw_ostream::write(this, "                                                                                ", v11);
      v6 -= v11;
    }

    while (v6);
  }

  else
  {
    llvm::raw_ostream::write(this, "                                                                                ", v6);
  }

  return this;
}

uint64_t sub_100008930(uint64_t result)
{
  *result = off_100014A48;
  if (*(result + 44) == 1)
  {
    if (*(result + 16))
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t llvm::raw_ostream::changeColor(uint64_t a1, int a2, int a3, llvm::sys::Process *a4)
{
  if (*(a1 + 40) == 1)
  {
    v8 = llvm::sys::Process::ColorNeedsFlush(a1);
    if (!v8 || (v8 = (*(*a1 + 48))(a1), v8))
    {
      if (llvm::sys::Process::ColorNeedsFlush(v8))
      {
        v9 = *(a1 + 16);
        if (*(a1 + 32) != v9)
        {
          *(a1 + 32) = v9;
          (*(*a1 + 72))(a1);
        }
      }

      if (a2 == 16)
      {
        v10 = llvm::sys::Process::OutputBold(a4);
        if (!v10)
        {
          return a1;
        }

        goto LABEL_11;
      }

      v10 = llvm::sys::Process::OutputColor(a2, a3, a4);
      if (v10)
      {
LABEL_11:
        v11 = v10;
        v12 = strlen(v10);
        llvm::raw_ostream::write(a1, v11, v12);
      }
    }
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::resetColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    v2 = llvm::sys::Process::ColorNeedsFlush(this);
    if (!v2 || (v2 = (*(*this + 48))(this), v2))
    {
      v3 = llvm::sys::Process::ColorNeedsFlush(v2);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::ResetColor(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

llvm::raw_ostream *llvm::raw_ostream::reverseColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    v2 = llvm::sys::Process::ColorNeedsFlush(this);
    if (!v2 || (v2 = (*(*this + 48))(this), v2))
    {
      v3 = llvm::sys::Process::ColorNeedsFlush(v2);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::OutputReverse(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 44) = a4 ^ 1;
  *(a1 + 48) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100014AC0;
  *(a1 + 52) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 53) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 52) = 0;
    return a1;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 52) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v12, 0, sizeof(v12));
    v13 = 0xFFFFLL;
    v14 = 0;
    v15 = 0;
    v9 = llvm::sys::fs::status(*(a1 + 48), v12);
    *(a1 + 54) = *&v12[40] == 2;
    *(a1 + 53) = v9 == 0 && v8 != -1;
    if (v9 == 0 && v8 != -1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 88) = v10;
    return a1;
  }
}

void llvm::raw_fd_ostream::~raw_fd_ostream(llvm::raw_fd_ostream *this)
{
  *this = off_100014AC0;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v2 = *(this + 4);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      *(this + 4) = v3;
      llvm::raw_fd_ostream::write_impl(this, v3, v2 - v3);
    }

    if (*(this + 52) == 1)
    {
      v4 = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
      if (v4)
      {
        *(this + 9) = v4;
        *(this + 10) = v5;
      }
    }
  }

  if (*(this + 18))
  {
    v10 = "IO failure on output stream: ";
    v11 = 259;
    v6 = *(this + 72);
    std::error_code::message(&v7, &v6);
    v9 = 260;
    v8 = &v7;
    sub_100005E30(&v10, &v8, v12);
    llvm::report_fatal_error(v12, 0);
  }

  *this = off_100014A48;
  if (*(this + 11) == 1)
  {
    if (*(this + 2))
    {
      operator delete[]();
    }
  }
}

{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  operator delete();
}

uint64_t llvm::raw_fd_ostream::write_impl(llvm::raw_fd_ostream *this, const char *__buf, unint64_t a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6[2];
    if (v6[4] != v7)
    {
      v6[4] = v7;
      (*(*v6 + 72))(v6);
    }
  }

  *(this + 11) += a3;
  while (1)
  {
    v8 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
    result = write(*(this + 12), __buf, v8);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    a3 -= result;
LABEL_6:
    if (!a3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  v10 = *__error();
  result = std::generic_category();
  *(this + 9) = v10;
  *(this + 10) = result;
  return result;
}

uint64_t llvm::raw_fd_ostream::pwrite_impl(llvm::raw_fd_ostream *this, const char *a2, size_t a3, off_t a4)
{
  v8 = (*(*this + 80))(this);
  v9 = *(this + 4);
  v10 = *(this + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(this + 4) = v10;
    (*(*this + 72))(this, v10, v9 - v10);
  }

  v12 = v11 - v10;
  v13 = lseek(*(this + 12), a4, 0);
  *(this + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(this + 9) = v14;
    *(this + 10) = v15;
  }

  llvm::raw_ostream::write(this, a2, a3);
  v16 = *(this + 2);
  if (*(this + 4) != v16)
  {
    *(this + 4) = v16;
    (*(*this + 72))(this);
  }

  result = lseek(*(this + 12), v12, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(this + 9) = v18;
    *(this + 10) = result;
  }

  return result;
}

uint64_t llvm::raw_fd_ostream::preferred_buffer_size(llvm::raw_fd_ostream *this)
{
  if (fstat(*(this + 12), &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*this + 48))(this))
  {
    return 0;
  }

  return v3.st_blksize;
}

uint64_t llvm::raw_fd_ostream::has_colors(llvm::raw_fd_ostream *this)
{
  if (*(this + 56) == 1)
  {
    return *(this + 55) & 1;
  }

  HasColors = llvm::sys::Process::FileDescriptorHasColors(*(this + 12));
  *(this + 55) = HasColors | 0x100;
  return HasColors & 1;
}

void llvm::raw_svector_ostream::write_impl(llvm::raw_svector_ostream *this, const char *a2, size_t __n)
{
  v4 = *(this + 6);
  v5 = v4[1];
  v6 = v5 + __n;
  if (v4[2] < v6)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(this + 6), v4 + 3, v6, 1);
    a2 = v7;
    v5 = v4[1];
  }

  if (__n)
  {
    memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
}

void sub_1000092D4(uint64_t a1)
{
  *a1 = off_100014A48;
  if (*(a1 + 44) == 1 && *(a1 + 16))
  {
    operator delete[]();
  }

  operator delete();
}

void sub_100009360(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];

  std::string::reserve(v2, v3);
}

uint64_t sub_1000093DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_1000093F4(uint64_t a1)
{
  *a1 = off_100014A48;
  if (*(a1 + 44) == 1 && *(a1 + 16))
  {
    operator delete[]();
  }

  operator delete();
}

void sub_100009480(void *a1, uint64_t a2)
{
  v2 = a1[6];
  v3 = (*(*a1 + 80))(a1) + a2 + a1[4] - a1[2];
  if (*(v2 + 16) < v3)
  {

    llvm::SmallVectorBase<unsigned long long>::grow_pod(v2, (v2 + 24), v3, 1);
  }
}

void sub_100009528(void *a1, uint64_t a2)
{
  if (*(a1 + 3))
  {
    v38 = v40;
    *v39 = xmmword_1000111D0;
    v30 = 2;
    v34 = 0;
    v36 = &v38;
    v35 = 0;
    v29 = off_100014BB8;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    (*(**a1 + 24))(*a1, &v29);
    v4 = *(a1 + 3);
    v5 = v39[0];
    if (v39[0] < v4)
    {
      v6 = v4 - LODWORD(v39[0]);
      v7 = *(a1 + 2);
      if (v7 == 1)
      {
        v14 = v6 >> 1;
        v15 = v39[0];
        if (v6 >= 2)
        {
          v16 = 0;
          do
          {
            while (1)
            {
              v17 = *(a1 + 16);
              v18 = *(a2 + 32);
              if (v18 >= *(a2 + 24))
              {
                break;
              }

LABEL_28:
              *(a2 + 32) = v18 + 1;
              *v18 = v17;
              if (++v16 == v14)
              {
                goto LABEL_31;
              }
            }

            while (1)
            {
              v19 = *(a2 + 16);
              if (v19)
              {
                *(a2 + 32) = v19;
                (*(*a2 + 72))(a2);
                v18 = *(a2 + 32);
                goto LABEL_28;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v18 = *(a2 + 32);
              if (v18 < *(a2 + 24))
              {
                goto LABEL_28;
              }
            }

            v37 = v17;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v16;
          }

          while (v16 != v14);
LABEL_31:
          v15 = v39[0];
        }

        llvm::raw_ostream::write(a2, v38, v15);
        if (v4 != v5)
        {
          v20 = 0;
          v21 = v6 - v14;
          do
          {
            while (1)
            {
              v22 = *(a1 + 16);
              v23 = *(a2 + 32);
              if (v23 >= *(a2 + 24))
              {
                break;
              }

LABEL_40:
              *(a2 + 32) = v23 + 1;
              *v23 = v22;
              if (++v20 == v21)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v24 = *(a2 + 16);
              if (v24)
              {
                *(a2 + 32) = v24;
                (*(*a2 + 72))(a2);
                v23 = *(a2 + 32);
                goto LABEL_40;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v23 = *(a2 + 32);
              if (v23 < *(a2 + 24))
              {
                goto LABEL_40;
              }
            }

            v37 = v22;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v20;
          }

          while (v20 != v21);
        }

        goto LABEL_57;
      }

      if (!v7)
      {
        llvm::raw_ostream::write(a2, v38, v39[0]);
        if (v4 != v5)
        {
          v8 = 0;
          do
          {
            while (1)
            {
              v9 = *(a1 + 16);
              v10 = *(a2 + 32);
              if (v10 >= *(a2 + 24))
              {
                break;
              }

LABEL_13:
              *(a2 + 32) = v10 + 1;
              *v10 = v9;
              if (++v8 == v6)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v11 = *(a2 + 16);
              if (v11)
              {
                *(a2 + 32) = v11;
                (*(*a2 + 72))(a2);
                v10 = *(a2 + 32);
                goto LABEL_13;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v10 = *(a2 + 32);
              if (v10 < *(a2 + 24))
              {
                goto LABEL_13;
              }
            }

            v37 = v9;
            (*(*a2 + 72))(a2, &v37, 1);
            ++v8;
          }

          while (v8 != v6);
        }

        goto LABEL_57;
      }

      if (v4 != LODWORD(v39[0]))
      {
        v25 = 0;
        do
        {
          while (1)
          {
            v26 = *(a1 + 16);
            v27 = *(a2 + 32);
            if (v27 >= *(a2 + 24))
            {
              break;
            }

LABEL_52:
            *(a2 + 32) = v27 + 1;
            *v27 = v26;
            if (++v25 == v6)
            {
              goto LABEL_55;
            }
          }

          while (1)
          {
            v28 = *(a2 + 16);
            if (v28)
            {
              *(a2 + 32) = v28;
              (*(*a2 + 72))(a2);
              v27 = *(a2 + 32);
              goto LABEL_52;
            }

            if (!*(a2 + 44))
            {
              break;
            }

            llvm::raw_ostream::SetBuffered(a2);
            v27 = *(a2 + 32);
            if (v27 < *(a2 + 24))
            {
              goto LABEL_52;
            }
          }

          v37 = v26;
          (*(*a2 + 72))(a2, &v37, 1);
          ++v25;
        }

        while (v25 != v6);
LABEL_55:
        v5 = v39[0];
      }
    }

    llvm::raw_ostream::write(a2, v38, v5);
LABEL_57:
    v29 = off_100014A48;
    if (v35 == 1 && v31)
    {
      operator delete[]();
    }

    if (v38 != v40)
    {
      free(v38);
    }

    return;
  }

  v12 = *a1;
  v13 = *(**a1 + 24);

  v13();
}

std::string *llvm::sys::StrError@<X0>(std::string *this@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (this)
  {
    __strerrbuf[0] = 0;
    strerror_r(this, __strerrbuf, 0x7CFuLL);
    return std::string::assign(a2, __strerrbuf);
  }

  return this;
}

unsigned __int8 *llvm::sys::path::begin@<X0>(unsigned __int8 *result@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  v29 = result;
  v30 = a2;
  if (!a2)
  {
    v5 = 0;
    goto LABEL_49;
  }

  if (a3 >= 2)
  {
    v4 = *result;
    if (a2 == 1)
    {
      goto LABEL_35;
    }

    if ((v4 & 0x80) != 0)
    {
      v6 = result;
      v7 = a2;
      v8 = a3;
      v9 = a4;
      v10 = __maskrune(*result, 0x100uLL);
      a2 = v7;
      a4 = v9;
      a3 = v8;
      v11 = v10;
      result = v6;
      if (!v11)
      {
        goto LABEL_11;
      }
    }

    else if ((_DefaultRuneLocale.__runetype[v4] & 0x100) == 0)
    {
      goto LABEL_11;
    }

    if (result[1] == 58)
    {
      v5 = 2;
      goto LABEL_49;
    }
  }

LABEL_11:
  LODWORD(v4) = *result;
  if (a2 >= 3)
  {
    v12 = a3 > 1 && v4 == 92;
    v13 = v12;
    v14 = v4 != 47 && !v13;
    if (!v14 && v4 == result[1])
    {
      v15 = result[2];
      v16 = a3 > 1 && v15 == 92;
      v17 = v16;
      if (v15 != 47 && !v17)
      {
        v18 = 1;
        if (a3 <= 1)
        {
          v19 = "/";
        }

        else
        {
          v18 = 2;
          v19 = "\\/";
        }

        v20 = a3;
        v21 = v18;
        v22 = 2;
LABEL_47:
        v26 = a4;
        first_of = llvm::StringRef::find_first_of(&v29, v19, v21, v22);
        a4 = v26;
        a3 = v20;
        v28 = first_of;
        result = v29;
        v5 = v30;
        if (v30 >= v28)
        {
          v5 = v28;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_35:
  v24 = a3 > 1 && v4 == 92;
  v5 = 1;
  if (v4 != 47 && !v24)
  {
    v25 = 1;
    if (a3 <= 1)
    {
      v19 = "/";
    }

    else
    {
      v25 = 2;
      v19 = "\\/";
    }

    v20 = a3;
    v21 = v25;
    v22 = 0;
    goto LABEL_47;
  }

LABEL_49:
  *(a4 + 16) = result;
  *(a4 + 24) = v5;
  *(a4 + 32) = 0;
  *(a4 + 40) = a3;
  return result;
}

void *llvm::sys::path::const_iterator::operator++(void *result)
{
  v1 = result[3];
  v2 = result[4] + v1;
  result[4] = v2;
  v3 = result[1];
  if (v2 == v3)
  {
    result[2] = 0;
    result[3] = 0;
    return result;
  }

  if (v1 <= 2)
  {
    v10 = 0;
    v6 = *(result + 10);
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = result[2];
    v5 = *v4;
    v6 = *(result + 10);
    if (v5 == 47 || (v5 == 92 ? (v7 = v6 >= 2) : (v7 = 0), v7))
    {
      if (v4[1] == v5)
      {
        v8 = v4[2];
        v10 = v6 < 2 || v8 != 92;
        if (v8 == 47)
        {
          v10 = 0;
        }

        v11 = *result;
        v12 = *(*result + v2);
        if (v12 == 47)
        {
          goto LABEL_43;
        }

LABEL_24:
        if (v12 != 92 || v6 < 2)
        {
          goto LABEL_28;
        }

        goto LABEL_43;
      }
    }

    v10 = 0;
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

LABEL_43:
  if (v10 || v1 && v6 >= 2 && *(result[2] + v1 - 1) == 58)
  {
    v20 = v3 > v2;
    if (v3 < v2)
    {
      v2 = result[1];
    }

    v21 = v11 + v2;
    v22 = v20;
    result[2] = v21;
    result[3] = v22;
    return result;
  }

  while (1)
  {
    v23 = *(v11 + v2);
    v24 = v6 > 1 && v23 == 92;
    v25 = v24;
    if (v23 != 47 && !v25)
    {
      break;
    }

    result[4] = ++v2;
    if (v3 == v2)
    {
      if (v1 != 1 || *result[2] != 47)
      {
        result[4] = v3 - 1;
        result[2] = ".";
        result[3] = 1;
        return result;
      }

      goto LABEL_29;
    }
  }

LABEL_28:
  v3 = v2;
LABEL_29:
  if (v6 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (v6 <= 1)
  {
    v15 = "/";
  }

  else
  {
    v15 = "\\/";
  }

  v16 = result;
  first_of = llvm::StringRef::find_first_of(result, v15, v14, v3);
  result = v16;
  v18 = v16[1];
  if (v18 >= v16[4])
  {
    v19 = v16[4];
  }

  else
  {
    v19 = v16[1];
  }

  if (v19 > first_of)
  {
    first_of = v16[4];
  }

  if (first_of >= v18)
  {
    first_of = v16[1];
  }

  v16[2] = *v16 + v19;
  v16[3] = first_of - v19;
  return result;
}

uint64_t llvm::sys::path::root_directory(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  llvm::sys::path::begin(a1, a2, a3, &v21);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  if (v21 == a1 && v23 == a2)
  {
    return 0;
  }

  if (*(&v22 + 1) < 3uLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = *v22;
    if (v7 == 47 || (v8 = 0, a3 >= 2) && v7 == 92)
    {
      v8 = *(v22 + 1) == v7;
    }
  }

  v9 = 0;
  if (*(&v22 + 1) && a3 >= 2)
  {
    v9 = *(v22 + *(&v22 + 1) - 1) == 58;
  }

  if (!v8 && !v9 || (llvm::sys::path::const_iterator::operator++(&v18), v18 == a1) && v20 == a2 || ((result = v19, v11 = *v19, a3 > 1) ? (v12 = v11 == 92) : (v12 = 0), !v12 ? (v13 = 0) : (v13 = 1), v11 != 47 ? (v14 = v13 == 0) : (v14 = 0), v14))
  {
    if (!v8)
    {
      v15 = *v22;
      if (a3 > 1 && v15 == 92 || v15 == 47)
      {
        return v22;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

void llvm::sys::path::append(void *a1, const llvm::Twine *a2, void **a3, void **a4, const char **a5, void **a6)
{
  v77 = v79;
  v78 = xmmword_1000111A0;
  v74 = v76;
  v75 = xmmword_1000111A0;
  v71 = v73;
  v72 = xmmword_1000111A0;
  v68 = v70;
  v69 = xmmword_1000111A0;
  v65 = v67;
  v66 = 0x400000000;
  v10 = *(a3 + 32);
  if (v10 < 2)
  {
    v11 = 0;
    v12 = *(a4 + 32);
    if (v12 < 2)
    {
      goto LABEL_3;
    }

LABEL_67:
    if (*(a4 + 33) == 1)
    {
      if (v12 - 5 < 2)
      {
        v45 = *a4;
        v46 = a4[1];
        if (v11 < HIDWORD(v66))
        {
          goto LABEL_75;
        }

        goto LABEL_106;
      }

      if (v12 == 4)
      {
        v57 = *(*a4 + 23);
        if (v57 >= 0)
        {
          v45 = *a4;
        }

        else
        {
          v45 = **a4;
        }

        if (v57 >= 0)
        {
          v46 = *(*a4 + 23);
        }

        else
        {
          v46 = (*a4)[1];
        }

        if (v11 >= HIDWORD(v66))
        {
          goto LABEL_106;
        }

        goto LABEL_75;
      }

      if (v12 == 3)
      {
        v45 = *a4;
        if (*a4)
        {
          v46 = strlen(*a4);
          if (v11 < HIDWORD(v66))
          {
            goto LABEL_75;
          }

          goto LABEL_106;
        }

        v46 = 0;
        if (v11 >= HIDWORD(v66))
        {
LABEL_106:
          v54 = v46;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
          v46 = v54;
          v11 = v66;
        }

LABEL_75:
        v47 = v65 + 16 * v11;
        *v47 = v45;
        v47[1] = v46;
        v11 = v66 + 1;
        LODWORD(v66) = v66 + 1;
        v13 = *(a5 + 32);
        if (v13 < 2)
        {
LABEL_4:
          v14 = *(a6 + 32);
          if (v14 < 2)
          {
            goto LABEL_5;
          }

LABEL_85:
          if (*(a6 + 33) == 1)
          {
            if (v14 - 5 < 2)
            {
              v51 = *a6;
              v52 = a6[1];
              if (v11 < HIDWORD(v66))
              {
                goto LABEL_93;
              }

              goto LABEL_110;
            }

            if (v14 == 4)
            {
              v59 = *(*a6 + 23);
              if (v59 >= 0)
              {
                v51 = *a6;
              }

              else
              {
                v51 = **a6;
              }

              if (v59 >= 0)
              {
                v52 = *(*a6 + 23);
              }

              else
              {
                v52 = (*a6)[1];
              }

              if (v11 >= HIDWORD(v66))
              {
                goto LABEL_110;
              }

              goto LABEL_93;
            }

            if (v14 == 3)
            {
              v51 = *a6;
              if (*a6)
              {
                v52 = strlen(*a6);
                if (v11 < HIDWORD(v66))
                {
                  goto LABEL_93;
                }

                goto LABEL_110;
              }

              v52 = 0;
              if (v11 >= HIDWORD(v66))
              {
LABEL_110:
                v56 = v52;
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
                v52 = v56;
                v11 = v66;
              }

LABEL_93:
              v53 = v65 + 16 * v11;
              *v53 = v51;
              v53[1] = v52;
              v11 = v66 + 1;
              LODWORD(v66) = v11;
              v15 = v65;
              if (v11)
              {
                goto LABEL_6;
              }

LABEL_94:
              if (v15 == v67)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }
          }

          llvm::Twine::toVector(a6, &v68);
          v51 = v68;
          v52 = v69;
          v11 = v66;
          if (v66 < HIDWORD(v66))
          {
            goto LABEL_93;
          }

          goto LABEL_110;
        }

        goto LABEL_76;
      }
    }

    llvm::Twine::toVector(a4, &v74);
    v45 = v74;
    v46 = v75;
    v11 = v66;
    if (v66 < HIDWORD(v66))
    {
      goto LABEL_75;
    }

    goto LABEL_106;
  }

  if (*(a3 + 33) != 1)
  {
    goto LABEL_56;
  }

  if (v10 - 5 < 2)
  {
    v42 = 0;
    v38 = *a3;
    v40 = a3[1];
    goto LABEL_66;
  }

  if (v10 != 4)
  {
    if (v10 == 3)
    {
      v38 = *a3;
      if (*a3)
      {
        v39 = a4;
        v40 = strlen(*a3);
        a4 = v39;
      }

      else
      {
        v40 = 0;
      }

      v42 = 0;
      goto LABEL_66;
    }

LABEL_56:
    v41 = a4;
    llvm::Twine::toVector(a3, &v77);
    v38 = v77;
    v40 = v78;
    v42 = v66;
    a4 = v41;
    goto LABEL_66;
  }

  v42 = 0;
  v43 = *(*a3 + 23);
  if (v43 >= 0)
  {
    v38 = *a3;
  }

  else
  {
    v38 = **a3;
  }

  if (v43 >= 0)
  {
    v40 = *(*a3 + 23);
  }

  else
  {
    v40 = (*a3)[1];
  }

LABEL_66:
  v44 = (v65 + 16 * v42);
  *v44 = v38;
  v44[1] = v40;
  v11 = v66 + 1;
  LODWORD(v66) = v66 + 1;
  v12 = *(a4 + 32);
  if (v12 >= 2)
  {
    goto LABEL_67;
  }

LABEL_3:
  v13 = *(a5 + 32);
  if (v13 < 2)
  {
    goto LABEL_4;
  }

LABEL_76:
  if (*(a5 + 33) != 1)
  {
    goto LABEL_83;
  }

  if (v13 - 5 < 2)
  {
    v48 = *a5;
    v49 = a5[1];
    if (v11 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  if (v13 == 4)
  {
    v58 = (*a5)[23];
    if (v58 >= 0)
    {
      v48 = *a5;
    }

    else
    {
      v48 = **a5;
    }

    if (v58 >= 0)
    {
      v49 = (*a5)[23];
    }

    else
    {
      v49 = *(*a5 + 1);
    }

    if (v11 >= HIDWORD(v66))
    {
      goto LABEL_108;
    }

    goto LABEL_84;
  }

  if (v13 != 3)
  {
LABEL_83:
    llvm::Twine::toVector(a5, &v71);
    v48 = v71;
    v49 = v72;
    v11 = v66;
    if (v66 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v48 = *a5;
  if (*a5)
  {
    v49 = strlen(*a5);
    if (v11 < HIDWORD(v66))
    {
      goto LABEL_84;
    }

    goto LABEL_108;
  }

  v49 = 0;
  if (v11 >= HIDWORD(v66))
  {
LABEL_108:
    v55 = v49;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v11 + 1, 16);
    v49 = v55;
    v11 = v66;
  }

LABEL_84:
  v50 = v65 + 16 * v11;
  *v50 = v48;
  v50[1] = v49;
  v11 = v66 + 1;
  LODWORD(v66) = v66 + 1;
  v14 = *(a6 + 32);
  if (v14 >= 2)
  {
    goto LABEL_85;
  }

LABEL_5:
  v15 = v65;
  if (!v11)
  {
    goto LABEL_94;
  }

LABEL_6:
  if (a2 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  v17 = "/";
  if (a2 > 1)
  {
    v17 = "\\/";
  }

  v61 = v17;
  v62 = v16;
  if (a2 == 3)
  {
    v18 = 92;
  }

  else
  {
    v18 = 47;
  }

  v60 = v18;
  v19 = a1[1];
  v20 = 16 * v11;
  do
  {
    if (!v19 || ((v21 = *(*a1 + v19 - 1), a2 > 1) ? (v22 = v21 == 92) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), v21 != 47 ? (v24 = v23 == 0) : (v24 = 0), v24))
    {
      v34 = v15[1];
      if (!v34 || (v35 = **v15, v35 != 47) && (a2 < 2 || v35 != 92))
      {
        if (v19)
        {
          v64 = 261;
          v63[0] = *v15;
          v63[1] = v34;
          has_root_name = llvm::sys::path::has_root_name(v63, a2);
          v19 = a1[1];
          if ((has_root_name & 1) == 0)
          {
            if ((v19 + 1) > a1[2])
            {
              llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v19 + 1, 1);
              v19 = a1[1];
            }

            *(*a1 + v19) = v60;
            v19 = a1[1] + 1;
            a1[1] = v19;
          }
        }
      }

      v37 = *v15;
      v30 = v15[1];
      if (a1[2] < v19 + v30)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v19 + v30, 1);
        v19 = a1[1];
      }

      if (v30)
      {
        v32 = (*a1 + v19);
        v33 = v37;
        goto LABEL_15;
      }
    }

    else
    {
      first_not_of = llvm::StringRef::find_first_not_of(v15, v61, v62, 0);
      v26 = first_not_of;
      v28 = *v15;
      v27 = v15[1];
      if (v27 >= first_not_of)
      {
        v29 = first_not_of;
      }

      else
      {
        v29 = v15[1];
      }

      v30 = v27 - v29;
      v19 = a1[1];
      v31 = v19 + v27 - v29;
      if (a1[2] < v31)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v31, 1);
        v19 = a1[1];
      }

      if (v27 > v26)
      {
        v32 = (*a1 + v19);
        v33 = &v29[v28];
LABEL_15:
        memcpy(v32, v33, v30);
        v19 = a1[1];
      }
    }

    v19 += v30;
    a1[1] = v19;
    v15 += 2;
    v20 -= 16;
  }

  while (v20);
  v15 = v65;
  if (v65 != v67)
  {
LABEL_95:
    free(v15);
  }

LABEL_96:
  if (v68 != v70)
  {
    free(v68);
  }

  if (v71 != v73)
  {
    free(v71);
  }

  if (v74 != v76)
  {
    free(v74);
  }

  if (v77 != v79)
  {
    free(v77);
  }
}

uint64_t llvm::sys::path::has_root_name(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v18 = v20;
  v19 = xmmword_100011180;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = this[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v18);
    v5 = v18;
    v6 = v19;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = (*this)[1];
  }

LABEL_15:
  llvm::sys::path::begin(v5, v6, v2, &v14);
  if (v14 == v5 && v17 == v6)
  {
    v10 = 0;
    v11 = v18;
    if (v18 == v20)
    {
      return v10;
    }

    goto LABEL_31;
  }

  if (v16 < 3)
  {
    v9 = 0;
  }

  else
  {
    v8 = *v15;
    if (v8 == 47 || (v9 = 0, v2 >= 2) && v8 == 92)
    {
      v9 = v15[1] == v8;
    }
  }

  v12 = 0;
  if (v2 >= 2 && v16)
  {
    v12 = v15[v16 - 1] == 58;
  }

  v10 = (v16 != 0) & (v9 | v12);
  v11 = v18;
  if (v18 != v20)
  {
LABEL_31:
    free(v11);
  }

  return v10;
}

unsigned __int8 *llvm::sys::path::parent_path(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  if (sub_10000AA00(a1, a2, a3) == -1)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_10000AA00(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v43 = a1;
  v44 = a2;
  if (a2)
  {
    v6 = a2 - 1;
    v7 = a1[a2 - 1];
    if (v7 == 47 || a3 >= 2 && v7 == 92)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = -1;
  }

  v8 = a3 > 1;
  if (a3 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (a3 <= 1)
  {
    v10 = "/";
  }

  else
  {
    v10 = "\\/";
  }

  last_of = llvm::StringRef::find_last_of(&v43, v10, v9, v6);
  if (a3 >= 2 && last_of == -1)
  {
    v12 = v44 - 1;
    if (v44 < v44 - 1)
    {
      v12 = v44;
    }

    while (v12)
    {
      last_of = v12 - 1;
      v13 = v43[--v12];
      if (v13 == 58)
      {
        goto LABEL_19;
      }
    }

    v6 = 0;
    goto LABEL_32;
  }

LABEL_19:
  if (last_of == -1)
  {
    v6 = 0;
    if (a2)
    {
      goto LABEL_33;
    }

    goto LABEL_96;
  }

  if (last_of == 1)
  {
    v6 = 0;
    v14 = *v43;
    v15 = a3 > 1 && v14 == 92;
    v16 = v15;
    if (v14 == 47 || v16)
    {
LABEL_32:
      if (a2)
      {
        goto LABEL_33;
      }

LABEL_96:
      v19 = 0;
      goto LABEL_97;
    }
  }

  v6 = last_of + 1;
  if (!a2)
  {
    goto LABEL_96;
  }

LABEL_33:
  v7 = a1[v6];
LABEL_34:
  v18 = a3 > 1 && v7 == 92;
  v19 = v7 == 47 || v18;
  v43 = a1;
  v44 = a2;
  v8 = a3 > 1;
  if (a3 > 1)
  {
    if (a2 < 3)
    {
LABEL_74:
      v23 = *a1;
      goto LABEL_75;
    }

    if (a1[1] == 58)
    {
      v20 = a1[2];
      v21 = 1;
      first_of = 2;
      if (v20 == 47 || v20 == 92)
      {
        goto LABEL_84;
      }
    }
  }

  if (a2 < 4)
  {
    goto LABEL_74;
  }

  v23 = *a1;
  v25 = a3 > 1 && v23 == 92;
  if ((v23 == 47 || v25) && v23 == a1[1])
  {
    v26 = a1[2];
    v27 = a3 > 1 && v26 == 92;
    v28 = v27;
    if (v26 != 47 && !v28)
    {
      if (a3 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (a3 <= 1)
      {
        v30 = "/";
      }

      else
      {
        v30 = "\\/";
      }

      v31 = v6;
      first_of = llvm::StringRef::find_first_of(&v43, v30, v29, 2uLL);
      v6 = v31;
      if (first_of == -1)
      {
        goto LABEL_97;
      }

LABEL_85:
      if (v6 >= first_of)
      {
        v34 = first_of;
      }

      else
      {
        v34 = v6;
      }

      while (v6 > first_of)
      {
        v35 = v6 - 1;
        v36 = a1[v6 - 1];
        v37 = v36 == 92 && v8;
        --v6;
        if (v36 != 47)
        {
          v6 = v35;
          if (!v37)
          {
            v34 = v35 + 1;
            goto LABEL_106;
          }
        }
      }

      goto LABEL_106;
    }
  }

LABEL_75:
  first_of = 0;
  v33 = a3 > 1 && v23 == 92;
  if (v23 == 47 || v33)
  {
    v21 = a3 > 1;
LABEL_84:
    v8 = v21;
    goto LABEL_85;
  }

LABEL_97:
  while (v6)
  {
    v38 = v6 - 1;
    v39 = a1[v6 - 1];
    v40 = v39 == 92 && v8;
    --v6;
    if (v39 != 47)
    {
      v6 = v38;
      if (!v40)
      {
        v34 = v38 + 1;
        goto LABEL_105;
      }
    }
  }

  v34 = 0;
LABEL_105:
  first_of = -1;
LABEL_106:
  if (v34 == first_of)
  {
    v41 = v19;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    return v34;
  }

  else
  {
    return first_of + 1;
  }
}

void sub_10000ACDC(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = *a1;
  if (*a1 != a1 + 3 && *a2 != a2 + 3)
  {
    v5 = a1[1];
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *a2 = v4;
    a2[1] = v5;
    v7 = a1[2];
    a1[2] = a2[2];
    a2[2] = v7;
    return;
  }

  v8 = a2[1];
  if (a1[2] < v8)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a1, a1 + 3, v8, 1);
    v9 = a1[1];
    if (a2[2] >= v9)
    {
LABEL_7:
      v10 = a2[1];
      if (v9 >= v10)
      {
        v11 = a2[1];
      }

      else
      {
        v11 = v9;
      }

      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = a1[1];
    if (a2[2] >= v9)
    {
      goto LABEL_7;
    }
  }

  llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9, 1);
  v9 = a1[1];
  v10 = a2[1];
  if (v9 >= v10)
  {
    v11 = a2[1];
  }

  else
  {
    v11 = a1[1];
  }

  if (!v11)
  {
LABEL_11:
    v12 = v9 - v10;
    if (v9 > v10)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  for (i = 0; i != v11; ++i)
  {
    v15 = *a2;
    v16 = *(*a1 + i);
    *(*a1 + i) = *(*a2 + i);
    *(v15 + i) = v16;
  }

  v9 = a1[1];
  v10 = a2[1];
  v12 = v9 - v10;
  if (v9 > v10)
  {
LABEL_12:
    v13 = v9 - v11;
    if (v13)
    {
      memcpy((*a2 + v10), (*a1 + v11), v13);
      v10 = a2[1];
    }

    a2[1] = v12 + v10;
    a1[1] = v11;
    return;
  }

LABEL_23:
  v17 = v10 - v9;
  if (v10 > v9)
  {
    v18 = v10 - v11;
    if (v18)
    {
      memcpy((*a1 + v9), (*a2 + v11), v18);
      v9 = a1[1];
    }

    a1[1] = v17 + v9;
    a2[1] = v11;
  }
}

BOOL llvm::sys::path::has_root_directory(unsigned __int8 ***this, const llvm::Twine *a2)
{
  v2 = a2;
  v12 = v14;
  v13 = xmmword_100011180;
  if (*(this + 33) != 1)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v12);
    v6 = v12;
    v7 = v13;
    goto LABEL_15;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = this[1];
      v6 = *this;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    goto LABEL_20;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = *(*this + 23);
      v5 = (*this)[1];
      if (v4 >= 0)
      {
        v6 = *this;
      }

      else
      {
        v6 = **this;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = *this;
  if (!*this)
  {
LABEL_20:
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v7 = strlen(*this);
    v6 = v11;
  }

LABEL_15:
  llvm::sys::path::root_directory(v6, v7, v2);
  v9 = v8;
  if (v12 != v14)
  {
    free(v12);
  }

  return v9 != 0;
}

uint64_t llvm::sys::path::is_absolute(llvm::sys::path *this, const llvm::Twine *a2)
{
  v14 = v16;
  v15 = xmmword_100011180;
  if (*(this + 33) != 1)
  {
    goto LABEL_14;
  }

  v3 = *(this + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *this;
      v6 = *(this + 1);
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *this;
    if (*this)
    {
      v6 = strlen(*this);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    llvm::Twine::toVector(this, &v14);
    v5 = v14;
    v6 = v15;
    goto LABEL_15;
  }

  v4 = *(*this + 23);
  if (v4 >= 0)
  {
    v5 = *this;
  }

  else
  {
    v5 = **this;
  }

  if (v4 >= 0)
  {
    v6 = *(*this + 23);
  }

  else
  {
    v6 = *(*this + 8);
  }

LABEL_15:
  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_directory = llvm::sys::path::has_root_directory(&v11, a2);
  if (a2 < 2)
  {
    has_root_name = 1;
    v9 = v14;
    if (v14 == v16)
    {
      return has_root_directory & has_root_name;
    }

    goto LABEL_19;
  }

  v13 = 261;
  v11 = v5;
  v12 = v6;
  has_root_name = llvm::sys::path::has_root_name(&v11, a2);
  v9 = v14;
  if (v14 != v16)
  {
LABEL_19:
    free(v9);
  }

  return has_root_directory & has_root_name;
}

void llvm::sys::fs::createUniquePath(uint64_t a1, uint64_t a2, int a3)
{
  v20 = v22;
  v21 = xmmword_100011180;
  llvm::Twine::toVector(a1, &v20);
  if (a3)
  {
    v19[4] = 261;
    v17 = v20;
    *&v18 = v21;
    if ((llvm::sys::path::is_absolute(&v17, 0) & 1) == 0)
    {
      v17 = v19;
      v18 = xmmword_100011180;
      llvm::sys::path::system_temp_directory(1, &v17);
      v16 = 261;
      v15[0] = v20;
      v15[1] = v21;
      v14 = 257;
      v12 = 257;
      v10 = 257;
      llvm::sys::path::append(&v17, 0, v15, &v13, &v11, &v9);
      sub_10000ACDC(&v20, &v17);
      if (v17 != v19)
      {
        free(v17);
      }
    }
  }

  if (&v20 == a2)
  {
    v5 = *(a2 + 8);
  }

  else
  {
    v5 = v21;
    v6 = *(a2 + 8);
    if (v6 >= v21)
    {
      if (v21)
      {
        memmove(*a2, v20, v21);
      }
    }

    else
    {
      if (*(a2 + 16) >= v21)
      {
        if (v6)
        {
          memmove(*a2, v20, *(a2 + 8));
        }
      }

      else
      {
        *(a2 + 8) = 0;
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5, 1);
        v6 = 0;
      }

      if (v21 != v6)
      {
        memcpy((*a2 + v6), &v20[v6], v21 - v6);
      }
    }

    *(a2 + 8) = v5;
  }

  if (v5 + 1 > *(a2 + 16))
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v5 + 1, 1);
    *(*a2 + *(a2 + 8)) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  else
  {
    *(*a2 + v5) = 0;
    v7 = v21;
    if (!v21)
    {
      goto LABEL_24;
    }
  }

  v8 = 0;
  do
  {
    if (v20[v8] == 37)
    {
      *(*a2 + v8) = a0123456789abcd[llvm::sys::Process::GetRandomNumber() & 0xF];
    }

    ++v8;
  }

  while (v7 != v8);
LABEL_24:
  if (v20 != v22)
  {
    free(v20);
  }
}

void llvm::sys::path::system_temp_directory(int a1, uint64_t a2)
{
  v3 = 65537;
  *(a2 + 8) = 0;
  if (a1)
  {
    v4 = getenv("TMPDIR");
    if (v4 || (v4 = getenv("TMP")) != 0 || (v4 = getenv("TEMP")) != 0 || (v4 = getenv("TEMPDIR")) != 0)
    {
      v5 = v4;
      v6 = strlen(v4);
      v7 = v6;
      if (*(a2 + 16) >= v6)
      {
        v8 = 0;
        v13 = 0;
        if (!v6)
        {
LABEL_24:
          *(a2 + 8) = v13 + v7;
          return;
        }
      }

      else
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v6, 1);
        v8 = *(a2 + 8);
      }

      memcpy((*a2 + v8), v5, v7);
      v13 = *(a2 + 8);
      goto LABEL_24;
    }
  }

  else
  {
    v3 = 65538;
  }

  v9 = confstr(v3, 0, 0);
  v10 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_26;
  }

  v11 = v9;
  while (v10 == v11)
  {
    v12 = confstr(v3, *a2, v10);
    if (!v12)
    {
      goto LABEL_25;
    }

LABEL_20:
    v11 = v12;
    v10 = *(a2 + 8);
    if (v12 == v10)
    {
      *(a2 + 8) = v12 - 1;
      return;
    }
  }

  if (v10 <= v11)
  {
    if (*(a2 + 16) < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v11, 1);
      v10 = *(a2 + 8);
    }

    if (v11 != v10)
    {
      bzero((*a2 + v10), v11 - v10);
    }
  }

  *(a2 + 8) = v11;
  v12 = confstr(v3, *a2, v11);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_25:
  v10 = 0;
  *(a2 + 8) = 0;
LABEL_26:
  if (*(a2 + 16) < v10 + 9)
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, (a2 + 24), v10 + 9, 1);
    v10 = *(a2 + 8);
  }

  v14 = *a2 + v10;
  *v14 = *"/var/tmp/";
  *(v14 + 8) = 47;
  *(a2 + 8) += 9;
}

void sub_10000B584(uint64_t a1, int *a2, void *a3, int a4, int a5, int a6, uint64_t a7)
{
  v14 = std::system_category();
  if (a5 == 2)
  {
    v22 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v23 = *a3;
      v37 = 257;
      if (*v23)
      {
        v36 = v23;
        v24 = 3;
      }

      else
      {
        v24 = 1;
      }

      LOBYTE(v37) = v24;
      v38 = &v40;
      v39 = xmmword_100011180;
      v25 = llvm::Twine::toNullTerminatedStringRef(&v36, &v38);
      v26 = 0;
      v27 = v14;
      if (access(v25, 0) == -1)
      {
        break;
      }

      v28 = v38;
      if (v38 != &v40)
      {
        goto LABEL_21;
      }

LABEL_22:
      if ((v27 != std::generic_category() || v26 != 2) && !v26 && --v22 >= 2)
      {
        continue;
      }

      return;
    }

    v26 = *__error();
    v27 = std::generic_category();
    v28 = v38;
    if (v38 == &v40)
    {
      goto LABEL_22;
    }

LABEL_21:
    free(v28);
    goto LABEL_22;
  }

  if (a5 == 1)
  {
    v15 = 129;
    while (1)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v16 = *a3;
      v41 = 257;
      if (*v16)
      {
        v38 = v16;
        v17 = 3;
      }

      else
      {
        v17 = 1;
      }

      LOBYTE(v41) = v17;
      v19 = llvm::sys::fs::openFile(&v38, a2, 1, 3, a6, a7);
      if (!v19)
      {
        break;
      }

      v20 = v18;
      v21 = std::generic_category();
      if (v19 == 17 && v21 == v20)
      {
        if (--v15 <= 1)
        {
          return;
        }
      }

      else
      {
        if (v19 != 13)
        {
          return;
        }

        if (v21 != v20)
        {
          return;
        }

        if (--v15 <= 1)
        {
          return;
        }
      }
    }
  }

  else if (a5)
  {
    llvm::sys::fs::createUniquePath(a1, a3, a4);
    __break(1u);
  }

  else
  {
    for (i = 129; i > 1; --i)
    {
      llvm::sys::fs::createUniquePath(a1, a3, a4);
      v30 = *a3;
      v41 = 257;
      if (*v30)
      {
        v38 = v30;
        v31 = 3;
      }

      else
      {
        v31 = 1;
      }

      LOBYTE(v41) = v31;
      directory = llvm::sys::fs::create_directory(&v38, 0, 0x1F8u);
      if (!directory)
      {
        break;
      }

      v34 = v32;
      v35 = std::generic_category();
      if (directory != 17)
      {
        break;
      }

      if (v35 != v34)
      {
        break;
      }
    }
  }
}

void sub_10000B8EC(uint64_t *a1, __int128 *a2, uint64_t a3, int *a4, void *a5, int a6, int a7)
{
  v11 = "-%%%%%%";
  if (a3)
  {
    v11 = "-%%%%%%.";
  }

  if (*v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    *&v23 = v11;
    LOBYTE(v25) = v12;
    BYTE1(v25) = 1;
  }

  else
  {
    if (!*(a1 + 32))
    {
      LOBYTE(v12) = 0;
      LOWORD(v25) = 256;
LABEL_20:
      v14 = 1;
      goto LABEL_26;
    }

    if (*v11)
    {
      v15 = *a1;
      v16 = a1[1];
      v17 = *(a1 + 33) == 1;
      BYTE1(v25) = v12;
      if (v17)
      {
        v12 = v13;
      }

      else
      {
        v12 = 2;
      }

      if (v17)
      {
        v18 = v15;
      }

      else
      {
        v18 = a1;
      }

      *&v23 = v18;
      *(&v23 + 1) = v16;
      *&v24 = v11;
      LOBYTE(v25) = v12;
    }

    else
    {
      v22 = *(a1 + 1);
      v23 = *a1;
      v24 = v22;
      v25 = a1[4];
      v12 = v25;
      if (!v25)
      {
        goto LABEL_20;
      }
    }
  }

  if (v12 == 1)
  {
    v26 = a2;
    v27 = a3;
    v14 = 1;
    LOBYTE(v12) = 5;
  }

  else
  {
    if (BYTE1(v25) != 1)
    {
      LOBYTE(v12) = 2;
    }

    v19 = &v23;
    if (BYTE1(v25) == 1)
    {
      v19 = v23;
    }

    v26 = v19;
    v27 = *(&v23 + 1);
    v28 = a2;
    v29 = a3;
    v14 = 5;
  }

LABEL_26:
  v30 = v12;
  v31 = v14;
  v35 = v37;
  v36 = xmmword_100011180;
  v20 = llvm::Twine::toNullTerminatedStringRef(&v26, &v35);
  v21 = 1;
  v34 = 1;
  if (*v20)
  {
    v32 = v20;
    v21 = 3;
  }

  v33 = v21;
  sub_10000B584(&v32, a4, a5, 1, a6, a7, 438);
  if (v35 != v37)
  {
    free(v35);
  }
}

void llvm::sys::fs::createTemporaryFile(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4, int a5)
{
  v6 = 0;
  sub_10000B8EC(a1, a2, a3, &v6, a4, 1, a5);
  if (!v5)
  {
    close(v6);
  }
}

uint64_t llvm::sys::fs::create_directory(uint64_t a1, char a2, mode_t a3)
{
  v9 = v11;
  v10 = xmmword_100011180;
  v5 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (mkdir(v5, a3) == -1 && (*__error() != 17 || (a2 & 1) == 0))
  {
    v6 = *__error();
    std::generic_category();
    v7 = v9;
    if (v9 == v11)
    {
      return v6;
    }

    goto LABEL_5;
  }

  std::system_category();
  v6 = 0;
  v7 = v9;
  if (v9 != v11)
  {
LABEL_5:
    free(v7);
  }

  return v6;
}

unint64_t llvm::sys::fs::openFileForRead(uint64_t a1, int *a2, int a3, void *a4)
{
  v6 = llvm::sys::fs::openFile(a1, a2, 2, 1, a3, 438);
  v7 = v6;
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (a4)
    {
      a4[1] = 0;
      if (fcntl(*a2, 50, __s) != -1)
      {
        v10 = strlen(__s);
        v11 = a4[1];
        if (a4[2] < v11 + v10)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v11 + v10, 1);
          v11 = a4[1];
        }

        if (v10)
        {
          memcpy((*a4 + v11), __s, v10);
          v11 = a4[1];
        }

        a4[1] = v11 + v10;
      }
    }

    std::system_category();
    v8 = 0;
  }

  return v8 | v7;
}

ssize_t llvm::sys::fs::readNativeFileToEOF@<X0>(int a1@<W0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a2[1];
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  v10 = a2[1];
  v11 = v8 + a3;
  v12 = v8 > v8 + a3;
  if (v8 != v8 + a3)
  {
LABEL_5:
    if (!v12 && a2[2] < v11)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v11, 1);
    }

    a2[1] = v11;
  }

  while (1)
  {
    v13 = *a2;
    while (1)
    {
      *__error() = 0;
      result = read(a1, (v13 + v10), v9);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        v16 = *__error();
        *&v19.__val_ = std::generic_category();
        result = llvm::errorCodeToError(v16, v19, &v18);
        v17 = v18;
        goto LABEL_17;
      }
    }

    if (!result)
    {
      break;
    }

    v10 += result;
    v15 = a2[1];
    v11 = v10 + a3;
    v12 = v15 > v10 + a3;
    if (v15 != v10 + a3)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
LABEL_17:
  *a4 = v17;
  a2[1] = v10;
  return result;
}

unint64_t llvm::sys::fs::getMainExecutable@<X0>(_BYTE *a1@<X8>)
{
  bufsize = 1024;
  result = _NSGetExecutablePath(buf, &bufsize);
  if (result || (result = realpath_DARWIN_EXTSN(buf, __s)) == 0)
  {
    a1[23] = 0;
    *a1 = 0;
  }

  else
  {
    result = strlen(__s);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000034E8();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    a1[23] = result;
    if (result)
    {
      result = memcpy(a1, __s, result);
    }

    a1[v6] = 0;
  }

  return result;
}

uint64_t llvm::sys::fs::remove(llvm::sys::fs *this, const llvm::Twine *a2)
{
  v2 = a2;
  v10 = v12;
  v11 = xmmword_100011180;
  v3 = llvm::Twine::toNullTerminatedStringRef(this, &v10);
  if (lstat(v3, &v9))
  {
    if (*__error() != 2 || (v2 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = v9.st_mode & 0xF000;
    if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
    {
      v5 = 1;
LABEL_15:
      std::generic_category();
      v7 = v10;
      if (v10 == v12)
      {
        return v5;
      }

      goto LABEL_12;
    }

    if (remove(v3, v4) == -1 && (*__error() != 2 || (v2 & 1) == 0))
    {
LABEL_4:
      v5 = *__error();
      goto LABEL_15;
    }
  }

  std::system_category();
  v5 = 0;
  v7 = v10;
  if (v10 != v12)
  {
LABEL_12:
    free(v7);
  }

  return v5;
}

uint64_t llvm::sys::fs::access(uint64_t a1, int a2)
{
  v9 = v11;
  v10 = xmmword_100011180;
  v3 = llvm::Twine::toNullTerminatedStringRef(a1, &v9);
  if (!a2)
  {
LABEL_9:
    if (access(v3, a2) != -1)
    {
      goto LABEL_10;
    }

LABEL_13:
    v5 = *__error();
    std::generic_category();
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (a2 != 2)
  {
    a2 = 2;
    goto LABEL_9;
  }

  v4 = v3;
  if (access(v3, 5) == -1)
  {
    goto LABEL_13;
  }

  if (stat(v4, &v8) || (v8.st_mode & 0xF000) != 0x8000)
  {
    std::generic_category();
    v5 = 13;
    v6 = v9;
    if (v9 == v11)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_10:
  std::system_category();
  v5 = 0;
  v6 = v9;
  if (v9 != v11)
  {
LABEL_11:
    free(v6);
  }

  return v5;
}

uint64_t sub_10000C210(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *__error();
    std::generic_category();
    result = v4;
    if (v4 == 2)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0xFFFF00000001;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      return 2;
    }

    else
    {
      *(a3 + 28) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 44) = 0xFFFFLL;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    v6 = a2[10];
    v7 = a2[14];
    v8 = *(a2 + 2);
    v9 = v8 & 0xFFF;
    v10 = v8 >> 12;
    if (v10 == 7)
    {
      v11 = 9;
    }

    else
    {
      v11 = dword_100011258[v10 ^ 8];
    }

    v12 = *a2;
    v13 = *(a2 + 3);
    v14 = *(a2 + 1);
    v15 = *(a2 + 6);
    v16 = *(a2 + 12);
    v17 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v15;
    *(a3 + 16) = v6;
    *(a3 + 20) = v7;
    *(a3 + 24) = v17;
    *(a3 + 32) = v16;
    *(a3 + 40) = v11;
    *(a3 + 44) = v9;
    *(a3 + 48) = v12;
    *(a3 + 52) = v13;
    *(a3 + 56) = v14;
    std::system_category();
    return 0;
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::mapped_file_region(uint64_t a1, int a2, int a3, size_t a4, off_t a5, void *a6)
{
  *a1 = a4;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  if (a3 == 1)
  {
    v9 = 65;
  }

  else
  {
    v9 = 66;
  }

  v10 = a3 == 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v12 = 24642;
  }

  else
  {
    v12 = v9;
  }

  v13 = mmap(0, a4, v11, v12, a2, a5);
  *(a1 + 8) = v13;
  if (v13 != -1)
  {
    v14 = std::system_category();
    *a6 = 0;
    a6[1] = v14;
    return a1;
  }

  v16 = *__error();
  v17 = std::generic_category();
  *a6 = v16;
  a6[1] = v17;
  if (!v16)
  {
    return a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *llvm::sys::fs::mapped_file_region::unmapImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return munmap(result, *this);
  }

  return result;
}

void *llvm::sys::fs::mapped_file_region::dontNeedImpl(llvm::sys::fs::mapped_file_region *this)
{
  result = *(this + 1);
  if (result)
  {
    return posix_madvise(result, *this, 4);
  }

  return result;
}

uint64_t llvm::sys::fs::mapped_file_region::alignment(llvm::sys::fs::mapped_file_region *this)
{
  llvm::sys::Process::getPageSize(&v6);
  if ((v7 & 1) == 0)
  {
    return v6;
  }

  v1 = v6;
  v6 = 0;
  v4 = v1;
  sub_100002C14(&v4, &v5);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (v7)
  {
    v2 = v6;
    v6 = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return 4096;
}

uint64_t llvm::sys::fs::openFile(uint64_t a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v8 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v8 = 1;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v10 = v8 | 0x600;
  v11 = v8 | 0x200;
  if (a3 == 1)
  {
    v8 |= 0xA00u;
  }

  if (a3 == 3)
  {
    v8 = v11;
  }

  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = ((a5 << 20) & 0x1000000 | (2 * (a5 & 4))) ^ 0x1000000;
  v19 = v21;
  v20 = xmmword_100011180;
  v14 = llvm::Twine::toNullTerminatedStringRef(a1, &v19);
  while (1)
  {
    *__error() = 0;
    v15 = open(v14, v12 | v13, a6);
    if (v15 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
      goto LABEL_22;
    }
  }

  *a2 = v15;
  if ((v15 & 0x80000000) == 0)
  {
    std::system_category();
    v16 = 0;
    v17 = v19;
    if (v19 == v21)
    {
      return v16;
    }

    goto LABEL_23;
  }

LABEL_22:
  v16 = *__error();
  std::generic_category();
  v17 = v19;
  if (v19 == v21)
  {
    return v16;
  }

LABEL_23:
  free(v17);
  return v16;
}

llvm *llvm::sys::fs::openNativeFileForRead@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = 0;
  result = llvm::sys::fs::openFileForRead(a1, &v8, a2, a3);
  if (result)
  {
    result = llvm::errorCodeToError(result, v6, &v7);
    *(a4 + 8) |= 1u;
    *a4 = v7;
  }

  else
  {
    *(a4 + 8) &= ~1u;
    *a4 = v8;
  }

  return result;
}

ssize_t llvm::sys::fs::readNativeFileSlice@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  while (1)
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      v11 = *__error();
      *&v13.__val_ = std::generic_category();
      result = llvm::errorCodeToError(v11, v13, &v12);
      *(a5 + 8) |= 1u;
      *a5 = v12;
      return result;
    }
  }

  *(a5 + 8) &= ~1u;
  *a5 = result;
  return result;
}

uint64_t llvm::sys::fs::closeFile(llvm::sys::fs *this, int *a2)
{
  v2 = *this;
  *this = -1;
  return llvm::sys::Process::SafelyCloseFileDescriptor(v2);
}

void llvm::sys::Process::getPageSize(uint64_t a1@<X8>)
{
  if (atomic_load_explicit(&qword_1000189B8, memory_order_acquire))
  {
    v3 = dword_1000189B0;
    if (dword_1000189B0 != -1)
    {
LABEL_3:
      *(a1 + 8) &= ~1u;
      *a1 = v3;
      return;
    }
  }

  else
  {
    sub_100010470();
    v3 = dword_1000189B0;
    if (dword_1000189B0 != -1)
    {
      goto LABEL_3;
    }
  }

  v4 = *__error();
  *&v6.__val_ = std::generic_category();
  llvm::errorCodeToError(v4, v6, &v5);
  *(a1 + 8) |= 1u;
  *a1 = v5;
}

uint64_t llvm::sys::Process::SafelyCloseFileDescriptor(llvm::sys::Process *this)
{
  v1 = this;
  v5 = -1;
  v6 = -1;
  v2 = pthread_sigmask(3, &v6, &v5);
  if (!v2)
  {
    if (close(v1) < 0)
    {
      v2 = *__error();
      v3 = pthread_sigmask(3, &v5, 0);
      if (v2)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = pthread_sigmask(3, &v5, 0);
    }

    v2 = v3;
  }

LABEL_6:
  std::generic_category();
  return v2;
}

uint64_t llvm::sys::Process::FileDescriptorHasColors(llvm::sys::Process *this)
{
  result = isatty(this);
  if (result)
  {
    v2 = getenv("TERM");
    v4 = v2;
    if (!v2)
    {
      return (v4 != 0) & v3;
    }

    v5 = strlen(v2);
    switch(v5)
    {
      case 6uLL:
        if (*v4 == 2003269987 && *(v4 + 2) == 28265)
        {
          goto LABEL_41;
        }

        break;
      case 5uLL:
        if (*v4 == 1970170220 && v4[4] == 120)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      case 4uLL:
        if (*v4 == 1769172577 || *v4 == 1953921138)
        {
LABEL_41:
          v3 = 1;
          return (v4 != 0) & v3;
        }

LABEL_40:
        v3 = 0;
        return (v4 != 0) & v3;
      default:
        if (v5 < 6)
        {
          goto LABEL_40;
        }

        break;
    }

    if (*v4 == 1701995379 && *(v4 + 2) == 28261)
    {
      goto LABEL_41;
    }

LABEL_27:
    if (*v4 == 1919251576 && v4[4] == 109)
    {
      goto LABEL_41;
    }

    v10 = *v4 == 808547446 && v4[4] == 48;
    if (v10 || *v4 == 1953921138)
    {
      goto LABEL_41;
    }

    if (*&v4[v5 - 5] == 1869377379 && v4[v5 - 1] == 114)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  return result;
}

uint64_t llvm::sys::ExecuteAndWait(void *a1, size_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  v18[0] = 0;
  v18[2] = 0;
  v16 = *a5;
  v17 = *(a5 + 2);
  LODWORD(v15) = a9;
  if (sub_10000CC34(v18, a1, a2, a3, a4, &v16, a6, a7, v15, a10))
  {
    if (a11)
    {
      *a11 = 0;
    }

    llvm::sys::Wait(v18, a8 | ((a8 != 0) << 32), a10, a12, 0);
    return v13;
  }

  else
  {
    if (a11)
    {
      *a11 = 1;
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10000CC34(uint64_t a1, void *a2, size_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __src = a2;
  __len = a3;
  v35 = 261;
  v33.__r_.__value_.__r.__words[0] = a2;
  v33.__r_.__value_.__l.__size_ = a3;
  if (!llvm::sys::fs::access(&v33, 0))
  {
    *&v33.__r_.__value_.__l.__data_ = 0uLL;
    v33.__r_.__value_.__r.__words[2] = &v35;
    v34 = 0x400000000;
    v36 = v38;
    v37 = 0;
    v38[0] = 0;
    v38[1] = 1;
    *__s = &v33;
    if (a5)
    {
      llvm::StringSaver::save(__s, *a4, *(a4 + 8));
      operator new();
    }

    operator new();
  }

  if (a10)
  {
    *(&v32.__r_.__value_.__s + 23) = 12;
    strcpy(&v32, "Executable ");
    if (a2)
    {
      if (a3 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_1000034E8();
      }

      if (a3 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v31) = a3;
      if (a3)
      {
        memmove(&__dst, a2, a3);
      }

      *(&__dst + a3) = 0;
      v15 = HIBYTE(v31);
      v13 = *(&__dst + 1);
      v14 = __dst;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      __dst = 0uLL;
      v31 = 0;
    }

    if ((v15 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = v14;
    }

    if ((v15 & 0x80u) == 0)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    v18 = std::string::append(&v32, p_dst, v17);
    v19 = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v27 = 16;
    strcpy(__s, " doesn't exist!");
    v20 = std::string::append(&v33, __s, 0x10uLL);
    v21 = v20->__r_.__value_.__r.__words[0];
    v39[0] = v20->__r_.__value_.__l.__size_;
    *(v39 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (*(a10 + 23) < 0)
    {
      operator delete(*a10);
    }

    v23 = v39[0];
    *a10 = v21;
    *(a10 + 8) = v23;
    *(a10 + 15) = *(v39 + 7);
    *(a10 + 23) = v22;
    if (v27 < 0)
    {
      operator delete(*__s);
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v31) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
LABEL_26:
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return 0;
      }

LABEL_31:
      operator delete(v32.__r_.__value_.__l.__data_);
      return 0;
    }

LABEL_30:
    operator delete(__dst);
    if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t llvm::sys::Wait(pid_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v11 = a2 == 0;
    v25.__sigaction_u.__sa_handler = nullsub_6;
    *&v25.sa_mask = 0;
    sigaction(14, &v25, &v24);
    alarm(a2);
    v23 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    v23 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (*(a4 + 24) == 1)
  {
    *(a4 + 24) = 0;
  }

LABEL_7:
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(result) = wait4(v10, &v23, v11, &v22);
  }

  else
  {
    while (1)
    {
      LODWORD(result) = wait4(v10, &v23, v11, &v22);
      if (result != -1)
      {
        break;
      }

      if (*__error() != 4)
      {
        LODWORD(result) = -1;
        if (*a1 != -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }
  }

  if (result != *a1)
  {
    if (!result)
    {
      return result;
    }

LABEL_15:
    v13 = result;
    if ((a2 & 0x100000000) != 0 && *__error() == 4 && (a5 & 1) == 0)
    {
      kill(*a1, 9);
      alarm(0);
      sigaction(14, &v24, 0);
      if (wait(&v23) != v10)
      {
        operator new();
      }

      *(&v21.__r_.__value_.__s + 23) = 15;
      strcpy(&v21, "Child timed out");
      sub_10000E528(a3, &v21.__r_.__value_.__l.__data_, 0);
      LODWORD(result) = v13;
      return result;
    }

    if (*__error() != 4)
    {
      operator new();
    }

    LODWORD(result) = v13;
  }

LABEL_18:
  if ((a2 & 0x100000000) != 0)
  {
    v14 = result;
    alarm(0);
    sigaction(14, &v24, 0);
    LODWORD(result) = v14;
  }

  if (a4)
  {
    v15 = v22.ru_utime.tv_usec + 1000000 * v22.ru_utime.tv_sec;
    ru_maxrss = v22.ru_maxrss;
    v17 = *(a4 + 24);
    *a4 = v15 + 1000000 * v22.ru_stime.tv_sec + v22.ru_stime.tv_usec;
    *(a4 + 8) = v15;
    *(a4 + 16) = ru_maxrss;
    if ((v17 & 1) == 0)
    {
      *(a4 + 24) = 1;
    }
  }

  if ((v23 & 0x7F) != 0x7F)
  {
    if ((v23 & 0x7F) != 0)
    {
      if (!a3)
      {
        return result;
      }

      v18 = result;
      v19 = strsignal(v23 & 0x7F);
      std::string::assign(a3, v19);
      if ((v23 & 0x80) != 0)
      {
        std::string::append(a3, " (core dumped)");
      }
    }

    else
    {
      if (BYTE1(v23) == 126)
      {
        if (a3)
        {
          v20 = result;
          std::string::assign(a3, "Program could not be executed");
          LODWORD(result) = v20;
        }

        return result;
      }

      if (BYTE1(v23) != 127 || !a3)
      {
        return result;
      }

      v18 = result;
      llvm::sys::StrError(2, &v21);
      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      *a3 = v21;
    }

    LODWORD(result) = v18;
  }

  return result;
}

double llvm::sys::findProgramByName@<D0>(void *__s@<X0>, size_t __n@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (__n)
  {
    v9 = memchr(__s, 47, __n);
    if (v9)
    {
      if (v9 - __s != -1)
      {
        if (__n > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_38:
          sub_1000034E8();
        }

        if (__n >= 0x17)
        {
          operator new();
        }

        HIBYTE(v41[0]) = __n;
        memmove(v40, __s, __n);
        *(v40 + __n) = 0;
        *(a5 + 24) &= ~1u;
        result = *v40;
        *a5 = *v40;
        *(a5 + 16) = v41[0];
        return result;
      }
    }
  }

  v40[0] = v41;
  v40[1] = 0x1000000000;
  if (a4)
  {
    v10 = &a3[2 * a4];
    goto LABEL_11;
  }

  v22 = getenv("PATH");
  if (v22)
  {
    v23 = v22;
    v24 = strlen(v22);
    llvm::SplitString(v23, v24, v40, ":", 1);
    if (LODWORD(v40[1]))
    {
      a3 = v40[0];
      v10 = (v40[0] + 16 * LODWORD(v40[1]));
      do
      {
LABEL_11:
        v11 = a3[1];
        if (!v11)
        {
          goto LABEL_10;
        }

        v12 = *a3;
        __src = v39;
        __len = xmmword_100011180;
        if (v11 < 0x81)
        {
          v13 = 0;
          v14 = v39;
        }

        else
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v39, v11, 1);
          v14 = __src;
          v13 = __len;
        }

        memcpy(&v14[v13], v12, v11);
        *&__len = __len + v11;
        v36 = 261;
        *&__dst = __s;
        *(&__dst + 1) = __n;
        v33 = 257;
        v31 = 257;
        v29 = 257;
        llvm::sys::path::append(&__src, &__dst, &v32, &v30, &v28);
        if ((__len + 1) > *(&__len + 1))
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&__src, v39, __len + 1, 1);
          *(__src + __len) = 0;
          v16 = __src;
          v36 = 257;
          if (*__src)
          {
LABEL_17:
            *&__dst = v16;
            LOBYTE(v36) = 3;
            can_execute = llvm::sys::fs::can_execute(&__dst, v15);
            v18 = can_execute;
            v19 = __src;
            if (!can_execute)
            {
              goto LABEL_28;
            }

            goto LABEL_21;
          }
        }

        else
        {
          *(__src + __len) = 0;
          v16 = __src;
          v36 = 257;
          if (*__src)
          {
            goto LABEL_17;
          }
        }

        LOBYTE(v36) = 1;
        v20 = llvm::sys::fs::can_execute(&__dst, v15);
        v18 = v20;
        v19 = __src;
        if (!v20)
        {
          goto LABEL_28;
        }

LABEL_21:
        v21 = __len;
        if (__len > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_38;
        }

        if (__len >= 0x17)
        {
          operator new();
        }

        HIBYTE(v35) = __len;
        if (__len)
        {
          memmove(&__dst, v19, __len);
        }

        *(&__dst + v21) = 0;
        *(a5 + 24) &= ~1u;
        result = *&__dst;
        *a5 = __dst;
        *(a5 + 16) = v35;
        v19 = __src;
LABEL_28:
        if (v19 != v39)
        {
          free(v19);
        }

        if (v18)
        {
          goto LABEL_34;
        }

LABEL_10:
        a3 += 2;
      }

      while (a3 != v10);
    }
  }

  *(a5 + 24) |= 1u;
  v25 = std::generic_category();
  *a5 = 2;
  *(a5 + 8) = v25;
LABEL_34:
  if (v40[0] != v41)
  {
    free(v40[0]);
  }

  return result;
}